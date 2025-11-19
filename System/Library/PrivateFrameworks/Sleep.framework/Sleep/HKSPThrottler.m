@interface HKSPThrottler
- (HKSPThrottler)initWithInterval:(double)a3 executeBlock:(id)a4;
- (HKSPThrottler)initWithInterval:(double)a3 executeBlock:(id)a4 scheduler:(id)a5;
- (HKSPThrottler)initWithInterval:(double)a3 executeBlock:(id)a4 scheduler:(id)a5 mutexGenerator:(id)a6;
@end

@implementation HKSPThrottler

- (HKSPThrottler)initWithInterval:(double)a3 executeBlock:(id)a4
{
  v6 = MEMORY[0x277D2C938];
  v7 = a4;
  v8 = [v6 hkspMainThreadScheduler];
  v9 = [(HKSPThrottler *)self initWithInterval:v7 executeBlock:v8 scheduler:a3];

  return v9;
}

- (HKSPThrottler)initWithInterval:(double)a3 executeBlock:(id)a4 scheduler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = &__block_literal_global_21;
  v11 = [(HKSPThrottler *)self initWithInterval:v9 executeBlock:v8 scheduler:&__block_literal_global_21 mutexGenerator:a3];

  return v11;
}

- (HKSPThrottler)initWithInterval:(double)a3 executeBlock:(id)a4 scheduler:(id)a5 mutexGenerator:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = HKSPThrottler;
  v13 = [(HKSPThrottler *)&v22 init];
  if (v13)
  {
    v14 = [[HKSPLimitingScheduler alloc] initWithScheduler:v11 mutexGenerator:v12];
    backingScheduler = v13->_backingScheduler;
    v13->_backingScheduler = v14;

    v16 = [HKSPTask alloc];
    v17 = [(HKSPThrottler *)v13 description];
    v18 = [(HKSPTask *)v16 initWithIdentifier:v17 block:v10 delay:a3];
    task = v13->_task;
    v13->_task = v18;

    v20 = v13;
  }

  return v13;
}

@end