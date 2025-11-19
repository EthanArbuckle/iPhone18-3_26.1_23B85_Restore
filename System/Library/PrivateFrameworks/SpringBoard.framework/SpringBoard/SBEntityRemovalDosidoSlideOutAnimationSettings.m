@interface SBEntityRemovalDosidoSlideOutAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBEntityRemovalDosidoSlideOutAnimationSettings

- (void)setDefaultValues
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalDosidoSlideOutAnimationSettings;
  [(PTSettings *)&v10 setDefaultValues];
  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self setFromViewSlideOutHeightOffsetMultiplier:1.20000005];
  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self setFromViewSlideOutAnimationDelay:0.275000006];
  v3 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v3 setFromViewFinalScale:0.930000007];

  v4 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v4 setFromViewFinalAlpha:1.0];

  v5 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v5 setFromViewFinalBlurRadius:0.0];

  v6 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v6 setToViewScaleAndAlphaResetAnimationDelay:0.400000006];

  v7 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self defaultAnimationSettings];
  [v7 setToViewDimmingViewFadeOutDelay:0.419999987];

  v8 = SBEntityRemovalDefaultFluidAnimationSettings();
  [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self setFromViewSlideOutAnimationSettings:v8];

  v9 = [(SBEntityRemovalDosidoSlideOutAnimationSettings *)self fromViewSlideOutAnimationSettings];
  [v9 setResponse:0.699999988];
}

+ (id)settingsControllerModule
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D43290] rowWithTitle:@"App(s) Slideout Height Offset Multiplier" valueKeyPath:@"fromViewSlideOutHeightOffsetMultiplier"];
  v4 = [v3 minValue:1.0 maxValue:2.0];
  v27[0] = v4;
  v5 = [MEMORY[0x277D43290] rowWithTitle:@"App(s) Slideout Animation Delay" valueKeyPath:@"fromViewSlideOutAnimationDelay"];
  v6 = [v5 minValue:0.0 maxValue:2.0];
  v27[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v8 = [v2 sectionWithRows:v7 title:@"Delay Settings"];

  v9 = MEMORY[0x277D43210];
  v10 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:@"App(s) Slide-Out Animation"];
  v11 = [v9 submoduleWithModule:v10 childSettingsKeyPath:@"fromViewSlideOutAnimationSettings"];

  v12 = MEMORY[0x277D43210];
  v13 = +[SBEntityRemovalDosidoDefaultAnimationSettings _settingsModule];
  v14 = [v12 submoduleWithModule:v13 childSettingsKeyPath:@"defaultAnimationSettings"];

  v15 = MEMORY[0x277D43210];
  v16 = MEMORY[0x277D431B0];
  v17 = [MEMORY[0x277D43240] action];
  v18 = [v16 rowWithTitle:@"Restore Dosido SlideOut Animation Settings" action:v17];
  v26 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v20 = [v15 sectionWithRows:v19];

  v21 = MEMORY[0x277D43210];
  v25[0] = v8;
  v25[1] = v11;
  v25[2] = v14;
  v25[3] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v23 = [v21 moduleWithTitle:@"Dosido to HomeScreen SlideOut Animation Settings" contents:v22];

  return v23;
}

@end