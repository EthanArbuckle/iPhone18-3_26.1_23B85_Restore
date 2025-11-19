@interface SBRecordingIndicatorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBRecordingIndicatorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBRecordingIndicatorSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBRecordingIndicatorSettings *)self setSensorType:0];
  [(SBRecordingIndicatorSettings *)self setDebugBackgroundColorEnabled:0];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeOut90:0.01];
  [(SBRecordingIndicatorSettings *)self setFadeOutDuration90:0.03];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeIn90:0.25];
  [(SBRecordingIndicatorSettings *)self setFadeInDuration90:0.2];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeOut180:0.01];
  [(SBRecordingIndicatorSettings *)self setFadeOutDuration180:0.03];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeIn180:0.65];
  [(SBRecordingIndicatorSettings *)self setFadeInDuration180:0.2];
  [(SBRecordingIndicatorSettings *)self setUseOverlappingCrossfade:1];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeOut90WhenOverlapping:0.0];
  [(SBRecordingIndicatorSettings *)self setFadeOutDuration90WhenOverlapping:0.3];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeIn90WhenOverlapping:0.0];
  [(SBRecordingIndicatorSettings *)self setFadeInDuration90WhenOverlapping:0.3];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeOut180WhenOverlapping:0.0];
  [(SBRecordingIndicatorSettings *)self setFadeOutDuration180WhenOverlapping:0.6];
  [(SBRecordingIndicatorSettings *)self setDelayBeforeFadeIn180WhenOverlapping:0.0];
  [(SBRecordingIndicatorSettings *)self setFadeInDuration180WhenOverlapping:0.6];
  [(SBRecordingIndicatorSettings *)self setRateLimitPeriod:60.0];
  [(SBRecordingIndicatorSettings *)self setRateLimitNumber:5];
}

