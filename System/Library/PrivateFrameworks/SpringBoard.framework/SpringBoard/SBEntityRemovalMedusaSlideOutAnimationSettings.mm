@interface SBEntityRemovalMedusaSlideOutAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalMedusaSlideOutAnimationSettings

- (void)setDefaultValues
{
  v19.receiver = self;
  v19.super_class = SBEntityRemovalMedusaSlideOutAnimationSettings;
  [(PTSettings *)&v19 setDefaultValues];
  v3 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v4 = [v3 toBeRemovedScaleAnimationSettings];
  [v4 setDampingRatio:0.879999995];

  v5 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v6 = [v5 toBeRemovedScaleAnimationSettings];
  [v6 setResponse:0.699999988];

  v7 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v8 = [v7 toBeRemovedAlphaAnimationSettings];
  [v8 setDampingRatio:0.879999995];

  v9 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  v10 = [v9 toBeRemovedAlphaAnimationSettings];
  [v10 setResponse:0.699999988];

  v11 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v11 setToBeRemovedFinalScale:0.910000026];

  v12 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v12 setToBeRemovedFinalAlpha:1.0];

  v13 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v13 setToBeRemovedFinalBlurRadius:0.0];

  v14 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v14 setToBeMadeFullscreenFrameAnimationDelay:0.400000006];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeMadeFullScreenPushInScale:0.980000019];
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeMadeFullScreenScaleResetAnimationDelay:0.0];
  v15 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeMadeFullscreenPushInScaleAnimationSettings:v15];

  v16 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeMadeFullscreenScaleResetAnimationSettings:v16];

  v17 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationSettings:v17];

  v18 = [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self toBeRemovedSlideOutAnimationSettings];
  [v18 setResponse:0.600000024];

  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutAnimationDelay:0.275000006];
  [(SBEntityRemovalMedusaSlideOutAnimationSettings *)self setToBeRemovedSlideOutHeightOffsetMultiplier:1.20000005];
}

+ (id)settingsControllerModule
{
  v37[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D43290] rowWithTitle:@"To be made Fullscreen Push-In Scale" valueKeyPath:@"toBeMadeFullScreenPushInScale"];
  v4 = [v3 minValue:0.0 maxValue:1.0];
  v37[0] = v4;
  v5 = [MEMORY[0x277D43290] rowWithTitle:@"To be made Fullscreen Scale Reset Animation Dealy" valueKeyPath:@"toBeMadeFullScreenScaleResetAnimationDelay"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v37[1] = v6;
  v7 = [MEMORY[0x277D43290] rowWithTitle:@"To be Removed Slide Out Animation Dealy" valueKeyPath:@"toBeRemovedSlideOutAnimationDelay"];
  v8 = [v7 minValue:0.0 maxValue:1.0];
  v37[2] = v8;
  v9 = [MEMORY[0x277D43290] rowWithTitle:@"To be Removed Slide Out Height Offset Multiplier" valueKeyPath:@"toBeRemovedSlideOutHeightOffsetMultiplier"];
  v10 = [v9 minValue:1.0 maxValue:2.0];
  v37[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  v34 = [v2 sectionWithRows:v11 title:@"Push-In Scale Settings"];

  v12 = MEMORY[0x277D43210];
  v13 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"To be made Fullscreen Scale-Reset Animation"];
  v33 = [v12 submoduleWithModule:v13 childSettingsKeyPath:@"toBeMadeFullscreenPushInScaleAnimationSettings"];

  v14 = MEMORY[0x277D43210];
  v15 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"To be made Fullscreen Push-In Scale Animation"];
  v16 = [v14 submoduleWithModule:v15 childSettingsKeyPath:@"toBeMadeFullscreenScaleResetAnimationSettings"];

  v17 = MEMORY[0x277D43210];
  v18 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"To be Removed Slide-Out Animation"];
  v19 = [v17 submoduleWithModule:v18 childSettingsKeyPath:@"toBeRemovedSlideOutAnimationSettings"];

  v20 = MEMORY[0x277D43210];
  v21 = +[SBEntityRemovalMedusaDefaultAnimationSettings _settingsModule];
  v22 = [v20 submoduleWithModule:v21 childSettingsKeyPath:@"defaultAnimationSettings"];

  v23 = MEMORY[0x277D43210];
  v24 = MEMORY[0x277D431B0];
  v25 = [MEMORY[0x277D43240] action];
  v26 = [v24 rowWithTitle:@"Restore Medusa SlideOut Animation Settings" action:v25];
  v36 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v28 = [v23 sectionWithRows:v27];

  v29 = MEMORY[0x277D43210];
  v35[0] = v34;
  v35[1] = v16;
  v35[2] = v33;
  v35[3] = v19;
  v35[4] = v22;
  v35[5] = v28;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:6];
  v31 = [v29 moduleWithTitle:@"Medusa Entity Removal SlideOut Animation Settings" contents:v30];

  return v31;
}

@end