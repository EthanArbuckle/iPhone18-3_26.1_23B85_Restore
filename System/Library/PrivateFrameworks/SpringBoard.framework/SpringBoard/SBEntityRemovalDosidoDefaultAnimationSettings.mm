@interface SBEntityRemovalDosidoDefaultAnimationSettings
+ (id)_settingsModule;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalDosidoDefaultAnimationSettings

- (void)setDefaultValues
{
  v11.receiver = self;
  v11.super_class = SBEntityRemovalDosidoDefaultAnimationSettings;
  [(PTSettings *)&v11 setDefaultValues];
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues setBehaviorType:1];
  [initWithDefaultValues setDampingRatio:1.0];
  [initWithDefaultValues setResponse:0.550000012];
  [initWithDefaultValues setRetargetImpulse:0.0280000009];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setFromViewAlphaAnimationSettings:initWithDefaultValues];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setFromViewAlphaAnimationDelay:0.140000001];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setFromViewFinalScale:1.10000002];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setFromViewFinalAlpha:0.0];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setFromViewFinalBlurRadius:6.0];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewInitialPushInScale:0.899999976];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewScreenInitialAlpha:0.5];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewInitialDimmingAlpha:0.569999993];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewInitialBlurProgress:1.0];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewScaleAndAlphaResetAnimationDelay:0.119999997];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewDimmingViewFadeOutDelay:0.0];
  initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues2 setBehaviorType:2];
  [initWithDefaultValues2 setDampingRatio:0.879999995];
  [initWithDefaultValues2 setResponse:0.699999988];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues2 setFrameRateRange:1114113 highFrameRateReason:{*&v12.minimum, *&v12.maximum, *&v12.preferred}];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setFromViewScaleAnimationSettings:initWithDefaultValues2];
  v5 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewScaleAndAlphaResetAnimationSettings:v5];

  toViewScaleAndAlphaResetAnimationSettings = [(SBEntityRemovalDosidoDefaultAnimationSettings *)self toViewScaleAndAlphaResetAnimationSettings];
  [toViewScaleAndAlphaResetAnimationSettings setDampingRatio:1.29999995];

  toViewScaleAndAlphaResetAnimationSettings2 = [(SBEntityRemovalDosidoDefaultAnimationSettings *)self toViewScaleAndAlphaResetAnimationSettings];
  [toViewScaleAndAlphaResetAnimationSettings2 setResponse:0.75];

  toViewScaleAndAlphaResetAnimationSettings3 = [(SBEntityRemovalDosidoDefaultAnimationSettings *)self toViewScaleAndAlphaResetAnimationSettings];
  [toViewScaleAndAlphaResetAnimationSettings3 setRetargetImpulse:0.0280000009];

  initWithDefaultValues3 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues3 setBehaviorType:1];
  [initWithDefaultValues3 setDampingRatio:1.29999995];
  [initWithDefaultValues3 setResponse:0.75];
  [initWithDefaultValues3 setRetargetImpulse:0.028];
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues3 setFrameRateRange:1114113 highFrameRateReason:{*&v13.minimum, *&v13.maximum, *&v13.preferred}];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewWallpaperScaleAnimationSettings:initWithDefaultValues3];
  initWithDefaultValues4 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues4 setBehaviorType:1];
  [initWithDefaultValues4 setDampingRatio:1.0];
  [initWithDefaultValues4 setResponse:0.31400001];
  [(SBEntityRemovalDosidoDefaultAnimationSettings *)self setToViewDimmingViewAlphaAnimationSettings:initWithDefaultValues4];
}

