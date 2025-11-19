@interface SBReachabilitySettings
+ (id)settingsControllerModule;
- (double)yOffset;
- (void)setDefaultValues;
@end

@implementation SBReachabilitySettings

- (void)setDefaultValues
{
  [(SBReachabilitySettings *)self setAllowOnAllDevices:0];
  [(SBReachabilitySettings *)self setReachabilityDefaultKeepAlive:8.0];
  [(SBReachabilitySettings *)self setReachabilityInteractiveKeepAlive:3.0];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0.408866995;
    goto LABEL_41;
  }

  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 userInterfaceIdiom])
  {

    goto LABEL_10;
  }

  v2 = SBFEffectiveHomeButtonType();

  if (v2 == 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_25;
    }

LABEL_16:
    v9 = __sb__runningInSpringBoard();
    v10 = v9;
    if (v9)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    v12 = v11;
    v13 = *(MEMORY[0x277D66E30] + 56);
    if ((v10 & 1) == 0)
    {
    }

    if ((v8 & 1) == 0)
    {
    }

    if (v12 >= v13)
    {
      v6 = 0.486413043;
      goto LABEL_41;
    }

    goto LABEL_25;
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  if (![v2 userInterfaceIdiom])
  {
    goto LABEL_16;
  }

LABEL_25:
  v14 = __sb__runningInSpringBoard();
  v15 = v14;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {

LABEL_40:
      v6 = 0.3;
      goto LABEL_41;
    }
  }

  v16 = __sb__runningInSpringBoard();
  v17 = v16;
  if (v16)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  BSSizeRoundForScale();
  v19 = v18;
  v20 = *(MEMORY[0x277D66E30] + 40);
  if ((v17 & 1) == 0)
  {
  }

  if ((v15 & 1) == 0)
  {
  }

  if (v19 < v20)
  {
    goto LABEL_40;
  }

  v6 = 0.357571214;
LABEL_41:
  [(SBReachabilitySettings *)self setYOffsetFactor:v6];
  [(SBReachabilitySettings *)self setHomeGestureSwipeDownHysteresis:10.0];
  [(SBReachabilitySettings *)self setHomeGestureSwipeDownHeight:78.0];
  [(SBReachabilitySettings *)self setSystemWideSwipeDownHeight:200.0];
  [(SBFFluidBehaviorSettings *)self->_animationSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_animationSettings setDampingRatio:1.02];
  [(SBFFluidBehaviorSettings *)self->_animationSettings setResponse:0.4];
  [(SBFFluidBehaviorSettings *)self->_animationSettings setTrackingResponse:0.1];
  animationSettings = self->_animationSettings;
  v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)animationSettings setFrameRateRange:1114136 highFrameRateReason:*&v33.minimum, *&v33.maximum, *&v33.preferred];
  v22 = [objc_alloc(MEMORY[0x277D65E20]) initWithDefaultValues];
  [(SBReachabilitySettings *)self setJindoTintColorMatrixSettings:v22];

  v23 = [(SBReachabilitySettings *)self jindoTintColorMatrixSettings];
  v24[0] = 0;
  v24[1] = 0;
  v25 = 1065353216;
  v27 = 0;
  v26 = 0;
  v28 = 1065353216;
  v29 = 0;
  v30 = 0;
  v31 = xmmword_21F8A81F0;
  v32 = 1034147594;
  [v23 setColorMatrix:v24];

  [(SBReachabilitySettings *)self setJindoInertDisableOffset:0.12];
}

