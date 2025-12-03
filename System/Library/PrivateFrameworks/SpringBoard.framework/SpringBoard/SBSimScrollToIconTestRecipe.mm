@interface SBSimScrollToIconTestRecipe
- (void)_simulateScrollToIconWithDisplayIdentifier:(id)identifier;
@end

@implementation SBSimScrollToIconTestRecipe

- (void)_simulateScrollToIconWithDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18 = +[SBWorkspace mainWorkspace];
  mainWindowScene = [v18 mainWindowScene];
  homeScreenController = [mainWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  iconModel = [iconManager iconModel];
  v8 = [iconModel leafIconForIdentifier:identifierCopy];

  if (v8)
  {
    [iconManager setIconToReveal:v8 revealingPrevious:1];
    switcherController = [mainWindowScene switcherController];
    if (!switcherController)
    {
      v10 = SBLogCommon();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (v11)
      {
        NSLog(&cfstr_ExpectedASwitc.isa);
      }
    }

    transientOverlayPresentationManager = [v18 transientOverlayPresentationManager];
    if ([transientOverlayPresentationManager hasActivePresentation])
    {
    }

    else
    {
      layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
      [layoutStatePrimaryElement workspaceEntity];
      v14 = v17 = homeScreenController;
      applicationSceneEntity = [v14 applicationSceneEntity];
      sceneHandle = [applicationSceneEntity sceneHandle];

      homeScreenController = v17;
      if (!sceneHandle)
      {
        [iconManager tryScrollToIconToRevealAnimated:1];
        goto LABEL_9;
      }
    }

    SBWorkspaceSuspendActiveDisplay();
LABEL_9:
  }
}

@end