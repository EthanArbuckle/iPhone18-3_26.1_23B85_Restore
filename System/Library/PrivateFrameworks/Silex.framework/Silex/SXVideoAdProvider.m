@interface SXVideoAdProvider
- (SVVideoMetadata)metadata;
- (SXVideoAdProvider)initWithViewControllerProvider:(id)a3 videoPlayerVisibilityMonitor:(id)a4 videoVisibilityMonitor:(id)a5 component:(id)a6;
- (UIButton)privacyMarker;
- (void)adVisibilityStateChanged;
- (void)playbackFailedWithError:(id)a3;
- (void)playbackFinished;
- (void)playbackPaused;
- (void)playbackResumed;
- (void)playbackStarted;
- (void)presentAction;
- (void)skipped;
@end

@implementation SXVideoAdProvider

- (SXVideoAdProvider)initWithViewControllerProvider:(id)a3 videoPlayerVisibilityMonitor:(id)a4 videoVisibilityMonitor:(id)a5 component:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SXVideoAdProvider;
  v15 = [(SXVideoAdProvider *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fullscreenViewControllerProvider, a3);
    v17 = objc_alloc_init(SXVideoAdStateManager);
    stateManager = v16->_stateManager;
    v16->_stateManager = v17;

    objc_storeStrong(&v16->_videoPlayerVisibilityMonitor, a4);
    objc_storeStrong(&v16->_videoVisibilityMonitor, a5);
    objc_storeStrong(&v16->_component, a6);
  }

  return v16;
}

- (void)playbackStarted
{
  v2 = [(SXVideoAdProvider *)self stateManager];
  [v2 play];
}

- (void)playbackPaused
{
  v2 = [(SXVideoAdProvider *)self stateManager];
  [v2 pause];
}

- (void)playbackResumed
{
  v2 = [(SXVideoAdProvider *)self stateManager];
  [v2 play];
}

- (void)playbackFinished
{
  v2 = [(SXVideoAdProvider *)self stateManager];
  [v2 finish];
}

- (void)playbackFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [(SXVideoAdProvider *)self stateManager];
  [v5 failWithError:v4];
}

- (void)skipped
{
  v2 = [(SXVideoAdProvider *)self stateManager];
  [v2 skip];
}

- (void)presentAction
{
  v3 = [(SXVideoAdProvider *)self stateManager];
  [v3 pause];

  v4 = [(SXVideoAdProvider *)self stateManager];
  [v4 learnMore];
}

- (UIButton)privacyMarker
{
  v3 = objc_alloc_init(MEMORY[0x1E69CE0F0]);
  [v3 addTarget:self action:sel_presentPrivacyStatement forControlEvents:64];

  return v3;
}

- (void)adVisibilityStateChanged
{
  v4 = [(SXVideoAdProvider *)self videoPlayerVisibilityMonitor];
  if ([v4 appeared])
  {
    v3 = [(SXVideoAdProvider *)self videoVisibilityMonitor];
    [v3 appeared];
  }
}

- (SVVideoMetadata)metadata
{
  WeakRetained = objc_loadWeakRetained(&self->_metadata);

  return WeakRetained;
}

@end