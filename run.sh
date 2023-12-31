#!/bin/bash

# 创建日期文件夹
today=$(date +"%Y_%m_%d")
mkdir -p logs/$today
i=0
while true; do
  sub_folder=$(printf "%02d" $i)
  sub_folder_path="logs/$today/$sub_folder"
  if [ ! -d "$sub_folder_path" ]; then
    mkdir "$sub_folder_path"
    echo "Created folder: $sub_folder_path"
    break
  fi
  i=$((i+1))
done

#attack_arg=0.3
#num_attack_clients=2
#attack_arg=0.8
#
# robust
#methods=('Individual' 'LeaveOneOut' 'ShapleyValue' 'LeastCore' 'TMC_Shapley' 'TMC_GuidedSampling_Shapley' 'MC_StructuredSampling_Shapley' 'MC_LeastCore')
#
## effective
#methods=('RandomMethod' 'Individual' 'LeaveOneOut' 'ShapleyValue' 'LeastCore' 'TMC_Shapley' 'TMC_GuidedSampling_Shapley' 'MC_StructuredSampling_Shapley' 'MC_LeastCore')
#methods=('Multi_Rounds' 'GTG_Shapley')
##methods=('Individual' 'LeaveOneOut' 'ShapleyValue' 'LeastCore' 'TMC_Shapley' 'TMC_GuidedSampling_Shapley' 'MC_LeastCore')
#
## efficient
##methods=('Individual' 'LeaveOneOut' 'ShapleyValue' 'LeastCore' 'MC_StructuredSampling_Shapley' 'MC_LeastCore')
##methods=('ShapleyValue' 'LeastCore' 'MC_StructuredSampling_Shapley' 'MC_LeastCore')
##methods=('Individual' 'LeaveOneOut' 'GTG_Shapley')
#
## cache
#methods=('ShapleyValue')
#
##robust
##effective
#seed=6694
#num_repeat=10
#
###efficient
##seed=6694
##num_repeat=3
#
#value_functions=("f1" "f1_macro" "f1_micro" "accuracy")

#for method in "${methods[@]}"
#do
  # effective quantity
#  nohup python -u main.py -t effective -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device cpu -a 0.365 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/adult quantity skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device cpu -a 0.35 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/bank quantity skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device cpu -a 0.4 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/dota2 quantity skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device cpu -a 0.65 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/tictactoe quantity skew $method.out" 2>&1 &

  # effective label
#  nohup python -u main.py -t effective -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/adult label skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/bank label skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/dota2 label skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/tictactoe label skew $method.out" 2>&1 &

#  # robust original
#  nohup python -u main.py -t effective -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/adult label skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/bank label skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device cpu -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/dota2 label skew $method.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/tictactoe label skew $method.out" 2>&1 &


  # robust replication
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg > "./running_logs/adult label skew $method data replication.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg > "./running_logs/bank label skew $method data replication.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg > "./running_logs/robust dota2 label skew $method data replication.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg > "./running_logs/robust tictactoe label skew $method data replication.out" 2>&1 &
#
#
#  # robust random generation
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg > "./running_logs/adult label skew $method random data generation.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg > "./running_logs/bank label skew $method random data generation.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg > "./running_logs/robust dota2 label skew $method random data generation.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg > "./running_logs/robust tictactoe label skew $method random data generation.out" 2>&1 &
#
#
#  # robust low quality
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg > "./running_logs/adult label skew $method low quality data.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg > "./running_logs/bank label skew $method low quality data.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg > "./running_logs/robust dota2 label skew $method low quality data.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg > "./running_logs/robust tictactoe label skew $method low quality data.out" 2>&1 &
#
#  # robust flip
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg > "./running_logs/adult label skew $method label flip.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg > "./running_logs/bank label skew $method label flip.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg > "./running_logs/robust dota2 label skew $method label flip.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg > "./running_logs/robust tictactoe label skew $method label flip.out" 2>&1 &
#
#  # efficient quantity
#  nohup python -u main.py -t efficient -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.365 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/adult quantity skew $method.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.35 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/bank quantity skew $method.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 1 -a 0.4 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/efficient dota2 quantity skew $method.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 3 -a 0.65 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/efficient tictactoe quantity skew $method.out" 2>&1 &
#

#  # efficient label
#  nohup python -u main.py -t efficient -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/adult label skew $method.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/bank label skew $method.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/efficient dota2 label skew $method.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" > "./running_logs/efficient tictactoe quantity skew $method.out" 2>&1 &


