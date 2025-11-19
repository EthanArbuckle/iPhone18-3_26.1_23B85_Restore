@interface SBAssistantContext
+ (id)contextForWindowScene:(id)a3;
@end

@implementation SBAssistantContext

+ (id)contextForWindowScene:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBAssistantContext);
  v5 = [v3 traitsArbiter];
  [(SBAssistantContext *)v4 setTraitsArbiter:v5];

  v6 = [v3 coverSheetViewController];
  [(SBAssistantContext *)v4 setCoverSheetViewController:v6];

  v7 = [v3 displayLayoutPublisher];
  [(SBAssistantContext *)v4 setDisplayLayoutPublisher:v7];

  v8 = [v3 lockScreenManager];
  v9 = [v8 lockScreenEnvironment];
  [(SBAssistantContext *)v4 setLockScreenEnvironment:v9];

  v10 = [v3 alertItemsController];
  [(SBAssistantContext *)v4 setAlertItemsController:v10];

  v11 = [v3 coverSheetPresentationManager];
  [(SBAssistantContext *)v4 setCoverSheetPresentationManager:v11];

  v12 = [v3 floatingDockController];
  [(SBAssistantContext *)v4 setFloatingDockController:v12];

  v13 = [v3 zStackResolver];
  [(SBAssistantContext *)v4 setZStackResolver:v13];

  v14 = [v3 systemApertureController];
  [(SBAssistantContext *)v4 setSystemApertureController:v14];

  v15 = [v3 homeScreenController];
  [(SBAssistantContext *)v4 setHomeScreenController:v15];

  v16 = [v3 lockScreenManager];
  [(SBAssistantContext *)v4 setLockScreenManager:v16];

  v17 = [v3 switcherController];
  [(SBAssistantContext *)v4 setSwitcherController:v17];

  v18 = [v3 modalAlertPresentationCoordinator];
  [(SBAssistantContext *)v4 setModalAlertPresentationCoordinator:v18];

  v19 = [v3 systemGestureManager];
  [(SBAssistantContext *)v4 setSystemGestureManager:v19];

  v20 = [v3 transientOverlayPresenter];
  [(SBAssistantContext *)v4 setTransientOverlayPresenter:v20];

  v21 = [v3 wallpaperController];
  [(SBAssistantContext *)v4 setWallpaperController:v21];

  v22 = [v3 windowHidingManager];
  [(SBAssistantContext *)v4 setWindowHidingManager:v22];

  v23 = [v3 controlCenterController];

  [(SBAssistantContext *)v4 setControlCenterController:v23];
  [(SBAssistantContext *)v4 setOrientationAccomodation:SBApp];

  return v4;
}

@end