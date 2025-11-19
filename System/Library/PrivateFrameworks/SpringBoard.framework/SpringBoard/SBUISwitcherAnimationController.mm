@interface SBUISwitcherAnimationController
- (BOOL)isInterruptible;
- (SBSwitcherContentViewControlling)contentViewController;
- (SBUISwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)a3 contentViewController:(id)a4 childAnimationControllers:(id)a5 animationBlock:(id)a6;
- (id)_layoutState;
- (id)_previousLayoutState;
- (id)_windowScene;
- (id)animationSettings;
- (void)_addSignpostsAndBeginAnimationTrackingForAnimationStart;
- (void)_addSignpostsAndEndAnimationTrackingForAnimationEnd;
- (void)_didComplete;
- (void)_startAnimation;
- (void)_updatePPTsForAnimationEnd;
- (void)_updatePPTsForAnimationStart;
- (void)animationControllerDidFinishAnimation:(id)a3;
@end

@implementation SBUISwitcherAnimationController

- (id)animationSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  v3 = [WeakRetained defaultTransitionAnimationSettings];

  return v3;
}

- (void)_startAnimation
{
  if (([MEMORY[0x277D75D18] areAnimationsEnabled] & 1) == 0)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(SBUISwitcherAnimationController *)v3 _startAnimation];
    }

    [MEMORY[0x277D75D18] setAnimationsEnabled:1];
  }

  v4 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  v5 = [(SBUISwitcherAnimationController *)self _layoutState];
  v6 = [(SBUISwitcherAnimationController *)self _windowScene];
  v7 = [v6 homeScreenController];
  v8 = [v7 iconManager];

  v9 = [v8 iconModel];
  [v8 clearHighlightedIcon];
  if ([v5 unlockedEnvironmentMode] == 1 && objc_msgSend(v4, "source") != 11)
  {
    v10 = [v4 applicationContext];
    v11 = [v10 previousEntityForLayoutRole:1];

    if ([v11 isApplicationSceneEntity])
    {
      v12 = [v11 applicationSceneEntity];
      v13 = [v12 application];

      v14 = [v13 bundleIdentifier];
      v15 = [v14 isEqualToString:@"com.apple.webapp"];

      if (v15)
      {
        v24 = [v11 applicationSceneEntity];
        [v24 sceneHandle];
        v16 = v25 = v13;
        v17 = [v16 sceneIdentifier];
        v18 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v17];

        v13 = v25;
        [v9 leafIconForIdentifier:v18];
      }

      else
      {
        v18 = [v13 bundleIdentifier];
        [v9 applicationIconForBundleIdentifier:v18];
      }
      v19 = ;

      if (([v8 isDisplayingIcon:v19 queryOptions:2] & 1) == 0)
      {
        [v8 popToCurrentRootIconList];
      }
    }
  }

  [(SBUISwitcherAnimationController *)self _updatePPTsForAnimationStart];
  [(SBUISwitcherAnimationController *)self _addSignpostsAndBeginAnimationTrackingForAnimationStart];
  animationBlock = self->_animationBlock;
  v21 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  v22 = [v21 applicationContext];
  animationBlock[2](animationBlock, v22);

  v23 = self->_animationBlock;
  self->_animationBlock = 0;

  [(SBUIAnimationController *)self _noteAnimationDidFinish];
}

- (id)_layoutState
{
  v2 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  v3 = [v2 applicationContext];
  v4 = [v3 layoutState];

  return v4;
}

- (id)_windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained _sbWindowScene];
  }

  else
  {
    v5 = [SBApp windowSceneManager];
    v6 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
    v7 = [v6 displayIdentity];
    v4 = [v5 windowSceneForDisplayIdentity:v7];
  }

  return v4;
}

