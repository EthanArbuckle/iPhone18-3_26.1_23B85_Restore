@interface BRCUploadV1PerformanceTrackerManager
+ (id)sharedManager;
- (id)_init;
- (id)trackerForCurrentPersona;
- (void)_removeAllTrackers;
- (void)removeTrackerForCurrentPersona;
@end

@implementation BRCUploadV1PerformanceTrackerManager

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    +[BRCUploadV1PerformanceTrackerManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

uint64_t __53__BRCUploadV1PerformanceTrackerManager_sharedManager__block_invoke()
{
  sharedManager_sharedInstance = [[BRCUploadV1PerformanceTrackerManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = BRCUploadV1PerformanceTrackerManager;
  v2 = [(BRCUploadV1PerformanceTrackerManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    personaToTrackers = v2->_personaToTrackers;
    v2->_personaToTrackers = v3;
  }

  return v2;
}

- (id)trackerForCurrentPersona
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  uploadV1PerformanceTrackerCap = [v3 uploadV1PerformanceTrackerCap];

  if (uploadV1PerformanceTrackerCap)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

    v7 = self->_personaToTrackers;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)self->_personaToTrackers objectForKeyedSubscript:br_currentPersonaID];
    if (!v8)
    {
      v8 = [[BRCUploadV1PerformanceTracker alloc] _initWithCapacity:uploadV1PerformanceTrackerCap];
      if (v8)
      {
        [(NSMutableDictionary *)self->_personaToTrackers setObject:v8 forKeyedSubscript:br_currentPersonaID];
      }
    }

    objc_sync_exit(v7);
  }

  else
  {
    [(BRCUploadV1PerformanceTrackerManager *)self _removeAllTrackers];
    v8 = 0;
  }

  return v8;
}

- (void)removeTrackerForCurrentPersona
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

  v4 = self->_personaToTrackers;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_personaToTrackers objectForKeyedSubscript:br_currentPersonaID];
  v6 = v5;
  if (v5)
  {
    [v5 close];
    [(NSMutableDictionary *)self->_personaToTrackers removeObjectForKey:br_currentPersonaID];
  }

  objc_sync_exit(v4);
}

- (void)_removeAllTrackers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_personaToTrackers;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_personaToTrackers allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7++) close];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_personaToTrackers removeAllObjects];
  objc_sync_exit(v3);

  v8 = *MEMORY[0x277D85DE8];
}

@end