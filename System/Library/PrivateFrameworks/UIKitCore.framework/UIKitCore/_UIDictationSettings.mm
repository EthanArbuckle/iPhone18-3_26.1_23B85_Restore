@interface _UIDictationSettings
+ (id)compositingFilters;
+ (id)frameRates;
+ (id)frameRatesTitles;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIDictationSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UIDictationSettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(_UIDictationSettings *)self setMinimumRadius:0.5];
  [(_UIDictationSettings *)self setTrailingGlowBlurRadius:10.0];
  [(_UIDictationSettings *)self setLightModeCompositingFiler:*MEMORY[0x1E6979CE8]];
  [(_UIDictationSettings *)self setDarkModeCompositingFiler:*MEMORY[0x1E6979CF8]];
  [(_UIDictationSettings *)self setTrailingGlowDuration:1.4];
  [(_UIDictationSettings *)self setTailHeight:0.0];
  [(_UIDictationSettings *)self setHeadHeight:1.0];
  [(_UIDictationSettings *)self setTrailingGlowAlpha:0.32];
  [(_UIDictationSettings *)self setRevealFadeTime:0.14];
  [(_UIDictationSettings *)self setTypewriterEffectFramesPerSecond:24.0];
  [(_UIDictationSettings *)self setTypewriterEffectStreamingCharacterInsertionRate:70.0];
  [(_UIDictationSettings *)self setTypewriterEffectMinDurationBetweenHypotheses:0.3];
  [(_UIDictationSettings *)self setGlowEffectEnabled:1];
  [(_UIDictationSettings *)self setPulseAnimationEnabled:1];
  [(_UIDictationSettings *)self setTrailAnimationEnabled:1];
  v3 = [objc_opt_self() mainScreen];
  -[_UIDictationSettings setPulseFrameRate:](self, "setPulseFrameRate:", [v3 maximumFramesPerSecond]);

  v4 = [objc_opt_self() mainScreen];
  -[_UIDictationSettings setTrailFrameRate:](self, "setTrailFrameRate:", [v4 maximumFramesPerSecond]);

  [(_UIDictationSettings *)self setSoundReactiveCursorEnabled:1];
  [(_UIDictationSettings *)self setAudioPollingRate:60.0];
  [(_UIDictationSettings *)self setAudioWidthMaxBump:2.0];
  [(_UIDictationSettings *)self setAudioScaleAnimationDampingRatio:1.0];
  [(_UIDictationSettings *)self setAudioScaleAnimationResponse:0.2];
  [(_UIDictationSettings *)self setCommandHapticFeedbackEnabled:1];
  [(_UIDictationSettings *)self setImpactStyle:3];
  [(_UIDictationSettings *)self setImpactIntensity:0.8];
  [(_UIDictationSettings *)self setPulseDuration:0.9];
  [(_UIDictationSettings *)self setCursorGlowBorderPadding:0.0];
  [(_UIDictationSettings *)self setPulseHeightMaxBump:2.0];
  [(_UIDictationSettings *)self setAudioHeightMaxBump:7.0];
  [(_UIDictationSettings *)self setPulseWidthMaxBump:1.5];
  [(_UIDictationSettings *)self setCursorGlowAlphaMax:0.6];
  [(_UIDictationSettings *)self setCursorGlowAlphaMin:0.24];
  [(_UIDictationSettings *)self setCursorGlowBlurRadius:6.0];
  [(_UIDictationSettings *)self setVoiceCommandsInIWorkEnabled:0];
}

