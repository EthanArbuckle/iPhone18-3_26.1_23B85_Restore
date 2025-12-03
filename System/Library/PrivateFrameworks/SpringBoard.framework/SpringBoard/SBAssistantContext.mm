@interface SBAssistantContext
+ (id)contextForWindowScene:(id)scene;
@end

@implementation SBAssistantContext

+ (id)contextForWindowScene:(id)scene
{
  sceneCopy = scene;
  v4 = objc_alloc_init(SBAssistantContext);
  traitsArbiter = [sceneCopy traitsArbiter];
  [(SBAssistantContext *)v4 setTraitsArbiter:traitsArbiter];

  coverSheetViewController = [sceneCopy coverSheetViewController];
  [(SBAssistantContext *)v4 setCoverSheetViewController:coverSheetViewController];

  displayLayoutPublisher = [sceneCopy displayLayoutPublisher];
  [(SBAssistantContext *)v4 setDisplayLayoutPublisher:displayLayoutPublisher];

  lockScreenManager = [sceneCopy lockScreenManager];
  lockScreenEnvironment = [lockScreenManager lockScreenEnvironment];
  [(SBAssistantContext *)v4 setLockScreenEnvironment:lockScreenEnvironment];

  alertItemsController = [sceneCopy alertItemsController];
  [(SBAssistantContext *)v4 setAlertItemsController:alertItemsController];

  coverSheetPresentationManager = [sceneCopy coverSheetPresentationManager];
  [(SBAssistantContext *)v4 setCoverSheetPresentationManager:coverSheetPresentationManager];

  floatingDockController = [sceneCopy floatingDockController];
  [(SBAssistantContext *)v4 setFloatingDockController:floatingDockController];

  zStackResolver = [sceneCopy zStackResolver];
  [(SBAssistantContext *)v4 setZStackResolver:zStackResolver];

  systemApertureController = [sceneCopy systemApertureController];
  [(SBAssistantContext *)v4 setSystemApertureController:systemApertureController];

  homeScreenController = [sceneCopy homeScreenController];
  [(SBAssistantContext *)v4 setHomeScreenController:homeScreenController];

  lockScreenManager2 = [sceneCopy lockScreenManager];
  [(SBAssistantContext *)v4 setLockScreenManager:lockScreenManager2];

  switcherController = [sceneCopy switcherController];
  [(SBAssistantContext *)v4 setSwitcherController:switcherController];

  modalAlertPresentationCoordinator = [sceneCopy modalAlertPresentationCoordinator];
  [(SBAssistantContext *)v4 setModalAlertPresentationCoordinator:modalAlertPresentationCoordinator];

  systemGestureManager = [sceneCopy systemGestureManager];
  [(SBAssistantContext *)v4 setSystemGestureManager:systemGestureManager];

  transientOverlayPresenter = [sceneCopy transientOverlayPresenter];
  [(SBAssistantContext *)v4 setTransientOverlayPresenter:transientOverlayPresenter];

  wallpaperController = [sceneCopy wallpaperController];
  [(SBAssistantContext *)v4 setWallpaperController:wallpaperController];

  windowHidingManager = [sceneCopy windowHidingManager];
  [(SBAssistantContext *)v4 setWindowHidingManager:windowHidingManager];

  controlCenterController = [sceneCopy controlCenterController];

  [(SBAssistantContext *)v4 setControlCenterController:controlCenterController];
  [(SBAssistantContext *)v4 setOrientationAccomodation:SBApp];

  return v4;
}

@end