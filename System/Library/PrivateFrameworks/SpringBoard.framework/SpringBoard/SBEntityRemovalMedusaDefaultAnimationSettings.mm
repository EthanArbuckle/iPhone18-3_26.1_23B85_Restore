@interface SBEntityRemovalMedusaDefaultAnimationSettings
+ (id)_settingsModule;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalMedusaDefaultAnimationSettings

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = SBEntityRemovalMedusaDefaultAnimationSettings;
  [(PTSettings *)&v9 setDefaultValues];
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedFinalScale:0.899999976];
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedFinalAlpha:0.0];
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedFinalBlurRadius:6.0];
  v3 = SBReduceMotion();
  v4 = 0.129999995;
  if (v3)
  {
    v4 = 0.25;
  }

  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeMadeFullscreenFrameAnimationDelay:v4];
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues setBehaviorType:2];
  [initWithDefaultValues setDampingRatio:1.0];
  [initWithDefaultValues setResponse:0.550000012];
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues setFrameRateRange:1114113 highFrameRateReason:{*&v10.minimum, *&v10.maximum, *&v10.preferred}];
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedScaleAnimationSettings:initWithDefaultValues];
  initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues2 setBehaviorType:2];
  [initWithDefaultValues2 setDampingRatio:1.0];
  [initWithDefaultValues2 setResponse:0.300000012];
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeRemovedAlphaAnimationSettings:initWithDefaultValues2];
  v7 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalMedusaDefaultAnimationSettings *)self setToBeMadeFullscreenFrameAnimationSettings:v7];

  toBeMadeFullscreenFrameAnimationSettings = [(SBEntityRemovalMedusaDefaultAnimationSettings *)self toBeMadeFullscreenFrameAnimationSettings];
  [toBeMadeFullscreenFrameAnimationSettings setResponse:0.430000007];
}

+ (id)_settingsModule
{
  v34[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D43290] rowWithTitle:@"To be Removed Final Scale" valueKeyPath:@"toBeRemovedFinalScale"];
  v4 = [v3 minValue:0.0 maxValue:2.0];
  v34[0] = v4;
  v5 = [MEMORY[0x277D43290] rowWithTitle:@"To be Removed Final Alpha" valueKeyPath:@"toBeRemovedFinalAlpha"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v34[1] = v6;
  v7 = [MEMORY[0x277D43290] rowWithTitle:@"To be Removed Final Blur Radius" valueKeyPath:@"toBeRemovedFinalBlurRadius"];
  v8 = [v7 minValue:0.0 maxValue:10.0];
  v34[2] = v8;
  v9 = [MEMORY[0x277D43290] rowWithTitle:@"To be Made Fullscreen Animations Delay" valueKeyPath:@"toBeMadeFullscreenFrameAnimationDelay"];
  v10 = [v9 minValue:0.0 maxValue:1.0];
  v34[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v31 = [v2 sectionWithRows:v11 title:{@"Scale, Alpha, and Delay Settings"}];

  v12 = MEMORY[0x277D43210];
  v13 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"To be Removed Scale Animation"];
  v14 = [v12 submoduleWithModule:v13 childSettingsKeyPath:@"toBeRemovedScaleAnimationSettings"];

  v15 = MEMORY[0x277D43210];
  v16 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"To be Removed Alpha Animation"];
  v17 = [v15 submoduleWithModule:v16 childSettingsKeyPath:@"toBeRemovedAlphaAnimationSettings"];

  v18 = MEMORY[0x277D43210];
  v19 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"To be Made Fullscreen Frame Animation"];
  v20 = [v18 submoduleWithModule:v19 childSettingsKeyPath:@"toBeMadeFullscreenFrameAnimationSettings"];

  v21 = MEMORY[0x277D43210];
  v22 = MEMORY[0x277D431B0];
  action = [MEMORY[0x277D43240] action];
  v24 = [v22 rowWithTitle:@"Restore Medusa Default Animation Settings" action:action];
  v33 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v26 = [v21 sectionWithRows:v25];

  v27 = MEMORY[0x277D43210];
  v32[0] = v31;
  v32[1] = v20;
  v32[2] = v14;
  v32[3] = v17;
  v32[4] = v26;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
  v29 = [v27 moduleWithTitle:@"Medusa Entity Removal Default Animation Settings" contents:v28];

  return v29;
}

+ (id)settingsControllerModule
{
  v2 = objc_opt_class();

  return [v2 _settingsModule];
}

@end