+ (id)settingsControllerModule
{
  v85[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Sensor Type" valueKeyPath:@"sensorType"];
  v72 = [v2 possibleValues:&unk_28336DE90 titles:&unk_28336DE78];

  v3 = MEMORY[0x277D43210];
  v85[0] = v72;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
  v75 = [v3 sectionWithRows:v4 title:@"Override Sensor State"];

  v71 = [MEMORY[0x277D432A8] rowWithTitle:@"Use Debug Background Color" valueKeyPath:@"debugBackgroundColorEnabled"];
  v5 = MEMORY[0x277D43210];
  v84 = v71;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v74 = [v5 sectionWithRows:v6];

  v70 = [MEMORY[0x277D432A8] rowWithTitle:@"Use Overlapping Rotation Crossfade" valueKeyPath:@"useOverlappingCrossfade"];
  v7 = MEMORY[0x277D43210];
  v83 = v70;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v73 = [v7 sectionWithRows:v8];

  v9 = [MEMORY[0x277D43290] rowWithTitle:? valueKeyPath:?];
  v69 = [v9 minValue:0.0 maxValue:1.5];

  v10 = [MEMORY[0x277D43290] rowWithTitle:? valueKeyPath:?];
  v68 = [v10 minValue:0.0 maxValue:1.5];

  v11 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-in" valueKeyPath:@"delayBeforeFadeIn90WhenOverlapping"];
  v67 = [v11 minValue:0.0 maxValue:1.5];

  v12 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-in Duration" valueKeyPath:@"fadeInDuration90WhenOverlapping"];
  v66 = [v12 minValue:0.0 maxValue:1.5];

  v13 = MEMORY[0x277D43210];
  v82[0] = v69;
  v82[1] = v68;
  v82[2] = v67;
  v82[3] = v66;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
  v61 = [v13 sectionWithRows:v14 title:@"Rotation Crossfade Settings (90º)"];

  v15 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-out" valueKeyPath:@"delayBeforeFadeOut180WhenOverlapping"];
  v65 = [v15 minValue:0.0 maxValue:1.5];

  v16 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-out Duration" valueKeyPath:@"fadeOutDuration180WhenOverlapping"];
  v64 = [v16 minValue:0.0 maxValue:1.5];

  v17 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-in" valueKeyPath:@"delayBeforeFadeIn180WhenOverlapping"];
  v63 = [v17 minValue:0.0 maxValue:1.5];

  v18 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-in Duration" valueKeyPath:@"fadeInDuration180WhenOverlapping"];
  v62 = [v18 minValue:0.0 maxValue:1.5];

  v19 = MEMORY[0x277D43210];
  v81[0] = v65;
  v81[1] = v64;
  v81[2] = v63;
  v81[3] = v62;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:4];
  v60 = [v19 sectionWithRows:v20 title:@"Rotation Crossfade Settings (180º)"];

  v21 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-out" valueKeyPath:@"delayBeforeFadeOut90"];
  v59 = [v21 minValue:0.0 maxValue:1.5];

  v22 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-out Duration" valueKeyPath:@"fadeOutDuration90"];
  v58 = [v22 minValue:0.0 maxValue:1.5];

  v23 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-in" valueKeyPath:@"delayBeforeFadeIn90"];
  v57 = [v23 minValue:0.0 maxValue:1.5];

  v24 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-in Duration" valueKeyPath:@"fadeInDuration90"];
  v56 = [v24 minValue:0.0 maxValue:1.5];

  v25 = MEMORY[0x277D43210];
  v80[0] = v59;
  v80[1] = v58;
  v80[2] = v57;
  v80[3] = v56;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
  v55 = [v25 sectionWithRows:v26 title:@"Rotation Fade-in-out Settings (90º)"];

  v27 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-out" valueKeyPath:@"delayBeforeFadeOut180"];
  v54 = [v27 minValue:0.0 maxValue:1.5];

  v28 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-out Duration" valueKeyPath:@"fadeOutDuration180"];
  v53 = [v28 minValue:0.0 maxValue:1.5];

  v29 = [MEMORY[0x277D43290] rowWithTitle:@"Delay Before Fade-in" valueKeyPath:@"delayBeforeFadeIn180"];
  v52 = [v29 minValue:0.0 maxValue:1.5];

  v30 = [MEMORY[0x277D43290] rowWithTitle:@"Fade-in Duration" valueKeyPath:@"fadeInDuration180"];
  v51 = [v30 minValue:0.0 maxValue:1.5];

  v31 = MEMORY[0x277D43210];
  v79[0] = v54;
  v79[1] = v53;
  v79[2] = v52;
  v79[3] = v51;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
  v50 = [v31 sectionWithRows:v32 title:@"Rotation Fade-in-out Settings (180º)"];

  v33 = [MEMORY[0x277D43290] rowWithTitle:@"Rate Limit Period" valueKeyPath:@"rateLimitPeriod"];
  v49 = [v33 minValue:0.0 maxValue:300.0];

  v34 = [MEMORY[0x277D43290] rowWithTitle:@"Rate Limit Number of Rotations" valueKeyPath:@"rateLimitNumber"];
  v35 = [v34 minValue:0.0 maxValue:30.0];

  [v49 setValueValidatator:&__block_literal_global_36];
  [v35 setValueValidatator:&__block_literal_global_36];
  v36 = MEMORY[0x277D43210];
  v78[0] = v49;
  v78[1] = v35;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v38 = [v36 sectionWithRows:v37 title:@"Rotation Rate Limiting"];

  v39 = MEMORY[0x277D431B0];
  v40 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v41 = [v39 rowWithTitle:@"Restore Defaults" action:v40];

  v42 = MEMORY[0x277D43210];
  v77 = v41;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v44 = [v42 sectionWithRows:v43];

  v45 = MEMORY[0x277D43210];
  v76[0] = v75;
  v76[1] = v74;
  v76[2] = v73;
  v76[3] = v61;
  v76[4] = v60;
  v76[5] = v55;
  v76[6] = v50;
  v76[7] = v38;
  v76[8] = v44;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:9];
  v47 = [v45 moduleWithTitle:0 contents:v46];

  return v47;
}

uint64_t __56__SBRecordingIndicatorSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithUnsignedInteger:v2];
}

@end