+ (id)settingsControllerModule
{
  v117[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C6638];
  v51 = MEMORY[0x1E69C6638];
  v111 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Sound Reactive Cursor" valueKeyPath:@"soundReactiveCursorEnabled"];
  v116[0] = v111;
  v110 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Audio Polling Rate" valueKeyPath:@"audioPollingRate"];
  v109 = [a1 frameRates];
  v108 = [a1 frameRatesTitles];
  v107 = [v110 possibleValues:v109 titles:v108];
  v116[1] = v107;
  v106 = [MEMORY[0x1E69C6618] rowWithTitle:@"Audio Width Bump" valueKeyPath:@"audioWidthMaxBump"];
  v105 = [v106 between:0.0 and:10.0];
  v104 = [v105 precision:3];
  v116[2] = v104;
  v103 = [MEMORY[0x1E69C6618] rowWithTitle:@"Audio Height Bump" valueKeyPath:@"audioHeightMaxBump"];
  v102 = [v103 between:0.0 and:10.0];
  v101 = [v102 precision:3];
  v116[3] = v101;
  v100 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pulse Width Bump" valueKeyPath:@"pulseWidthMaxBump"];
  v99 = [v100 between:0.0 and:10.0];
  v98 = [v99 precision:3];
  v116[4] = v98;
  v97 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pulse Height Bump" valueKeyPath:@"pulseHeightMaxBump"];
  v96 = [v97 between:0.0 and:10.0];
  v95 = [v96 precision:3];
  v116[5] = v95;
  v94 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pulse Duration" valueKeyPath:@"pulseDuration"];
  v93 = [v94 between:0.0 and:10.0];
  v92 = [v93 precision:3];
  v116[6] = v92;
  v91 = [MEMORY[0x1E69C6618] rowWithTitle:@"Damping Ratio" valueKeyPath:@"audioScaleAnimationDampingRatio"];
  v90 = [v91 between:0.0 and:1.0];
  v89 = [v90 precision:3];
  v116[7] = v89;
  v88 = [MEMORY[0x1E69C6618] rowWithTitle:@"Response" valueKeyPath:@"audioScaleAnimationResponse"];
  v87 = [v88 between:0.0 and:10.0];
  v86 = [v87 precision:3];
  v116[8] = v86;
  v85 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Command Haptic Fedeback" valueKeyPath:@"commandHapticFeedbackEnabled"];
  v116[9] = v85;
  v84 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Impact Style" valueKeyPath:@"impactStyle"];
  v83 = [a1 impactStyles];
  v82 = [a1 impactStylesTitles];
  v81 = [v84 possibleValues:v83 titles:v82];
  v116[10] = v81;
  v80 = [MEMORY[0x1E69C6618] rowWithTitle:@"Impact Intensity" valueKeyPath:@"impactIntensity"];
  v79 = [v80 between:0.0 and:1.0];
  v78 = [v79 precision:3];
  v116[11] = v78;
  v77 = [MEMORY[0x1E69C66A8] rowWithTitle:@"iWork Command UI" valueKeyPath:@"voiceCommandsInIWorkEnabled"];
  v116[12] = v77;
  v76 = [MEMORY[0x1E69C6618] rowWithTitle:@"cursorGlowBorderPadding" valueKeyPath:@"cursorGlowBorderPadding"];
  v75 = [v76 between:0.0 and:20.0];
  v74 = [v75 precision:3];
  v116[13] = v74;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:14];
  v72 = [v3 sectionWithRows:v73 title:@"Crystal Dictation UI"];
  v117[0] = v72;
  v4 = MEMORY[0x1E69C6638];
  v71 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Glow Radius" valueKeyPath:@"minimumRadius"];
  v70 = [v71 between:0.0 and:30.0];
  v69 = [v70 precision:2];
  v115[0] = v69;
  v68 = [MEMORY[0x1E69C6618] rowWithTitle:@"Cursor Glow Blur Radius" valueKeyPath:@"cursorGlowBlurRadius"];
  v67 = [v68 between:0.0 and:30.0];
  v66 = [v67 precision:2];
  v115[1] = v66;
  v65 = [MEMORY[0x1E69C6618] rowWithTitle:@"Trailing Glow Blur Radius" valueKeyPath:@"trailingGlowBlurRadius"];
  v64 = [v65 between:0.0 and:30.0];
  v63 = [v64 precision:2];
  v115[2] = v63;
  v62 = [MEMORY[0x1E69C65F8] rowWithTitle:@"lightMode compositingFiler" valueKeyPath:@"lightModeCompositingFiler"];
  v61 = [a1 compositingFilters];
  v60 = [a1 compositingFilters];
  v59 = [v62 possibleValues:v61 titles:v60];
  v115[3] = v59;
  v58 = [MEMORY[0x1E69C65F8] rowWithTitle:@"darkMode compositingFiler" valueKeyPath:@"darkModeCompositingFiler"];
  v57 = [a1 compositingFilters];
  v56 = [a1 compositingFilters];
  v55 = [v58 possibleValues:v57 titles:v56];
  v115[4] = v55;
  v54 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Trailing Glow Duration" valueKeyPath:@"trailingGlowDuration"];
  v53 = [v54 minValue:0.01 maxValue:2.0];
  v115[5] = v53;
  v50 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Tail Height" valueKeyPath:@"tailHeight"];
  v49 = [v50 minValue:0.0 maxValue:1.0];
  v115[6] = v49;
  v48 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Head Height" valueKeyPath:@"headHeight"];
  v47 = [v48 minValue:0.0 maxValue:1.0];
  v115[7] = v47;
  v46 = [MEMORY[0x1E69C66A0] rowWithTitle:@"cursorGAlphaMin" valueKeyPath:@"cursorGlowAlphaMin"];
  v45 = [v46 minValue:0.0 maxValue:1.0];
  v115[8] = v45;
  v44 = [MEMORY[0x1E69C66A0] rowWithTitle:@"cursorGAlphaMax" valueKeyPath:@"cursorGlowAlphaMax"];
  v43 = [v44 minValue:0.0 maxValue:1.0];
  v115[9] = v43;
  v42 = [MEMORY[0x1E69C66A0] rowWithTitle:@"trailingGAlpha" valueKeyPath:@"trailingGlowAlpha"];
  v41 = [v42 minValue:0.0 maxValue:1.0];
  v115[10] = v41;
  v40 = [MEMORY[0x1E69C66A0] rowWithTitle:@"revealFadeTime" valueKeyPath:@"revealFadeTime"];
  v39 = [v40 minValue:0.0 maxValue:2.0];
  v115[11] = v39;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:12];
  v37 = [v4 sectionWithRows:v38 title:@"Dawn Dictation UI"];
  v117[1] = v37;
  v5 = MEMORY[0x1E69C6638];
  v35 = [MEMORY[0x1E69C66A0] rowWithTitle:@"framesPerSecond" valueKeyPath:@"typewriterEffectFramesPerSecond"];
  v36 = [objc_opt_self() mainScreen];
  v34 = [v35 minValue:0.0 maxValue:{objc_msgSend(v36, "maximumFramesPerSecond")}];
  v114[0] = v34;
  v33 = [MEMORY[0x1E69C66A0] rowWithTitle:@"charInsertionRate" valueKeyPath:@"typewriterEffectStreamingCharacterInsertionRate"];
  v32 = [v33 minValue:0.0 maxValue:100.0];
  v114[1] = v32;
  v31 = [MEMORY[0x1E69C66A0] rowWithTitle:@"minDuration" valueKeyPath:@"typewriterEffectMinDurationBetweenHypotheses"];
  v30 = [v31 minValue:0.0 maxValue:0.4];
  v114[2] = v30;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
  v28 = [v5 sectionWithRows:v29 title:@"Typewriter animation"];
  v117[2] = v28;
  v6 = MEMORY[0x1E69C6638];
  v27 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Glow Effect" valueKeyPath:@"glowEffectEnabled"];
  v113[0] = v27;
  v26 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Pulse Animation" valueKeyPath:@"pulseAnimationEnabled"];
  v113[1] = v26;
  v25 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Trail Animation" valueKeyPath:@"trailAnimationEnabled"];
  v113[2] = v25;
  v24 = [MEMORY[0x1E69C65F8] rowWithTitle:@"PulseFrameRate" valueKeyPath:@"pulseFrameRate"];
  v23 = [a1 frameRates];
  v22 = [a1 frameRatesTitles];
  v21 = [v24 possibleValues:v23 titles:v22];
  v113[3] = v21;
  v20 = [MEMORY[0x1E69C65F8] rowWithTitle:@"TrailFrameRate" valueKeyPath:@"trailFrameRate"];
  v7 = [a1 frameRates];
  v8 = [a1 frameRatesTitles];
  v9 = [v20 possibleValues:v7 titles:v8];
  v113[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:5];
  v11 = [v6 sectionWithRows:v10 title:@"Power Evaluation"];
  v117[3] = v11;
  v12 = MEMORY[0x1E69C6638];
  v13 = MEMORY[0x1E69C65E8];
  v14 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];
  v112 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
  v17 = [v12 sectionWithRows:v16];
  v117[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:5];
  v52 = [v51 moduleWithTitle:0 contents:v18];

  return v52;
}

