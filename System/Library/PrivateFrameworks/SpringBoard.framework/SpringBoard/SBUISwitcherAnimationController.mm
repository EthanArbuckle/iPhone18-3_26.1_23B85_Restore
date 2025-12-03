@interface SBUISwitcherAnimationController
- (BOOL)isInterruptible;
- (SBSwitcherContentViewControlling)contentViewController;
- (SBUISwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)request contentViewController:(id)controller childAnimationControllers:(id)controllers animationBlock:(id)block;
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
- (void)animationControllerDidFinishAnimation:(id)animation;
@end

@implementation SBUISwitcherAnimationController

- (id)animationSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  defaultTransitionAnimationSettings = [WeakRetained defaultTransitionAnimationSettings];

  return defaultTransitionAnimationSettings;
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

  workspaceTransitionRequest = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  _layoutState = [(SBUISwitcherAnimationController *)self _layoutState];
  _windowScene = [(SBUISwitcherAnimationController *)self _windowScene];
  homeScreenController = [_windowScene homeScreenController];
  iconManager = [homeScreenController iconManager];

  iconModel = [iconManager iconModel];
  [iconManager clearHighlightedIcon];
  if ([_layoutState unlockedEnvironmentMode] == 1 && objc_msgSend(workspaceTransitionRequest, "source") != 11)
  {
    applicationContext = [workspaceTransitionRequest applicationContext];
    v11 = [applicationContext previousEntityForLayoutRole:1];

    if ([v11 isApplicationSceneEntity])
    {
      applicationSceneEntity = [v11 applicationSceneEntity];
      application = [applicationSceneEntity application];

      bundleIdentifier = [application bundleIdentifier];
      v15 = [bundleIdentifier isEqualToString:@"com.apple.webapp"];

      if (v15)
      {
        applicationSceneEntity2 = [v11 applicationSceneEntity];
        [applicationSceneEntity2 sceneHandle];
        v16 = v25 = application;
        sceneIdentifier = [v16 sceneIdentifier];
        bundleIdentifier2 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:sceneIdentifier];

        application = v25;
        [iconModel leafIconForIdentifier:bundleIdentifier2];
      }

      else
      {
        bundleIdentifier2 = [application bundleIdentifier];
        [iconModel applicationIconForBundleIdentifier:bundleIdentifier2];
      }
      v19 = ;

      if (([iconManager isDisplayingIcon:v19 queryOptions:2] & 1) == 0)
      {
        [iconManager popToCurrentRootIconList];
      }
    }
  }

  [(SBUISwitcherAnimationController *)self _updatePPTsForAnimationStart];
  [(SBUISwitcherAnimationController *)self _addSignpostsAndBeginAnimationTrackingForAnimationStart];
  animationBlock = self->_animationBlock;
  workspaceTransitionRequest2 = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  applicationContext2 = [workspaceTransitionRequest2 applicationContext];
  animationBlock[2](animationBlock, applicationContext2);

  v23 = self->_animationBlock;
  self->_animationBlock = 0;

  [(SBUIAnimationController *)self _noteAnimationDidFinish];
}

- (id)_layoutState
{
  workspaceTransitionRequest = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  applicationContext = [workspaceTransitionRequest applicationContext];
  layoutState = [applicationContext layoutState];

  return layoutState;
}

- (id)_windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  if (objc_opt_respondsToSelector())
  {
    _sbWindowScene = [WeakRetained _sbWindowScene];
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    workspaceTransitionRequest = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
    displayIdentity = [workspaceTransitionRequest displayIdentity];
    _sbWindowScene = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];
  }

  return _sbWindowScene;
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
                      currentTestName = [v21 currentTestName];

                      v23 = *v2;
                      v31[0] = MEMORY[0x277D85DD0];
                      v31[1] = 3221225472;
                      v31[2] = __63__SBUISwitcherAnimationController__updatePPTsForAnimationStart__block_invoke_9;
                      v31[3] = &unk_2783A8C18;
                      v32 = currentTestName;
                      v24 = currentTestName;
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
                      currentTestName2 = [v26 currentTestName];

                      v28 = *v2;
                      v29[0] = MEMORY[0x277D85DD0];
                      v29[1] = 3221225472;
                      v29[2] = __63__SBUISwitcherAnimationController__updatePPTsForAnimationStart__block_invoke_10;
                      v29[3] = &unk_2783A8C18;
                      v30 = currentTestName2;
                      v24 = currentTestName2;
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
  _layoutState = [(SBUISwitcherAnimationController *)self _layoutState];
  _previousLayoutState = [(SBUISwitcherAnimationController *)self _previousLayoutState];
  if ([_previousLayoutState unlockedEnvironmentMode] == 1)
  {
    if ([_layoutState unlockedEnvironmentMode] == 3)
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
      if ([_layoutState unlockedEnvironmentMode] != 2)
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

  else if ([_previousLayoutState unlockedEnvironmentMode] == 2)
  {
    if ([_layoutState unlockedEnvironmentMode] == 3)
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
      if ([_layoutState unlockedEnvironmentMode] != 1)
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
    if ([_previousLayoutState unlockedEnvironmentMode] != 3)
    {
      goto LABEL_36;
    }

    if ([_layoutState unlockedEnvironmentMode] == 1)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_APP_TO_HOME_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", v13, 2u);
      }

      v6 = @"AppToHome";
    }

    else if ([_layoutState unlockedEnvironmentMode] == 3)
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
      if ([_layoutState unlockedEnvironmentMode] != 2)
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
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v10 = [processInfo beginActivityWithOptions:0x200000000000 reason:v8];
  [(SBUISwitcherAnimationController *)self setActivityToken:v10];

LABEL_36:
}