+ (id)settingsControllerModule
{
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v57 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v65[0] = v57;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
  v54 = [v4 sectionWithRows:v5];

  v56 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow on all devices" valueKeyPath:@"allowOnAllDevices"];
  v6 = MEMORY[0x277D43210];
  v64 = v56;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v52 = [v6 sectionWithRows:v7 title:@"General Settings (Must Kill SpringBoard)"];

  v8 = [MEMORY[0x277D43290] rowWithTitle:@"Default" valueKeyPath:@"reachabilityDefaultKeepAlive"];
  v55 = [v8 minValue:1.0 maxValue:15.0];

  v9 = [MEMORY[0x277D43290] rowWithTitle:@"After Touch" valueKeyPath:@"reachabilityInteractiveKeepAlive"];
  v53 = [v9 minValue:1.0 maxValue:15.0];

  v10 = MEMORY[0x277D43210];
  v63[0] = v55;
  v63[1] = v53;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  v49 = [v10 sectionWithRows:v11 title:@"Reachability Keep Alive"];

  v12 = [MEMORY[0x277D43290] rowWithTitle:@"Offset Factor" valueKeyPath:@"yOffsetFactor"];
  v51 = [v12 minValue:0.0 maxValue:1.0];

  v13 = [MEMORY[0x277D431E8] rowWithTitle:@"Offset Factor" valueKeyPath:@"yOffsetFactor"];
  v50 = [v13 between:0.0 and:1.0];

  v14 = MEMORY[0x277D43210];
  v62[0] = v51;
  v62[1] = v50;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v48 = [v14 sectionWithRows:v15 title:@"Positioning"];

  v16 = [MEMORY[0x277D43290] rowWithTitle:@"Home Gesture Swipe Down Hysteresis" valueKeyPath:@"homeGestureSwipeDownHysteresis"];
  v47 = [v16 minValue:0.0 maxValue:20.0];

  v17 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Gesture Swipe Down Hysteresis" valueKeyPath:@"homeGestureSwipeDownHysteresis"];
  v46 = [v17 between:0.0 and:20.0];

  v18 = [MEMORY[0x277D43290] rowWithTitle:@"Home Gesture Swipe Down Height" valueKeyPath:@"homeGestureSwipeDownHeight"];
  v45 = [v18 minValue:0.0 maxValue:200.0];

  v19 = [MEMORY[0x277D431E8] rowWithTitle:@"Home Gesture Swipe Down Height" valueKeyPath:@"homeGestureSwipeDownHeight"];
  v44 = [v19 between:0.0 and:200.0];

  v20 = [MEMORY[0x277D43290] rowWithTitle:@"System Wide Swipe Down Height" valueKeyPath:@"systemWideSwipeDownHeight"];
  v43 = [v20 minValue:0.0 maxValue:1000.0];

  v21 = [MEMORY[0x277D431E8] rowWithTitle:@"System Wide Swipe Down Height" valueKeyPath:@"systemWideSwipeDownHeight"];
  v42 = [v21 between:0.0 and:1000.0];

  v22 = MEMORY[0x277D43210];
  v61[0] = v47;
  v61[1] = v46;
  v61[2] = v45;
  v61[3] = v44;
  v61[4] = v43;
  v61[5] = v42;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:6];
  v41 = [v22 sectionWithRows:v23 title:@"Gesture"];

  v24 = MEMORY[0x277D43210];
  v25 = [MEMORY[0x277D431D8] rowWithTitle:@"Color matrix over content" childSettingsKeyPath:@"jindoTintColorMatrixSettings"];
  v60[0] = v25;
  v26 = [MEMORY[0x277D431E8] rowWithTitle:@"Inert disable animation offset" valueKeyPath:@"jindoInertDisableOffset"];
  v27 = [v26 between:0.0 and:2.0];
  v28 = [v27 precision:3];
  v60[1] = v28;
  v29 = [MEMORY[0x277D43290] rowWithTitle:@"Inert disable animation offset" valueKeyPath:@"jindoInertDisableOffset"];
  v30 = [v29 minValue:0.0 maxValue:2.0];
  v60[2] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
  v32 = [v24 sectionWithRows:v31 title:@"Jindo"];

  v33 = MEMORY[0x277D43210];
  v34 = [MEMORY[0x277D431D8] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"animationSettings"];
  v59 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  v36 = [v33 sectionWithRows:v35 title:@"Miscellaneous"];

  v37 = MEMORY[0x277D43210];
  v58[0] = v54;
  v58[1] = v52;
  v58[2] = v49;
  v58[3] = v48;
  v58[4] = v41;
  v58[5] = v32;
  v58[6] = v36;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:7];
  v39 = [v37 moduleWithTitle:@"Reachability" contents:v38];

  return v39;
}

- (double)yOffset
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  [(SBReachabilitySettings *)self yOffsetFactor];
  SBFloatRoundForMainScreenScale();
  v7 = v6;
  if ((v5 & 1) == 0)
  {
  }

  return v7;
}

@end