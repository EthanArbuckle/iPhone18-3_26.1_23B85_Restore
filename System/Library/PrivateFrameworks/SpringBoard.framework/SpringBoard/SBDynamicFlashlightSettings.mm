@interface SBDynamicFlashlightSettings
+ (id)settingsControllerModule;
- (CGPoint)gestureScaling;
- (void)setDefaultValues;
@end

@implementation SBDynamicFlashlightSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBDynamicFlashlightSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(SBDynamicFlashlightSettings *)self setMinimumIntensity:0.02];
  [(SBDynamicFlashlightSettings *)self setMinimumHWIntensity:0.02];
  [(SBDynamicFlashlightSettings *)self setGestureXScaling:200.0];
  [(SBDynamicFlashlightSettings *)self setGestureYScaling:400.0];
  [(SBDynamicFlashlightSettings *)self setGestureClampFactor:0.05];
  [(SBDynamicFlashlightSettings *)self setTapMoveThreshold:10.0];
  [(SBDynamicFlashlightSettings *)self setTapTimeThreshold:0.1];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setDefaultValues];
  springAnimationSettings = self->_springAnimationSettings;
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)springAnimationSettings setFrameRateRange:1114150 highFrameRateReason:*&v5.minimum, *&v5.maximum, *&v5.preferred];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setDampingRatio:0.983];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setResponse:0.643];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setRetargetImpulse:0.029];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setTrackingDampingRatio:0.739];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setTrackingResponse:0.377];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setTrackingRetargetImpulse:0.029];
  [(SBFFluidBehaviorSettings *)self->_springAnimationSettings setInertialProjectionDeceleration:0.998];
  [(SBDynamicFlashlightSettings *)self setInertiaFactor:0.12];
  [(SBDynamicFlashlightSettings *)self setOvershootClampFactor:0.035];
  [(SBDynamicFlashlightSettings *)self setHeightStretchFactor:0.6];
  [(SBDynamicFlashlightSettings *)self setWidthStretchFactor:0.5];
  [(SBDynamicFlashlightSettings *)self setPersistenceDelay:0.75];
  [(SBDynamicFlashlightSettings *)self setAutoDismissalDelay:2.0];
}

- (CGPoint)gestureScaling
{
  gestureXScaling = self->_gestureXScaling;
  gestureYScaling = self->_gestureYScaling;
  result.y = gestureYScaling;
  result.x = gestureXScaling;
  return result;
}

+ (id)settingsControllerModule
{
  v59[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Intensity" valueKeyPath:@"minimumIntensity"];
  v4 = [v3 between:0.0 and:0.25];
  v59[0] = v4;
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"Min HW Intensity" valueKeyPath:@"minimumHWIntensity"];
  v6 = [v5 between:0.0 and:0.25];
  v59[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v52 = [v2 sectionWithRows:v7 title:@"Intensity Response"];

  v8 = MEMORY[0x277D43210];
  v9 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Animations"];
  v51 = [v8 submoduleWithModule:v9 childSettingsKeyPath:@"springAnimationSettings"];

  v10 = MEMORY[0x277D43210];
  v11 = [MEMORY[0x277D431E8] rowWithTitle:@"Inertia Factor" valueKeyPath:@"inertiaFactor"];
  v12 = [v11 between:0.0 and:0.25];
  v58 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v50 = [v10 sectionWithRows:v13 title:@"More Animations"];

  v14 = MEMORY[0x277D43210];
  v15 = [MEMORY[0x277D431E8] rowWithTitle:@"Overshoot Clamp %" valueKeyPath:@"overshootClampFactor"];
  v16 = [v15 between:0.0 and:0.1];
  v57[0] = v16;
  v17 = [MEMORY[0x277D431E8] rowWithTitle:@"Width Stretch" valueKeyPath:@"widthStretchFactor"];
  v18 = [v17 between:0.0 and:1.0];
  v57[1] = v18;
  v19 = [MEMORY[0x277D431E8] rowWithTitle:@"Height Stretch" valueKeyPath:@"heightStretchFactor"];
  v20 = [v19 between:0.0 and:1.0];
  v57[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
  v49 = [v14 sectionWithRows:v21 title:@"Jindo Dynamics"];

  v22 = MEMORY[0x277D43210];
  v23 = [MEMORY[0x277D431E8] rowWithTitle:@"Persistence Delay" valueKeyPath:@"persistenceDelay"];
  v24 = [v23 between:0.0 and:3.0];
  v56[0] = v24;
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Auto-Dismissal Delay" valueKeyPath:@"autoDismissalDelay"];
  v26 = [v25 between:0.0 and:4.0];
  v56[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v48 = [v22 sectionWithRows:v27 title:@"Timing"];

  v28 = MEMORY[0x277D43210];
  v47 = [MEMORY[0x277D43290] rowWithTitle:@"Gesture X Scaling" valueKeyPath:@"gestureXScaling"];
  v46 = [v47 minValue:100.0 maxValue:500.0];
  v55[0] = v46;
  v29 = [MEMORY[0x277D43290] rowWithTitle:@"Gesture Y Scaling" valueKeyPath:@"gestureYScaling"];
  v30 = [v29 minValue:100.0 maxValue:500.0];
  v55[1] = v30;
  v31 = [MEMORY[0x277D43290] rowWithTitle:@"Clamp %" valueKeyPath:@"gestureClampFactor"];
  v32 = [v31 minValue:0.0 maxValue:1.0];
  v55[2] = v32;
  v33 = [MEMORY[0x277D431E8] rowWithTitle:@"Tap Time Limit" valueKeyPath:@"tapTimeThreshold"];
  v34 = [v33 between:0.001 and:0.25];
  v55[3] = v34;
  v35 = [MEMORY[0x277D431E8] rowWithTitle:@"Tap Move Limit" valueKeyPath:@"tapMoveThreshold"];
  v36 = [v35 between:0.0 and:40.0];
  v55[4] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:5];
  v45 = [v28 sectionWithRows:v37 title:@"Gestures"];

  restoreDefaultSettingsButton = [MEMORY[0x277D431B0] restoreDefaultSettingsButton];
  v39 = MEMORY[0x277D43210];
  v54 = restoreDefaultSettingsButton;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v41 = [v39 sectionWithRows:v40];

  v53[0] = v52;
  v53[1] = v51;
  v53[2] = v50;
  v53[3] = v49;
  v53[4] = v45;
  v53[5] = v48;
  v53[6] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:7];
  v43 = [MEMORY[0x277D43210] moduleWithTitle:@"Dynamic Flashlight" contents:v42];

  return v43;
}

@end