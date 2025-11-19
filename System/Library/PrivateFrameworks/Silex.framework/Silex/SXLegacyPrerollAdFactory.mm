@interface SXLegacyPrerollAdFactory
- (SXLegacyPrerollAdFactory)initWithViewport:(id)a3 scrollObserverManager:(id)a4;
- (id)createVideoAdProviderForComponentView:(id)a3 videoPlayerViewController:(id)a4 analyticsReporter:(id)a5;
@end

@implementation SXLegacyPrerollAdFactory

- (SXLegacyPrerollAdFactory)initWithViewport:(id)a3 scrollObserverManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXLegacyPrerollAdFactory;
  v9 = [(SXLegacyPrerollAdFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, a3);
    objc_storeStrong(&v10->_scrollObserverManager, a4);
  }

  return v10;
}

- (id)createVideoAdProviderForComponentView:(id)a3 videoPlayerViewController:(id)a4 analyticsReporter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [SXComponentVisiblePercentageProvider alloc];
  v12 = [(SXLegacyPrerollAdFactory *)self viewport];
  v13 = [(SXComponentVisiblePercentageProvider *)v11 initWithViewport:v12];

  v14 = [(SXVisibilityMonitor *)[SXVideoComponentVisibilityMonitor alloc] initWithObject:v10 visiblePercentageProvider:v13];
  [(SXVisibilityMonitor *)v14 updateVisibility];
  v15 = [(SXLegacyPrerollAdFactory *)self scrollObserverManager];
  [v15 addScrollObserver:v14];

  v16 = [objc_alloc(MEMORY[0x1E69CE120]) initWithViewControllerProvider:v9];
  v17 = objc_alloc_init(SXVideoPlayerAdSlotVisiblePercentageProvider);
  v18 = [[SXVideoPlayerAdSlotVisibilityMonitor alloc] initWithVideoPlayerViewController:v9 videoAdSlotVisiblePercentageProvider:v17];

  v19 = [SXVideoAdProvider alloc];
  v20 = [v10 component];

  v21 = [(SXVideoAdProvider *)v19 initWithViewControllerProvider:v16 videoPlayerVisibilityMonitor:v14 videoVisibilityMonitor:v18 component:v20];
  [(SXVideoAdProvider *)v21 setAnalyticsReporter:v8];

  return v21;
}

@end