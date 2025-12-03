@interface HKRPOxygenSaturationSession
- (HKRPOxygenSaturationSession)init;
- (HKRPOxygenSaturationSession)initWithHealthStore:(id)store;
- (HKRPOxygenSaturationSessionDelegate)delegate;
- (void)abortWithCompletion:(id)completion;
- (void)clientRemote_didEndWithReason:(int64_t)reason saturation:(id)saturation barometricPressure:(id)pressure averageHeartRate:(id)rate averageHeartRateUUID:(id)d error:(id)error;
- (void)clientRemote_didSendFeedback:(unint64_t)feedback;
- (void)clientRemote_didStartWithStartTime:(double)time expectedDuration:(double)duration;
- (void)connectionInterrupted;
- (void)startWithCompletion:(id)completion;
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

- (HKRPOxygenSaturationSession)initWithHealthStore:(id)store
{
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = HKRPOxygenSaturationSession;
  v6 = [(HKRPOxygenSaturationSession *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v12 = [v8 initWithHealthStore:healthStore taskIdentifier:taskIdentifier exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v12;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)startWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
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

- (void)abortWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
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

- (void)clientRemote_didSendFeedback:(unint64_t)feedback
{
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HKRPOxygenSaturationSession_clientRemote_didSendFeedback___block_invoke;
  v6[3] = &unk_279B0D658;
  v6[4] = self;
  v6[5] = feedback;
  dispatch_async(clientQueue, v6);
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

- (void)clientRemote_didStartWithStartTime:(double)time expectedDuration:(double)duration
{
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HKRPOxygenSaturationSession_clientRemote_didStartWithStartTime_expectedDuration___block_invoke;
  block[3] = &unk_279B0D680;
  block[4] = self;
  *&block[5] = time;
  *&block[6] = duration;
  dispatch_async(clientQueue, block);
}

void __83__HKRPOxygenSaturationSession_clientRemote_didStartWithStartTime_expectedDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained oxygenSaturationSession:*(a1 + 32) didStartWithStartTime:*(a1 + 40) expectedDuration:*(a1 + 48)];
}

- (void)clientRemote_didEndWithReason:(int64_t)reason saturation:(id)saturation barometricPressure:(id)pressure averageHeartRate:(id)rate averageHeartRateUUID:(id)d error:(id)error
{
  saturationCopy = saturation;
  pressureCopy = pressure;
  rateCopy = rate;
  dCopy = d;
  errorCopy = error;
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__HKRPOxygenSaturationSession_clientRemote_didEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke;
  block[3] = &unk_279B0D6A8;
  v30 = errorCopy;
  reasonCopy = reason;
  block[4] = self;
  v26 = saturationCopy;
  v27 = pressureCopy;
  v28 = rateCopy;
  v29 = dCopy;
  v20 = errorCopy;
  v21 = dCopy;
  v22 = rateCopy;
  v23 = pressureCopy;
  v24 = saturationCopy;
  dispatch_async(clientQueue, block);
}

void __135__HKRPOxygenSaturationSession_clientRemote_didEndWithReason_saturation_barometricPressure_averageHeartRate_averageHeartRateUUID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained oxygenSaturationSession:a1[4] didEndWithReason:a1[10] saturation:a1[5] barometricPressure:a1[6] averageHeartRate:a1[7] averageHeartRateUUID:a1[8] error:a1[9]];
}

- (void)connectionInterrupted
{
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HKRPOxygenSaturationSession_connectionInterrupted__block_invoke;
  block[3] = &unk_279B0D6D0;
  block[4] = self;
  dispatch_async(clientQueue, block);
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