@interface HKSPAccumulator
- (HKSPAccumulator)initWithInterval:(double)a3 updateBlock:(id)a4;
- (HKSPAccumulator)initWithInterval:(double)a3 updateBlock:(id)a4 scheduler:(id)a5;
- (HKSPAccumulator)initWithInterval:(double)a3 updateBlock:(id)a4 scheduler:(id)a5 mutexGenerator:(id)a6;
- (void)accumulateValue:(id)a3;
- (void)accumulateValues:(id)a3;
@end

@implementation HKSPAccumulator

- (HKSPAccumulator)initWithInterval:(double)a3 updateBlock:(id)a4
{
  v6 = MEMORY[0x277D2C938];
  v7 = a4;
  v8 = [v6 hkspMainThreadScheduler];
  v9 = [(HKSPAccumulator *)self initWithInterval:v7 updateBlock:v8 scheduler:a3];

  return v9;
}

- (HKSPAccumulator)initWithInterval:(double)a3 updateBlock:(id)a4 scheduler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = &__block_literal_global_21;
  v11 = [(HKSPAccumulator *)self initWithInterval:v9 updateBlock:v8 scheduler:&__block_literal_global_21 mutexGenerator:a3];

  return v11;
}

- (HKSPAccumulator)initWithInterval:(double)a3 updateBlock:(id)a4 scheduler:(id)a5 mutexGenerator:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = HKSPAccumulator;
  v13 = [(HKSPAccumulator *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_scheduler, a5);
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedValues = v14->_accumulatedValues;
    v14->_accumulatedValues = v15;

    v17 = [HKSPThrottler alloc];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__HKSPAccumulator_initWithInterval_updateBlock_scheduler_mutexGenerator___block_invoke;
    v23[3] = &unk_279C73B30;
    v25 = v10;
    v18 = v14;
    v24 = v18;
    v19 = [(HKSPThrottler *)v17 initWithInterval:v23 executeBlock:v11 scheduler:v12 mutexGenerator:a3];
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

- (void)accumulateValue:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v8 count:1];

    [(HKSPAccumulator *)self accumulateValues:v6, v8, v9];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accumulateValues:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HKSPAccumulator_accumulateValues___block_invoke;
  v7[3] = &unk_279C73B58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NAScheduler *)scheduler performBlock:v7];
}

uint64_t __36__HKSPAccumulator_accumulateValues___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObjectsFromArray:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 execute];
}

@end