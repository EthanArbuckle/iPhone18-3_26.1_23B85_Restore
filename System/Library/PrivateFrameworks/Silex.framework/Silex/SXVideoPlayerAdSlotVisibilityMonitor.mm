@interface SXVideoPlayerAdSlotVisibilityMonitor
- (SXVideoPlayerAdSlotVisibilityMonitor)initWithVideoPlayerViewController:(id)controller videoAdSlotVisiblePercentageProvider:(id)provider;
@end

@implementation SXVideoPlayerAdSlotVisibilityMonitor

- (SXVideoPlayerAdSlotVisibilityMonitor)initWithVideoPlayerViewController:(id)controller videoAdSlotVisiblePercentageProvider:(id)provider
{
  controllerCopy = controller;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = SXVideoPlayerAdSlotVisibilityMonitor;
  v8 = [(SXVisibilityMonitor *)&v16 initWithObject:controllerCopy visiblePercentageProvider:providerCopy];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = objc_alloc(MEMORY[0x1E69CE108]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __111__SXVideoPlayerAdSlotVisibilityMonitor_initWithVideoPlayerViewController_videoAdSlotVisiblePercentageProvider___block_invoke;
    v13[3] = &unk_1E85003C8;
    objc_copyWeak(&v14, &location);
    v10 = [v9 initWithKeyPath:@"mode" ofObject:controllerCopy withOptions:1 change:v13];
    observer = v8->_observer;
    v8->_observer = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __111__SXVideoPlayerAdSlotVisibilityMonitor_initWithVideoPlayerViewController_videoAdSlotVisiblePercentageProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVisibility];
}

@end