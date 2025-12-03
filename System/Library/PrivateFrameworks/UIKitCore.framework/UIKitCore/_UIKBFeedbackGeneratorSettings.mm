@interface _UIKBFeedbackGeneratorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIKBFeedbackGeneratorSettings

- (void)setDefaultValues
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  v5 = 0.33;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 0.25;
  }

  [(_UIKBFeedbackGeneratorSettings *)self setTypingFastInterval:v5];
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v6 userInterfaceIdiom];

  [(_UIKBFeedbackGeneratorSettings *)self setTypingSlowInterval:dbl_18A67E140[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  indivisualKeyAudioVolume = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioVolume];
  [indivisualKeyAudioVolume setDefaultValues];

  indivisualKeyAudioVolume2 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioVolume];
  [indivisualKeyAudioVolume2 setDecayInterval:0.6];

  indivisualKeyAudioVolume3 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioVolume];
  [indivisualKeyAudioVolume3 setIntervalWeight:0.88];

  v11 = +[UIDevice currentDevice];
  userInterfaceIdiom3 = [v11 userInterfaceIdiom];

  v13 = dbl_18A67E150[(userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  indivisualKeyAudioVolume4 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioVolume];
  [indivisualKeyAudioVolume4 setMin:v13];

  indivisualKeyAudioVolume5 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioVolume];
  [indivisualKeyAudioVolume5 setMax:1.0];

  indivisualKeyAudioVolume6 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioVolume];
  [indivisualKeyAudioVolume6 setRandomInPercentage:10.0];

  indivisualKeyHaptic = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyHaptic];
  [indivisualKeyHaptic setDefaultValues];

  indivisualKeyHaptic2 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyHaptic];
  [indivisualKeyHaptic2 setMin:1.0];

  indivisualKeyHaptic3 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyHaptic];
  [indivisualKeyHaptic3 setMax:0.9];

  indivisualKeyHaptic4 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyHaptic];
  [indivisualKeyHaptic4 setIntervalWeight:0.0];

  indivisualKeyHaptic5 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyHaptic];
  [indivisualKeyHaptic5 setRandomInPercentage:5.0];

  indivisualKeyAudioPitch = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPitch];
  [indivisualKeyAudioPitch setDefaultValues];

  indivisualKeyAudioPitch2 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPitch];
  [indivisualKeyAudioPitch2 setDecayInterval:0.66];

  indivisualKeyAudioPitch3 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPitch];
  [indivisualKeyAudioPitch3 setIntervalWeight:0.2];

  indivisualKeyAudioPitch4 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPitch];
  [indivisualKeyAudioPitch4 setRandomInPercentage:29.0];

  indivisualKeyAudioPitch5 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPitch];
  [indivisualKeyAudioPitch5 setMin:0.02];

  indivisualKeyAudioPitch6 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPitch];
  [indivisualKeyAudioPitch6 setMax:0.0];

  indivisualKeyAudioPan = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPan];
  [indivisualKeyAudioPan setDefaultValues];

  indivisualKeyAudioPan2 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPan];
  [indivisualKeyAudioPan2 setMin:0.0];

  indivisualKeyAudioPan3 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioPan];
  [indivisualKeyAudioPan3 setMax:0.0];

  indivisualKeyAudioBrightness = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioBrightness];
  [indivisualKeyAudioBrightness setDefaultValues];

  indivisualKeyAudioBrightness2 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioBrightness];
  [indivisualKeyAudioBrightness2 setDecayInterval:0.86];

  indivisualKeyAudioBrightness3 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioBrightness];
  [indivisualKeyAudioBrightness3 setIntervalWeight:0.38];

  indivisualKeyAudioBrightness4 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioBrightness];
  [indivisualKeyAudioBrightness4 setMin:-0.05];

  indivisualKeyAudioBrightness5 = [(_UIKBFeedbackGeneratorSettings *)self indivisualKeyAudioBrightness];
  [indivisualKeyAudioBrightness5 setMax:0.0];

  predictiveTextAudioVolume = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioVolume];
  [predictiveTextAudioVolume setDefaultValues];

  predictiveTextAudioVolume2 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioVolume];
  [predictiveTextAudioVolume2 setMin:0.6];

  predictiveTextAudioVolume3 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioVolume];
  [predictiveTextAudioVolume3 setMax:0.95];

  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextMinLength:1];
  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextMaxLength:10];
  predictiveTextAudioPitch = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioPitch];
  [predictiveTextAudioPitch setDefaultValues];

  predictiveTextAudioPitch2 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioPitch];
  [predictiveTextAudioPitch2 setMin:0.7];

  predictiveTextAudioPitch3 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioPitch];
  [predictiveTextAudioPitch3 setMax:0.0];

  predictiveTextAudioPan = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioPan];
  [predictiveTextAudioPan setDefaultValues];

  predictiveTextAudioPan2 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioPan];
  [predictiveTextAudioPan2 setMin:0.0];

  predictiveTextAudioPan3 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioPan];
  [predictiveTextAudioPan3 setMax:0.0];

  predictiveTextAudioBrightness = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioBrightness];
  [predictiveTextAudioBrightness setDefaultValues];

  predictiveTextAudioBrightness2 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioBrightness];
  [predictiveTextAudioBrightness2 setMin:-0.2];

  predictiveTextAudioBrightness3 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextAudioBrightness];
  [predictiveTextAudioBrightness3 setMax:0.0];

  predictiveTextHaptic = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextHaptic];
  [predictiveTextHaptic setDefaultValues];

  predictiveTextHaptic2 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextHaptic];
  [predictiveTextHaptic2 setMin:1.0];

  predictiveTextHaptic3 = [(_UIKBFeedbackGeneratorSettings *)self predictiveTextHaptic];
  [predictiveTextHaptic3 setMax:0.9];

  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextFeedbackOption:1];
  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextOddAudioPitch:0.06];
  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextEvenAudioPitch:-0.04];
  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextLongAudioBrightness:-0.05];
  v51 = +[UIDevice currentDevice];
  userInterfaceIdiom4 = [v51 userInterfaceIdiom];

  [(_UIKBFeedbackGeneratorSettings *)self setPredictiveTextShortAudioBrightness:dbl_18A67E160[(userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  [(_UIKBFeedbackGeneratorSettings *)self setAutoShutdownTimeout:2.0];
  [(_UIKBFeedbackGeneratorSettings *)self setSystemRingerVolumeMin:0.0625];
  [(_UIKBFeedbackGeneratorSettings *)self setSystemRingerVolumeMax:1.0];
  [(_UIKBFeedbackGeneratorSettings *)self setAdjustedRingerVolumeMin:0.1757];

  [(_UIKBFeedbackGeneratorSettings *)self setAdjustedRingerVolumeMax:0.4549];
}

+ (id)settingsControllerModule
{
  v83[9] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v52 = MEMORY[0x1E69C6638];
  v73 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fast" valueKeyPath:@"typingFastInterval"];
  v72 = [v73 minValue:0.0 maxValue:2.0];
  v82[0] = v72;
  v71 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Slow" valueKeyPath:@"typingSlowInterval"];
  v70 = [v71 minValue:0.0 maxValue:2.0];
  v82[1] = v70;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v68 = [v2 sectionWithRows:v69 title:@"Typing Interval"];
  v83[0] = v68;
  v3 = MEMORY[0x1E69C6638];
  v67 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min" valueKeyPath:@"predictiveTextMinLength"];
  v66 = [v67 minValue:0.0 maxValue:20.0];
  v81[0] = v66;
  v65 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max" valueKeyPath:@"predictiveTextMaxLength"];
  v64 = [v65 minValue:0.0 maxValue:20.0];
  v81[1] = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v62 = [v3 sectionWithRows:v63 title:@"Predictive text length"];
  v83[1] = v62;
  v4 = MEMORY[0x1E69C6638];
  v61 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Volume" childSettingsKeyPath:@"indivisualKeyAudioVolume"];
  v80[0] = v61;
  v60 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Pan" childSettingsKeyPath:@"indivisualKeyAudioPan"];
  v80[1] = v60;
  v59 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Pitch" childSettingsKeyPath:@"indivisualKeyAudioPitch"];
  v80[2] = v59;
  v58 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Brightness" childSettingsKeyPath:@"indivisualKeyAudioBrightness"];
  v80[3] = v58;
  v57 = [MEMORY[0x1E69C6610] rowWithTitle:@"Haptic Intensity" childSettingsKeyPath:@"indivisualKeyHaptic"];
  v80[4] = v57;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:5];
  v55 = [v4 sectionWithRows:v56 title:@"Indivisual Key"];
  v83[2] = v55;
  v5 = MEMORY[0x1E69C6638];
  v54 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Option" valueKeyPath:@"predictiveTextFeedbackOption"];
  v51 = [v54 possibleValues:&unk_1EFE2C0E8 titles:&unk_1EFE2C100];
  v79[0] = v51;
  v50 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Volume" childSettingsKeyPath:@"predictiveTextAudioVolume"];
  v79[1] = v50;
  v49 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Pan" childSettingsKeyPath:@"predictiveTextAudioPan"];
  v79[2] = v49;
  v48 = [MEMORY[0x1E69C6610] rowWithTitle:@"Haptic Intensity" childSettingsKeyPath:@"predictiveTextHaptic"];
  v79[3] = v48;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:4];
  v46 = [v5 sectionWithRows:v47 title:@"Predictive Text/QuickPath"];
  v83[3] = v46;
  v6 = MEMORY[0x1E69C6638];
  v45 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Pitch" childSettingsKeyPath:@"predictiveTextAudioPitch"];
  v78[0] = v45;
  v44 = [MEMORY[0x1E69C6610] rowWithTitle:@"Audio Brightness" childSettingsKeyPath:@"predictiveTextAudioBrightness"];
  v78[1] = v44;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v42 = [v6 sectionWithRows:v43 title:@"Option A(Linear)"];
  v83[4] = v42;
  v7 = MEMORY[0x1E69C6638];
  v41 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Pitch(Even)" valueKeyPath:@"predictiveTextEvenAudioPitch"];
  v40 = [v41 minValue:-1.0 maxValue:1.0];
  v77[0] = v40;
  v39 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Pitch(Odd)" valueKeyPath:@"predictiveTextOddAudioPitch"];
  v38 = [v39 minValue:-1.0 maxValue:1.0];
  v77[1] = v38;
  v37 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Brightness(<=5)" valueKeyPath:@"predictiveTextShortAudioBrightness"];
  v36 = [v37 minValue:-1.0 maxValue:1.0];
  v77[2] = v36;
  v35 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Brightness(>5)" valueKeyPath:@"predictiveTextLongAudioBrightness"];
  v34 = [v35 minValue:-1.0 maxValue:1.0];
  v77[3] = v34;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:4];
  v32 = [v7 sectionWithRows:v33 title:@"Option B(Even/Odd)"];
  v83[5] = v32;
  v8 = MEMORY[0x1E69C6638];
  v31 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Source Min" valueKeyPath:@"systemRingerVolumeMin"];
  v30 = [v31 minValue:0.0 maxValue:1.0];
  v76[0] = v30;
  v29 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Source Max" valueKeyPath:@"systemRingerVolumeMax"];
  v28 = [v29 minValue:0.0 maxValue:1.0];
  v76[1] = v28;
  v27 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Adjusted Min" valueKeyPath:@"adjustedRingerVolumeMin"];
  v26 = [v27 minValue:0.0 maxValue:1.0];
  v76[2] = v26;
  v25 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Adjusted Max" valueKeyPath:@"adjustedRingerVolumeMax"];
  v24 = [v25 minValue:0.0 maxValue:1.0];
  v76[3] = v24;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
  v9 = [v8 sectionWithRows:v23 title:@"Base Volume"];
  v83[6] = v9;
  v10 = MEMORY[0x1E69C6638];
  v11 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Timeout" valueKeyPath:@"autoShutdownTimeout"];
  v12 = [v11 minValue:0.0 maxValue:10.0];
  v75 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v14 = [v10 sectionWithRows:v13 title:@"Auto shutdown(For audio only)"];
  v83[7] = v14;
  v15 = MEMORY[0x1E69C6638];
  v16 = MEMORY[0x1E69C65E8];
  v17 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v18 = [v16 rowWithTitle:@"Restore Defaults" action:v17];
  v74 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v20 = [v15 sectionWithRows:v19];
  v83[8] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:9];
  v53 = [v52 moduleWithTitle:0 contents:v21];

  return v53;
}

@end