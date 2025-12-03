@interface _SBActiveRemoteTransientOverlayViewProviderAdapter
- (BOOL)isPresentingOnBehalfOfApplication:(id)application;
- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)string;
- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)identifier;
- (BOOL)isPresentingTransientOverlay:(id)overlay;
- (SBDeviceApplicationRemoteTransientOverlayViewProvider)sceneBackedProvider;
- (SBDeviceApplicationRemoteTransientOverlayViewProvider)viewServiceProvider;
- (SBWindowScene)windowScene;
- (void)dismissRemoteTransientOverlayViewController:(id)controller;
- (void)presentRemoteTransientOverlayViewController:(id)controller presentationRequest:(id)request;
@end

@implementation _SBActiveRemoteTransientOverlayViewProviderAdapter

- (void)presentRemoteTransientOverlayViewController:(id)controller presentationRequest:(id)request
{
  requestCopy = request;
  controllerCopy = controller;
  isSceneBacked = [requestCopy isSceneBacked];
  v8 = 8;
  if (isSceneBacked)
  {
    v8 = 16;
  }

  WeakRetained = objc_loadWeakRetained((&self->super.isa + v8));
  [WeakRetained presentRemoteTransientOverlayViewController:controllerCopy presentationRequest:requestCopy];

  [controllerCopy updateDisplayLayoutElementWithBuilder:&__block_literal_global_380];
}

- (void)dismissRemoteTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_sceneBackedProvider);
  v5 = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingTransientOverlay:controllerCopy] == 0;
  v7 = WeakRetained;
  if (v6)
  {
    v7 = v5;
  }

  [v7 dismissRemoteTransientOverlayViewController:controllerCopy];
}

- (BOOL)isPresentingTransientOverlay:(id)overlay
{
  overlayCopy = overlay;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  if ([WeakRetained isPresentingTransientOverlay:overlayCopy])
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_sceneBackedProvider);
    v6 = [v7 isPresentingTransientOverlay:overlayCopy];
  }

  return v6;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  windowScene = [WeakRetained windowScene];

  return windowScene;
}

- (BOOL)isPresentingOnBehalfOfApplication:(id)application
{
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingOnBehalfOfApplication:applicationCopy];

  return v6;
}

- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)string
{
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingOnBehalfOfSceneIdentityTokenString:stringCopy];

  return v6;
}

- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewServiceProvider);
  v6 = [WeakRetained isPresentingOnBehalfOfScenePersistentIdentifier:identifierCopy];

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