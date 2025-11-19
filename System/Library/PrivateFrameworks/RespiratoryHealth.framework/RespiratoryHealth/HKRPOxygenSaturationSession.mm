@interface HKRPOxygenSaturationSession
- (HKRPOxygenSaturationSession)init;
- (HKRPOxygenSaturationSession)initWithHealthStore:(id)a3;
- (HKRPOxygenSaturationSessionDelegate)delegate;
- (void)abortWithCompletion:(id)a3;
- (void)clientRemote_didEndWithReason:(int64_t)a3 saturation:(id)a4 barometricPressure:(id)a5 averageHeartRate:(id)a6 averageHeartRateUUID:(id)a7 error:(id)a8;
- (void)clientRemote_didSendFeedback:(unint64_t)a3;
- (void)clientRemote_didStartWithStartTime:(double)a3 expectedDuration:(double)a4;
- (void)connectionInterrupted;
- (void)startWithCompletion:(id)a3;
@end

@implementation HKRPOxygenSaturationSession

- (HKRPOxygenSaturationSession)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKRPOxygenSaturationSession)initWithHealthStore:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HKRPOxygenSaturationSession;
  v6 = [(HKRPOxygenSaturationSession *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    v10 = [objc_opt_class() taskIdentifier];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v8 initWithHealthStore:healthStore taskIdentifier:v10 exportedObject:v7 taskUUID:v11];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v12;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)startWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HKRPOxygenSaturationSession_startWithCompletion___block_invoke;
  v9[3] = &unk_279B0D608;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HKRPOxygenSaturationSession_startWithCompletion___block_invoke_2;
  v7[3] = &unk_279B0D630;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)abortWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HKRPOxygenSaturationSession_abortWithCompletion___block_invoke;
  v9[3] = &unk_279B0D608;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HKRPOxygenSaturationSession_abortWithCompletion___block_invoke_2;
  v7[3] = &unk_279B0D630;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)clientRemote_didSendFeedback:(unint64_t)a3
{
  v5 = [(HKHealthStore *)self->_healthStore clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HKRPOxygenSaturationSession_clientRemote_didSendFeedback___block_invoke;
  v6[3] = &unk_279B0D658;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __60__HKRPOxygenSaturationSession_clientRemote_didSendFeedback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 oxygenSaturationSession:*(a1 + 32) didSendFeedback:*(a1 + 40)];
  }
}

- (void)clientRemote_didStartWithStartTime:(double)a3 expectedDuration:(double)a4
{
  v7 = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HKRPOxygenSaturationSession_clientRemote_didStartWithStartTime_expectedDuration___block_invoke;
  block[3] = &unk_279B0D680;
  block[4] = self;
  *&block[5] = a3;
  *&block[6] = a4;
  dispatch_async(v7, block);
}

void __83__HKRPOxygenSaturationSession_clientRemote_didStartWithStartTime_expectedDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained oxygenSaturationSession:*(a1 + 32) didStartWithStartTime:*(a1 + 40) expectedDuration:*(a1 + 48)];
}

- (void)clientRemote_didEndWithReason:(int64_t)a3 saturation:(id)a4 barometricPressure:(id)a5 averageHeartRate:(id)a6 averageHeartRateUUID:(id)a7 error:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__HKRPOxygenSaturationSession_clientRemote_didEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke;
  block[3] = &unk_279B0D6A8;
  v30 = v18;
  v31 = a3;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(v19, block);
}

void __135__HKRPOxygenSaturationSession_clientRemote_didEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained oxygenSaturationSession:a1[4] didEndWithReason:a1[10] saturation:a1[5] barometricPressure:a1[6] averageHeartRate:a1[7] averageHeartRateUUID:a1[8] error:a1[9]];
}

- (void)connectionInterrupted
{
  v3 = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HKRPOxygenSaturationSession_connectionInterrupted__block_invoke;
  block[3] = &unk_279B0D6D0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __52__HKRPOxygenSaturationSession_connectionInterrupted__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Connection interrupted"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained oxygenSaturationSession:*(a1 + 32) didEndWithReason:4 saturation:0 barometricPressure:0 averageHeartRate:0 averageHeartRateUUID:0 error:v3];
}

- (HKRPOxygenSaturationSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end