- (void)_updatePPTsForAnimationStart
{
  v2 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] isRunningTest])
  {
    v3 = [*v2 isRunningTest:@"AppOpen"];
    v4 = *v2;
    if (v3)
    {
      [v4 finishedSubTest:@"workspaceActivate" forTest:@"AppOpen"];
      v5 = *v2;
      v6 = &__block_literal_global_51;
    }

    else
    {
      v7 = [v4 isRunningTest:@"AppClose"];
      v8 = *v2;
      if (v7)
      {
        [v8 finishedSubTest:@"workspaceDeactivate" forTest:@"AppClose"];
        v5 = *v2;
        v6 = &__block_literal_global_47;
      }

      else
      {
        v9 = [v8 isRunningTest:@"AppOpenInFolder"];
        v10 = *v2;
        if (v9)
        {
          [v10 finishedSubTest:@"workspaceActivate" forTest:@"AppOpenInFolder"];
          v5 = *v2;
          v6 = &__block_literal_global_49_0;
        }

        else
        {
          v11 = [v10 isRunningTest:@"AppCloseInFolder"];
          v12 = *v2;
          if (v11)
          {
            [v12 finishedSubTest:@"workspaceDeactivate" forTest:@"AppCloseInFolder"];
            v5 = *v2;
            v6 = &__block_literal_global_51;
          }

          else
          {
            v13 = [v12 isRunningTest:@"AppOpenCenterZoom"];
            v14 = *v2;
            if (v13)
            {
              [v14 finishedSubTest:@"workspaceActivate" forTest:@"AppOpenCenterZoom"];
              v5 = *v2;
              v6 = &__block_literal_global_53_1;
            }

            else
            {
              v15 = [v14 isRunningTest:@"AppCloseCenterZoom"];
              v16 = *v2;
              if (v15)
              {
                [v16 finishedSubTest:@"workspaceDeactivate" forTest:@"AppCloseCenterZoom"];
                v5 = *v2;
                v6 = &__block_literal_global_55;
              }

              else
              {
                v17 = [v16 isRunningTest:@"AppOpenInScreenTime"];
                v18 = *v2;
                if (v17)
                {
                  [v18 finishedSubTest:@"workspaceActivate" forTest:@"AppOpenInScreenTime"];
                  v5 = *v2;
                  v6 = &__block_literal_global_57;
                }

                else
                {
                  v19 = [v18 isRunningTest:@"AppCloseInScreenTime"];
                  v20 = *v2;
                  if (!v19)
                  {
                    if (([v20 isRunningTest:@"AppSliderBringup"] & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupRotated") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverApp") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverAppRotated") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverAppInScreenTime") & 1) != 0 || objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverAppInScreenTimeRotated"))
                    {
                      v21 = +[SBApplicationTestingManager sharedInstance];
                      v22 = [v21 currentTestName];

                      v23 = *v2;
                      v31[0] = MEMORY[0x277D85DD0];
                      v31[1] = 3221225472;
                      v31[2] = __63__SBUISwitcherAnimationController__updatePPTsForAnimationStart__block_invoke_9;
                      v31[3] = &unk_2783A8C18;
                      v32 = v22;
                      v24 = v22;
                      [v23 installCACommitCompletionBlock:v31];
                      v25 = v32;
                    }

                    else
                    {
                      if (([SBApp isRunningTest:@"AppSliderDismiss"] & 1) == 0 && (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissRotated") & 1) == 0 && (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverApp") & 1) == 0 && (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppRotated") & 1) == 0 && (objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppInScreenTime") & 1) == 0 && !objc_msgSend(SBApp, "isRunningTest:", @"AppSliderDismissOverAppInScreenTimeRotated"))
                      {
                        return;
                      }

                      v26 = +[SBApplicationTestingManager sharedInstance];
                      v27 = [v26 currentTestName];

                      v28 = *v2;
                      v29[0] = MEMORY[0x277D85DD0];
                      v29[1] = 3221225472;
                      v29[2] = __63__SBUISwitcherAnimationController__updatePPTsForAnimationStart__block_invoke_10;
                      v29[3] = &unk_2783A8C18;
                      v30 = v27;
                      v24 = v27;
                      [v28 installCACommitCompletionBlock:v29];
                      v25 = v30;
                    }

                    return;
                  }

                  [v20 finishedSubTest:@"workspaceDeactivate" forTest:@"AppCloseInScreenTime"];
                  v5 = *v2;
                  v6 = &__block_literal_global_59_1;
                }
              }
            }
          }
        }
      }
    }

    [v5 installCACommitCompletionBlock:v6];
  }
}

