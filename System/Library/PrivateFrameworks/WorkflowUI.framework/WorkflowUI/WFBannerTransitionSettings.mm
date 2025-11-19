@interface WFBannerTransitionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation WFBannerTransitionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = WFBannerTransitionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(WFBannerTransitionSettings *)self setHintDuration:300.0];
  [(WFBannerTransitionSettings *)self setHintAnimationResponse:1.0];
  [(WFBannerTransitionSettings *)self setHintAnimationTargetScale:0.9];
  [(WFBannerTransitionSettings *)self setPoofInScale:0.7];
  [(WFBannerTransitionSettings *)self setPoofInScaleResponse:0.55];
  [(WFBannerTransitionSettings *)self setPoofInScaleDamping:0.68];
  [(WFBannerTransitionSettings *)self setPoofInBlurRadius:50.0];
  [(WFBannerTransitionSettings *)self setPoofInBlurResponse:0.37];
  [(WFBannerTransitionSettings *)self setPoofInAlphaResponse:0.2];
  [(WFBannerTransitionSettings *)self setPoofOutScale:0.81];
  [(WFBannerTransitionSettings *)self setPoofOutScaleResponse:0.4];
  [(WFBannerTransitionSettings *)self setPoofOutBlurRadius:10.0];
  [(WFBannerTransitionSettings *)self setPoofOutBlurResponse:0.5];
  [(WFBannerTransitionSettings *)self setPoofOutBlurDelay:0.0];
  [(WFBannerTransitionSettings *)self setPoofOutAlphaResponse:0.2];
  [(WFBannerTransitionSettings *)self setPoofOutAlphaDelay:0.1];
  [(WFBannerTransitionSettings *)self setDisableTransition:0];
}

+ (id)settingsControllerModule
{
  v78[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = MEMORY[0x277D431A8];
  v4 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v78[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
  v72 = [v2 sectionWithRows:v6];

  v70 = MEMORY[0x277D43218];
  v7 = [MEMORY[0x277D431F0] rowWithTitle:@"Duration (ms)" valueKeyPath:@"hintDuration"];
  v8 = [v7 between:0.0 and:1.79769313e308];
  v9 = [v8 precision:0];
  v77[0] = v9;
  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Animation Response" valueKeyPath:@"hintAnimationResponse"];
  v11 = [v10 between:0.0 and:1.79769313e308];
  v12 = [v11 precision:2];
  v77[1] = v12;
  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Target Scale" valueKeyPath:@"hintAnimationTargetScale"];
  v14 = [v13 between:0.0 and:1.0];
  v15 = [v14 precision:2];
  v77[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
  v71 = [v70 sectionWithRows:v16 title:@"Hinting"];

  v68 = MEMORY[0x277D43218];
  v66 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale" valueKeyPath:@"poofInScale"];
  v64 = [v66 between:0.0 and:1.79769313e308];
  v62 = [v64 precision:2];
  v76[0] = v62;
  v60 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale Response" valueKeyPath:@"poofInScaleResponse"];
  v58 = [v60 between:0.0 and:1.79769313e308];
  v56 = [v58 precision:2];
  v76[1] = v56;
  v54 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale Damping" valueKeyPath:@"poofInScaleDamping"];
  v51 = [v54 between:0.0 and:1.0];
  v49 = [v51 precision:2];
  v76[2] = v49;
  v17 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Radius" valueKeyPath:@"poofInBlurRadius"];
  v18 = [v17 between:0.0 and:1.79769313e308];
  v19 = [v18 precision:2];
  v76[3] = v19;
  v20 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Response" valueKeyPath:@"poofInBlurResponse"];
  v21 = [v20 between:0.0 and:1.79769313e308];
  v22 = [v21 precision:2];
  v76[4] = v22;
  v23 = [MEMORY[0x277D431F0] rowWithTitle:@"Alpha Response" valueKeyPath:@"poofInAlphaResponse"];
  v24 = [v23 between:0.0 and:1.79769313e308];
  v25 = [v24 precision:2];
  v76[5] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:6];
  v69 = [v68 sectionWithRows:v26 title:@"Poof In"];

  v52 = MEMORY[0x277D43218];
  v67 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale" valueKeyPath:@"poofOutScale"];
  v65 = [v67 between:0.0 and:1.79769313e308];
  v63 = [v65 precision:2];
  v75[0] = v63;
  v61 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale Response" valueKeyPath:@"poofOutScaleResponse"];
  v59 = [v61 between:0.0 and:1.79769313e308];
  v57 = [v59 precision:2];
  v75[1] = v57;
  v55 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Radius" valueKeyPath:@"poofOutBlurRadius"];
  v50 = [v55 between:0.0 and:1.79769313e308];
  v48 = [v50 precision:2];
  v75[2] = v48;
  v47 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Response" valueKeyPath:@"poofOutBlurResponse"];
  v46 = [v47 between:0.0 and:1.79769313e308];
  v45 = [v46 precision:2];
  v75[3] = v45;
  v27 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Delay" valueKeyPath:@"poofOutBlurDelay"];
  v28 = [v27 between:0.0 and:1.79769313e308];
  v29 = [v28 precision:2];
  v75[4] = v29;
  v30 = [MEMORY[0x277D431F0] rowWithTitle:@"Alpha Response" valueKeyPath:@"poofOutAlphaResponse"];
  v31 = [v30 between:0.0 and:1.79769313e308];
  v32 = [v31 precision:2];
  v75[5] = v32;
  v33 = [MEMORY[0x277D431F0] rowWithTitle:@"Alpha Delay" valueKeyPath:@"poofOutAlphaDelay"];
  v34 = [v33 between:0.0 and:1.79769313e308];
  v35 = [v34 precision:2];
  v75[6] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:7];
  v53 = [v52 sectionWithRows:v36 title:@"Poof Out"];

  v37 = MEMORY[0x277D43218];
  v38 = [MEMORY[0x277D432A0] rowWithTitle:@"Disable Transition" valueKeyPath:@"disableTransition"];
  v74 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
  v40 = [v37 sectionWithRows:v39 title:@"Debug"];

  v41 = MEMORY[0x277D43218];
  v73[0] = v72;
  v73[1] = v71;
  v73[2] = v69;
  v73[3] = v53;
  v73[4] = v40;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
  v43 = [v41 moduleWithTitle:@"Custom Banner Transitions" contents:v42];

  return v43;
}

@end