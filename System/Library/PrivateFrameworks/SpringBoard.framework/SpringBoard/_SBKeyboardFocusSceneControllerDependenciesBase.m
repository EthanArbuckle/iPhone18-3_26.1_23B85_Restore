@interface _SBKeyboardFocusSceneControllerDependenciesBase
- (BOOL)isCoverSheetHostingAnApp;
- (BOOL)isPresentingModalBannerInLongLook;
- (BOOL)isScreenDim;
- (BOOL)isShowingSystemModalAlert;
- (BOOL)isSiriVisible;
- (_SBKeyboardFocusSceneControllerDependenciesBase)initWithScene:(id)a3 deliveryManager:(id)a4 sceneProvider:(id)a5;
@end

@implementation _SBKeyboardFocusSceneControllerDependenciesBase

- (BOOL)isScreenDim
{
  v2 = +[SBBacklightController sharedInstance];
  v3 = [v2 screenIsDim];

  return v3;
}

- (BOOL)isSiriVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v3 = [WeakRetained assistantController];
  v4 = [v3 isVisible];

  return v4;
}

- (BOOL)isShowingSystemModalAlert
{
  v2 = [SBApp modalAlertPresentationCoordinator];
  v3 = [v2 isShowingSystemModalAlert];

  return v3;
}

- (BOOL)isPresentingModalBannerInLongLook
{
  v2 = [SBApp notificationDispatcher];
  v3 = [v2 bannerDestination];
  v4 = [v3 isPresentingBannerInLongLook];

  return v4;
}

- (BOOL)isCoverSheetHostingAnApp
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  v3 = [v2 isCoverSheetHostingAnApp];

  return v3;
}

- (_SBKeyboardFocusSceneControllerDependenciesBase)initWithScene:(id)a3 deliveryManager:(id)a4 sceneProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _SBKeyboardFocusSceneControllerDependenciesBase;
  v11 = [(_SBKeyboardFocusSceneControllerDependenciesBase *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_sbWindowScene, v8);
    objc_storeStrong(&v12->_deliveryManager, a4);
    objc_storeStrong(&v12->_sceneProvider, a5);
  }

  return v12;
}

@end