- (void)_addSignpostsAndBeginAnimationTrackingForAnimationStart
{
  v3 = [(SBUISwitcherAnimationController *)self _layoutState];
  v4 = [(SBUISwitcherAnimationController *)self _previousLayoutState];
  if ([v4 unlockedEnvironmentMode] == 1)
  {
    if ([v3 unlockedEnvironmentMode] == 3)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_TO_APP_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
      }

      v6 = @"HomeToApp";
    }

    else
    {
      if ([v3 unlockedEnvironmentMode] != 2)
      {
        goto LABEL_36;
      }

      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOME_TO_SWITCHER_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v16, 2u);
      }

      v6 = @"HomeToSwitcher";
    }
  }

  else if ([v4 unlockedEnvironmentMode] == 2)
  {
    if ([v3 unlockedEnvironmentMode] == 3)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_SWITCHER_TO_APP_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v15, 2u);
      }

      v6 = @"SwitcherToApp";
    }

    else
    {
      if ([v3 unlockedEnvironmentMode] != 1)
      {
        goto LABEL_36;
      }

      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v14 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_SWITCHER_TO_HOME_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v14, 2u);
      }

      v6 = @"SwitcherToHome";
    }
  }

  else
  {
    if ([v4 unlockedEnvironmentMode] != 3)
    {
      goto LABEL_36;
    }

    if ([v3 unlockedEnvironmentMode] == 1)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_APP_TO_HOME_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v13, 2u);
      }

      v6 = @"AppToHome";
    }

    else if ([v3 unlockedEnvironmentMode] == 3)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_APP_TO_APP_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v12, 2u);
      }

      v6 = @"AppToApp";
    }

    else
    {
      if ([v3 unlockedEnvironmentMode] != 2)
      {
        goto LABEL_36;
      }

      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_APP_TO_SWITCHER_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v11, 2u);
      }

      v6 = @"AppToSwitcher";
    }
  }

  kdebug_trace();
  if ([(SBUIAnimationController *)self isInteractive])
  {
    v7 = @"-Dragging";
  }

  else
  {
    v7 = @"-Animating";
  }

  v8 = [(__CFString *)v6 stringByAppendingString:v7];
  v9 = [MEMORY[0x277CCAC38] processInfo];
  v10 = [v9 beginActivityWithOptions:0x200000000000 reason:v8];
  [(SBUISwitcherAnimationController *)self setActivityToken:v10];

LABEL_36:
}

- (id)_previousLayoutState
{
  v2 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  v3 = [v2 applicationContext];
  v4 = [v3 previousLayoutState];

  return v4;
}

- (void)_addSignpostsAndEndAnimationTrackingForAnimationEnd
{
  v3 = [(SBUISwitcherAnimationController *)self _layoutState];
  v4 = [(SBUISwitcherAnimationController *)self _previousLayoutState];
  if ([v4 unlockedEnvironmentMode] == 1)
  {
    if ([v3 unlockedEnvironmentMode] != 3)
    {
      if ([v3 unlockedEnvironmentMode] != 2)
      {
        goto LABEL_28;
      }

      v5 = SBLogTelemetrySignposts();
      if (!os_signpost_enabled(v5))
      {
        goto LABEL_27;
      }

      v16 = 0;
      v6 = "SB_HOME_TO_SWITCHER_ANIMATION";
      v7 = &v16;
      goto LABEL_26;
    }

    v5 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v5))
    {
      v17 = 0;
      v6 = "SB_HOME_TO_APP_ANIMATION";
      v7 = &v17;
LABEL_26:
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v6, " enableTelemetry=YES  isAnimation=YES ", v7, 2u);
    }
  }

  else if ([v4 unlockedEnvironmentMode] == 2)
  {
    if ([v3 unlockedEnvironmentMode] != 3)
    {
      if ([v3 unlockedEnvironmentMode] != 1)
      {
        goto LABEL_28;
      }

      v5 = SBLogTelemetrySignposts();
      if (!os_signpost_enabled(v5))
      {
        goto LABEL_27;
      }

      v14 = 0;
      v6 = "SB_SWITCHER_TO_HOME_ANIMATION";
      v7 = &v14;
      goto LABEL_26;
    }

    v5 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v5))
    {
      v15 = 0;
      v6 = "SB_SWITCHER_TO_APP_ANIMATION";
      v7 = &v15;
      goto LABEL_26;
    }
  }

  else
  {
    if ([v4 unlockedEnvironmentMode] != 3)
    {
      goto LABEL_28;
    }

    if ([v3 unlockedEnvironmentMode] == 1)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_APP_TO_HOME_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
      }

      goto LABEL_27;
    }

    if ([v3 unlockedEnvironmentMode] == 3)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        v12 = 0;
        v6 = "SB_APP_TO_APP_ANIMATION";
        v7 = &v12;
        goto LABEL_26;
      }
    }

    else
    {
      if ([v3 unlockedEnvironmentMode] != 2)
      {
        goto LABEL_28;
      }

      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        LOWORD(v11) = 0;
        v6 = "SB_APP_TO_SWITCHER_ANIMATION";
        v7 = &v11;
        goto LABEL_26;
      }
    }
  }