+ (id)frameRates
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() mainScreen];
  v3 = [v2 maximumFramesPerSecond];

  if (v3 < 61)
  {
    v7 = &unk_1EFE2CB50;
  }

  else
  {
    v9[0] = &unk_1EFE317C8;
    v9[1] = &unk_1EFE317E0;
    v9[2] = &unk_1EFE317F8;
    v4 = MEMORY[0x1E696AD98];
    v5 = [objc_opt_self() mainScreen];
    v6 = [v4 numberWithInteger:{objc_msgSend(v5, "maximumFramesPerSecond")}];
    v9[3] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  }

  return v7;
}

+ (id)frameRatesTitles
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a1 frameRates];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) stringValue];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)compositingFilters
{
  v26[44] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6979830];
  v26[0] = *MEMORY[0x1E6979D40];
  v26[1] = v2;
  v3 = *MEMORY[0x1E6979D30];
  v26[2] = *MEMORY[0x1E69798A8];
  v26[3] = v3;
  v4 = *MEMORY[0x1E6979D28];
  v26[4] = *MEMORY[0x1E6979D38];
  v26[5] = v4;
  v5 = *MEMORY[0x1E69798F0];
  v26[6] = *MEMORY[0x1E69798D0];
  v26[7] = v5;
  v6 = *MEMORY[0x1E69798E8];
  v26[8] = *MEMORY[0x1E69798E0];
  v26[9] = v6;
  v7 = *MEMORY[0x1E6979D98];
  v26[10] = *MEMORY[0x1E69798D8];
  v26[11] = v7;
  v8 = *MEMORY[0x1E6979CE8];
  v26[12] = *MEMORY[0x1E6979CF8];
  v26[13] = v8;
  v9 = *MEMORY[0x1E6979D50];
  v26[14] = *MEMORY[0x1E6979D58];
  v26[15] = v9;
  v10 = *MEMORY[0x1E6979C98];
  v26[16] = *MEMORY[0x1E6979CA0];
  v26[17] = v10;
  v11 = *MEMORY[0x1E6979CC0];
  v26[18] = *MEMORY[0x1E6979C88];
  v26[19] = v11;
  v12 = *MEMORY[0x1E6979D18];
  v26[20] = *MEMORY[0x1E6979CA8];
  v26[21] = v12;
  v13 = *MEMORY[0x1E69798C0];
  v26[22] = *MEMORY[0x1E6979CD0];
  v26[23] = v13;
  v14 = *MEMORY[0x1E6979860];
  v26[24] = *MEMORY[0x1E6979C30];
  v26[25] = v14;
  v15 = *MEMORY[0x1E6979D20];
  v26[26] = *MEMORY[0x1E6979850];
  v26[27] = v15;
  v16 = *MEMORY[0x1E69798F8];
  v26[28] = *MEMORY[0x1E6979940];
  v26[29] = v16;
  v17 = *MEMORY[0x1E6979D48];
  v26[30] = *MEMORY[0x1E6979920];
  v26[31] = v17;
  v18 = *MEMORY[0x1E6979C50];
  v26[32] = *MEMORY[0x1E6979908];
  v26[33] = v18;
  v19 = *MEMORY[0x1E6979C60];
  v26[34] = *MEMORY[0x1E6979C58];
  v26[35] = v19;
  v20 = *MEMORY[0x1E69798C8];
  v26[36] = *MEMORY[0x1E6979CE0];
  v26[37] = v20;
  v21 = *MEMORY[0x1E6979948];
  v26[38] = *MEMORY[0x1E6979C38];
  v26[39] = v21;
  v22 = *MEMORY[0x1E6979840];
  v26[40] = *MEMORY[0x1E6979D10];
  v26[41] = v22;
  v23 = *MEMORY[0x1E6979D80];
  v26[42] = *MEMORY[0x1E6979C78];
  v26[43] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:44];

  return v24;
}

@end