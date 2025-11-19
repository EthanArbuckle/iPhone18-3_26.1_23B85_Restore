@interface VCCKApplicationStateObserver
- (VCCKApplicationStateObserver)initWithBundleIdentifier:(id)a3;
- (void)dealloc;
@end

@implementation VCCKApplicationStateObserver

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = VCCKApplicationStateObserver;
  [(VCCKApplicationStateObserver *)&v3 dealloc];
}

- (VCCKApplicationStateObserver)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"VCCKApplicationStateObserver.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v26.receiver = self;
  v26.super_class = VCCKApplicationStateObserver;
  v6 = [(VCCKApplicationStateObserver *)&v26 init];
  if (v6)
  {
    v7 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    atomic_store(0, &v6->_atomicApplicationVisible);
    v9 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v6);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__VCCKApplicationStateObserver_initWithBundleIdentifier___block_invoke;
    v22[3] = &unk_2788FE5B8;
    objc_copyWeak(&v24, &location);
    v10 = v5;
    v23 = v10;
    [v9 setTransitionHandler:v22];
    v11 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v9];
    layoutMonitor = v6->_layoutMonitor;
    v6->_layoutMonitor = v11;

    v13 = [(FBSDisplayLayoutMonitor *)v6->_layoutMonitor currentLayout];
    v14 = v10;
    v15 = [v13 elements];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __VCApplicationPresentInLayout_block_invoke;
    v27[3] = &unk_2788FE5E0;
    v16 = v14;
    v28 = v16;
    v17 = [v15 if_firstObjectPassingTest:v27];
    v18 = v17 != 0;

    [(VCCKApplicationStateObserver *)v6 setApplicationVisible:v18];
    v19 = v6;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __57__VCCKApplicationStateObserver_initWithBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v7 = [v4 elements];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __VCApplicationPresentInLayout_block_invoke;
  v10[3] = &unk_2788FE5E0;
  v11 = v6;
  v8 = v6;
  v9 = [v7 if_firstObjectPassingTest:v10];

  if ((v9 != 0) != [WeakRetained isApplicationVisible])
  {
    [WeakRetained setApplicationVisible:v9 != 0];
  }
}

@end