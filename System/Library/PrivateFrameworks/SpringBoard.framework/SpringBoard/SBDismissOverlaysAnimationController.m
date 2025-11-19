@interface SBDismissOverlaysAnimationController
+ (unint64_t)_overlaysToDismissForOptions:(unint64_t)a3 windowScene:(id)a4;
- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)a3;
- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)a3 options:(unint64_t)a4;
- (id)animationSettings;
- (void)_startAnimation;
@end

@implementation SBDismissOverlaysAnimationController

- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)a3
{
  v5 = MEMORY[0x277CCA890];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"SBDismissOverlaysAnimationController.m" lineNumber:40 description:@"Unsupported initializer"];

  v8 = [(SBDismissOverlaysAnimationController *)self initWithTransitionContextProvider:v6 options:-1];
  return v8;
}

- (SBDismissOverlaysAnimationController)initWithTransitionContextProvider:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBDismissOverlaysAnimationController;
  v8 = [(SBUIAnimationController *)&v11 initWithTransitionContextProvider:v7];
  v9 = v8;
  if (v8)
  {
    v8->_dismissOptions = a4;
    objc_storeStrong(&v8->_transitionRequest, a3);
  }

  return v9;
}

- (void)_startAnimation
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBWorkspaceTransitionRequest *)self->_transitionRequest displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

  v6 = [objc_opt_class() _overlaysToDismissForOptions:self->_dismissOptions windowScene:v5];
  v7 = [v5 homeScreenController];
  objc_initWeak(location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke;
  v31[3] = &unk_2783A8C68;
  objc_copyWeak(&v32, location);
  v8 = MEMORY[0x223D6F7F0](v31);
  if ((v6 & 0x10) != 0)
  {
    v9 = [v5 commandTabController];
    [v9 dismiss];
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
      v12 = [v5 controlCenterController];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_4;
      v23[3] = &unk_2783AC308;
      objc_copyWeak(&v25, location);
      v24 = v11;
      [v12 dismissAnimated:1 completion:v23];

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
      [v7 dismissAppIconForceTouchControllers:v20];

      objc_destroyWeak(&v22);
    }

    if ((v6 & 4) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"App Icon Share Sheet Dismissal Milestone"];
      v13 = [v7 iconManager];
      [v13 dismissIconShareSheets];
      [(SBDismissOverlaysAnimationController *)self removeMilestone:@"App Icon Share Sheet Dismissal Milestone"];
      v11[2](v11);
    }

    if ((v6 & 8) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Assistant Dismissal Milestone"];
      v14 = [v5 assistantController];
      [v14 dismissAssistantViewIfNecessaryWithAnimation:1];

      [(SBDismissOverlaysAnimationController *)self removeMilestone:@"Assistant Dismissal Milestone"];
      v11[2](v11);
    }

    if ((v6 & 0x20) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Banner Dismissal Milestone"];
      v15 = [SBApp bannerManager];
      [v15 dismissAllBannersInWindowScene:v5 animated:1 reason:@"dismissOverlays"];

      [(SBDismissOverlaysAnimationController *)self removeMilestone:@"Banner Dismissal Milestone"];
      v11[2](v11);
    }

    if ((v6 & 0x40) != 0)
    {
      v10[2](v10);
      [(SBDismissOverlaysAnimationController *)self addMilestone:@"Presented View Controller Dismissal Milestone"];
      v16 = [v7 homeScreenViewController];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __55__SBDismissOverlaysAnimationController__startAnimation__block_invoke_6;
      v17[3] = &unk_2783AC308;
      objc_copyWeak(&v19, location);
      v18 = v11;
      [v16 dismissViewControllerAnimated:1 completion:v17];

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
  v3 = [SBApp windowSceneManager];
  v4 = [(SBWorkspaceTransitionRequest *)self->_transitionRequest displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

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

+ (unint64_t)_overlaysToDismissForOptions:(unint64_t)a3 windowScene:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [v5 homeScreenController];
  v7 = [v6 homeScreenViewController];
  v8 = [v6 iconManager];
  v9 = [v6 areAnyIconViewContextMenusShowing];
  if (v4)
  {
    v11 = +[SBControlCenterCoordinator sharedInstanceIfExists];
    v12 = [v11 isPresented];

    v10 = v12 & 1;
  }

  else
  {
    v10 = 0;
  }

  v13 = v10 | 2;
  if (!v9)
  {
    v13 = v10;
  }

  if ((v4 & 2) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if ((v4 & 4) != 0)
  {
    if ([v8 areAnyIconShareSheetsShowing])
    {
      v14 |= 4uLL;
    }

    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  if (+[SBAssistantController isVisible])
  {
    v14 |= 8uLL;
  }

  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = [v5 commandTabController];
  v18 = [v17 isVisible];

  if (v18)
  {
    v14 |= 0x10uLL;
  }

  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_26:
  v19 = [SBApp bannerManager];
  v20 = [v19 isDisplayingBannerInAnyWindowScene];

  if (v20)
  {
    v14 |= 0x20uLL;
  }

  if ((v4 & 0x40) != 0)
  {
LABEL_14:
    v15 = [v7 presentedViewController];

    if (v15)
    {
      v14 |= 0x40uLL;
    }
  }

LABEL_16:

  return v14;
}

@end