@interface UISceneClassicModeExternalSettingsModifier
@end

@implementation UISceneClassicModeExternalSettingsModifier

void __91___UISceneClassicModeExternalSettingsModifier_updaterForProposedSettings_withSettingsDiff___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [v5 setDisplayConfiguration:?];
  }

  if (!CGRectIsNull(*(a1 + 48)))
  {
    [v5 setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  v3 = v5;
  if (*(a1 + 40))
  {
    v4 = [v5 isUISubclass];
    v3 = v5;
    if (v4)
    {
      [v5 setCornerRadiusConfiguration:*(a1 + 40)];
      v3 = v5;
    }
  }
}

@end