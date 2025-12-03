@interface SBBannerTransitionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBBannerTransitionSettings

- (void)setDefaultValues
{
  v27.receiver = self;
  v27.super_class = SBBannerTransitionSettings;
  [(PTSettings *)&v27 setDefaultValues];
  customBannerTransitionStylePoof = [(SBBannerTransitionSettings *)self customBannerTransitionStylePoof];
  [customBannerTransitionStylePoof setDefaultValues];

  customBannerTransitionStylePoof2 = [(SBBannerTransitionSettings *)self customBannerTransitionStylePoof];
  [customBannerTransitionStylePoof2 setDampingRatio:0.7];

  customBannerTransitionStylePoof3 = [(SBBannerTransitionSettings *)self customBannerTransitionStylePoof];
  [customBannerTransitionStylePoof3 setResponse:0.55];

  customBannerTransitionStylePoof4 = [(SBBannerTransitionSettings *)self customBannerTransitionStylePoof];
  v28 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [customBannerTransitionStylePoof4 setFrameRateRange:1114142 highFrameRateReason:{*&v28.minimum, *&v28.maximum, *&v28.preferred}];

  [(SBBannerTransitionSettings *)self setPoofInitialScale:0.6];
  [(SBBannerTransitionSettings *)self setPoofInitialBlurRadius:90.0];
  [(SBBannerTransitionSettings *)self setPoofDismissedScale:0.6];
  [(SBBannerTransitionSettings *)self setPoofDismissedBlurRadius:90.0];
  customBannerTransitionStyleSystemAction = [(SBBannerTransitionSettings *)self customBannerTransitionStyleSystemAction];
  [customBannerTransitionStyleSystemAction setDefaultValues];

  customBannerTransitionStyleSystemAction2 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleSystemAction];
  [customBannerTransitionStyleSystemAction2 setDampingRatio:0.7];

  customBannerTransitionStyleSystemAction3 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleSystemAction];
  [customBannerTransitionStyleSystemAction3 setResponse:0.55];

  customBannerTransitionStyleSystemAction4 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleSystemAction];
  v29 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [customBannerTransitionStyleSystemAction4 setFrameRateRange:1114142 highFrameRateReason:{*&v29.minimum, *&v29.maximum, *&v29.preferred}];

  customBannerTransitionStyleGlass_transformScaleX = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleX];
  [customBannerTransitionStyleGlass_transformScaleX setDefaultValues];

  customBannerTransitionStyleGlass_transformScaleX2 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleX];
  [customBannerTransitionStyleGlass_transformScaleX2 setDampingRatio:0.69762];

  customBannerTransitionStyleGlass_transformScaleX3 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleX];
  [customBannerTransitionStyleGlass_transformScaleX3 setResponse:0.728];

  customBannerTransitionStyleGlass_transformScaleX4 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleX];
  v30 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [customBannerTransitionStyleGlass_transformScaleX4 setFrameRateRange:1114142 highFrameRateReason:{*&v30.minimum, *&v30.maximum, *&v30.preferred}];

  customBannerTransitionStyleGlass_transformScaleY = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleY];
  [customBannerTransitionStyleGlass_transformScaleY setDefaultValues];

  customBannerTransitionStyleGlass_transformScaleY2 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleY];
  [customBannerTransitionStyleGlass_transformScaleY2 setDampingRatio:0.62275];

  customBannerTransitionStyleGlass_transformScaleY3 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleY];
  [customBannerTransitionStyleGlass_transformScaleY3 setResponse:0.48669];

  customBannerTransitionStyleGlass_transformScaleY4 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformScaleY];
  v31 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [customBannerTransitionStyleGlass_transformScaleY4 setFrameRateRange:1114142 highFrameRateReason:{*&v31.minimum, *&v31.maximum, *&v31.preferred}];

  customBannerTransitionStyleGlass_transformTranslationY = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformTranslationY];
  [customBannerTransitionStyleGlass_transformTranslationY setDefaultValues];

  customBannerTransitionStyleGlass_transformTranslationY2 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformTranslationY];
  [customBannerTransitionStyleGlass_transformTranslationY2 setDampingRatio:0.63333];

  customBannerTransitionStyleGlass_transformTranslationY3 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformTranslationY];
  [customBannerTransitionStyleGlass_transformTranslationY3 setResponse:0.62832];

  customBannerTransitionStyleGlass_transformTranslationY4 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_transformTranslationY];
  v32 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [customBannerTransitionStyleGlass_transformTranslationY4 setFrameRateRange:1114142 highFrameRateReason:{*&v32.minimum, *&v32.maximum, *&v32.preferred}];

  customBannerTransitionStyleGlass_alphaBlurSpring = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_alphaBlurSpring];
  [customBannerTransitionStyleGlass_alphaBlurSpring setDefaultValues];

  customBannerTransitionStyleGlass_alphaBlurSpring2 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_alphaBlurSpring];
  [customBannerTransitionStyleGlass_alphaBlurSpring2 setDampingRatio:0.7];

  customBannerTransitionStyleGlass_alphaBlurSpring3 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_alphaBlurSpring];
  [customBannerTransitionStyleGlass_alphaBlurSpring3 setResponse:0.5];

  customBannerTransitionStyleGlass_alphaBlurSpring4 = [(SBBannerTransitionSettings *)self customBannerTransitionStyleGlass_alphaBlurSpring];
  v33 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  [customBannerTransitionStyleGlass_alphaBlurSpring4 setFrameRateRange:1114142 highFrameRateReason:{*&v33.minimum, *&v33.maximum, *&v33.preferred}];
}

