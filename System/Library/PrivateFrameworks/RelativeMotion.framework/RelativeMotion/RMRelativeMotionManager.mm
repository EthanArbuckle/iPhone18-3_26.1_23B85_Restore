@interface RMRelativeMotionManager
- (RMRelativeMotionManager)initWithQueue:(id)queue;
- (id)getCurrentAudioListenerPoseWithError:(int64_t *)error;
- (id)getCurrentDummyData;
- (int64_t)getCurrentAudioListenerPose:(id *)pose timestamp:(double *)timestamp;
- (uint64_t)audioListenerPoseManager;
- (uint64_t)currentAudioListenerPoseBufferIndex;
- (uint64_t)defaults;
- (uint64_t)dummyDataManager;
- (uint64_t)getCurrentAudioListenerPoseInternal:(os_unfair_lock_s *)internal;
- (uint64_t)queue;
- (uint64_t)setCurrentAudioListenerPoseBufferIndex:(uint64_t)result;
- (uint64_t)setShouldReceiveAudioListenerPose:(uint64_t)result;
- (uint64_t)setShouldReceiveDummyData:(uint64_t)result;
- (uint64_t)setVerboseLatencyAnalysisLogging:(uint64_t)result;
- (uint64_t)shouldReceiveAudioListenerPose;
- (uint64_t)shouldReceiveDummyData;
- (uint64_t)stopReceivingAudioListenerPose;
- (uint64_t)verboseLatencyAnalysisLogging;
- (void)dealloc;
- (void)resetAudioListenerPoseTrackingForAllClients;
- (void)setAudioListenerPoseManager:(uint64_t)manager;
- (void)setDefaults:(uint64_t)defaults;
- (void)setDummyDataManager:(uint64_t)manager;
- (void)setQueue:(uint64_t)queue;
- (void)startReceivingAudioListenerPoseWithForceSessionRestart:(_BYTE *)val;
- (void)startReceivingDummyData;
- (void)stopReceivingAudioListenerPose;
- (void)stopReceivingDummyData;
@end

@implementation RMRelativeMotionManager

- (RMRelativeMotionManager)initWithQueue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = RMRelativeMotionManager;
  v6 = [(RMRelativeMotionManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[RMDummyDataManager alloc] initWithQueue:queueCopy];
    dummyDataManager = v7->_dummyDataManager;
    v7->_dummyDataManager = v8;

    v7->_shouldReceiveDummyData = 0;
    v7->_dummyDataBufferLock._os_unfair_lock_opaque = 0;
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.RelativeMotion"];
    defaults = v7->_defaults;
    v7->_defaults = v10;

    v12 = [[RMAudioListenerPoseManager alloc] initWithQueue:queueCopy];
    audioListenerPoseManager = v7->_audioListenerPoseManager;
    v7->_audioListenerPoseManager = v12;

    v7->_shouldReceiveAudioListenerPose = 0;
    v7->_audioListenerPoseBufferLock._os_unfair_lock_opaque = 0;
    v14 = v7->_defaults;
    v7->_verboseLatencyAnalysisLogging = [(NSUserDefaults *)v14 BOOLForKey:@"TempestEnableVerboseLatencyLogging"];

    if (onceToken_RelativeMotionManager_Default != -1)
    {
      [RMRelativeMotionManager initWithQueue:];
    }

    v15 = logObject_RelativeMotionManager_Default;
    if (os_log_type_enabled(logObject_RelativeMotionManager_Default, OS_LOG_TYPE_DEFAULT))
    {
      verboseLatencyAnalysisLogging = v7->_verboseLatencyAnalysisLogging;
      *buf = 67240192;
      v21 = verboseLatencyAnalysisLogging;
      _os_log_impl(&dword_261A9A000, v15, OS_LOG_TYPE_DEFAULT, "[RelativeMotionManager] verbose latency logging: %{public}d", buf, 8u);
    }

    v7->_audioListenerPoseBuffer[0].quaternion.x = 0.0;
    v7->_audioListenerPoseBuffer[0].quaternion.y = 0.0;
    v7->_audioListenerPoseBuffer[0].quaternion.z = 0.0;
    *&v7->_audioListenerPoseBuffer[0].quaternion.w = xmmword_261AA5E00;
    *&v7->_audioListenerPoseBuffer[1].consumedAuxTimestamp = *&v7->_audioListenerPoseBuffer[0].consumedAuxTimestamp;
    *&v7->_audioListenerPoseBuffer[1].machAbsTimestamp = *&v7->_audioListenerPoseBuffer[0].machAbsTimestamp;
    *&v7->_audioListenerPoseBuffer[1].quaternion.x = *&v7->_audioListenerPoseBuffer[0].quaternion.x;
    *&v7->_audioListenerPoseBuffer[1].quaternion.z = *&v7->_audioListenerPoseBuffer[0].quaternion.z;
    *&v7->_audioListenerPoseBuffer[1].timestamp = *&v7->_audioListenerPoseBuffer[0].timestamp;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)startReceivingDummyData
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v2, v3, "{msg%{public}.0s:Called startReceivingDummyData while already registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v9, v10, v11, "Called startReceivingDummyData while already registered to receive data", "{msg%{public}.0s:Called startReceivingDummyData while already registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v15, v16, "{msg%{public}.0s:Called startReceivingDummyData while already registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

void __50__RMRelativeMotionManager_startReceivingDummyData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 31);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RMRelativeMotionManager_startReceivingDummyData__block_invoke_2;
  v6[3] = &unk_279AF5208;
  objc_copyWeak(&v7, (a1 + 40));
  v6[4] = *(a1 + 32);
  [v5 startReceivingDummyDataUpdates:v6];

  objc_destroyWeak(&v7);
}

