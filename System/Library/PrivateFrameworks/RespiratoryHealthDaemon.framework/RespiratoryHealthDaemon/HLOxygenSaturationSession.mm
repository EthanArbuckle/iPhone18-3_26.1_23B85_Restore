@interface HLOxygenSaturationSession
- (HLOxygenSaturationSession)initWithDelegate:(id)a3 onQueue:(id)a4;
- (HLOxygenSaturationSessionDelegate)delegate;
- (void)abort;
- (void)begin;
- (void)unitTesting_deliverFeedback:(unint64_t)a3;
- (void)unitTesting_endSessionWithReason:(unint64_t)a3 saturation:(id)a4 barometricPressure:(id)a5 averageHeartRate:(id)a6 averageHeartRateUUID:(id)a7;
@end

@implementation HLOxygenSaturationSession

- (HLOxygenSaturationSession)initWithDelegate:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HLOxygenSaturationSession;
  v8 = [(HLOxygenSaturationSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_queue, a4);
  }

  return v9;
}

- (void)begin
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HLOxygenSaturationSession_begin__block_invoke;
  block[3] = &unk_279B0E280;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__HLOxygenSaturationSession_begin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained oxygenSaturationSession:*(a1 + 32) didBeginWithStartTime:CACurrentMediaTime() expectedDuration:15.0];
}

- (void)abort
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HLOxygenSaturationSession_abort__block_invoke;
  block[3] = &unk_279B0E280;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__HLOxygenSaturationSession_abort__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained oxygenSaturationSession:*(a1 + 32) didEndForReason:2 measurement:0];
}

- (void)unitTesting_deliverFeedback:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HLOxygenSaturationSession_unitTesting_deliverFeedback___block_invoke;
  v4[3] = &unk_279B0E2A8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __57__HLOxygenSaturationSession_unitTesting_deliverFeedback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained oxygenSaturationSession:*(a1 + 32) feedbackDidChange:*(a1 + 40)];
}

- (void)unitTesting_endSessionWithReason:(unint64_t)a3 saturation:(id)a4 barometricPressure:(id)a5 averageHeartRate:(id)a6 averageHeartRateUUID:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(HLHeartRateData);
  [v13 doubleValue];
  v18 = v17;

  [(HLHeartRateData *)v16 setHeartRate:v18];
  [(HLHeartRateData *)v16 setUuid:v12];

  v19 = objc_alloc_init(HLOxygenSaturationMeasurement);
  [(HLOxygenSaturationMeasurement *)v19 setOxygenSaturationPercentage:v15];

  [(HLOxygenSaturationMeasurement *)v19 setAverageHeartRateData:v16];
  [(HLOxygenSaturationMeasurement *)v19 setPressureInKilopascals:v14];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__HLOxygenSaturationSession_unitTesting_endSessionWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID___block_invoke;
  block[3] = &unk_279B0E2D0;
  v23 = v19;
  v24 = a3;
  block[4] = self;
  v21 = v19;
  dispatch_async(queue, block);
}

void __130__HLOxygenSaturationSession_unitTesting_endSessionWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained oxygenSaturationSession:a1[4] didEndForReason:a1[6] measurement:a1[5]];
}

- (HLOxygenSaturationSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end