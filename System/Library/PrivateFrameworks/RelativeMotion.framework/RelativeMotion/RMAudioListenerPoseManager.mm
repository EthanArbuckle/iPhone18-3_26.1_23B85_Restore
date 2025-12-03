@interface RMAudioListenerPoseManager
- (RMAudioListenerPoseManager)initWithQueue:(id)queue;
- (id)audioListenerPoseConfigurationWithForceSessionRestart:(void *)restart;
- (uint64_t)connectionClient;
- (uint64_t)isReceivingRelatveData;
- (uint64_t)poseCallbackInternal;
- (uint64_t)queue;
- (uint64_t)setIsReceivingRelatveData:(uint64_t)result;
- (void)invalidate;
- (void)setConnectionClient:(uint64_t)client;
- (void)setPoseCallbackInternal:(void *)internal;
- (void)setQueue:(uint64_t)queue;
- (void)stopReceivingAudioListenerPoseUpdates;
@end

@implementation RMAudioListenerPoseManager

- (RMAudioListenerPoseManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = RMAudioListenerPoseManager;
  v6 = [(RMAudioListenerPoseManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[RMConnectionClient alloc] initWithQueue:queueCopy serviceName:@"com.apple.relatived.tempest" messageHandler:&__block_literal_global_1];
    connectionClient = v7->_connectionClient;
    v7->_connectionClient = v8;
  }

  return v7;
}

void __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_cold_1(a1, v6);
  }

  else
  {
    v7 = [v5 length];
    if (v7 == 80)
    {
      __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_cold_3(v5, a1);
    }

    else
    {
      v8 = v7;
      if (onceToken_TempestDataReceiver_Default != -1)
      {
        __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_cold_2();
      }

      v9 = logObject_TempestDataReceiver_Default;
      if (os_log_type_enabled(logObject_TempestDataReceiver_Default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        v12 = v8;
        _os_log_impl(&dword_261A9A000, v9, OS_LOG_TYPE_DEFAULT, "invalid data size %lu", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (onceToken_TempestDataReceiver_Default != -1)
  {
    __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_cold_2();
  }

  v6 = logObject_TempestDataReceiver_Default;
  if (os_log_type_enabled(logObject_TempestDataReceiver_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_261A9A000, v6, OS_LOG_TYPE_DEFAULT, "Received reply for priority message.", v7, 2u);
  }
}

void __105__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallback___block_invoke(uint64_t a1, double *a2, void *a3)
{
  v5 = a3;
  v7 = [[RMAttitude alloc] _initWithQuaternion:*a2 timestamp:a2[1], a2[2], a2[3], a2[4]];
  v6 = [[RMPose alloc] _initWithAttitude:v7 consumedAuxTimestamp:a2[6] receivedAuxTimestamp:a2[7] machAbsTimestamp:a2[8] presentationTimestamp:a2[9]];
  (*(*(a1 + 32) + 16))();
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 24), a2);
  }
}

- (void)setConnectionClient:(uint64_t)client
{
  if (client)
  {
    objc_storeStrong((client + 40), a2);
  }
}

- (void)invalidate
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    if (self->_isReceivingRelatveData)
    {
      [(RMAudioListenerPoseManager *)self stopReceivingAudioListenerPoseUpdates];
    }

    connectionClient = self->_connectionClient;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    connectionClient = 0;
  }

  [(RMConnectionClient *)connectionClient invalidate];
  [(RMAudioListenerPoseManager *)self setConnectionClient:?];
  if (self)
  {

    objc_setProperty_nonatomic_copy(self, v4, 0, 32);
  }
}

- (uint64_t)queue
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)isReceivingRelatveData
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)connectionClient
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setPoseCallbackInternal:(void *)internal
{
  if (internal)
  {
    objc_setProperty_nonatomic_copy(internal, newValue, newValue, 32);
  }
}

- (id)audioListenerPoseConfigurationWithForceSessionRestart:(void *)restart
{
  if (restart)
  {
    v4 = objc_opt_new();
    [v4 setObject:@"ABC0BF2F-620E-4ADF-8291-7624B6B0889A" forKeyedSubscript:@"Identifier"];
    [v4 setObject:&unk_287437710 forKeyedSubscript:@"Interval"];
    tempestOptions = [restart tempestOptions];

    if (tempestOptions)
    {
      tempestOptions2 = [restart tempestOptions];
      [v4 setObject:tempestOptions2 forKeyedSubscript:@"TempestOptions"];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v4 setObject:v7 forKeyedSubscript:@"ForceSessionRestart"];

    v13 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
    v9 = v13;
    if (!v8)
    {
      if (onceToken_TempestDataManager_Default != -1)
      {
        dispatch_once(&onceToken_TempestDataManager_Default, &__block_literal_global_63);
      }

      v10 = logObject_TempestDataManager_Default;
      if (os_log_type_enabled(logObject_TempestDataManager_Default, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_261A9A000, v10, OS_LOG_TYPE_ERROR, "failed to archive configurations\n", v12, 2u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)poseCallbackInternal
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)stopReceivingAudioListenerPoseUpdates
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    connectionClient = self->_connectionClient;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    connectionClient = 0;
  }

  [(RMConnectionClient *)connectionClient stopStreaming];
  if (self)
  {
    self->_isReceivingRelatveData = 0;

    objc_setProperty_nonatomic_copy(self, v4, 0, 32);
  }
}

- (uint64_t)setIsReceivingRelatveData:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_cold_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v2 = *(v2 + 32);
  }

  if (v2)
  {
    v3 = *(result + 32);
    if (v3)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v4 + 16);
    memset(v6, 0, sizeof(v6));
    return v5(v4, v6, a2);
  }

  return result;
}

void __113__RMAudioListenerPoseManager_startReceivingAudioListenerPoseUpdatesWithForceSessionRestart_poseCallbackInternal___block_invoke_cold_3(void *a1, uint64_t a2)
{
  v3 = [a1 bytes];
  if (v3[5] == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"kRMErrorDomain" code:v3[5] userInfo:0];
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v5 = *(v5 + 32);
  }

  if (v5)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 16);
    memcpy(v9, v3, sizeof(v9));
    v8(v7, v9, v4);
  }
}

@end