void __50__RMRelativeMotionManager_startReceivingDummyData__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    v13 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained && (WeakRetained[56]._os_unfair_lock_opaque & 1) != 0)
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = __OFADD__(v9++, 1);
      v11 = (v9 < 0) ^ v10;
      v12 = v9 & 1;
      if (v11)
      {
        v12 = -v12;
      }

      objc_storeStrong(&WeakRetained[2 * v12 + 2], a2);
      os_unfair_lock_lock(v8 + 7);
      ++v8[8]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v8 + 7);
    }

    v6 = v13;
  }
}

- (void)stopReceivingDummyData
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v2, v3, "{msg%{public}.0s:Called stopReceivingDummyData while not registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v22, v23, v24, v25, v26);
  }

  v8 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v9, v10, v11, "Called stopReceivingDummyData while not registered to receive data", "{msg%{public}.0s:Called stopReceivingDummyData while not registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v22, v23, v24, v25, v26);
  }

  v14 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v15, v16, "{msg%{public}.0s:Called stopReceivingDummyData while not registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v22, v23, v24, v25, v26);
  }

  v21 = abort_report_np();
  [RMRelativeMotionManager startReceivingAudioListenerPoseWithForceSessionRestart:v21];
}

- (id)getCurrentDummyData
{
  os_unfair_lock_lock(&self->_dummyDataBufferLock);
  if (self->_currentDummyDataBufferIndex >= 0)
  {
    v3 = self->_currentDummyDataBufferIndex & 1;
  }

  else
  {
    v3 = -(self->_currentDummyDataBufferIndex & 1);
  }

  v4 = self->_dummyDataBuffer[v3];
  os_unfair_lock_unlock(&self->_dummyDataBufferLock);

  return v4;
}

