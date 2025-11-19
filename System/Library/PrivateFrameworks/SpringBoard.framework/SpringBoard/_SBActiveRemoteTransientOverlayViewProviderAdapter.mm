@interface _SBActiveRemoteTransientOverlayViewProviderAdapter
- (BOOL)isPresentingOnBehalfOfApplication:(id)a3;
- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)a3;
- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)a3;
- (BOOL)isPresentingTransientOverlay:(id)a3;
- (SBDeviceApplicationRemoteTransientOverlayViewProvider)sceneBackedProvider;
- (SBDeviceApplicationRemoteTransientOverlayViewProvider)viewServiceProvider;
- (SBWindowScene)windowScene;
- (void)dismissRemoteTransientOverlayViewController:(id)a3;
- (void)presentRemoteTransientOverlayViewController:(id)a3 presentationRequest:(id)a4;
@end

@implementation _SBActiveRemoteTransientOverlayViewProviderAdapter

- (void)presentRemoteTransientOverlayViewController:(id)a3 presentationRequest:(id)a4
{
  v6 = a4;
  v10 = a3;
  v7 = [v6 isSceneBacked];
  v8 = 8;
  if (v7)
  {
    v8 = 16;
  }

  WeakRetained = objc_loadWeakRetained((&self->super.isa + v8));
  [WeakRetained presentRemoteTransientOverlayViewController:v10 presentationRequest:v6];

  [v10 updateDisplayLayoutElementWithBuilder:&__block_literal_global_380];
}

- (void)dismissRemoteTransientOverlayViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneBackedProvider);
  v5 = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingTransientOverlay:v4] == 0;
  v7 = WeakRetained;
  if (v6)
  {
    v7 = v5;
  }

  [v7 dismissRemoteTransientOverlayViewController:v4];
}

- (BOOL)isPresentingTransientOverlay:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  if ([WeakRetained isPresentingTransientOverlay:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_sceneBackedProvider);
    v6 = [v7 isPresentingTransientOverlay:v4];
  }

  return v6;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v3 = [WeakRetained windowScene];

  return v3;
}

- (BOOL)isPresentingOnBehalfOfApplication:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingOnBehalfOfApplication:v4];

  return v6;
}

- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingOnBehalfOfSceneIdentityTokenString:v4];

  return v6;
}

- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingOnBehalfOfScenePersistentIdentifier:v4];

  return v6;
}

- (SBDeviceApplicationRemoteTransientOverlayViewProvider)viewServiceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);

  return WeakRetained;
}

- (SBDeviceApplicationRemoteTransientOverlayViewProvider)sceneBackedProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneBackedProvider);

  return WeakRetained;
}

@end