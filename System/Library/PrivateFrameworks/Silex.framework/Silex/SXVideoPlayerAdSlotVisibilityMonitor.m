@interface SXVideoPlayerAdSlotVisibilityMonitor
- (SXVideoPlayerAdSlotVisibilityMonitor)initWithVideoPlayerViewController:(id)a3 videoAdSlotVisiblePercentageProvider:(id)a4;
@end

@implementation SXVideoPlayerAdSlotVisibilityMonitor

- (SXVideoPlayerAdSlotVisibilityMonitor)initWithVideoPlayerViewController:(id)a3 videoAdSlotVisiblePercentageProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SXVideoPlayerAdSlotVisibilityMonitor;
  v8 = [(SXVisibilityMonitor *)&v16 initWithObject:v6 visiblePercentageProvider:v7];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = objc_alloc(MEMORY[0x1E69CE108]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __111__SXVideoPlayerAdSlotVisibilityMonitor_initWithVideoPlayerViewController_videoAdSlotVisiblePercentageProvider___block_invoke;
    v13[3] = &unk_1E85003C8;
    objc_copyWeak(&v14, &location);
    v10 = [v9 initWithKeyPath:@"mode" ofObject:v6 withOptions:1 change:v13];
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