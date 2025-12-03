@interface HKSPThrottler
- (HKSPThrottler)initWithInterval:(double)interval executeBlock:(id)block;
- (HKSPThrottler)initWithInterval:(double)interval executeBlock:(id)block scheduler:(id)scheduler;
- (HKSPThrottler)initWithInterval:(double)interval executeBlock:(id)block scheduler:(id)scheduler mutexGenerator:(id)generator;
@end

@implementation HKSPThrottler

- (HKSPThrottler)initWithInterval:(double)interval executeBlock:(id)block
{
  v6 = MEMORY[0x277D2C938];
  blockCopy = block;
  hkspMainThreadScheduler = [v6 hkspMainThreadScheduler];
  v9 = [(HKSPThrottler *)self initWithInterval:blockCopy executeBlock:hkspMainThreadScheduler scheduler:interval];

  return v9;
}

- (HKSPThrottler)initWithInterval:(double)interval executeBlock:(id)block scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v10 = &__block_literal_global_21;
  v11 = [(HKSPThrottler *)self initWithInterval:blockCopy executeBlock:schedulerCopy scheduler:&__block_literal_global_21 mutexGenerator:interval];

  return v11;
}

- (HKSPThrottler)initWithInterval:(double)interval executeBlock:(id)block scheduler:(id)scheduler mutexGenerator:(id)generator
{
  blockCopy = block;
  schedulerCopy = scheduler;
  generatorCopy = generator;
  v22.receiver = self;
  v22.super_class = HKSPThrottler;
  v13 = [(HKSPThrottler *)&v22 init];
  if (v13)
  {
    v14 = [[HKSPLimitingScheduler alloc] initWithScheduler:schedulerCopy mutexGenerator:generatorCopy];
    backingScheduler = v13->_backingScheduler;
    v13->_backingScheduler = v14;

    v16 = [HKSPTask alloc];
    v17 = [(HKSPThrottler *)v13 description];
    v18 = [(HKSPTask *)v16 initWithIdentifier:v17 block:blockCopy delay:interval];
    task = v13->_task;
    v13->_task = v18;

    v20 = v13;
  }

  return v13;
}

@end