@interface _PUIKitSafeAreaSceneHostComponent
- (void)scene:(id)scene willUpdateSettings:(id)settings withTransitionContext:(id)context;
@end

@implementation _PUIKitSafeAreaSceneHostComponent

- (void)scene:(id)scene willUpdateSettings:(id)settings withTransitionContext:(id)context
{
  settingsCopy = settings;
  if ([settingsCopy isUISubclass])
  {
    displayConfiguration = [settingsCopy displayConfiguration];
    if ([displayConfiguration isMainRootDisplay])
    {
      sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x1E69DEBC0] sb_thisDeviceDisplayEdgeInfo];
      [sb_thisDeviceDisplayEdgeInfo sb_applyDisplayEdgeInfoToSceneSettings:settingsCopy];
    }

    else
    {
      v7 = *MEMORY[0x1E69DDCE0];
      v8 = *(MEMORY[0x1E69DDCE0] + 8);
      v9 = *(MEMORY[0x1E69DDCE0] + 16);
      v10 = *(MEMORY[0x1E69DDCE0] + 24);
      [settingsCopy setSafeAreaInsetsPortrait:{*MEMORY[0x1E69DDCE0], v8, v9, v10}];
      [settingsCopy setPeripheryInsets:{v7, v8, v9, v10}];
      [settingsCopy setHomeAffordanceOverlayAllowance:0.0];
    }
  }
}

@end