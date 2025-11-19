@interface SBSystemAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemAnimationSettings

- (void)setDefaultValues
{
  LODWORD(v2) = 1050253722;
  [(SBSystemAnimationSettings *)self setAssistantAnimationDuration:v2];
  LODWORD(v4) = 0.5;
  [(SBSystemAnimationSettings *)self setAssistantDismissAnimationDurationOverApp:v4];
  LODWORD(v5) = 1109393408;
  [(SBSystemAnimationSettings *)self setAssistantBottomEdgeDismissThreshold:v5];
  LODWORD(v6) = 1137180672;
  [(SBSystemAnimationSettings *)self setAssistantBottomEdgeDismissVelocity:v6];
  LODWORD(v7) = 1053609165;
  [(SBSystemAnimationSettings *)self setSpotlightNoninteractiveAnimationDuration:v7];
  v8 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v8 setAnimationType:1];

  v9 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v9 setDelay:0.0];

  v10 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v10 setDuration:0.58];

  v11 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v11 setMass:4.0];

  v12 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v12 setStiffness:1000.0];

  v13 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v13 setDamping:500.0];

  v14 = [(SBSystemAnimationSettings *)self slideoverDosidoAnimationSettings];
  [v14 setCurve:0x10000];
}

+ (id)settingsControllerModule
{
  v45[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D431D8] rowWithTitle:@"Wake Animation" childSettingsKeyPath:@"wakeAnimationSettings"];
  v45[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v40 = [v2 sectionWithRows:v4];

  v39 = [MEMORY[0x277D43290] rowWithTitle:@"Siri Present/Dismiss Duration" valueKeyPath:@"assistantAnimationDuration"];
  v38 = [v39 minValue:0.0 maxValue:1.0];
  v44[0] = v38;
  v37 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Present/Dismiss Duration" valueKeyPath:@"assistantAnimationDuration"];
  v5 = [v37 between:0.0 and:1.0];
  v44[1] = v5;
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"Siri Dismiss Duration (over app)" valueKeyPath:@"assistantDismissAnimationDurationOverApp"];
  v7 = [v6 minValue:0.0 maxValue:1.0];
  v44[2] = v7;
  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Dismiss Duration (over app)" valueKeyPath:@"assistantDismissAnimationDurationOverApp"];
  v9 = [v8 between:0.0 and:1.0];
  v44[3] = v9;
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Dismiss Bottom Edge Threshold" valueKeyPath:@"assistantBottomEdgeDismissThreshold"];
  v11 = [v10 between:0.0 and:1000.0];
  v44[4] = v11;
  v12 = [MEMORY[0x277D431E8] rowWithTitle:@"Siri Dismiss Bottom Edge Velocity" valueKeyPath:@"assistantBottomEdgeDismissVelocity"];
  v13 = [v12 between:0.0 and:9000.0];
  v44[5] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:6];

  v15 = [MEMORY[0x277D43210] sectionWithRows:v14 title:@"Siri"];
  v16 = [MEMORY[0x277D43290] rowWithTitle:@"Spotlight Non-interactive Animation" valueKeyPath:@"spotlightNoninteractiveAnimationDuration"];
  v17 = [v16 minValue:0.0 maxValue:1.0];
  v43[0] = v17;
  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Spotlight Non-interactive Animation" valueKeyPath:@"spotlightNoninteractiveAnimationDuration"];
  v19 = [v18 between:0.0 and:1.0];
  v43[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];

  v21 = [MEMORY[0x277D43210] sectionWithRows:v20 title:@"Spotlight"];
  v22 = MEMORY[0x277D43210];
  v23 = [MEMORY[0x277D65DD8] _moduleWithSectionTitle:@"Slideover Dosido" delay:0 frameRate:0];
  v24 = [v22 submoduleWithModule:v23 childSettingsKeyPath:@"slideoverDosidoAnimationSettings"];

  v25 = MEMORY[0x277D43210];
  v26 = +[SBEntityRemovalAnimationSettings settingsControllerModule];
  v27 = [v25 submoduleWithModule:v26 childSettingsKeyPath:@"entityRemovalAnimationSettings"];

  v28 = MEMORY[0x277D431B0];
  v29 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v30 = [v28 rowWithTitle:@"Restore Defaults" action:v29];
  v42 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];

  v32 = [MEMORY[0x277D43210] sectionWithRows:v31];
  v33 = MEMORY[0x277D43210];
  v41[0] = v40;
  v41[1] = v15;
  v41[2] = v21;
  v41[3] = v27;
  v41[4] = v24;
  v41[5] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
  v35 = [v33 moduleWithTitle:@"System Animations" contents:v34];

  return v35;
}

@end