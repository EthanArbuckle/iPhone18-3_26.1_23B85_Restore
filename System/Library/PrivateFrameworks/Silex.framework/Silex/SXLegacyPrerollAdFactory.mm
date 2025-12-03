@interface SXLegacyPrerollAdFactory
- (SXLegacyPrerollAdFactory)initWithViewport:(id)viewport scrollObserverManager:(id)manager;
- (id)createVideoAdProviderForComponentView:(id)view videoPlayerViewController:(id)controller analyticsReporter:(id)reporter;
@end

@implementation SXLegacyPrerollAdFactory

- (SXLegacyPrerollAdFactory)initWithViewport:(id)viewport scrollObserverManager:(id)manager
{
  viewportCopy = viewport;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SXLegacyPrerollAdFactory;
  v9 = [(SXLegacyPrerollAdFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, viewport);
    objc_storeStrong(&v10->_scrollObserverManager, manager);
  }

  return v10;
}

- (id)createVideoAdProviderForComponentView:(id)view videoPlayerViewController:(id)controller analyticsReporter:(id)reporter
{
  reporterCopy = reporter;
  controllerCopy = controller;
  viewCopy = view;
  v11 = [SXComponentVisiblePercentageProvider alloc];
  viewport = [(SXLegacyPrerollAdFactory *)self viewport];
  v13 = [(SXComponentVisiblePercentageProvider *)v11 initWithViewport:viewport];

  v14 = [(SXVisibilityMonitor *)[SXVideoComponentVisibilityMonitor alloc] initWithObject:viewCopy visiblePercentageProvider:v13];
  [(SXVisibilityMonitor *)v14 updateVisibility];
  scrollObserverManager = [(SXLegacyPrerollAdFactory *)self scrollObserverManager];
  [scrollObserverManager addScrollObserver:v14];

  v16 = [objc_alloc(MEMORY[0x1E69CE120]) initWithViewControllerProvider:controllerCopy];
  v17 = objc_alloc_init(SXVideoPlayerAdSlotVisiblePercentageProvider);
  v18 = [[SXVideoPlayerAdSlotVisibilityMonitor alloc] initWithVideoPlayerViewController:controllerCopy videoAdSlotVisiblePercentageProvider:v17];

  v19 = [SXVideoAdProvider alloc];
  component = [viewCopy component];

  v21 = [(SXVideoAdProvider *)v19 initWithViewControllerProvider:v16 videoPlayerVisibilityMonitor:v14 videoVisibilityMonitor:v18 component:component];
  [(SXVideoAdProvider *)v21 setAnalyticsReporter:reporterCopy];

  return v21;
}

@end