- (void)startReceivingAudioListenerPoseWithForceSessionRestart:(_BYTE *)val
{
  if (val)
  {
    if (val[225])
    {
      [RMRelativeMotionManager startReceivingAudioListenerPoseWithForceSessionRestart:];
    }

    val[225] = 1;
    objc_initWeak(&location, val);
    v4 = *(val + 30);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__RMRelativeMotionManager_startReceivingAudioListenerPoseWithForceSessionRestart___block_invoke;
    block[3] = &unk_279AF52A8;
    v5 = v4;
    objc_copyWeak(&v7, &location);
    v8 = a2;
    dispatch_async(v5, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __82__RMRelativeMotionManager_startReceivingAudioListenerPoseWithForceSessionRestart___block_invoke_2(uint64_t a1, double *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && BYTE1(WeakRetained[56]._os_unfair_lock_opaque) == 1)
  {
    os_unfair_lock_opaque = WeakRetained[57]._os_unfair_lock_opaque;
    v9 = __OFADD__(os_unfair_lock_opaque++, 1);
    v10 = (os_unfair_lock_opaque < 0) ^ v9;
    v11 = os_unfair_lock_opaque & 1;
    if (v10)
    {
      v11 = -v11;
    }

    v12 = &WeakRetained[20 * v11];
    *&v12[10]._os_unfair_lock_opaque = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 4);
    v15 = *(a2 + 2);
    *&v12[14]._os_unfair_lock_opaque = *(a2 + 1);
    *&v12[26]._os_unfair_lock_opaque = v14;
    *&v12[22]._os_unfair_lock_opaque = v13;
    *&v12[18]._os_unfair_lock_opaque = v15;
    v16 = [v5 code];
    v17 = v7[57]._os_unfair_lock_opaque;
    v9 = __OFADD__(v17++, 1);
    v10 = (v17 < 0) ^ v9;
    v18 = v17 & 1;
    if (v10)
    {
      v18 = -v18;
    }

    *&v7[2 * v18 + 50]._os_unfair_lock_opaque = v16;
    os_unfair_lock_lock(v7 + 55);
    ++v7[57]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v7 + 55);
    if (BYTE2(v7[56]._os_unfair_lock_opaque) == 1)
    {
      MachTime = RMCommonGetMachTime();
      v20 = a2[8];
      if (onceToken_RelativeMotionManager_Default != -1)
      {
        _CLLogObjectForCategory_RelativeMotionManager_Default_cold_1();
      }

      v21 = logObject_RelativeMotionManager_Default;
      if (os_log_type_enabled(logObject_RelativeMotionManager_Default, OS_LOG_TYPE_INFO))
      {
        v22 = *(a2 + 4);
        v24 = 134349312;
        v25 = v22;
        v26 = 2050;
        v27 = (MachTime - v20) * 1000.0;
        _os_log_impl(&dword_261A9A000, v21, OS_LOG_TYPE_INFO, "[RelativeMotionManager] receivingAudioListenerPose %{public}f, xpcLatency %{public}.2f ms", &v24, 0x16u);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stopReceivingAudioListenerPose
{
  if (self && self->_shouldReceiveAudioListenerPose)
  {
    self->_shouldReceiveAudioListenerPose = 0;
    v3 = self->_audioListenerPoseManager;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__RMRelativeMotionManager_stopReceivingAudioListenerPose__block_invoke;
    block[3] = &unk_279AF5258;
    v8 = v3;
    v5 = v3;
    dispatch_async(queue, block);
    os_unfair_lock_lock(&self->_audioListenerPoseBufferLock);
    self->_audioListenerPoseBuffer[0].quaternion.y = 0.0;
    self->_audioListenerPoseBuffer[0].quaternion.z = 0.0;
    self->_audioListenerPoseBuffer[0].quaternion.x = 0.0;
    *&self->_audioListenerPoseBuffer[0].quaternion.w = xmmword_261AA5E00;
    *&self->_audioListenerPoseBuffer[1].consumedAuxTimestamp = *&self->_audioListenerPoseBuffer[0].consumedAuxTimestamp;
    *&self->_audioListenerPoseBuffer[1].machAbsTimestamp = *&self->_audioListenerPoseBuffer[0].machAbsTimestamp;
    *&self->_audioListenerPoseBuffer[1].quaternion.z = *&self->_audioListenerPoseBuffer[0].quaternion.z;
    *&self->_audioListenerPoseBuffer[1].timestamp = *&self->_audioListenerPoseBuffer[0].timestamp;
    *&self->_audioListenerPoseBuffer[1].quaternion.x = *&self->_audioListenerPoseBuffer[0].quaternion.x;
    os_unfair_lock_unlock(&self->_audioListenerPoseBufferLock);
  }

  else
  {
    stopReceivingAudioListenerPose = [RMRelativeMotionManager stopReceivingAudioListenerPose];
    __57__RMRelativeMotionManager_stopReceivingAudioListenerPose__block_invoke(stopReceivingAudioListenerPose);
  }
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    v3 = self->_dummyDataManager;
    self = selfCopy->_audioListenerPoseManager;
    queue = selfCopy->_queue;
  }

  else
  {
    v3 = 0;
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RMRelativeMotionManager_dealloc__block_invoke;
  block[3] = &unk_279AF52D0;
  v9 = v3;
  selfCopy2 = self;
  selfCopy3 = self;
  v6 = v3;
  dispatch_async(queue, block);

  v7.receiver = selfCopy;
  v7.super_class = RMRelativeMotionManager;
  [(RMRelativeMotionManager *)&v7 dealloc];
}

uint64_t __34__RMRelativeMotionManager_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 240), a2);
  }
}

