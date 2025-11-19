@interface _PUIKitSafeAreaSceneHostComponent
- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5;
@end

@implementation _PUIKitSafeAreaSceneHostComponent

- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5
{
  v11 = a4;
  if ([v11 isUISubclass])
  {
    v5 = [v11 displayConfiguration];
    if ([v5 isMainRootDisplay])
    {
      v6 = [MEMORY[0x1E69DEBC0] sb_thisDeviceDisplayEdgeInfo];
      [v6 sb_applyDisplayEdgeInfoToSceneSettings:v11];
    }

    else
    {
      v7 = *MEMORY[0x1E69DDCE0];
      v8 = *(MEMORY[0x1E69DDCE0] + 8);
      v9 = *(MEMORY[0x1E69DDCE0] + 16);
      v10 = *(MEMORY[0x1E69DDCE0] + 24);
      [v11 setSafeAreaInsetsPortrait:{*MEMORY[0x1E69DDCE0], v8, v9, v10}];
      [v11 setPeripheryInsets:{v7, v8, v9, v10}];
      [v11 setHomeAffordanceOverlayAllowance:0.0];
    }
  }
}

@end