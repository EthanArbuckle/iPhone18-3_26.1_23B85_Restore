@interface NLSessionActivityPedometerCadenceAccumulator
- (NLSessionActivityPedometerCadenceAccumulator)initWithBuilder:(id)builder;
- (void)startAccumulatingWithStartDate:(id)date updateHandler:(id)handler;
- (void)updateWithStatistics:(id)statistics duration:(double)duration;
@end

@implementation NLSessionActivityPedometerCadenceAccumulator

- (NLSessionActivityPedometerCadenceAccumulator)initWithBuilder:(id)builder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = NLSessionActivityPedometerCadenceAccumulator;
  selfCopy = [(NLSessionActivityBuilderAccumulator *)&v6 initWithBuilder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) == 0;
    *(selfCopy + 40) = v4;
    v9 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)startAccumulatingWithStartDate:(id)date updateHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  v17.receiver = selfCopy;
  v17.super_class = NLSessionActivityPedometerCadenceAccumulator;
  [(NLSessionActivityDataAccumulator *)&v17 startAccumulatingWithStartDate:location[0] updateHandler:v18];
  objc_initWeak(&from, selfCopy);
  if (selfCopy->_isTesting)
  {
    v15 = 1;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CC1D18]);
    pedometer = selfCopy->_pedometer;
    selfCopy->_pedometer = v7;
    MEMORY[0x277D82BD8](pedometer);
    v5 = selfCopy->_pedometer;
    v6 = location[0];
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __93__NLSessionActivityPedometerCadenceAccumulator_startAccumulatingWithStartDate_updateHandler___block_invoke;
    v13 = &unk_277D89080;
    objc_copyWeak(v14, &from);
    [(CMPedometer *)v5 startPedometerUpdatesFromDate:v6 withHandler:&v9];
    objc_destroyWeak(v14);
    v15 = 0;
  }

  objc_destroyWeak(&from);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __93__NLSessionActivityPedometerCadenceAccumulator_startAccumulatingWithStartDate_updateHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  v23[0] = [location[0] currentCadence];
  _HKInitializeLogging();
  v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    type = v21;
    v10 = HKLogSafeDescription();
    v20 = MEMORY[0x277D82BE0](v10);
    __os_log_helper_16_2_2_8_64_8_64(v26, v20, v24);
    _os_log_impl(&dword_20AEA4000, log, type, "[cadence] accumulator received pedometer cadence=%@ error=%@", v26, 0x16u);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v22, 0);
  [v23[0] doubleValue];
  v19 = v3;
  if (v3 <= 2.22044605e-16)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v19;
  }

  v19 = v7;
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __93__NLSessionActivityPedometerCadenceAccumulator_startAccumulatingWithStartDate_updateHandler___block_invoke_295;
  v17 = &unk_277D889E8;
  objc_copyWeak(v18, a1 + 4);
  v18[1] = *&v19;
  dispatch_async(queue, &v13);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v18);
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

double __93__NLSessionActivityPedometerCadenceAccumulator_startAccumulatingWithStartDate_updateHandler___block_invoke_295(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receivedCurrentCadence:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)updateWithStatistics:(id)statistics duration:(double)duration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  sumQuantity = [location[0] sumQuantity];
  countUnit = [MEMORY[0x277CCDAB0] countUnit];
  [sumQuantity doubleValueForUnit:?];
  v8 = v4;
  MEMORY[0x277D82BD8](countUnit);
  MEMORY[0x277D82BD8](sumQuantity);
  if (duration == 0.0)
  {
    selfCopy->_averageCadence = 0.0;
  }

  else
  {
    selfCopy->_averageCadence = v8 / duration * 60.0;
  }

  [(NLSessionActivityBuilderAccumulator *)selfCopy update];
  objc_storeStrong(location, 0);
}

@end