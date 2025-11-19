@interface SBUIKitSafeAreaSceneHostComponent
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
@end

@implementation SBUIKitSafeAreaSceneHostComponent

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v10 = [a4 mutableSettings];
  if ([v10 isUISubclass])
  {
    v4 = [v10 displayConfiguration];
    if ([v4 isMainRootDisplay])
    {
      v5 = [MEMORY[0x1E69DEBC0] sb_thisDeviceDisplayEdgeInfo];
      [v5 sb_applyDisplayEdgeInfoToSceneSettings:v10];
    }

    else
    {
      v6 = *MEMORY[0x1E69DDCE0];
      v7 = *(MEMORY[0x1E69DDCE0] + 8);
      v8 = *(MEMORY[0x1E69DDCE0] + 16);
      v9 = *(MEMORY[0x1E69DDCE0] + 24);
      [v10 setSafeAreaInsetsPortrait:{*MEMORY[0x1E69DDCE0], v7, v8, v9}];
      [v10 setPeripheryInsets:{v6, v7, v8, v9}];
      [v10 setHomeAffordanceOverlayAllowance:0.0];
    }
  }
}

@end