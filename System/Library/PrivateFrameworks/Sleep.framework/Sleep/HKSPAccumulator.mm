@interface HKSPAccumulator
- (HKSPAccumulator)initWithInterval:(double)interval updateBlock:(id)block;
- (HKSPAccumulator)initWithInterval:(double)interval updateBlock:(id)block scheduler:(id)scheduler;
- (HKSPAccumulator)initWithInterval:(double)interval updateBlock:(id)block scheduler:(id)scheduler mutexGenerator:(id)generator;
- (void)accumulateValue:(id)value;
- (void)accumulateValues:(id)values;
@end

@implementation HKSPAccumulator

- (HKSPAccumulator)initWithInterval:(double)interval updateBlock:(id)block
{
  v6 = MEMORY[0x277D2C938];
  blockCopy = block;
  hkspMainThreadScheduler = [v6 hkspMainThreadScheduler];
  v9 = [(HKSPAccumulator *)self initWithInterval:blockCopy updateBlock:hkspMainThreadScheduler scheduler:interval];

  return v9;
}

- (HKSPAccumulator)initWithInterval:(double)interval updateBlock:(id)block scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v10 = &__block_literal_global_21;
  v11 = [(HKSPAccumulator *)self initWithInterval:blockCopy updateBlock:schedulerCopy scheduler:&__block_literal_global_21 mutexGenerator:interval];

  return v11;
}

- (HKSPAccumulator)initWithInterval:(double)interval updateBlock:(id)block scheduler:(id)scheduler mutexGenerator:(id)generator
{
  blockCopy = block;
  schedulerCopy = scheduler;
  generatorCopy = generator;
  v26.receiver = self;
  v26.super_class = HKSPAccumulator;
  v13 = [(HKSPAccumulator *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_scheduler, scheduler);
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedValues = v14->_accumulatedValues;
    v14->_accumulatedValues = v15;

    v17 = [HKSPThrottler alloc];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__HKSPAccumulator_initWithInterval_updateBlock_scheduler_mutexGenerator___block_invoke;
    v23[3] = &unk_279C73B30;
    v25 = blockCopy;
    v18 = v14;
    v24 = v18;
    v19 = [(HKSPThrottler *)v17 initWithInterval:v23 executeBlock:schedulerCopy scheduler:generatorCopy mutexGenerator:interval];
    throttler = v18->_throttler;
    v18->_throttler = v19;

    v21 = v18;
  }

  return v14;
}

uint64_t __73__HKSPAccumulator_initWithInterval_updateBlock_scheduler_mutexGenerator___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeAllObjects];
}

- (void)accumulateValue:(id)value
{
  v9 = *MEMORY[0x277D85DE8];
  if (value)
  {
    valueCopy = value;
    v4 = MEMORY[0x277CBEA60];
    valueCopy2 = value;
    v6 = [v4 arrayWithObjects:&valueCopy count:1];

    [(HKSPAccumulator *)self accumulateValues:v6, valueCopy, v9];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accumulateValues:(id)values
{
  valuesCopy = values;
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HKSPAccumulator_accumulateValues___block_invoke;
  v7[3] = &unk_279C73B58;
  v7[4] = self;
  v8 = valuesCopy;
  v6 = valuesCopy;
  [(NAScheduler *)scheduler performBlock:v7];
}

uint64_t __36__HKSPAccumulator_accumulateValues___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObjectsFromArray:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 execute];
}

@end