- (void)setDummyDataManager:(uint64_t)manager
{
  if (manager)
  {
    objc_storeStrong((manager + 248), a2);
  }
}

- (uint64_t)setShouldReceiveDummyData:(uint64_t)result
{
  if (result)
  {
    *(result + 224) = a2;
  }

  return result;
}

- (void)setDefaults:(uint64_t)defaults
{
  if (defaults)
  {
    objc_storeStrong((defaults + 256), a2);
  }
}

- (void)setAudioListenerPoseManager:(uint64_t)manager
{
  if (manager)
  {
    objc_storeStrong((manager + 264), a2);
  }
}

- (uint64_t)setShouldReceiveAudioListenerPose:(uint64_t)result
{
  if (result)
  {
    *(result + 225) = a2;
  }

  return result;
}

- (uint64_t)defaults
{
  if (result)
  {
    return *(result + 256);
  }

  return result;
}

- (uint64_t)setVerboseLatencyAnalysisLogging:(uint64_t)result
{
  if (result)
  {
    *(result + 226) = a2;
  }

  return result;
}

- (uint64_t)verboseLatencyAnalysisLogging
{
  if (self)
  {
    return OUTLINED_FUNCTION_4(*(self + 226));
  }

  else
  {
    return OUTLINED_FUNCTION_4(0);
  }
}

- (uint64_t)shouldReceiveDummyData
{
  if (self)
  {
    return OUTLINED_FUNCTION_4(*(self + 224));
  }

  else
  {
    return OUTLINED_FUNCTION_4(0);
  }
}

- (uint64_t)queue
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

- (uint64_t)dummyDataManager
{
  if (result)
  {
    return *(result + 248);
  }

  return result;
}

- (uint64_t)shouldReceiveAudioListenerPose
{
  if (self)
  {
    return OUTLINED_FUNCTION_4(*(self + 225));
  }

  else
  {
    return OUTLINED_FUNCTION_4(0);
  }
}

void __82__RMRelativeMotionManager_startReceivingAudioListenerPoseWithForceSessionRestart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained audioListenerPoseOptions];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v4 = v4[33];
  }

  [v4 setTempestOptions:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 33);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__RMRelativeMotionManager_startReceivingAudioListenerPoseWithForceSessionRestart___block_invoke_2;
  v11[3] = &unk_279AF5280;
  objc_copyWeak(&v12, (a1 + 32));
  [v9 startReceivingAudioListenerPoseUpdatesWithForceSessionRestart:v10 poseCallbackInternal:v11];

  objc_destroyWeak(&v12);
}

- (uint64_t)audioListenerPoseManager
{
  if (result)
  {
    return *(result + 264);
  }

  return result;
}

- (void)resetAudioListenerPoseTrackingForAllClients
{
  if (self && self->_shouldReceiveAudioListenerPose)
  {
    [(RMRelativeMotionManager *)self stopReceivingAudioListenerPose];

    [(RMRelativeMotionManager *)self startReceivingAudioListenerPoseWithForceSessionRestart:?];
  }
}

