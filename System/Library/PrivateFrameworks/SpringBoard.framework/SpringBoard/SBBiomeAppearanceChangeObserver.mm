@interface SBBiomeAppearanceChangeObserver
- (SBBiomeAppearanceChangeObserver)init;
- (void)_startObserving;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBBiomeAppearanceChangeObserver

- (SBBiomeAppearanceChangeObserver)init
{
  v11.receiver = self;
  v11.super_class = SBBiomeAppearanceChangeObserver;
  v2 = [(SBBiomeAppearanceChangeObserver *)&v11 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    device = [v3 Device];
    display = [device Display];
    appearance = [display Appearance];
    v7 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:0 reversed:1];
    v8 = [appearance publisherWithUseCase:@"ApplicationSnapshot" options:v7];
    appearancePublisher = v2->_appearancePublisher;
    v2->_appearancePublisher = v8;

    [(SBBiomeAppearanceChangeObserver *)v2 _startObserving];
  }

  return v2;
}

- (void)dealloc
{
  [(SBBiomeAppearanceChangeObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBBiomeAppearanceChangeObserver;
  [(SBBiomeAppearanceChangeObserver *)&v3 dealloc];
}

- (void)invalidate
{
  [(BPSCancellable *)self->_cancellable cancel];
  cancellable = self->_cancellable;
  self->_cancellable = 0;

  self->_observing = 0;
}

- (void)_startObserving
{
  if (![(SBBiomeAppearanceChangeObserver *)self isObserving])
  {
    self->_observing = 1;
    objc_initWeak(&location, self);
    appearancePublisher = self->_appearancePublisher;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke;
    v8[3] = &unk_2783BD500;
    objc_copyWeak(&v9, &location);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_5;
    v6[3] = &unk_2783BD528;
    objc_copyWeak(&v7, &location);
    v4 = [(BPSPublisher *)appearancePublisher sinkWithCompletion:v8 shouldContinue:v6];
    cancellable = self->_cancellable;
    self->_cancellable = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_2;
    v5[3] = &unk_2783A92D8;
    v6 = v3;
    v7 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    v4 = SBLogSceneSnapshots();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_2_cold_1(v2, v4);
    }
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  *(*(a1 + 40) + 8) = 0;
}

uint64_t __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained isObserving])
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_2_6;
    v11 = &unk_2783A92D8;
    v12 = v5;
    v13 = v3;
    dispatch_async(MEMORY[0x277D85CD0], &v8);
    v6 = [v5 isObserving];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_2_6(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = *(a1 + 32);
  [*(a1 + 40) timestamp];
  v3 = [v1 dateWithTimeIntervalSinceReferenceDate:?];
  [v2 setLastAppearanceChangeTimestamp:v3];
}

void __50__SBBiomeAppearanceChangeObserver__startObserving__block_invoke_2_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Display appearance stream error: %@", &v4, 0xCu);
}

@end