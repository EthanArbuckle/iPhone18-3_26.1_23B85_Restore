@interface PVThermalMonitor
+ (id)sharedInstance;
- (BOOL)_updateThermalLevelsWithToken:(int)a3;
- (BOOL)thermalLevelExceededNominal;
- (PVThermalMonitor)init;
- (id)thermalLevelLabel;
- (int)highestThermalLevelReached;
- (int)thermalLevel;
- (void)_postNotificationPrevious:(int)a3 new:(int)a4;
- (void)_setCurrentThermalLevel:(int)a3;
@end

@implementation PVThermalMonitor

- (PVThermalMonitor)init
{
  v18.receiver = self;
  v18.super_class = PVThermalMonitor;
  v2 = [(PVThermalMonitor *)&v18 init];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.PVThermalMonitor", v4];
  [(PVThermalMonitor *)v2 setHighestThermalLevel:0];
  [(PVThermalMonitor *)v2 setCurrentThermalLevel:0];
  v6 = dispatch_queue_create([v5 UTF8String], 0);
  [(PVThermalMonitor *)v2 setQueue:v6];

  v2->_enabled = 1;
  v7 = [(PVThermalMonitor *)v2 queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = *"";
  handler[2] = __24__PVThermalMonitor_init__block_invoke;
  handler[3] = &unk_279AA5780;
  v8 = v2;
  v17 = v8;
  v9 = notify_register_dispatch("com.apple.system.thermalpressurelevel", &[PVThermalMonitor init]::s_token, v7, handler);

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(PVThermalMonitor *)v8 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *"";
    block[2] = __24__PVThermalMonitor_init__block_invoke_2;
    block[3] = &unk_279AA4DD8;
    v12 = v8;
    v15 = v12;
    dispatch_async(v11, block);

    v10 = v12;
  }

  return v10;
}

uint64_t __24__PVThermalMonitor_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) currentThermalLevel];
  result = [*(a1 + 32) _updateThermalLevelsWithToken:a2];
  if (result)
  {
    v6 = [*(a1 + 32) currentThermalLevel];
    v7 = *(a1 + 32);

    return [v7 _postNotificationPrevious:v4 new:v6];
  }

  return result;
}

+ (id)sharedInstance
{
  if (+[PVThermalMonitor sharedInstance]::onceToken != -1)
  {
    +[PVThermalMonitor sharedInstance];
  }

  v3 = +[PVThermalMonitor sharedInstance]::s_sharedInstance;

  return v3;
}

void __34__PVThermalMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PVThermalMonitor);
  v1 = +[PVThermalMonitor sharedInstance]::s_sharedInstance;
  +[PVThermalMonitor sharedInstance]::s_sharedInstance = v0;
}

- (BOOL)thermalLevelExceededNominal
{
  if ([(PVThermalMonitor *)self _disabledThermalTracking])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4 = [(PVThermalMonitor *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = *"";
    v6[2] = __47__PVThermalMonitor_thermalLevelExceededNominal__block_invoke;
    v6[3] = &unk_279AA57A8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v4, v6);

    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

uint64_t __47__PVThermalMonitor_thermalLevelExceededNominal__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) highestThermalLevel];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (int)thermalLevel
{
  if ([(PVThermalMonitor *)self _disabledThermalTracking])
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PVThermalMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __32__PVThermalMonitor_thermalLevel__block_invoke;
  v6[3] = &unk_279AA57A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __32__PVThermalMonitor_thermalLevel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) currentThermalLevel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)highestThermalLevelReached
{
  if ([(PVThermalMonitor *)self _disabledThermalTracking])
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(PVThermalMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __46__PVThermalMonitor_highestThermalLevelReached__block_invoke;
  v6[3] = &unk_279AA57A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __46__PVThermalMonitor_highestThermalLevelReached__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) highestThermalLevel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)thermalLevelLabel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(PVThermalMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = __37__PVThermalMonitor_thermalLevelLabel__block_invoke;
  v6[3] = &unk_279AA57A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__PVThermalMonitor_thermalLevelLabel__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) currentThermalLevel];
  v4 = [*(a1 + 32) _disabledThermalTracking];
  v5 = &stru_2872E16E0;
  if (v4)
  {
    v5 = @"*";
  }

  v6 = [v2 stringWithFormat:@"T %d%@", v3, v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)_updateThermalLevelsWithToken:(int)a3
{
  state64 = 0;
  state = notify_get_state(a3, &state64);
  if (!state)
  {
    [(PVThermalMonitor *)self _setCurrentThermalLevel:state64];
  }

  return state == 0;
}

- (void)_setCurrentThermalLevel:(int)a3
{
  [(PVThermalMonitor *)self setCurrentThermalLevel:*&a3];
  v4 = [(PVThermalMonitor *)self currentThermalLevel];
  if (v4 > [(PVThermalMonitor *)self highestThermalLevel])
  {
    v5 = [(PVThermalMonitor *)self currentThermalLevel];

    [(PVThermalMonitor *)self setHighestThermalLevel:v5];
  }
}

- (void)_postNotificationPrevious:(int)a3 new:(int)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __50__PVThermalMonitor__postNotificationPrevious_new___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v5 = a3;
  v6 = a4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__PVThermalMonitor__postNotificationPrevious_new___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"PVThermalMonitorLevelChangedPreviousLevelKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  v6[1] = @"PVThermalMonitorLevelChangedNewLevelKey";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PVThermalMonitorLevelChangedNotification" object:0 userInfo:v4];
}

@end