- (uint64_t)getCurrentAudioListenerPoseInternal:(os_unfair_lock_s *)internal
{
  if (!internal)
  {
    return 0;
  }

  os_unfair_lock_lock(internal + 55);
  if (a2)
  {
    OUTLINED_FUNCTION_6();
    memcpy(a2, &internal[20 * v4 + 10], 0x50uLL);
  }

  OUTLINED_FUNCTION_6();
  v6 = *&internal[2 * v5 + 50]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(internal + 55);
  return v6;
}

- (int64_t)getCurrentAudioListenerPose:(id *)pose timestamp:(double *)timestamp
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = OUTLINED_FUNCTION_5(self, a2, pose, timestamp, v4, v5, v6, v7, v15, v17, v19, v21, v24);
  if (pose)
  {
    *&pose->var0 = v16;
    *&pose->var2 = v18;
  }

  if (timestamp)
  {
    *timestamp = v20;
  }

  if (self && self->_verboseLatencyAnalysisLogging)
  {
    if (onceToken_RelativeMotionManager_Default != -1)
    {
      dispatch_once(&onceToken_RelativeMotionManager_Default, &__block_literal_global_0);
    }

    v12 = logObject_RelativeMotionManager_Default;
    if (os_log_type_enabled(logObject_RelativeMotionManager_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 134285569;
      v28 = v16;
      v29 = 2049;
      v30 = *(&v16 + 1);
      v31 = 2049;
      v32 = v18;
      v33 = 2049;
      v34 = *(&v18 + 1);
      v35 = 2049;
      v36 = v22;
      v37 = 2049;
      v38 = v23;
      v39 = 2049;
      v40 = v25;
      v41 = 2049;
      v42 = v26;
      v43 = 2049;
      v44 = v20;
      _os_log_impl(&dword_261A9A000, v12, OS_LOG_TYPE_INFO, "[RelativeMotionManager] currentAudioListenerPose RMPose,q.x,%{private}f,q.y,%{private}f,q.z,%{private}f,q.w,%{private}f,consumedAuxTimestamp,%{private}f,receivedAuxTimestamp,%{private}f,machAbsTimestamp,%{private}f,presentationTimestamp,%{private}f,timestamp,%{private}f", buf, 0x5Cu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getCurrentAudioListenerPoseWithError:(int64_t *)error
{
  v9 = OUTLINED_FUNCTION_5(self, a2, error, v3, v4, v5, v6, v7, v13, v16, v19, v21, v24);
  if (error)
  {
    *error = v9;
  }

  v10 = [[RMAttitude alloc] _initWithQuaternion:v14 timestamp:v15, v17, v18, v20];
  v11 = [[RMPose alloc] _initWithAttitude:v10 consumedAuxTimestamp:v22 receivedAuxTimestamp:v23 machAbsTimestamp:v25 presentationTimestamp:v26];

  return v11;
}

- (uint64_t)currentAudioListenerPoseBufferIndex
{
  if (result)
  {
    return *(result + 228);
  }

  return result;
}

- (uint64_t)setCurrentAudioListenerPoseBufferIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 228) = a2;
  }

  return result;
}

- (void)startReceivingAudioListenerPoseWithForceSessionRestart:.cold.1()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v2, v3, "{msg%{public}.0s:Called startReceivingAudioListenerPose while already registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v9, v10, v11, "Called startReceivingAudioListenerPose while already registered to receive data", "{msg%{public}.0s:Called startReceivingAudioListenerPose while already registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v15, v16, "{msg%{public}.0s:Called startReceivingAudioListenerPose while already registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  __break(1u);
}

- (uint64_t)stopReceivingAudioListenerPose
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_261A9A000, v2, v3, "{msg%{public}.0s:Called stopReceivingAudioListenerPose while not registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (os_signpost_enabled(v8))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_261A9A000, v9, v10, v11, "Called stopReceivingAudioListenerPose while not registered to receive data", "{msg%{public}.0s:Called stopReceivingAudioListenerPose while not registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = _CLLogObjectForCategory_RelativeMotionManager_Default();
  if (OUTLINED_FUNCTION_7(v14))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_261A9A000, v15, v16, "{msg%{public}.0s:Called stopReceivingAudioListenerPose while not registered to receive data, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return [RMAudioListenerPoseManager setQueue:v21];
}

@end