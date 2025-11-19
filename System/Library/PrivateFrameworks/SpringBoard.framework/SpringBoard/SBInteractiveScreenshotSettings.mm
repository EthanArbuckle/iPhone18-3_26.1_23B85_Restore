@interface SBInteractiveScreenshotSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBInteractiveScreenshotSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBInteractiveScreenshotSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBInteractiveScreenshotSettings *)self setEnabled:1];
  [(SBInteractiveScreenshotSettings *)self setShouldPreheat:1];
  [(SBInteractiveScreenshotSettings *)self setShouldAsynchronouslyRender:1];
  [(SBInteractiveScreenshotSettings *)self setCornerRadiusVisibleProgressThreshold:0.7];
  [(SBInteractiveScreenshotSettings *)self setApplicationTouchDelayHysteresis:0.25];
  [(SBInteractiveScreenshotSettings *)self setRubberbandingRange:0.6];
  [(SBInteractiveScreenshotSettings *)self setNormalizedDistanceForCommitThreshold:0.1];
  [(SBInteractiveScreenshotSettings *)self setProjectionDecelerationRate:0.995];
  [(SBInteractiveScreenshotSettings *)self setHorizontalTranslationFactor:0.0];
  [(SBInteractiveScreenshotSettings *)self setVerticalTranslationFactor:0.05];
  [(SBInteractiveScreenshotSettings *)self setBaseCornerTranslationDegrees:20.0];
  [(SBInteractiveScreenshotSettings *)self setCropCornersVisibleProgressThreshold:0.4];
  [(SBInteractiveScreenshotSettings *)self setCropLinesVisibleProgressThreshold:0.9];
  [(SBInteractiveScreenshotSettings *)self setDisabledGestureCancellationDistance:100.0];
  [(SBInteractiveScreenshotSettings *)self setShouldInjectVelocity:1];
  [(SBInteractiveScreenshotSettings *)self setMaximumInjectedVelocity:32.0];
  [(SBInteractiveScreenshotSettings *)self setDisabledGestureVelocityScale:0.25];
  [(SBCornerPencilPanGestureSettings *)self->_pencilGestureSettings setDefaultValues];
  [(SBCornerFingerPanGestureSettings *)self->_fingerGestureSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_contentAnimationSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_contentAnimationSettings setDampingRatio:0.845];
  [(SBFFluidBehaviorSettings *)self->_contentAnimationSettings setResponse:0.48];
  [(SBFFluidBehaviorSettings *)self->_contentAnimationSettings setTrackingDampingRatio:0.86];
  [(SBFFluidBehaviorSettings *)self->_contentAnimationSettings setTrackingResponse:0.1];
  [(SBFFluidBehaviorSettings *)self->_disabledGestureContentAnimationSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_disabledGestureContentAnimationSettings setDampingRatio:0.475];
  [(SBFFluidBehaviorSettings *)self->_disabledGestureContentAnimationSettings setResponse:0.3];
  [(SBFFluidBehaviorSettings *)self->_cropsAnimationSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_cropsAnimationSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_cropsAnimationSettings setResponse:0.55];
  [(SBFFluidBehaviorSettings *)self->_cropLinesAlphaAnimationSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_cropLinesAlphaAnimationSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_cropLinesAlphaAnimationSettings setResponse:0.17];
}