#  # effective in robust setting
#
#  # robust replication
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting adult label skew $method data replication.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting bank label skew $method data replication.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting dota2 label skew $method data replication.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting tictactoe label skew $method data replication.out" 2>&1 &
#
#
#  # robust random generation
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting adult label skew $method random data generation.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting bank label skew $method random data generation.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting dota2 label skew $method random data generation.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting tictactoe label skew $method random data generation.out" 2>&1 &
#
#
#  # robust low quality
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting adult label skew $method low quality data.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting bank label skew $method low quality data.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting dota2 label skew $method low quality data.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting tictactoe label skew $method low quality data.out" 2>&1 &
#
#  # robust flip
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting adult label skew $method label flip.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting bank label skew $method label flip.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting dota2 label skew $method label flip.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions "${value_functions[@]}" --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/effective_in_robust_setting tictactoe label skew $method label flip.out" 2>&1 &
#
#done



# data utility
method='ShapleyValue'
#value_functions=('gradient_similarity')
#value_functions=('data_quantity')
#value_functions=('gradient_similarity' 'data_quantity')
# robust volume only for tictactoe
value_functions=('robust_volume')

seed=6694
num_repeat=10

# effective_in_robust_setting!
#num_attack_clients=2
#attack_arg=0.8

# robust
num_attack_clients=1
attack_arg=0.3

for value_function in "${value_functions[@]}"
do
#   effective quantity
#  nohup python -u main.py -t effective -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.365 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/adult quantity skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.35 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/bank quantity skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 0 -a 0.4 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/utility dota2 quantity skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 0 -a 0.65 --distribution "quantity skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/utility tictactoe quantity skew $method $value_function.out" 2>&1 &
#
#   effective label
#  nohup python -u main.py -t effective -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/adult label skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/bank label skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t effective -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/utility dota2 label skew $method $value_function.out" 2>&1 &
  nohup python -u main.py -t effective -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/utility tictactoe label skew $method $value_function.out" 2>&1 &

##  effective in robust setting replication
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function data replication.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function data replication.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function data replication.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function data replication.out" 2>&1 &
#
#
##  effective robust setting random generation
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function random data generation.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function random data generation.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function random data generation.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function random data generation.out" 2>&1 &
#
#
##  effective robust setting low quality
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function low quality data.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function low quality data.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function low quality data.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function low quality data.out" 2>&1 &
#
##  effective robust setting flip
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function label flip.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function label flip.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function label flip.out" 2>&1 &
#  nohup python -u main.py -t effective_in_robust_setting -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function label flip.out" 2>&1 &

# 2023年7月6日00:23:31 往下都要跑
#  robustness replication
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function data replication.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function data replication.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function data replication.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "data replication" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function data replication.out" 2>&1 &


#  robustness random generation
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function random data generation.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function random data generation.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function random data generation.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "random data generation" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function random data generation.out" 2>&1 &


#  robustness low quality
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function low quality data.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function low quality data.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function low quality data.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "low quality data" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function low quality data.out" 2>&1 &

#  robustness flip
#  nohup python -u main.py -t robust -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust adult label skew $method $value_function label flip.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust bank label skew $method $value_function label flip.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust dota2 label skew $method $value_function label flip.out" 2>&1 &
#  nohup python -u main.py -t robust -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 3 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function --attack "label flip" --attack_arg $attack_arg --num_attack_clients $num_attack_clients > "./running_logs/utility robust tictactoe label skew $method $value_function label flip.out" 2>&1 &


#   efficient label
#  nohup python -u main.py -t efficient -m $method --dataset adult --model AdultMLP --lr 0.001 --num_epoch 25 --hidden_layer_size 24 --batch_size 64 --device 0 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/adult label skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset bank --model BankMLP --lr 0.001 --num_epoch 20 --hidden_layer_size 8 --batch_size 64 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/bank label skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset dota2 --model Dota2MLP --lr 0.001 --num_epoch 5 --hidden_layer_size 4 --batch_size 128 --device 2 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/utility dota2 label skew $method $value_function.out" 2>&1 &
#  nohup python -u main.py -t efficient -m $method --dataset tictactoe --model TicTacToeMLP --lr 0.005 --num_epoch 60 --hidden_layer_size 16 --batch_size 16 --device 1 -a 0.8 --distribution "label skew" -s $seed --num_repeat $num_repeat --start_date $today --num_try $sub_folder --value_functions $value_function > "./running_logs/utility tictactoe label skew $method $value_function.out" 2>&1 &

done