LABEL_27:

  kdebug_trace();
LABEL_28:
  v8 = [(SBUISwitcherAnimationController *)self activityToken];

  if (v8)
  {
    if (([(SBUISwitcherAnimationController *)self isInterrupted]& 1) == 0)
    {
      v9 = [MEMORY[0x277CCAC38] processInfo];
      v10 = [(SBUISwitcherAnimationController *)self activityToken];
      [v9 endActivity:v10];
    }

    [(SBUISwitcherAnimationController *)self setActivityToken:0];
  }
}

- (void)_updatePPTsForAnimationEnd
{
  v2 = MEMORY[0x277D76620];
  if (![*MEMORY[0x277D76620] isRunningTest])
  {
    return;
  }

  v3 = @"AppOpen";
  v4 = [*v2 isRunningTest:@"AppOpen"];
  v5 = *v2;
  if (v4)
  {
    goto LABEL_3;
  }

  v3 = @"AppClose";
  v7 = [v5 isRunningTest:@"AppClose"];
  v5 = *v2;
  if (v7)
  {
    goto LABEL_5;
  }

  v3 = @"AppOpenInFolder";
  v8 = [v5 isRunningTest:@"AppOpenInFolder"];
  v5 = *v2;
  if (v8)
  {
LABEL_3:
    v6 = @"AppOpenAnimation";
LABEL_6:

    [v5 finishedSubTest:v6 forTest:v3];
    return;
  }

  v3 = @"AppCloseInFolder";
  v9 = [v5 isRunningTest:@"AppCloseInFolder"];
  v5 = *v2;
  if (v9)
  {
    goto LABEL_5;
  }

  v3 = @"AppOpenCenterZoom";
  v10 = [v5 isRunningTest:@"AppOpenCenterZoom"];
  v5 = *v2;
  if (v10)
  {
    v6 = @"AppOpenCenterZoomAnimation";
    goto LABEL_6;
  }

  v3 = @"AppCloseCenterZoom";
  v11 = [v5 isRunningTest:@"AppCloseCenterZoom"];
  v5 = *v2;
  if (v11)
  {
    v6 = @"AppCloseCenterZoomAnimation";
    goto LABEL_6;
  }

  v3 = @"AppOpenInScreenTime";
  v12 = [v5 isRunningTest:@"AppOpenInScreenTime"];
  v5 = *v2;
  if (v12)
  {
    goto LABEL_3;
  }

  v3 = @"AppCloseInScreenTime";
  v13 = [v5 isRunningTest:@"AppCloseInScreenTime"];
  v5 = *v2;
  if (v13)
  {
LABEL_5:
    v6 = @"AppCloseAnimation";
    goto LABEL_6;
  }

  if (([v5 isRunningTest:@"AppSliderBringup"] & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupRotated") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverApp") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverAppRotated") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverAppInScreenTime") & 1) != 0 || objc_msgSend(*v2, "isRunningTest:", @"AppSliderBringupOverAppInScreenTimeRotated"))
  {
    v14 = +[SBApplicationTestingManager sharedInstance];
    v19 = [v14 currentTestName];

    [*v2 finishedSubTest:@"AppSliderBringupAnimation" forTest:v19];
    v15 = *v2;
LABEL_24:
    [v15 finishedTest:v19];
LABEL_25:

    return;
  }

  if (([*v2 isRunningTest:@"AppSliderDismiss"] & 1) != 0 || objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissRotated"))
  {
    v16 = +[SBApplicationTestingManager sharedInstance];
    v19 = [v16 currentTestName];

    [SBApp finishedSubTest:@"animation" forTest:v19];
    v15 = SBApp;
    goto LABEL_24;
  }

  if (([*v2 isRunningTest:@"AppSliderDismissOverApp"] & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissOverAppRotated") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissOverAppInScreenTime") & 1) != 0 || objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissOverAppInScreenTimeRotated"))
  {
    v17 = +[SBApplicationTestingManager sharedInstance];
    v19 = [v17 currentTestName];

    [SBApp finishedSubTest:@"animation" forTest:v19];
    [SBApp finishedTest:v19];
    SBWorkspaceSuspendActiveDisplay();
    goto LABEL_25;
  }

  if ([SBApp isRunningTest:@"AppSliderTapContinuityBanner"])
  {
    v18 = *v2;

    [v18 finishedTest:@"AppSliderTapContinuityBanner"];
  }
}