+ (id)settingsControllerModule
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v26 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v31[0] = v26;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v25 = [v4 sectionWithRows:v5];

  v28 = [MEMORY[0x277D431D8] rowWithTitle:@"Poof Animation Settings" childSettingsKeyPath:@"customBannerTransitionStylePoof"];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"Poof Initial Scale" valueKeyPath:@"poofInitialScale"];
  v27 = [v6 minValue:0.5 maxValue:1.5];

  v7 = [MEMORY[0x277D43290] rowWithTitle:@"Poof Initial Blur Radius" valueKeyPath:@"poofInitialBlurRadius"];
  v24 = [v7 minValue:0.0 maxValue:150.0];

  v8 = [MEMORY[0x277D43290] rowWithTitle:@"Poof Dismissed Scale" valueKeyPath:@"poofDismissedScale"];
  v23 = [v8 minValue:0.5 maxValue:1.5];

  v9 = [MEMORY[0x277D43290] rowWithTitle:@"Poof Dismissed Blur Radius" valueKeyPath:@"poofDismissedBlurRadius"];
  v22 = [v9 minValue:0.0 maxValue:150.0];

  v21 = [MEMORY[0x277D431D8] rowWithTitle:@"Glass Animation - scale.x" childSettingsKeyPath:@"customBannerTransitionStyleGlass_transformScaleX"];
  v10 = [MEMORY[0x277D431D8] rowWithTitle:@"Glass Animation - scale.y" childSettingsKeyPath:@"customBannerTransitionStyleGlass_transformScaleY"];
  v11 = [MEMORY[0x277D431D8] rowWithTitle:@"Glass Animation - transform.y" childSettingsKeyPath:@"customBannerTransitionStyleGlass_transformTranslationY"];
  v12 = [MEMORY[0x277D431D8] rowWithTitle:@"Glass Animation - dampenedSpring" childSettingsKeyPath:@"customBannerTransitionStyleGlass_alphaBlurSpring"];
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"Staccato Animation Settings" childSettingsKeyPath:@"customBannerTransitionStyleSystemAction"];
  v14 = MEMORY[0x277D43210];
  v30[0] = v28;
  v30[1] = v27;
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v22;
  v30[5] = v21;
  v30[6] = v10;
  v30[7] = v11;
  v30[8] = v12;
  v30[9] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:10];
  v16 = [v14 sectionWithRows:v15 title:@"Transition Settings"];

  v17 = MEMORY[0x277D43210];
  v29[0] = v25;
  v29[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v19 = [v17 moduleWithTitle:@"Custom Banner Transitions" contents:v18];

  return v19;
}

@end