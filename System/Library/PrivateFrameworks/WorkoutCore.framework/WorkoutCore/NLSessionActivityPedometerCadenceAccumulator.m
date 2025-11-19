@interface NLSessionActivityPedometerCadenceAccumulator
- (NLSessionActivityPedometerCadenceAccumulator)initWithBuilder:(id)a3;
- (void)startAccumulatingWithStartDate:(id)a3 updateHandler:(id)a4;
- (void)updateWithStatistics:(id)a3 duration:(double)a4;
@end

@implementation NLSessionActivityPedometerCadenceAccumulator

- (NLSessionActivityPedometerCadenceAccumulator)initWithBuilder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = NLSessionActivityPedometerCadenceAccumulator;
  v8 = [(NLSessionActivityBuilderAccumulator *)&v6 initWithBuilder:location[0]];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) == 0;
    *(v8 + 40) = v4;
    v9 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v9;
}

- (void)startAccumulatingWithStartDate:(id)a3 updateHandler:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17.receiver = v20;
  v17.super_class = NLSessionActivityPedometerCadenceAccumulator;
  [(NLSessionActivityDataAccumulator *)&v17 startAccumulatingWithStartDate:location[0] updateHandler:v18];
  objc_initWeak(&from, v20);
  if (v20->_isTesting)
  {
    v15 = 1;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CC1D18]);
    pedometer = v20->_pedometer;
    v20->_pedometer = v7;
    MEMORY[0x277D82BD8](pedometer);
    v5 = v20->_pedometer;
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

- (void)updateWithStatistics:(id)a3 duration:(double)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] sumQuantity];
  v6 = [MEMORY[0x277CCDAB0] countUnit];
  [v7 doubleValueForUnit:?];
  v8 = v4;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  if (a4 == 0.0)
  {
    v10->_averageCadence = 0.0;
  }

  else
  {
    v10->_averageCadence = v8 / a4 * 60.0;
  }

  [(NLSessionActivityBuilderAccumulator *)v10 update];
  objc_storeStrong(location, 0);
}

@end