- (void)_didComplete
{
  animationBlock = self->_animationBlock;
  self->_animationBlock = 0;

  if (([(SBUISwitcherAnimationController *)self isInterrupted]& 1) == 0)
  {
    v4 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
    v5 = [(SBUISwitcherAnimationController *)self _layoutState];
    v6 = [v5 unlockedEnvironmentMode];
    v7 = [v5 unlockedEnvironmentMode];
    v8 = [v4 source];
    v9 = v6 == 1 && v8 == 15;
    if (!v9 && v7 == 3)
    {
      v10 = [(SBUISwitcherAnimationController *)self _windowScene];
      v11 = [v10 homeScreenController];
      v12 = [v11 iconManager];
      [v12 presentHomeScreenIconsAnimated:0];
      v13 = [(SBUISwitcherAnimationController *)self _previousLayoutState];
      v14 = [v13 unlockedEnvironmentMode];
      v15 = [v4 source];
      if (([v11 isTodayOverlaySpotlightVisible] & 1) != 0 || v15 == 2 && v14 == 1 && objc_msgSend(v12, "isOverlayTodayViewVisible"))
      {
        [v11 dismissTodayOverlayAnimated:0];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SBUISwitcherAnimationController;
  [(SBUISwitcherAnimationController *)&v16 _didComplete];
}

uint64_t __63__SBUISwitcherAnimationController__updatePPTsForAnimationStart__block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"AppSliderBringupAnimation" forTest:v4];
}

- (SBUISwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)a3 contentViewController:(id)a4 childAnimationControllers:(id)a5 animationBlock:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_15:
    [SBUISwitcherAnimationController initWithWorkspaceTransitionRequest:a2 contentViewController:self childAnimationControllers:? animationBlock:?];
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  [SBUISwitcherAnimationController initWithWorkspaceTransitionRequest:a2 contentViewController:self childAnimationControllers:? animationBlock:?];
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_16:
  [SBUISwitcherAnimationController initWithWorkspaceTransitionRequest:a2 contentViewController:self childAnimationControllers:? animationBlock:?];
LABEL_4:
  v30.receiver = self;
  v30.super_class = SBUISwitcherAnimationController;
  v15 = [(SBUIWorkspaceAnimationController *)&v30 initWithWorkspaceTransitionRequest:v11];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_contentViewController, v12);
    v17 = MEMORY[0x223D6F7F0](v14);
    animationBlock = v16->_animationBlock;
    v16->_animationBlock = v17;

    *(&v16->_interruptible + 6) = 1;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * i);
          [v24 addObserver:{v16, v26}];
          [(SBUIAnimationController *)v16 addCoordinatingChildTransaction:v24 withSchedulingPolicy:0];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    [(SBUIAnimationController *)v16 addObserver:v16];
  }

  return v16;
}

- (BOOL)isInterruptible
{
  v6.receiver = self;
  v6.super_class = SBUISwitcherAnimationController;
  if (![(SBUISwitcherAnimationController *)&v6 isInterruptible]|| ![(SBUISwitcherAnimationController *)self _isInterruptible])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  v4 = [WeakRetained canInterruptActiveTransition];

  return v4;
}

- (void)animationControllerDidFinishAnimation:(id)a3
{
  if (self == a3)
  {
    [(SBUISwitcherAnimationController *)self _addSignpostsAndEndAnimationTrackingForAnimationEnd];

    [(SBUISwitcherAnimationController *)self _updatePPTsForAnimationEnd];
  }
}

uint64_t __63__SBUISwitcherAnimationController__updatePPTsForAnimationStart__block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"animation" forTest:v4];
}

- (SBSwitcherContentViewControlling)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);

  return WeakRetained;
}

- (void)initWithWorkspaceTransitionRequest:(uint64_t)a1 contentViewController:(uint64_t)a2 childAnimationControllers:animationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISwitcherAnimationController.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"workspaceTransitionRequest"}];
}

- (void)initWithWorkspaceTransitionRequest:(uint64_t)a1 contentViewController:(uint64_t)a2 childAnimationControllers:animationBlock:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISwitcherAnimationController.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"contentViewController"}];
}

- (void)initWithWorkspaceTransitionRequest:(uint64_t)a1 contentViewController:(uint64_t)a2 childAnimationControllers:animationBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISwitcherAnimationController.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"animationBlock"}];
}

@end