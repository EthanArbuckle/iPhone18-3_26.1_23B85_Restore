@interface PUIContinuityLayoutManager
+ (id)sharedInstance;
- (PUIContinuityLayoutManager)init;
- (void)appDidLaunch;
- (void)createContinuityDisplayMonitor;
@end

@implementation PUIContinuityLayoutManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PUIContinuityLayoutManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __44__PUIContinuityLayoutManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PUIContinuityLayoutManager)init
{
  v5.receiver = self;
  v5.super_class = PUIContinuityLayoutManager;
  v2 = [(PUIContinuityLayoutManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_isMirroring = 0;
    [(PUIContinuityLayoutManager *)v2 createContinuityDisplayMonitor];
  }

  return v3;
}

- (void)appDidLaunch
{
  v2 = _PUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "App did launch for continuity layout monitor", v3, 2u);
  }
}

- (void)createContinuityDisplayMonitor
{
  v3 = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __60__PUIContinuityLayoutManager_createContinuityDisplayMonitor__block_invoke;
  v10 = &unk_279BA19D8;
  objc_copyWeak(&v11, &location);
  [v3 setTransitionHandler:&v7];
  monitor = self->_monitor;
  if (monitor)
  {
    [(FBSDisplayLayoutMonitor *)monitor invalidate:v7];
  }

  v5 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{v3, v7, v8, v9, v10}];
  v6 = self->_monitor;
  self->_monitor = v5;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__PUIContinuityLayoutManager_createContinuityDisplayMonitor__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _PUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"No";
    if (a3)
    {
      v6 = @"Yes";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "Received transition for continuity layout, is active: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsMirroring:a3 != 0];

  v8 = *MEMORY[0x277D85DE8];
}

@end