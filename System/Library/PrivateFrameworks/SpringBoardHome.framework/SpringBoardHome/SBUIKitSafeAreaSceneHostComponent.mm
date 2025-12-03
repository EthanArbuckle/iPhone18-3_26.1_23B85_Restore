@interface SBUIKitSafeAreaSceneHostComponent
- (void)scene:(id)scene willUpdateSettings:(id)settings;
@end

@implementation SBUIKitSafeAreaSceneHostComponent

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  mutableSettings = [settings mutableSettings];
  if ([mutableSettings isUISubclass])
  {
    displayConfiguration = [mutableSettings displayConfiguration];
    if ([displayConfiguration isMainRootDisplay])
    {
      sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x1E69DEBC0] sb_thisDeviceDisplayEdgeInfo];
      [sb_thisDeviceDisplayEdgeInfo sb_applyDisplayEdgeInfoToSceneSettings:mutableSettings];
    }

    else
    {
      v6 = *MEMORY[0x1E69DDCE0];
      v7 = *(MEMORY[0x1E69DDCE0] + 8);
      v8 = *(MEMORY[0x1E69DDCE0] + 16);
      v9 = *(MEMORY[0x1E69DDCE0] + 24);
      [mutableSettings setSafeAreaInsetsPortrait:{*MEMORY[0x1E69DDCE0], v7, v8, v9}];
      [mutableSettings setPeripheryInsets:{v6, v7, v8, v9}];
      [mutableSettings setHomeAffordanceOverlayAllowance:0.0];
    }
  }
}

@end