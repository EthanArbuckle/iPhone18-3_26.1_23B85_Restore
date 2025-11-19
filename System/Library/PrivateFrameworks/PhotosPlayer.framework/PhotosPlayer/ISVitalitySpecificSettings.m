@interface ISVitalitySpecificSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation ISVitalitySpecificSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = ISVitalitySpecificSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(ISVitalitySpecificSettings *)self setBehavior:4];
  [(ISVitalitySpecificSettings *)self setPreDuration:0.65];
  [(ISVitalitySpecificSettings *)self setPlaybackRate:1.0];
  [(ISVitalitySpecificSettings *)self setEndTimeOffset:-0.135];
  [(ISVitalitySpecificSettings *)self setMinimumVisibilityFactor:0.7];
  [(ISVitalitySpecificSettings *)self setMaximumDelayBeforePlayback:0.2];
  [(ISVitalitySpecificSettings *)self setPostDuration:0.0];
  [(ISVitalitySpecificSettings *)self setStartSeekTolerance:0.3];
  [(ISVitalitySpecificSettings *)self setMinimumPhotoTransitionDuration:0.25];
  [(ISVitalitySpecificSettings *)self setMaxVitalityDelay:0.1];
}

+ (id)settingsControllerModule
{
  v52[10] = *MEMORY[0x277D85DE8];
  v36 = MEMORY[0x277D43218];
  v50 = [MEMORY[0x277D43298] rowWithTitle:@"Max Delay" valueKeyPath:@"maxVitalityDelay"];
  v49 = [v50 minValue:0.0 maxValue:0.25];
  v48 = [v49 is_increment:0.05];
  v52[0] = v48;
  v47 = [MEMORY[0x277D43298] rowWithTitle:@"Min. Photo Transition Duration" valueKeyPath:@"minimumPhotoTransitionDuration"];
  v46 = [v47 minValue:0.0 maxValue:1.0];
  v45 = [v46 is_increment:0.05];
  v52[1] = v45;
  v44 = [MEMORY[0x277D431B8] rowWithTitle:@"Behavior" valueKeyPath:@"behavior"];
  v43 = [v44 possibleValues:&unk_28705CF40 titles:&unk_28705CF58];
  v52[2] = v43;
  v42 = [MEMORY[0x277D43298] rowWithTitle:@"Start Seek Tolerance" valueKeyPath:@"startSeekTolerance"];
  v41 = [v42 minValue:0.0 maxValue:2.0];
  v40 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CF70);
  v39 = [v41 condition:v40];
  v52[3] = v39;
  v38 = [MEMORY[0x277D43298] rowWithTitle:@"Post Duration" valueKeyPath:@"postDuration"];
  v35 = [v38 minValue:0.0 maxValue:2.0];
  v34 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CF88);
  v33 = [v35 condition:v34];
  v52[4] = v33;
  v32 = [MEMORY[0x277D43298] rowWithTitle:@"Pre Duration" valueKeyPath:@"preDuration"];
  v31 = [v32 minValue:0.2 maxValue:1.6];
  v30 = [v31 is_increment:0.05];
  v29 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFA0);
  v28 = [v30 condition:v29];
  v52[5] = v28;
  v27 = [MEMORY[0x277D43298] rowWithTitle:@"Playback Rate" valueKeyPath:@"playbackRate"];
  v26 = [v27 minValue:0.5 maxValue:3.0];
  v25 = [v26 is_increment:0.1];
  v24 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFB8);
  v23 = [v25 condition:v24];
  v52[6] = v23;
  v22 = [MEMORY[0x277D43298] rowWithTitle:@"End Time Offset" valueKeyPath:@"endTimeOffset"];
  v21 = [v22 minValue:-0.5 maxValue:0.1];
  v20 = [v21 is_increment:0.05];
  v19 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFD0);
  v18 = [v20 condition:v19];
  v52[7] = v18;
  v17 = [MEMORY[0x277D43298] rowWithTitle:@"Minimum Visibility" valueKeyPath:@"minimumVisibilityFactor"];
  v2 = [v17 minValue:0.0 maxValue:1.0];
  v3 = [v2 is_increment:0.05];
  v4 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFE8);
  v5 = [v3 condition:v4];
  v52[8] = v5;
  v6 = [MEMORY[0x277D43298] rowWithTitle:@"Maximum Delay Before Playback" valueKeyPath:@"maximumDelayBeforePlayback"];
  v7 = [v6 minValue:0.0 maxValue:1.0];
  v8 = [v7 is_increment:0.01];
  v9 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705D000);
  v10 = [v8 condition:v9];
  v52[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:10];
  v37 = [v36 sectionWithRows:v11 title:@"Settings"];

  v12 = MEMORY[0x277D43218];
  v51 = v37;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v14 = [v12 moduleWithTitle:@"Vitality Behavior" contents:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"behavior == %@", *(*(&v12 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end