@interface SBSystemActionCoachingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemActionCoachingSettings

- (void)setDefaultValues
{
  v11.receiver = self;
  v11.super_class = SBSystemActionCoachingSettings;
  [(PTSettings *)&v11 setDefaultValues];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(SBSystemActionCoachingSettings *)self setPolicyClassName:v4];

  trackPreviewsPolicySettings = [(SBSystemActionCoachingSettings *)self trackPreviewsPolicySettings];
  [trackPreviewsPolicySettings setDefaultValues];

  pressWithinTimeIntervalPolicySettings = [(SBSystemActionCoachingSettings *)self pressWithinTimeIntervalPolicySettings];
  [pressWithinTimeIntervalPolicySettings setDefaultValues];

  [(SBSystemActionCoachingSettings *)self setDimmingAlpha:0.35];
  [(SBSystemActionCoachingSettings *)self setCoachingButtonShadowOpacity:0.25];
  [(SBSystemActionCoachingSettings *)self setCoachingButtonShadowRadius:15.0];
  [(SBSystemActionCoachingSettings *)self setCoachingLabelShadowOpacity:0.25];
  [(SBSystemActionCoachingSettings *)self setCoachingLabelShadowRadius:6.0];
  presentationSettings = [(SBSystemActionCoachingSettings *)self presentationSettings];
  [presentationSettings setDefaultValues];
  [presentationSettings setDampingRatio:1.0];
  [presentationSettings setDampingRatioSmoothing:0.0];
  [presentationSettings setResponse:0.5];
  [presentationSettings setResponseSmoothing:0.0];
  expansionSettings = [(SBSystemActionCoachingSettings *)self expansionSettings];
  [expansionSettings setDefaultValues];
  [expansionSettings setDampingRatio:1.0];
  [expansionSettings setDampingRatioSmoothing:0.0];
  [expansionSettings setResponse:0.8];
  [expansionSettings setResponseSmoothing:0.0];
  contractionSettings = [(SBSystemActionCoachingSettings *)self contractionSettings];
  [contractionSettings setDefaultValues];
  [contractionSettings setDampingRatio:1.0];
  [contractionSettings setDampingRatioSmoothing:0.0];
  [contractionSettings setResponse:0.5];
  [contractionSettings setResponseSmoothing:0.0];
  dismissalSettings = [(SBSystemActionCoachingSettings *)self dismissalSettings];
  [dismissalSettings setDefaultValues];
  [dismissalSettings setDampingRatio:1.0];
  [dismissalSettings setDampingRatioSmoothing:0.0];
  [dismissalSettings setResponse:0.5];
  [dismissalSettings setResponseSmoothing:0.0];
}

+ (id)settingsControllerModule
{
  v67[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v67[0] = v3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v67[1] = v5;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];

  v58 = MEMORY[0x277D43210];
  v54 = [MEMORY[0x277D431B8] rowWithTitle:@"Presentation Policy" valueKeyPath:@"policyClassName"];
  v6 = [v54 possibleValues:v56 titles:&unk_28336EAC0];
  v66[0] = v6;
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Settings" childSettingsKeyPath:@"trackPreviewsPolicySettings"];
  v8 = MEMORY[0x277CCAC30];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 predicateWithFormat:@"policyClassName == %@", v10];
  v12 = [v7 condition:v11];
  v66[1] = v12;
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"Settings" childSettingsKeyPath:@"pressWithinTimeIntervalPolicySettings"];
  v14 = MEMORY[0x277CCAC30];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 predicateWithFormat:@"policyClassName == %@", v16];
  v18 = [v13 condition:v17];
  v66[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
  v59 = [v58 sectionWithRows:v19 title:@"Policy"];

  v20 = MEMORY[0x277D43210];
  v21 = [MEMORY[0x277D431E8] rowWithTitle:@"Opacity" valueKeyPath:@"dimmingAlpha"];
  v22 = [v21 between:1.0 and:5.0];
  v65 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v57 = [v20 sectionWithRows:v23 title:@"Dimming"];

  v24 = MEMORY[0x277D43210];
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Shadow Opacity" valueKeyPath:@"coachingButtonShadowOpacity"];
  v26 = [v25 between:0.0 and:1.0];
  v64[0] = v26;
  v27 = [MEMORY[0x277D431E8] rowWithTitle:@"Shadow Radius" valueKeyPath:@"coachingButtonShadowRadius"];
  v28 = [v27 between:0.0 and:20.0];
  v64[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  v55 = [v24 sectionWithRows:v29 title:@"Coaching Button"];

  v30 = MEMORY[0x277D43210];
  v31 = [MEMORY[0x277D431E8] rowWithTitle:@"Shadow Opacity" valueKeyPath:@"coachingLabelShadowOpacity"];
  v32 = [v31 between:0.0 and:1.0];
  v63[0] = v32;
  v33 = [MEMORY[0x277D431E8] rowWithTitle:@"Shadow Radius" valueKeyPath:@"coachingLabelShadowRadius"];
  v34 = [v33 between:0.0 and:20.0];
  v63[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  v36 = [v30 sectionWithRows:v35 title:@"Coaching Label"];

  v37 = MEMORY[0x277D43210];
  v38 = [MEMORY[0x277D431D8] rowWithTitle:@"Presentation" childSettingsKeyPath:@"presentationSettings"];
  v62[0] = v38;
  v39 = [MEMORY[0x277D431D8] rowWithTitle:@"Expansion" childSettingsKeyPath:@"expansionSettings"];
  v62[1] = v39;
  v40 = [MEMORY[0x277D431D8] rowWithTitle:@"Contraction" childSettingsKeyPath:@"contractionSettings"];
  v62[2] = v40;
  v41 = [MEMORY[0x277D431D8] rowWithTitle:@"Dismissal" childSettingsKeyPath:@"dismissalSettings"];
  v62[3] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  v43 = [v37 sectionWithRows:v42 title:@"Animations"];

  v44 = MEMORY[0x277D43210];
  v45 = MEMORY[0x277D431B0];
  v46 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v47 = [v45 rowWithTitle:@"Restore Defaults" action:v46];
  v61 = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v49 = [v44 sectionWithRows:v48];

  v50 = MEMORY[0x277D43210];
  v60[0] = v59;
  v60[1] = v57;
  v60[2] = v55;
  v60[3] = v36;
  v60[4] = v43;
  v60[5] = v49;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  v52 = [v50 moduleWithTitle:@"Coaching" contents:v51];

  return v52;
}

@end