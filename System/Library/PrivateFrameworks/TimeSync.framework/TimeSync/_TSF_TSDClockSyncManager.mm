@interface _TSF_TSDClockSyncManager
+ (id)sharedClockSyncManager;
- (_TSF_TSDClockSyncManager)init;
- (void)releaseClockSyncForClockIdentifier:(unint64_t)a3;
@end

@implementation _TSF_TSDClockSyncManager

+ (id)sharedClockSyncManager
{
  if (sharedClockSyncManager_onceToken != -1)
  {
    +[_TSF_TSDClockSyncManager sharedClockSyncManager];
  }

  v3 = _sharedClockSyncManager;

  return v3;
}

- (_TSF_TSDClockSyncManager)init
{
  v6.receiver = self;
  v6.super_class = _TSF_TSDClockSyncManager;
  v2 = [(_TSF_TSDClockSyncManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    clockSyncs = v2->_clockSyncs;
    v2->_clockSyncs = v3;

    v2->_clockSyncsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)releaseClockSyncForClockIdentifier:(unint64_t)a3
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  os_unfair_lock_lock(&self->_clockSyncsLock);
  v4 = [(NSMutableDictionary *)self->_clockSyncs objectForKeyedSubscript:v6];
  v5 = v4;
  if (v4 && ![v4 releaseReference])
  {
    [(NSMutableDictionary *)self->_clockSyncs removeObjectForKey:v6];
    [v5 finalizeNotifications];
  }

  os_unfair_lock_unlock(&self->_clockSyncsLock);
}

@end