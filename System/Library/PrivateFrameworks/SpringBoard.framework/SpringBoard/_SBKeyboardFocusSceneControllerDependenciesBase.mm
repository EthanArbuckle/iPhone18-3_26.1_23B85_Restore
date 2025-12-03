@interface _SBKeyboardFocusSceneControllerDependenciesBase
- (BOOL)isCoverSheetHostingAnApp;
- (BOOL)isPresentingModalBannerInLongLook;
- (BOOL)isScreenDim;
- (BOOL)isShowingSystemModalAlert;
- (BOOL)isSiriVisible;
- (_SBKeyboardFocusSceneControllerDependenciesBase)initWithScene:(id)scene deliveryManager:(id)manager sceneProvider:(id)provider;
@end

@implementation _SBKeyboardFocusSceneControllerDependenciesBase

- (BOOL)isScreenDim
{
  v2 = +[SBBacklightController sharedInstance];
  screenIsDim = [v2 screenIsDim];

  return screenIsDim;
}

- (BOOL)isSiriVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  assistantController = [WeakRetained assistantController];
  isVisible = [assistantController isVisible];

  return isVisible;
}

- (BOOL)isShowingSystemModalAlert
{
  modalAlertPresentationCoordinator = [SBApp modalAlertPresentationCoordinator];
  isShowingSystemModalAlert = [modalAlertPresentationCoordinator isShowingSystemModalAlert];

  return isShowingSystemModalAlert;
}

- (BOOL)isPresentingModalBannerInLongLook
{
  notificationDispatcher = [SBApp notificationDispatcher];
  bannerDestination = [notificationDispatcher bannerDestination];
  isPresentingBannerInLongLook = [bannerDestination isPresentingBannerInLongLook];

  return isPresentingBannerInLongLook;
}

- (BOOL)isCoverSheetHostingAnApp
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  isCoverSheetHostingAnApp = [v2 isCoverSheetHostingAnApp];

  return isCoverSheetHostingAnApp;
}

- (_SBKeyboardFocusSceneControllerDependenciesBase)initWithScene:(id)scene deliveryManager:(id)manager sceneProvider:(id)provider
{
  sceneCopy = scene;
  managerCopy = manager;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = _SBKeyboardFocusSceneControllerDependenciesBase;
  v11 = [(_SBKeyboardFocusSceneControllerDependenciesBase *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_sbWindowScene, sceneCopy);
    objc_storeStrong(&v12->_deliveryManager, manager);
    objc_storeStrong(&v12->_sceneProvider, provider);
  }

  return v12;
}

@end