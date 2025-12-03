@interface ISPlayerSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation ISPlayerSettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = ISPlayerSettings;
  [(PTSettings *)&v6 setDefaultValues];
  [(ISPlayerSettings *)self setVitalityEaseDuration:0.25];
  LODWORD(v3) = 1045220557;
  [(ISPlayerSettings *)self setVitalityEaseMinRate:v3];
  [(ISPlayerSettings *)self setLoopingEnabled:0];
  [(ISPlayerSettings *)self setCrossfadeEnabled:0];
  [(ISPlayerSettings *)self setAudioEnabled:1];
  [(ISPlayerSettings *)self setPrerollBeforePlaying:0];
  [(ISPlayerSettings *)self setUseDedicatedQueues:1];
  v4 = MGGetStringAnswer();
  v5 = [v4 isEqualToString:@"iPad"];

  [(ISPlayerSettings *)self setAllowFrameBlending:v5 ^ 1u];
  [(ISPlayerSettings *)self setAllowVideoPreRoll:1];
  [(ISPlayerSettings *)self setShowStateOverlay:0];
  [(ISPlayerSettings *)self setForceScrubRewindFactor:2.0];
  [(ISPlayerSettings *)self setForceScrubMinRateChange:0.01];
  [(ISPlayerSettings *)self setForceScrubMinimumRate:0.5];
  [(ISPlayerSettings *)self setForceScrubMaximumInteractiveRate:2.0];
  [(ISPlayerSettings *)self setPlayDuringHint:1];
  [(ISPlayerSettings *)self setPlayIsSticky:0];
  [(ISPlayerSettings *)self setScaleDuringPlayback:1];
  [(ISPlayerSettings *)self setEasingEnabled:0];
  [(ISPlayerSettings *)self setLongExposureVitality:1];
  [(ISPlayerSettings *)self setPlayAppleMusicWithMemoriesExports:1];
}

+ (id)settingsControllerModule
{
  v58[21] = *MEMORY[0x277D85DE8];
  v42 = MEMORY[0x277D43218];
  v55 = [MEMORY[0x277D432A0] rowWithTitle:@"Easing Enabled" valueKeyPath:@"easingEnabled"];
  v58[0] = v55;
  v54 = [MEMORY[0x277D432A0] rowWithTitle:@"Long Exposure Vitality" valueKeyPath:@"longExposureVitality"];
  v58[1] = v54;
  v53 = [MEMORY[0x277D43298] rowWithTitle:@"Vitality Ease Duration" valueKeyPath:@"vitalityEaseDuration"];
  v52 = [v53 minValue:0.1 maxValue:0.5];
  v51 = [v52 is_increment:0.05];
  v50 = [MEMORY[0x277CCAC30] predicateWithFormat:@"easingEnabled == YES"];
  v49 = [v51 condition:v50];
  v58[2] = v49;
  v48 = [MEMORY[0x277D43298] rowWithTitle:@"Vitality Ease Min Rate" valueKeyPath:@"vitalityEaseMinRate"];
  v47 = [v48 minValue:0.100000001 maxValue:1.0];
  v46 = [v47 is_increment:0.0500000007];
  v45 = [MEMORY[0x277CCAC30] predicateWithFormat:@"easingEnabled == YES"];
  v44 = [v46 condition:v45];
  v58[3] = v44;
  v41 = [MEMORY[0x277D431B8] rowWithTitle:@"Playback Starts…" valueKeyPath:@"startBehavior"];
  v40 = [v41 possibleValues:&unk_28705CF10 titles:&unk_28705CF28];
  v58[4] = v40;
  v39 = [MEMORY[0x277D432A0] rowWithTitle:@"Scale During Playback" valueKeyPath:@"scaleDuringPlayback"];
  v58[5] = v39;
  v38 = [MEMORY[0x277D432A0] rowWithTitle:@"Looping Enabled" valueKeyPath:@"loopingEnabled"];
  v58[6] = v38;
  v37 = [MEMORY[0x277D432A0] rowWithTitle:@"Crossfade Enabled" valueKeyPath:@"crossfadeEnabled"];
  v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"loopingEnabled == YES"];
  v35 = [v37 condition:v36];
  v58[7] = v35;
  v34 = [MEMORY[0x277D432A0] rowWithTitle:@"Audio Enabled" valueKeyPath:@"audioEnabled"];
  v58[8] = v34;
  v33 = [MEMORY[0x277D432A0] rowWithTitle:@"Sticky Play" valueKeyPath:@"playIsSticky"];
  v58[9] = v33;
  v32 = [MEMORY[0x277D432A0] rowWithTitle:@"State Overlay" valueKeyPath:@"showStateOverlay"];
  v58[10] = v32;
  v31 = [MEMORY[0x277D432A0] rowWithTitle:@"Live Hint" valueKeyPath:@"playDuringHint"];
  v58[11] = v31;
  v30 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Dedicated Queues" valueKeyPath:@"useDedicatedQueues"];
  v58[12] = v30;
  v29 = [MEMORY[0x277D432A0] rowWithTitle:@"Preroll Before Playing" valueKeyPath:@"prerollBeforePlaying"];
  v58[13] = v29;
  v28 = [MEMORY[0x277D432A0] rowWithTitle:@"Frame Blending" valueKeyPath:@"allowFrameBlending"];
  v58[14] = v28;
  v27 = [MEMORY[0x277D432A0] rowWithTitle:@"Video Preroll" valueKeyPath:@"allowVideoPreRoll"];
  v58[15] = v27;
  v26 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Rewind Factor" valueKeyPath:@"forceScrubRewindFactor"];
  v25 = [v26 minValue:0.0 maxValue:10.0];
  v24 = [v25 is_increment:0.00999999978];
  v58[16] = v24;
  v23 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Min Rate Change" valueKeyPath:@"forceScrubMinRateChange"];
  v2 = [v23 minValue:0.0 maxValue:0.100000001];
  v3 = [v2 is_increment:0.0000999999975];
  v58[17] = v3;
  v4 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Minimum Rate" valueKeyPath:@"forceScrubMinimumRate"];
  v5 = [v4 minValue:0.0 maxValue:1.0];
  v6 = [v5 is_increment:0.100000001];
  v58[18] = v6;
  v7 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Maximum Interactive Rate" valueKeyPath:@"forceScrubMaximumInteractiveRate"];
  v8 = [v7 minValue:0.0 maxValue:8.0];
  v9 = [v8 is_increment:0.100000001];
  v58[19] = v9;
  v10 = [MEMORY[0x277D432A0] rowWithTitle:@"Play 🍎Music w/Memories Exports" valueKeyPath:@"playAppleMusicWithMemoriesExports"];
  v58[20] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:21];
  v43 = [v42 sectionWithRows:v11];

  v12 = MEMORY[0x277D43218];
  v13 = MEMORY[0x277D431A8];
  v14 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];
  v57 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  v17 = [v12 sectionWithRows:v16];

  v18 = MEMORY[0x277D43218];
  v56[0] = v43;
  v56[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v20 = [v18 moduleWithTitle:@"Player" contents:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)sharedInstance
{
  v2 = +[ISRootSettings sharedInstance];
  playerSettings = [v2 playerSettings];

  return playerSettings;
}

@end