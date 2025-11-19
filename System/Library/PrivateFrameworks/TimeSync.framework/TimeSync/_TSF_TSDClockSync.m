@interface _TSF_TSDClockSync
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
- (BOOL)deregisterAsyncCallback;
- (BOOL)registerAsyncCallback;
- (id)connection;
- (id)service;
- (unint64_t)releaseReference;
- (void)_handleNotification:(int)a3 withArgs:(unint64_t *)a4 ofCount:(unsigned int)a5;
- (void)addUpdateClient:(id)a3;
- (void)registerAsyncCallback;
- (void)removeUpdateClient:(id)a3;
@end

@implementation _TSF_TSDClockSync

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncService";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)service
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_service;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (id)connection
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (void)_handleNotification:(int)a3 withArgs:(unint64_t *)a4 ofCount:(unsigned int)a5
{
  v61 = *MEMORY[0x277D85DE8];
  if (a3 == 3001)
  {
    if (a5 != 13)
    {
      [_TSF_TSDClockSync _handleNotification:withArgs:ofCount:];
      goto LABEL_33;
    }

    v32 = *(a4 + 6) | (a4[2] << 32);
    v33 = *(a4 + 2) | (*a4 << 32);
    v30 = *(a4 + 14) | (a4[6] << 32);
    v31 = *(a4 + 10) | (a4[4] << 32);
    v29 = *(a4 + 18) | (a4[8] << 32);
    v18 = *(a4 + 22) | (a4[10] << 32);
    v19 = a4[12];
    v20 = v19 & 0xFF000000;
    if (self->_logNotifyTest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *v44 = v33;
      *&v44[8] = 2048;
      v45 = v32;
      v46 = 2048;
      v47 = v31;
      v48 = 2048;
      v49 = v30;
      v50 = 2048;
      v51 = v29;
      v52 = 2048;
      v53 = v18;
      v54 = 1024;
      v55 = v19;
      v56 = 1024;
      v57 = BYTE2(v19);
      v58 = 1024;
      v59 = v20 != 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification kIOTimeSyncSyncNotificationPTPSyncUpdate cumulativeScaledRate=%llu inverseCumulativeScaledRate=%llu timeSyncAnchor=%llu domainAnchorHi=%llu domainAnchorLo=%llu grandmasterID=%llu localPortNumber=%u syncFlags=%u syncInfoValid=%u", buf, 0x50u);
    }

    os_unfair_lock_lock(&self->_updateClientsLock);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = self;
    v12 = self->_updateClients;
    v21 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v12);
          }

          v25 = *(*(&v34 + 1) + 8 * i);
          if ([v25 conformsToProtocol:&unk_287F218A0])
          {
            LOWORD(v27) = v19;
            [v25 updateWithSyncInfoValid:v20 != 0 syncFlags:BYTE2(v19) timeSyncTime:v31 domainTimeHi:v30 domainTimeLo:v29 cumulativeScaledRate:v33 inverseCumulativeScaledRate:v32 grandmasterID:v18 localPortNumber:v27];
          }
        }

        v22 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v22);
    }

LABEL_30:

    os_unfair_lock_unlock(&v28->_updateClientsLock);
    goto LABEL_33;
  }

  if (a3 == 3000)
  {
    if (a5 != 8)
    {
      [_TSF_TSDClockSync _handleNotification:withArgs:ofCount:];
      goto LABEL_33;
    }

    v8 = *(a4 + 2) | (*a4 << 32);
    v9 = *(a4 + 6) | (a4[2] << 32);
    v10 = *(a4 + 10) | (a4[4] << 32);
    v11 = *(a4 + 14) | (a4[6] << 32);
    if (self->_logNotifyTest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *v44 = v8;
      *&v44[8] = 2048;
      v45 = v9;
      v46 = 2048;
      v47 = v10;
      v48 = 2048;
      v49 = v11;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification kIOTimeSyncSyncNotificationGeneralSyncUpdate rateNumerator=%llu rateDenominator=%llu timeSyncAnchor=%llu domainAnchor=%llu", buf, 0x2Au);
    }

    os_unfair_lock_lock(&self->_updateClientsLock);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = self;
    v12 = self->_updateClients;
    v13 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v38 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * j);
          if ([v17 conformsToProtocol:&unk_287F218A0])
          {
            [v17 updateTimeSyncTime:v10 timeSyncInterval:v8 domainTime:v11 domainInterval:v9];
          }
        }

        v14 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v38 objects:v60 count:16];
      }

      while (v14);
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v44 = a3;
    *&v44[4] = 1024;
    *&v44[6] = a5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification unhandled notification %u numArgs %u\n", buf, 0xEu);
  }

LABEL_33:
  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:self];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  v5 = [(_TSF_TSDClockSync *)self connection];
  v6 = [v5 registerAsyncNotificationsWithSelector:0 callBack:asyncNotificationsCallback_1 refcon:self->_asyncCallbackRefcon callbackQueue:self->_notificationsQueue];

  if ((v6 & 1) == 0)
  {
    [(_TSF_TSDClockSync *)p_asyncCallbackRefcon registerAsyncCallback];
  }

  return v6;
}

- (BOOL)deregisterAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:self->_asyncCallbackRefcon];

  v4 = [(_TSF_TSDClockSync *)self connection];
  LOBYTE(v3) = [v4 deregisterAsyncNotificationsWithSelector:1];

  return v3;
}

- (void)addUpdateClient:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_updateClientsLock);
  [(NSPointerArray *)self->_updateClients addPointer:v4];

  [(NSPointerArray *)self->_updateClients compact];

  os_unfair_lock_unlock(&self->_updateClientsLock);
}

- (void)removeUpdateClient:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_updateClientsLock);
  if ([(NSPointerArray *)self->_updateClients count])
  {
    v4 = 0;
    while ([(NSPointerArray *)self->_updateClients pointerAtIndex:v4]!= v5)
    {
      if (++v4 >= [(NSPointerArray *)self->_updateClients count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_updateClients removePointerAtIndex:v4];
  }

LABEL_7:
  [(NSPointerArray *)self->_updateClients compact];
  os_unfair_lock_unlock(&self->_updateClientsLock);
}

- (unint64_t)releaseReference
{
  v2 = self->_referenceCount - 1;
  self->_referenceCount = v2;
  return v2;
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotification:withArgs:ofCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotification:withArgs:ofCount:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerAsyncCallback
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v7 releaseRefcon:*a1];

  v8 = *MEMORY[0x277D85DE8];
}

@end