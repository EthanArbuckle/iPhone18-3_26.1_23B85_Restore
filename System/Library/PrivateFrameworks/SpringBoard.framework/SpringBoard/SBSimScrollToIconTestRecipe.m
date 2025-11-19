@interface SBSimScrollToIconTestRecipe
- (void)_simulateScrollToIconWithDisplayIdentifier:(id)a3;
@end

@implementation SBSimScrollToIconTestRecipe

- (void)_simulateScrollToIconWithDisplayIdentifier:(id)a3
{
  v3 = a3;
  v18 = +[SBWorkspace mainWorkspace];
  v4 = [v18 mainWindowScene];
  v5 = [v4 homeScreenController];
  v6 = [v5 iconManager];
  v7 = [v6 iconModel];
  v8 = [v7 leafIconForIdentifier:v3];

  if (v8)
  {
    [v6 setIconToReveal:v8 revealingPrevious:1];
    v9 = [v4 switcherController];
    if (!v9)
    {
      v10 = SBLogCommon();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (v11)
      {
        NSLog(&cfstr_ExpectedASwitc.isa);
      }
    }

    v12 = [v18 transientOverlayPresentationManager];
    if ([v12 hasActivePresentation])
    {
    }

    else
    {
      v13 = [v9 layoutStatePrimaryElement];
      [v13 workspaceEntity];
      v14 = v17 = v5;
      v15 = [v14 applicationSceneEntity];
      v16 = [v15 sceneHandle];

      v5 = v17;
      if (!v16)
      {
        [v6 tryScrollToIconToRevealAnimated:1];
        goto LABEL_9;
      }
    }

    SBWorkspaceSuspendActiveDisplay();
LABEL_9:
  }
}

@end