+ (id)settingsControllerModule
{
  v78[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v65 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v78[0] = v65;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
  v73 = [v4 sectionWithRows:v5];

  v64 = [MEMORY[0x277D432A8] rowWithTitle:@"Enabled" valueKeyPath:@"enabled"];
  v63 = [MEMORY[0x277D432A8] rowWithTitle:@"Preheat Screenshot Infrastructure" valueKeyPath:@"shouldPreheat"];
  v62 = [MEMORY[0x277D432A8] rowWithTitle:@"Asynchronously Render Apps" valueKeyPath:@"shouldAsynchronouslyRender"];
  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Application Touch Delay Hysteresis" valueKeyPath:@"applicationTouchDelayHysteresis"];
  v7 = [v6 between:0.0 and:5.0];
  v61 = [v7 precision:3];

  v8 = MEMORY[0x277D43210];
  v77[0] = v64;
  v77[1] = v63;
  v77[2] = v62;
  v77[3] = v61;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
  v72 = [v8 sectionWithRows:v9 title:@"General"];

  v10 = MEMORY[0x277D43210];
  v11 = +[SBCornerPencilPanGestureSettings settingsControllerModule];
  v60 = [v10 submoduleWithModule:v11 childSettingsKeyPath:@"pencilGestureSettings"];

  v12 = MEMORY[0x277D43210];
  v13 = +[SBCornerFingerPanGestureSettings settingsControllerModule];
  v59 = [v12 submoduleWithModule:v13 childSettingsKeyPath:@"fingerGestureSettings"];

  v71 = [MEMORY[0x277D432A8] rowWithTitle:@"Inject Velocity" valueKeyPath:@"shouldInjectVelocity"];
  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Maximum Injected Velocity" valueKeyPath:@"maximumInjectedVelocity"];
  v15 = [v14 between:0.0 and:75.0];
  v70 = [v15 precision:2];

  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Base Corner Translation Angle" valueKeyPath:@"baseCornerTranslationDegrees"];
  v17 = [v16 between:0.0 and:90.0];
  v69 = [v17 precision:2];

  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Translation Factor" valueKeyPath:@"horizontalTranslationFactor"];
  v19 = [v18 between:0.0 and:2.0];
  v68 = [v19 precision:3];

  v20 = [MEMORY[0x277D431E8] rowWithTitle:@"Vertical Translation Factor" valueKeyPath:@"verticalTranslationFactor"];
  v21 = [v20 between:0.0 and:2.0];
  v67 = [v21 precision:3];

  v22 = [MEMORY[0x277D431E8] rowWithTitle:@"Rubberbanding Range" valueKeyPath:@"rubberbandingRange"];
  v23 = [v22 between:0.0 and:1.0];
  v66 = [v23 precision:3];

  v24 = [MEMORY[0x277D431E8] rowWithTitle:@"Normalized Distance for Commit Threshold" valueKeyPath:@"normalizedDistanceForCommitThreshold"];
  v25 = [v24 between:0.0 and:1.0];
  v58 = [v25 precision:3];

  v26 = [MEMORY[0x277D431E8] rowWithTitle:@"Crop Corners Visible Progress Threshold" valueKeyPath:@"cropCornersVisibleProgressThreshold"];
  v27 = [v26 between:0.0 and:1.0];
  v57 = [v27 precision:3];

  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Crop Lines Visible Progress Threshold" valueKeyPath:@"cropLinesVisibleProgressThreshold"];
  v29 = [v28 between:0.0 and:1.0];
  v56 = [v29 precision:3];

  v30 = [MEMORY[0x277D431E8] rowWithTitle:@"Corner Radius Visible Progress Threshold" valueKeyPath:@"cornerRadiusVisibleProgressThreshold"];
  v31 = [v30 between:0.0 and:1.0];
  v55 = [v31 precision:3];

  v32 = [MEMORY[0x277D431E8] rowWithTitle:@"Projection Deceleration Rate" valueKeyPath:@"projectionDecelerationRate"];
  v33 = [v32 between:0.0 and:1.0];
  v54 = [v33 precision:3];

  v34 = [MEMORY[0x277D431E8] rowWithTitle:@"Disabled Gesture Cancellation Distance" valueKeyPath:@"disabledGestureCancellationDistance"];
  v35 = [v34 between:0.0 and:300.0];
  v53 = [v35 precision:1];

  v36 = [MEMORY[0x277D431E8] rowWithTitle:@"Disabled Gesture Velocity Scale" valueKeyPath:@"disabledGestureVelocityScale"];
  v37 = [v36 between:0.0 and:1.0];
  v52 = [v37 precision:3];

  v38 = MEMORY[0x277D43210];
  v76[0] = v71;
  v76[1] = v70;
  v76[2] = v69;
  v76[3] = v68;
  v76[4] = v67;
  v76[5] = v66;
  v76[6] = v58;
  v76[7] = v57;
  v76[8] = v56;
  v76[9] = v55;
  v76[10] = v54;
  v76[11] = v53;
  v76[12] = v52;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:13];
  v51 = [v38 sectionWithRows:v39 title:@"Gesture Tracking"];

  v40 = [MEMORY[0x277D431D8] rowWithTitle:@"Content Animation Settings" childSettingsKeyPath:@"contentAnimationSettings"];
  v41 = [MEMORY[0x277D431D8] rowWithTitle:@"Disabled Gesture Content Animation Settings" childSettingsKeyPath:@"disabledGestureContentAnimationSettings"];
  v42 = [MEMORY[0x277D431D8] rowWithTitle:@"Crops Animation Settings" childSettingsKeyPath:@"cropsAnimationSettings"];
  v43 = [MEMORY[0x277D431D8] rowWithTitle:@"Crop Lines Alpha Animation Settings" childSettingsKeyPath:@"cropLinesAlphaAnimationSettings"];
  v44 = MEMORY[0x277D43210];
  v75[0] = v40;
  v75[1] = v41;
  v75[2] = v42;
  v75[3] = v43;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
  v46 = [v44 sectionWithRows:v45 title:@"Animations"];

  v47 = MEMORY[0x277D43210];
  v74[0] = v73;
  v74[1] = v72;
  v74[2] = v60;
  v74[3] = v59;
  v74[4] = v51;
  v74[5] = v46;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:6];
  v49 = [v47 moduleWithTitle:@"Interactive Screenshot" contents:v48];

  return v49;
}

@end