- (id)_previousLayoutState
{
  workspaceTransitionRequest = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
  applicationContext = [workspaceTransitionRequest applicationContext];
  previousLayoutState = [applicationContext previousLayoutState];

  return previousLayoutState;
}

- (void)_addSignpostsAndEndAnimationTrackingForAnimationEnd
{
  _layoutState = [(SBUISwitcherAnimationController *)self _layoutState];
  _previousLayoutState = [(SBUISwitcherAnimationController *)self _previousLayoutState];
  if ([_previousLayoutState unlockedEnvironmentMode] == 1)
  {
    if ([_layoutState unlockedEnvironmentMode] != 3)
    {
      if ([_layoutState unlockedEnvironmentMode] != 2)
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

  else if ([_previousLayoutState unlockedEnvironmentMode] == 2)
  {
    if ([_layoutState unlockedEnvironmentMode] != 3)
    {
      if ([_layoutState unlockedEnvironmentMode] != 1)
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
    if ([_previousLayoutState unlockedEnvironmentMode] != 3)
    {
      goto LABEL_28;
    }

    if ([_layoutState unlockedEnvironmentMode] == 1)
    {
      v5 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_APP_TO_HOME_ANIMATION", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
      }

      goto LABEL_27;
    }

    if ([_layoutState unlockedEnvironmentMode] == 3)
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
      if ([_layoutState unlockedEnvironmentMode] != 2)
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
  activityToken = [(SBUISwitcherAnimationController *)self activityToken];

  if (activityToken)
  {
    if (([(SBUISwitcherAnimationController *)self isInterrupted]& 1) == 0)
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      activityToken2 = [(SBUISwitcherAnimationController *)self activityToken];
      [processInfo endActivity:activityToken2];
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
    currentTestName = [v14 currentTestName];

    [*v2 finishedSubTest:@"AppSliderBringupAnimation" forTest:currentTestName];
    v15 = *v2;
LABEL_24:
    [v15 finishedTest:currentTestName];
LABEL_25:

    return;
  }

  if (([*v2 isRunningTest:@"AppSliderDismiss"] & 1) != 0 || objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissRotated"))
  {
    v16 = +[SBApplicationTestingManager sharedInstance];
    currentTestName = [v16 currentTestName];

    [SBApp finishedSubTest:@"animation" forTest:currentTestName];
    v15 = SBApp;
    goto LABEL_24;
  }

  if (([*v2 isRunningTest:@"AppSliderDismissOverApp"] & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissOverAppRotated") & 1) != 0 || (objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissOverAppInScreenTime") & 1) != 0 || objc_msgSend(*v2, "isRunningTest:", @"AppSliderDismissOverAppInScreenTimeRotated"))
  {
    v17 = +[SBApplicationTestingManager sharedInstance];
    currentTestName = [v17 currentTestName];

    [SBApp finishedSubTest:@"animation" forTest:currentTestName];
    [SBApp finishedTest:currentTestName];
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
    workspaceTransitionRequest = [(SBUIWorkspaceAnimationController *)self workspaceTransitionRequest];
    _layoutState = [(SBUISwitcherAnimationController *)self _layoutState];
    unlockedEnvironmentMode = [_layoutState unlockedEnvironmentMode];
    unlockedEnvironmentMode2 = [_layoutState unlockedEnvironmentMode];
    source = [workspaceTransitionRequest source];
    v9 = unlockedEnvironmentMode == 1 && source == 15;
    if (!v9 && unlockedEnvironmentMode2 == 3)
    {
      _windowScene = [(SBUISwitcherAnimationController *)self _windowScene];
      homeScreenController = [_windowScene homeScreenController];
      iconManager = [homeScreenController iconManager];
      [iconManager presentHomeScreenIconsAnimated:0];
      _previousLayoutState = [(SBUISwitcherAnimationController *)self _previousLayoutState];
      unlockedEnvironmentMode3 = [_previousLayoutState unlockedEnvironmentMode];
      source2 = [workspaceTransitionRequest source];
      if (([homeScreenController isTodayOverlaySpotlightVisible] & 1) != 0 || source2 == 2 && unlockedEnvironmentMode3 == 1 && objc_msgSend(iconManager, "isOverlayTodayViewVisible"))
      {
        [homeScreenController dismissTodayOverlayAnimated:0];
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

- (SBUISwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)request contentViewController:(id)controller childAnimationControllers:(id)controllers animationBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  controllerCopy = controller;
  controllersCopy = controllers;
  blockCopy = block;
  if (requestCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    [SBUISwitcherAnimationController initWithWorkspaceTransitionRequest:a2 contentViewController:self childAnimationControllers:? animationBlock:?];
    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  [SBUISwitcherAnimationController initWithWorkspaceTransitionRequest:a2 contentViewController:self childAnimationControllers:? animationBlock:?];
  if (!controllerCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_16:
  [SBUISwitcherAnimationController initWithWorkspaceTransitionRequest:a2 contentViewController:self childAnimationControllers:? animationBlock:?];
LABEL_4:
  v30.receiver = self;
  v30.super_class = SBUISwitcherAnimationController;
  v15 = [(SBUIWorkspaceAnimationController *)&v30 initWithWorkspaceTransitionRequest:requestCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_contentViewController, controllerCopy);
    v17 = MEMORY[0x223D6F7F0](blockCopy);
    animationBlock = v16->_animationBlock;
    v16->_animationBlock = v17;

    *(&v16->_interruptible + 6) = 1;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = controllersCopy;
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
  canInterruptActiveTransition = [WeakRetained canInterruptActiveTransition];

  return canInterruptActiveTransition;
}

- (void)animationControllerDidFinishAnimation:(id)animation
{
  if (self == animation)
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