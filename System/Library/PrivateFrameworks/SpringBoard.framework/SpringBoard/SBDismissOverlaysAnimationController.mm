@interface SBDismissOverlaysAnimationController
+ (unint64_t)_overlaysToDismissForOptions:(unint64_t)options windowScene:(id)scene;
- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)provider;
- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)provider options:(unint64_t)options;
- (id)animationSettings;
- (void)_startAnimation;
@end

@implementation SBDismissOverlaysAnimationController

- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)provider
{
  v5 = MEMORY[0x277CCA890];
  providerCopy = provider;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDismissOverlaysAnimationController.m" lineNumber:40 description:@"Unsupported initializer"];

  v8 = [(SBDismissOverlaysAnimationController *)self initWithTransitionContextProvider:providerCopy options:-1];
  return v8;
}

- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)provider options:(unint64_t)options
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = SBDismissOverlaysAnimationController;
  v8 = [(SBUIAnimationController *)&v11 initWithTransitionContextProvider:providerCopy];
  v9 = v8;
  if (v8)
  {
    v8->_dismissOptions = options;
    objc_storeStrong(&v8->_transitionRequest, provider);
  }

  return v9;
}

- (void)_startAnimation
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBWorkspaceTransitionRequest *)self->_transitionRequest displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  v6 = [objc_opt_class() _overlaysToDismissForOptions:self->_dismissOptions windowScene:v5];
  homeScreenController = [v5 homeScreenController];
  objc_initWeak(location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke;
  v31[3] = &unk_2783A8C68;
  objc_copyWeak(&v32, location);
  v8 = MEMORY[0x223D6F7F0](v31);
  if ((v6 & 0x10) != 0)
  {
    commandTabController = [v5 commandTabController];
    [commandTabController dismiss];
  }

  if ((v6 & 0xFFFFFFFFFFFFFFEFLL) != 0)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_2;
    v29[3] = &unk_2783A9718;
    v29[4] = v30;
    v10 = MEMORY[0x223D6F7F0](v29);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_3;
    v26[3] = &unk_2783B2050;
    v28 = v30;
    v27 = v8;
    v11 = MEMORY[0x223D6F7F0](v26);
    v10[2](v10);
    if (v6)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Control Center Dismissal Milestone"];
      controlCenterController = [v5 controlCenterController];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_4;
      v23[3] = &unk_2783AC308;
      objc_copyWeak(&v25, location);
      v24 = v11;
      [controlCenterController dismissAnimated:1 completion:v23];

      objc_destroyWeak(&v25);
    }

    if ((v6 & 2) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"App Icon Force Touch Dismissal Milestone"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_5;
      v20[3] = &unk_2783AC308;
      objc_copyWeak(&v22, location);
      v21 = v11;
      [homeScreenController dismissAppIconForceTouchControllers:v20];

      objc_destroyWeak(&v22);
    }

    if ((v6 & 4) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"App Icon Share Sheet Dismissal Milestone"];
      iconManager = [homeScreenController iconManager];
      [iconManager dismissIconShareSheets];
      [(SBDismissOverlaysAnimationController *)self removeMilestone:@"App Icon Share Sheet Dismissal Milestone"];
      v11[2](v11);
    }

    if ((v6 & 8) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Assistant Dismissal Milestone"];
      assistantController = [v5 assistantController];
      [assistantController dismissAssistantViewIfNecessaryWithAnimation:1];

      [(SBDismissOverlaysAnimationController *)self removeMilestone:@"Assistant Dismissal Milestone"];
      v11[2](v11);
    }

    if ((v6 & 0x20) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Banner Dismissal Milestone"];
      bannerManager = [SBApp bannerManager];
      [bannerManager dismissAllBannersInWindowScene:v5 animated:1 reason:@"dismissOverlays"];

      [(SBDismissOverlaysAnimationController *)self removeMilestone:@"Banner Dismissal Milestone"];
      v11[2](v11);
    }

    if ((v6 & 0x40) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Presented View Controller Dismissal Milestone"];
      homeScreenViewController = [homeScreenController homeScreenViewController];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_6;
      v17[3] = &unk_2783AC308;
      objc_copyWeak(&v19, location);
      v18 = v11;
      [homeScreenViewController dismissViewControllerAnimated:1 completion:v17];

      objc_destroyWeak(&v19);
    }

    v11[2](v11);

    _Block_object_dispose(v30, 8);
  }

  else
  {
    v8[2](v8);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(location);
}

void __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteAnimationDidFinish];
}

uint64_t __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_3(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 24))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeMilestone:@"Control Center Dismissal Milestone"];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeMilestone:@"App Icon Force Touch Dismissal Milestone"];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeMilestone:@"Presented View Controller Dismissal Milestone"];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (id)animationSettings
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBWorkspaceTransitionRequest *)self->_transitionRequest displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  v6 = [objc_opt_class() _overlaysToDismissForOptions:self->_dismissOptions windowScene:v5];
  v7 = fmax(*&kSBAssistantDefaultAnimationDuration, 0.0);
  if ((v6 & 8) == 0)
  {
    v7 = 0.0;
  }

  v8 = 0.375;
  if (v7 >= 0.375)
  {
    v8 = v7;
  }

  if ((v6 & 0x20) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (BSFloatGreaterThanFloat())
  {
    v10 = [MEMORY[0x277CF0B70] settingsWithDuration:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (unint64_t)_overlaysToDismissForOptions:(unint64_t)options windowScene:(id)scene
{
  optionsCopy = options;
  sceneCopy = scene;
  homeScreenController = [sceneCopy homeScreenController];
  homeScreenViewController = [homeScreenController homeScreenViewController];
  iconManager = [homeScreenController iconManager];
  areAnyIconViewContextMenusShowing = [homeScreenController areAnyIconViewContextMenusShowing];
  if (optionsCopy)
  {
    v11 = +[SBControlCenterCoordinator sharedInstanceIfExists];
    isPresented = [v11 isPresented];

    v10 = isPresented & 1;
  }

  else
  {
    v10 = 0;
  }

  v13 = v10 | 2;
  if (!areAnyIconViewContextMenusShowing)
  {
    v13 = v10;
  }

  if ((optionsCopy & 2) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if ((optionsCopy & 4) != 0)
  {
    if ([iconManager areAnyIconShareSheetsShowing])
    {
      v14 |= 4uLL;
    }

    if ((optionsCopy & 8) == 0)
    {
LABEL_11:
      if ((optionsCopy & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((optionsCopy & 8) == 0)
  {
    goto LABEL_11;
  }

  if (+[SBAssistantController isVisible])
  {
    v14 |= 8uLL;
  }

  if ((optionsCopy & 0x10) == 0)
  {
LABEL_12:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_23:
  commandTabController = [sceneCopy commandTabController];
  isVisible = [commandTabController isVisible];

  if (isVisible)
  {
    v14 |= 0x10uLL;
  }

  if ((optionsCopy & 0x20) == 0)
  {
LABEL_13:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_26:
  bannerManager = [SBApp bannerManager];
  isDisplayingBannerInAnyWindowScene = [bannerManager isDisplayingBannerInAnyWindowScene];

  if (isDisplayingBannerInAnyWindowScene)
  {
    v14 |= 0x20uLL;
  }

  if ((optionsCopy & 0x40) != 0)
  {
LABEL_14:
    presentedViewController = [homeScreenViewController presentedViewController];

    if (presentedViewController)
    {
      v14 |= 0x40uLL;
    }
  }

LABEL_16:

  return v14;
}

@end