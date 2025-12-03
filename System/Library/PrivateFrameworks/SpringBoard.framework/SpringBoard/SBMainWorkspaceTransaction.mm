@interface SBMainWorkspaceTransaction
- (SBMainWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (void)_didComplete;
@end

@implementation SBMainWorkspaceTransaction

- (void)_didComplete
{
  v63 = *MEMORY[0x277D85DE8];
  if (![(SBMainWorkspaceTransaction *)self _isRootTransaction])
  {
    goto LABEL_35;
  }

  v3 = 0x277D6A000uLL;
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"SBMainWorkspaceTransaction" forKeyedSubscript:@"LogSource"];
    v50 = @"VisibleUI";
  }

  else
  {
    v50 = 0;
    dictionary = 0;
  }

  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  activeInterfaceOrientation = [mEMORY[0x277D75128] activeInterfaceOrientation];

  v9 = +[SBCoverSheetPresentationManager sharedInstance];
  isVisible = [v9 isVisible];

  if ((isVisible & 1) == 0)
  {
    IsActive = SBWorkspaceSpringBoardIsActive();
    v49 = windowScene;
    switcherController = [windowScene switcherController];
    layoutState = [switcherController layoutState];
    unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

    if (IsActive)
    {
      if (unlockedEnvironmentMode != 2)
      {
        v11 = @"HomeScreen";
LABEL_26:
        windowScene = v49;
        goto LABEL_29;
      }

      interfaceOrientation = [switcherController interfaceOrientation];
      windowScene = v49;
      if (!isEnabled)
      {
        v11 = @"AppSwitcher";
LABEL_29:

        goto LABEL_30;
      }

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation];
      [dictionary setObject:v17 forKeyedSubscript:@"SwitcherInterfaceOrientation"];
      v11 = @"AppSwitcher";
    }

    else
    {
      if (unlockedEnvironmentMode == 2)
      {
        interfaceOrientation2 = [switcherController interfaceOrientation];
        if (!isEnabled)
        {
          v11 = @"AppSwitcher";
          goto LABEL_26;
        }

        v17 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation2];
        [dictionary setObject:v17 forKeyedSubscript:@"SwitcherInterfaceOrientation"];
        v11 = @"AppSwitcher";
      }

      else
      {
        layoutState2 = [switcherController layoutState];
        v20 = [layoutState2 elementWithRole:1];
        workspaceEntity = [v20 workspaceEntity];
        deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];
        sceneHandle = [deviceApplicationSceneEntity sceneHandle];

        application = [sceneHandle application];
        bundleIdentifier = [application bundleIdentifier];
        v26 = bundleIdentifier;
        v27 = @"Unknown";
        if (bundleIdentifier)
        {
          v27 = bundleIdentifier;
        }

        v11 = v27;

        v17 = sceneHandle;
        currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];
        if (isEnabled)
        {
          v47 = v17;
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:currentInterfaceOrientation];
          [dictionary setObject:v29 forKeyedSubscript:@"AppInterfaceOrientation"];

          v48 = switcherController;
          layoutStateStudyLogData = [switcherController layoutStateStudyLogData];
          [dictionary addEntriesFromDictionary:layoutStateStudyLogData];

          transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
          workspace = [transitionRequest workspace];
          pipCoordinator = [workspace pipCoordinator];

          v34 = 0;
          v35 = 1;
          do
          {
            v36 = v35;
            v37 = [pipCoordinator controllerForType:v34];
            if ([v37 isPictureInPictureWindowVisibleOnWindowScene:0])
            {
              v38 = SBStringFromSBPIPContentType(v34);
              [dictionary setObject:@"Visible" forKeyedSubscript:v38];
            }

            v35 = 0;
            v34 = 1;
          }

          while ((v36 & 1) != 0);

          v3 = 0x277D6A000;
          switcherController = v48;
          windowScene = v49;
          v17 = v47;
          goto LABEL_28;
        }
      }

      windowScene = v49;
    }

LABEL_28:

    goto LABEL_29;
  }

  v11 = @"CoverSheet";
LABEL_30:
  v39 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = BSInterfaceOrientationDescription();
    v41 = BSInterfaceOrientationDescription();
    BSInterfaceOrientationDescription();
    v43 = v42 = windowScene;
    *buf = 138413058;
    v56 = v11;
    v57 = 2112;
    v58 = v40;
    v59 = 2112;
    v60 = v41;
    v61 = 2112;
    v62 = v43;
    _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_INFO, "Visible UI change seen by Main Workspace Transaction: transition to %@ (SB interface orientation: %@, switcher interface orientation: %@,  app interface orientation: %@)", buf, 0x2Au);

    windowScene = v42;
  }

  if (isEnabled)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:activeInterfaceOrientation];
    [dictionary setObject:v44 forKeyedSubscript:@"SBInterfaceOrientation"];

    [dictionary setObject:v11 forKeyedSubscript:v50];
    sharedInstance = [*(v3 + 1944) sharedInstance];
    v53 = @"VisibleUIChanged";
    v54 = dictionary;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [sharedInstance log:v46];
  }

LABEL_35:
  v52.receiver = self;
  v52.super_class = SBMainWorkspaceTransaction;
  [(SBWorkspaceTransaction *)&v52 _didComplete];
}

- (SBMainWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBMainWorkspaceTransaction;
  return [(SBWorkspaceTransaction *)&v4 initWithTransitionRequest:request];
}

@end