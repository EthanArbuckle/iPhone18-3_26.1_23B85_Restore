@interface TSDClockSync
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
- (BOOL)deregisterAsyncCallback;
- (BOOL)registerAsyncCallback;
- (id)connection;
- (id)service;
- (unint64_t)releaseReference;
- (void)_handleNotification:(int)a3 withArgs:(unint64_t *)a4 ofCount:(unsigned int)a5;
- (void)addUpdateClient:(id)a3;
- (void)removeUpdateClient:(id)a3;
@end

@implementation TSDClockSync

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v9[0] = @"IOProviderClass";
  v9[1] = @"IOPropertyMatch";
  v10[0] = @"IOTimeSyncService";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

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
  if (a3 == 3001)
  {
    if (a5 == 13)
    {
      v31 = *(a4 + 6) | (a4[2] << 32);
      v32 = *(a4 + 2) | (*a4 << 32);
      v29 = *(a4 + 14) | (a4[6] << 32);
      v30 = *(a4 + 10) | (a4[4] << 32);
      v28 = *(a4 + 18) | (a4[8] << 32);
      v18 = *(a4 + 22) | (a4[10] << 32);
      v19 = a4[12];
      v20 = v19 & 0xFF000000;
      if (self->_logNotifyTest && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134220032;
        *v43 = v32;
        *&v43[8] = 2048;
        v44 = v31;
        v45 = 2048;
        v46 = v30;
        v47 = 2048;
        v48 = v29;
        v49 = 2048;
        v50 = v28;
        v51 = 2048;
        v52 = v18;
        v53 = 1024;
        v54 = v19;
        v55 = 1024;
        v56 = BYTE2(v19);
        v57 = 1024;
        v58 = v20 != 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification kIOTimeSyncSyncNotificationPTPSyncUpdate cumulativeScaledRate=%llu inverseCumulativeScaledRate=%llu timeSyncAnchor=%llu domainAnchorHi=%llu domainAnchorLo=%llu grandmasterID=%llu localPortNumber=%u syncFlags=%u syncInfoValid=%u", buf, 0x50u);
      }

      os_unfair_lock_lock(&self->_updateClientsLock);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v27 = self;
      v12 = self->_updateClients;
      v21 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v12);
            }

            v25 = *(*(&v33 + 1) + 8 * i);
            if ([v25 conformsToProtocol:&OBJC_PROTOCOL___TSDClockSyncGeneralSyncClient])
            {
              LOWORD(v26) = v19;
              [v25 updateWithSyncInfoValid:v20 != 0 syncFlags:BYTE2(v19) timeSyncTime:v30 domainTimeHi:v29 domainTimeLo:v28 cumulativeScaledRate:v32 inverseCumulativeScaledRate:v31 grandmasterID:v18 localPortNumber:v26];
            }
          }

          v22 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v22);
      }

      goto LABEL_30;
    }

    sub_100029E80();
  }

  else if (a3 == 3000)
  {
    if (a5 == 8)
    {
      v8 = *(a4 + 2) | (*a4 << 32);
      v9 = *(a4 + 6) | (a4[2] << 32);
      v10 = *(a4 + 10) | (a4[4] << 32);
      v11 = *(a4 + 14) | (a4[6] << 32);
      if (self->_logNotifyTest && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *v43 = v8;
        *&v43[8] = 2048;
        v44 = v9;
        v45 = 2048;
        v46 = v10;
        v47 = 2048;
        v48 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification kIOTimeSyncSyncNotificationGeneralSyncUpdate rateNumerator=%llu rateDenominator=%llu timeSyncAnchor=%llu domainAnchor=%llu", buf, 0x2Au);
      }

      os_unfair_lock_lock(&self->_updateClientsLock);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v27 = self;
      v12 = self->_updateClients;
      v13 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v37 objects:v59 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v38;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v38 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v37 + 1) + 8 * j);
            if ([v17 conformsToProtocol:&OBJC_PROTOCOL___TSDClockSyncGeneralSyncClient])
            {
              [v17 updateTimeSyncTime:v10 timeSyncInterval:v8 domainTime:v11 domainInterval:v9];
            }
          }

          v14 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v37 objects:v59 count:16];
        }

        while (v14);
      }

LABEL_30:

      os_unfair_lock_unlock(&v27->_updateClientsLock);
      return;
    }

    sub_100029F30();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v43 = a3;
    *&v43[4] = 1024;
    *&v43[6] = a5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification unhandled notification %u numArgs %u\n", buf, 0xEu);
  }
}

- (BOOL)registerAsyncCallback
{
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:self];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  v5 = [(TSDClockSync *)self connection];
  v6 = [v5 registerAsyncNotificationsWithSelector:0 callBack:sub_100000FC8 refcon:self->_asyncCallbackRefcon callbackQueue:self->_notificationsQueue];

  if ((v6 & 1) == 0)
  {
    sub_100029FE0(p_asyncCallbackRefcon);
  }

  return v6;
}

- (BOOL)deregisterAsyncCallback
{
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:self->_asyncCallbackRefcon];

  v4 = [(TSDClockSync *)self connection];
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

@end