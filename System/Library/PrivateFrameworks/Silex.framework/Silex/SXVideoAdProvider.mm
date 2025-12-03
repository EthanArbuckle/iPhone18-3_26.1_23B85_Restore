@interface SXVideoAdProvider
- (SVVideoMetadata)metadata;
- (SXVideoAdProvider)initWithViewControllerProvider:(id)provider videoPlayerVisibilityMonitor:(id)monitor videoVisibilityMonitor:(id)visibilityMonitor component:(id)component;
- (UIButton)privacyMarker;
- (void)adVisibilityStateChanged;
- (void)playbackFailedWithError:(id)error;
- (void)playbackFinished;
- (void)playbackPaused;
- (void)playbackResumed;
- (void)playbackStarted;
- (void)presentAction;
- (void)skipped;
@end

@implementation SXVideoAdProvider

- (SXVideoAdProvider)initWithViewControllerProvider:(id)provider videoPlayerVisibilityMonitor:(id)monitor videoVisibilityMonitor:(id)visibilityMonitor component:(id)component
{
  providerCopy = provider;
  monitorCopy = monitor;
  visibilityMonitorCopy = visibilityMonitor;
  componentCopy = component;
  v20.receiver = self;
  v20.super_class = SXVideoAdProvider;
  v15 = [(SXVideoAdProvider *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fullscreenViewControllerProvider, provider);
    v17 = objc_alloc_init(SXVideoAdStateManager);
    stateManager = v16->_stateManager;
    v16->_stateManager = v17;

    objc_storeStrong(&v16->_videoPlayerVisibilityMonitor, monitor);
    objc_storeStrong(&v16->_videoVisibilityMonitor, visibilityMonitor);
    objc_storeStrong(&v16->_component, component);
  }

  return v16;
}

- (void)playbackStarted
{
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager play];
}

- (void)playbackPaused
{
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager pause];
}

- (void)playbackResumed
{
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager play];
}

- (void)playbackFinished
{
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager finish];
}

- (void)playbackFailedWithError:(id)error
{
  errorCopy = error;
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager failWithError:errorCopy];
}

- (void)skipped
{
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager skip];
}

- (void)presentAction
{
  stateManager = [(SXVideoAdProvider *)self stateManager];
  [stateManager pause];

  stateManager2 = [(SXVideoAdProvider *)self stateManager];
  [stateManager2 learnMore];
}

- (UIButton)privacyMarker
{
  v3 = objc_alloc_init(MEMORY[0x1E69CE0F0]);
  [v3 addTarget:self action:sel_presentPrivacyStatement forControlEvents:64];

  return v3;
}

- (void)adVisibilityStateChanged
{
  videoPlayerVisibilityMonitor = [(SXVideoAdProvider *)self videoPlayerVisibilityMonitor];
  if ([videoPlayerVisibilityMonitor appeared])
  {
    videoVisibilityMonitor = [(SXVideoAdProvider *)self videoVisibilityMonitor];
    [videoVisibilityMonitor appeared];
  }
}

- (SVVideoMetadata)metadata
{
  WeakRetained = objc_loadWeakRetained(&self->_metadata);

  return WeakRetained;
}

@end