+ (id)_settingsModule
{
  v52[10] = *MEMORY[0x277D85DE8];
  v42 = MEMORY[0x277D43210];
  v48 = [MEMORY[0x277D43290] rowWithTitle:@"App(s) Final Scale" valueKeyPath:@"fromViewFinalScale"];
  v46 = [v48 minValue:0.0 maxValue:2.0];
  v52[0] = v46;
  v45 = [MEMORY[0x277D43290] rowWithTitle:@"App(s) Final Alpha" valueKeyPath:@"fromViewFinalAlpha"];
  v44 = [v45 minValue:0.0 maxValue:1.0];
  v52[1] = v44;
  v41 = [MEMORY[0x277D43290] rowWithTitle:@"App(s) Final Blur Radius" valueKeyPath:@"fromViewFinalBlurRadius"];
  v40 = [v41 minValue:0.0 maxValue:10.0];
  v52[2] = v40;
  v39 = [MEMORY[0x277D43290] rowWithTitle:@"App(s) Alpha Animation Delay" valueKeyPath:@"fromViewAlphaAnimationDelay"];
  v38 = [v39 minValue:0.0 maxValue:1.0];
  v52[3] = v38;
  v37 = [MEMORY[0x277D43290] rowWithTitle:@"Home Screen Initial Push-In Scale" valueKeyPath:@"toViewInitialPushInScale"];
  v36 = [v37 minValue:0.0 maxValue:1.0];
  v52[4] = v36;
  v35 = [MEMORY[0x277D43290] rowWithTitle:@"Home Screen Initial Alpha" valueKeyPath:@"toViewScreenInitialAlpha"];
  v2 = [v35 minValue:0.0 maxValue:1.0];
  v52[5] = v2;
  v3 = [MEMORY[0x277D43290] rowWithTitle:@"Home Screen Initial Dimming Alpha" valueKeyPath:@"toViewInitialDimmingAlpha"];
  v4 = [v3 minValue:0.0 maxValue:1.0];
  v52[6] = v4;
  v5 = [MEMORY[0x277D43290] rowWithTitle:@"Home Screen Initial Blur Progress" valueKeyPath:@"toViewInitialBlurProgress"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v52[7] = v6;
  v7 = [MEMORY[0x277D43290] rowWithTitle:@"Home Screen Scale and Alpha Reset Animation Delay" valueKeyPath:@"toViewScaleAndAlphaResetAnimationDelay"];
  v8 = [v7 minValue:0.0 maxValue:1.0];
  v52[8] = v8;
  v9 = [MEMORY[0x277D43290] rowWithTitle:@"Home Screen Dimming View Fade-Out Animation Delay" valueKeyPath:@"toViewDimmingViewFadeOutDelay"];
  v10 = [v9 minValue:0.0 maxValue:1.0];
  v52[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:10];
  v43 = [v42 sectionWithRows:v11 title:@"Scale and Alpha Settings"];

  v12 = MEMORY[0x277D43210];
  v13 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"App(s) Scale Animation"];
  v49 = [v12 submoduleWithModule:v13 childSettingsKeyPath:@"fromViewScaleAnimationSettings"];

  v14 = MEMORY[0x277D43210];
  v15 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"App(s) Alpha Animation"];
  v47 = [v14 submoduleWithModule:v15 childSettingsKeyPath:@"fromViewAlphaAnimationSettings"];

  v16 = MEMORY[0x277D43210];
  v17 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Home Screen Scale and Alpha Reset Animation"];
  v18 = [v16 submoduleWithModule:v17 childSettingsKeyPath:@"toViewScaleAndAlphaResetAnimationSettings"];

  v19 = MEMORY[0x277D43210];
  v20 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Home Screen Wallpaper Scale Reset Animation"];
  v21 = [v19 submoduleWithModule:v20 childSettingsKeyPath:@"toViewWallpaperScaleAnimationSettings"];

  v22 = MEMORY[0x277D43210];
  v23 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"Home Screen Dimming View Fade-Out Animation"];
  v24 = [v22 submoduleWithModule:v23 childSettingsKeyPath:@"toViewDimmingViewAlphaAnimationSettings"];

  v25 = MEMORY[0x277D43210];
  v26 = MEMORY[0x277D431B0];
  action = [MEMORY[0x277D43240] action];
  v28 = [v26 rowWithTitle:@"Restore Dosido Default Animation Settings" action:action];
  v51 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v30 = [v25 sectionWithRows:v29];

  v31 = MEMORY[0x277D43210];
  v50[0] = v43;
  v50[1] = v49;
  v50[2] = v47;
  v50[3] = v18;
  v50[4] = v21;
  v50[5] = v24;
  v50[6] = v30;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:7];
  v33 = [v31 moduleWithTitle:@"Dosido to HomeScreen Default Animation Settings" contents:v32];

  return v33;
}

+ (id)settingsControllerModule
{
  v2 = objc_opt_class();

  return [v2 _settingsModule];
}

@end