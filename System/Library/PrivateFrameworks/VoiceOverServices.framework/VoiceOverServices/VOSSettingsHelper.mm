@interface VOSSettingsHelper
+ (id)activitiesFormatter;
+ (id)audioDuckingMode;
+ (id)brailleInputOutputFormatter;
+ (id)brailleTableFormatter;
+ (id)durationFormatter;
+ (id)gestureDirectionFormatter;
+ (id)mediaDescriptionsFormatter;
+ (id)navigateImagesFormatter;
+ (id)navigationStyleFormatter;
+ (id)percentageFormatter;
+ (id)phoneticFeedbackFormatter;
+ (id)punctuationFormatter;
+ (id)sharedInstance;
+ (id)typingFeedbackFormatter;
+ (id)typingStyleFormatter;
+ (id)voiceFormatterForEnabledVoiceCodes:(id)a3;
- (BOOL)isItemSupported:(id)a3;
- (id)_enabledVoices;
- (id)_formatterForItem:(id)a3;
- (id)_init;
- (id)_volumeForActiveVoice;
- (id)formattedValue:(id)a3 withItem:(id)a4;
- (id)nameForItem:(id)a3;
- (id)possibleValuesForSettingsItem:(id)a3;
- (id)scaledValue:(id)a3 withItem:(id)a4;
- (id)userSettingsItems;
- (id)valueForSettingsItem:(id)a3;
- (void)_setVolumeForActiveVoice:(double)a3;
- (void)_turnOffBrailleIOSyncIfNeeded;
- (void)saveUserSettingsItems:(id)a3;
- (void)setNextValueForItem:(id)a3 inDirection:(int64_t)a4;
- (void)setValue:(id)a3 forSettingsItem:(id)a4;
@end

@implementation VOSSettingsHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VOSSettingsHelper sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __35__VOSSettingsHelper_sharedInstance__block_invoke()
{
  sharedInstance__Shared = [[VOSSettingsHelper alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = VOSSettingsHelper;
  v2 = [(VOSSettingsHelper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(VOSSettingsHelper *)v2 _enabledVoices];
    [(VOSSettingsHelper *)v3 setEnabledVoices:v4];

    [(VOSSettingsHelper *)v3 setSliderMaxValue:1.0];
    [(VOSSettingsHelper *)v3 setSliderMinValue:0.0];
  }

  return v3;
}

- (id)_enabledVoices
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CE7DA0] sharedInstance];
  v4 = [v3 dialectForSystemLanguage];
  v5 = [v4 specificLanguageID];

  v6 = [MEMORY[0x277CE7E20] sharedInstance];
  v7 = [v6 voiceOverDefaultVoiceSelections];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [MEMORY[0x277D703C8] sharedInstance];
  v10 = [v8 voiceId];
  v11 = [v9 speechVoiceWithVoiceId:v10];

  v23 = v11;
  if (!v8 || ![v11 isInstalled])
  {
    v13 = [MEMORY[0x277CE7E20] sharedInstance];
    v12 = [v13 speechVoiceIdentifierForLanguage:v5 sourceKey:*MEMORY[0x277CE68B0] exists:0];

    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [v8 voiceId];
  if (v12)
  {
LABEL_6:
    [v2 addObject:v12];
  }

LABEL_7:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [MEMORY[0x277CE7E20] sharedInstance];
  v15 = [v14 voiceOverVoiceRotors];

  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      v20 = v12;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v12 = [*(*(&v24 + 1) + 8 * v19) identifier];

        if (v12)
        {
          [v2 addObject:v12];
        }

        ++v19;
        v20 = v12;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)userSettingsItems
{
  v52 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  v4 = [v3 voiceOverQuickSettingsItems];

  v31 = [v4 axMapObjectsUsingBlock:&__block_literal_global_297_0];
  v30 = +[VOSSettingsItem allSettingsItems];
  v5 = [VOSSettingsItem settingsIDtoItemMap:?];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"Item"];
        v12 = [v5 objectForKeyedSubscript:v11];
        if ([(VOSSettingsHelper *)self itemIsSupportedForPlatform:v12])
        {
          if (v12)
          {
            v47[0] = @"Item";
            v47[1] = @"Included";
            v48[0] = v12;
            v13 = [v10 objectForKeyedSubscript:?];
            v48[1] = v13;
            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
            [v33 addObject:v14];
          }

          else
          {
            v13 = VOTLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v11;
              _os_log_impl(&dword_223C70000, v13, OS_LOG_TYPE_DEFAULT, "Persistent QuickSettings identifier not found '%@'. skipping", buf, 0xCu);
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v7);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = v30;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v46 count:16];
  v17 = v33;
  if (v16)
  {
    v18 = v16;
    v19 = *v37;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v36 + 1) + 8 * j);
        if ([(VOSSettingsHelper *)self itemIsSupportedForPlatform:v21])
        {
          v22 = [v21 identifier];
          v23 = [v31 containsObject:v22];

          v17 = v33;
          if ((v23 & 1) == 0)
          {
            v44[0] = @"Item";
            v44[1] = @"Included";
            v45[0] = v21;
            v45[1] = &unk_283736290;
            v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
            v25 = [(VOSSettingsHelper *)self nameForItem:v21];
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __38__VOSSettingsHelper_userSettingsItems__block_invoke_307;
            v34[3] = &unk_2784F3680;
            v34[4] = self;
            v35 = v25;
            v26 = v25;
            v27 = [v33 indexOfObjectPassingTest:v34];
            if (v27 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v33 addObject:v24];
            }

            else
            {
              [v33 insertObject:v24 atIndex:v27];
            }
          }
        }
      }

      v18 = [v15 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v18);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v17;
}

BOOL __38__VOSSettingsHelper_userSettingsItems__block_invoke_307(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"Item"];
  v4 = [*(a1 + 32) nameForItem:v3];
  v5 = [*(a1 + 40) localizedCaseInsensitiveCompare:v4] == -1;

  return v5;
}

- (void)saveUserSettingsItems:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v21[0] = @"Included";
        v10 = [v9 objectForKeyedSubscript:@"Included"];
        v21[1] = @"Item";
        v22[0] = v10;
        v11 = [v9 objectForKeyedSubscript:@"Item"];
        v12 = [v11 identifier];
        v22[1] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
        [v4 addObject:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CE7E20] sharedInstance];
  [v14 setVoiceOverQuickSettingsItems:v4];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setNextValueForItem:(id)a3 inDirection:(int64_t)a4
{
  v39 = a3;
  v6 = [v39 itemType];
  if (!v6)
  {
    v23 = MEMORY[0x277CCABB0];
    v7 = [(VOSSettingsHelper *)self valueForSettingsItem:v39];
    v24 = [v23 numberWithInt:{objc_msgSend(v7, "BOOLValue") ^ 1}];
LABEL_41:
    v38 = v24;
    [(VOSSettingsHelper *)self setValue:v24 forSettingsItem:v39];

    goto LABEL_42;
  }

  if (v6 == 1)
  {
    v11 = [(VOSSettingsHelper *)self valueForSettingsItem:v39];
    [v11 floatValue];
    v13 = v12;

    v14 = +[VOSSettingsItem SpeakingRate];
    v15 = v14 == v39;

    v16 = +[VOSSettingsItem BrailleAutoAdvanceDuration];

    if (v16 == v39)
    {
      v17 = +[VOSSettingsHelper sharedInstance];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      v19 = [v17 scaledValue:v18 withItem:v39];
      [v19 doubleValue];
      v13 = v20;
    }

    v21 = +[VOSSettingsItem DuckingAmount];

    if (v21 == v39)
    {
      [(VOSSettingsHelper *)self setSliderMaxValue:0.99];
      [(VOSSettingsHelper *)self setSliderMinValue:0.01];
      v22 = 0.05;
    }

    else
    {
      v22 = dbl_223CAEC90[v15];
    }

    v25 = +[VOSSettingsItem Volume];

    if (v25 == v39)
    {
      [(VOSSettingsHelper *)self setSliderMaxValue:1.0];
      [(VOSSettingsHelper *)self setSliderMinValue:0.00999999978];
      v27 = dbl_223CAECA0[a4 == 1] + v13;
      v22 = 0.05;
    }

    else
    {
      v26 = -v22;
      if (a4 == 1)
      {
        v26 = v22;
      }

      v27 = v13 + v26;
      if (v21 != v39)
      {
        [(VOSSettingsHelper *)self sliderMinValue];
        if (v27 >= v28)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        [(VOSSettingsHelper *)self sliderMaxValue];
        if (v29 < v30)
        {
          v30 = v29;
        }

LABEL_36:
        v7 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
        [(VOSSettingsHelper *)self setValue:v7 forSettingsItem:v39];
        goto LABEL_42;
      }
    }

    [(VOSSettingsHelper *)self sliderMinValue];
    v32 = v31;
    [(VOSSettingsHelper *)self sliderMaxValue];
    v33 = (v27 * 100.0);
    v34 = (v22 * 100.0);
    v35 = v33 % v34;
    if (v33 % v34)
    {
      v36 = v34 + (v34 >> 31);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v35 <= v36 >> 1)
      {
        v34 = 0;
      }

      v33 = v33 - v35 + v34;
    }

    v37 = v33 / 100.0;
    if (v37 <= v32)
    {
      v37 = v32;
    }

    if (v37 <= v30)
    {
      v30 = v37;
    }

    goto LABEL_36;
  }

  if (v6 != 2)
  {
    goto LABEL_43;
  }

  v7 = [(VOSSettingsHelper *)self possibleValuesForSettingsItem:v39];
  v8 = [(VOSSettingsHelper *)self valueForSettingsItem:v39];
  v9 = [v7 indexOfObject:v8];

  if (!a4)
  {
    if (v9 <= 0)
    {
      v9 = [v7 count];
    }

    v10 = v9 - 1;
    goto LABEL_40;
  }

  if (a4 == 1)
  {
    if (v9 + 1 < [v7 count])
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 0;
    }

LABEL_40:
    v24 = [v7 objectAtIndexedSubscript:v10];
    goto LABEL_41;
  }

LABEL_42:

LABEL_43:
}

- (id)valueForSettingsItem:(id)a3
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[VOSSettingsItem Sounds];

  if (v5 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverSoundEffectsEnabled];
    goto LABEL_34;
  }

  v6 = +[VOSSettingsItem AudioDucking];

  if (v6 == v4)
  {
    v37 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v38 = [v35 voiceOverMediaDuckingMode];
LABEL_32:
    v39 = [v37 numberWithLong:v38];
LABEL_35:
    v40 = v39;
LABEL_36:

    goto LABEL_37;
  }

  v7 = +[VOSSettingsItem Pitch];

  if (v7 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverPitchChangeEnabled];
    goto LABEL_34;
  }

  v8 = +[VOSSettingsItem DuckingAmount];

  if (v8 == v4)
  {
    v43 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    [v35 voiceOverMediaDuckingAmount];
LABEL_41:
    v39 = [v43 numberWithDouble:?];
    goto LABEL_35;
  }

  v9 = +[VOSSettingsItem Volume];

  if (v9 == v4)
  {
    v44 = [(VOSSettingsHelper *)self _volumeForActiveVoice];
LABEL_43:
    v40 = v44;
    goto LABEL_37;
  }

  v10 = +[VOSSettingsItem SendToHDMI];

  if (v10 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverAudioFollowsHDMIAudio];
    goto LABEL_34;
  }

  v11 = +[VOSSettingsItem SoundCurtain];

  if (v11 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverSoundCurtain];
    goto LABEL_34;
  }

  v12 = +[VOSSettingsItem SpeakNotifications];

  if (v12 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverSpeakNotificationsEnabled];
    goto LABEL_34;
  }

  v13 = +[VOSSettingsItem SpeakingRate];

  if (v13 == v4)
  {
    v45 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    [v35 voiceOverEffectiveSpeakingRate];
    v39 = [v45 numberWithFloat:?];
    goto LABEL_35;
  }

  v14 = +[VOSSettingsItem Voice];

  if (v14 == v4)
  {
    v46 = [MEMORY[0x277CE7E20] sharedInstance];
    v47 = [v46 voiceOverCurrentRotorVoiceIdentifier];

    if (v47)
    {
      v48 = [(VOSSettingsHelper *)self enabledVoices];
      v49 = [v48 indexOfObjectPassingTest:&__block_literal_global_311];

      if (v49 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }
    }

    else
    {
      v50 = 0;
    }

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
    goto LABEL_43;
  }

  v15 = +[VOSSettingsItem Hints];

  if (v15 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverHintsEnabled];
    goto LABEL_34;
  }

  v16 = +[VOSSettingsItem ScreenRecognition];

  if (v16 == v4)
  {
    v51 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v52 = [v4 settingsData];
    v53 = [v52 frontmostAppIdentifier];
    v40 = [v51 numberWithInt:{objc_msgSend(v35, "automaticAccessibilityModeForBundleIdentifier:", v53) == 1}];

LABEL_54:
    goto LABEL_36;
  }

  v17 = +[VOSSettingsItem LiveRegions];

  if (v17 == v4)
  {
    v54 = [MEMORY[0x277CE7E20] sharedInstance];
    v55 = [v4 settingsData];
    v56 = [v55 frontmostAppIdentifier];
    if (v56)
    {
      v35 = [v54 liveRegionStatusForWebOrApp:v56];
    }

    else
    {
      v68 = [v4 settingsData];
      v69 = [v68 webAreaURL];
      v35 = [v54 liveRegionStatusForWebOrApp:v69];
    }

    v70 = MEMORY[0x277CCABB0];
    if (v35)
    {
      v71 = [v35 BOOLValue];
    }

    else
    {
      v71 = 1;
    }

    v39 = [v70 numberWithInt:v71];
    goto LABEL_35;
  }

  v18 = +[VOSSettingsItem ImageDescriptions];

  if (v18 == v4)
  {
    v57 = [MEMORY[0x277CE7E20] sharedInstance];
    v58 = [v57 imageCaptioningDisabledApps];
    v59 = [v4 settingsData];
    v60 = [v59 frontmostAppIdentifier];
    v61 = [v58 containsObject:v60];

    v44 = [MEMORY[0x277CCABB0] numberWithInt:v61 ^ 1u];
    goto LABEL_43;
  }

  v19 = +[VOSSettingsItem DirectTouch];

  if (v19 == v4)
  {
    v62 = [MEMORY[0x277CE7E20] sharedInstance];
    v63 = [v62 voiceOverDirectTouchEnabledApps];
    v64 = [v4 settingsData];
    v65 = [v64 frontmostAppIdentifier];
    v66 = [v63 objectForKeyedSubscript:v65];
    v67 = [v66 BOOLValue];

    v44 = [MEMORY[0x277CCABB0] numberWithBool:v67];
    goto LABEL_43;
  }

  v20 = +[VOSSettingsItem RotorActionConfirmation];

  if (v20 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverSpeakActionConfirmation];
    goto LABEL_34;
  }

  v21 = +[VOSSettingsItem BrailleAlerts];

  if (v21 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverBrailleAlertsEnabled];
    goto LABEL_34;
  }

  v22 = +[VOSSettingsItem BrailleFormatting];

  if (v22 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverBrailleFormattingEnabled];
    goto LABEL_34;
  }

  v23 = +[VOSSettingsItem Activities];

  if (v23 == v4)
  {
    v72 = [MEMORY[0x277CE7E20] sharedInstance];
    v35 = [v72 voiceOverSelectedActivity];

    if (v35)
    {
      v39 = v35;
      goto LABEL_35;
    }

    goto LABEL_73;
  }

  v24 = +[VOSSettingsItem Punctuation];

  if (v24 == v4)
  {
    v73 = [MEMORY[0x277CE7E20] sharedInstance];
    v35 = [v73 voiceOverPunctuationGroup];

    if (v35)
    {
      v52 = [MEMORY[0x277CE7658] sharedDatabase];
      v40 = [v52 punctuationGroupForUUID:v35];
      goto LABEL_54;
    }

LABEL_73:
    v39 = [MEMORY[0x277CBEB68] null];
    goto LABEL_35;
  }

  v25 = +[VOSSettingsItem NavigationStyle];

  if (v25 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverNavigationStyle];
LABEL_79:
    v39 = [v74 numberWithInteger:v75];
    goto LABEL_35;
  }

  v26 = +[VOSSettingsItem NavigateImages];

  if (v26 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverNavigateImagesOption];
    goto LABEL_79;
  }

  v27 = +[VOSSettingsItem GestureDirection];

  if (v27 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverNavigationDirectionMode];
    goto LABEL_79;
  }

  v28 = +[VOSSettingsItem PhoneticFeedback];

  if (v28 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverPhoneticsFeedback];
    goto LABEL_79;
  }

  v29 = +[VOSSettingsItem MediaDescriptions];

  if (v29 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverDescribedMedia];
    goto LABEL_79;
  }

  v30 = +[VOSSettingsItem CaptionPanel];

  if (v30 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 enableVoiceOverCaptions];
    goto LABEL_34;
  }

  v31 = +[VOSSettingsItem LargeCursor];

  if (v31 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverLargeCursorEnabled];
    goto LABEL_34;
  }

  v32 = [v4 identifier];
  v33 = [v32 isEqualToString:@"ScreenCurtain"];

  if (v33)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverScreenCurtainEnabled];
LABEL_34:
    v39 = [v34 numberWithBool:v36];
    goto LABEL_35;
  }

  v76 = +[VOSSettingsItem TypingStyle];

  if (v76 == v4)
  {
    v37 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v38 = [v35 voiceOverTypingMode];
    goto LABEL_32;
  }

  v77 = +[VOSSettingsItem SoftwareTypingFeedback];

  if (v77 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverSoftwareTypingFeedback];
    goto LABEL_79;
  }

  v78 = +[VOSSettingsItem HardwareTypingFeedback];

  if (v78 == v4)
  {
    v74 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v75 = [v35 voiceOverHardwareTypingFeedback];
    goto LABEL_79;
  }

  v79 = +[VOSSettingsItem SlideToType];

  if (v79 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = +[VOSSettingsHelper sharedInstance];
    v36 = [v35 isSlideToTypeEnabled];
    goto LABEL_34;
  }

  v80 = +[VOSSettingsItem BrailleAutoAdvanceDuration];

  if (v80 == v4)
  {
    v43 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    [v35 voiceOverBrailleAutoAdvanceDuration];
    goto LABEL_41;
  }

  v81 = +[VOSSettingsItem BrailleInput];

  if (v81 == v4)
  {
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v39 = [v35 voiceOverTouchBrailleDisplayInputTableIdentifier];
    goto LABEL_35;
  }

  v82 = +[VOSSettingsItem BrailleOutput];

  if (v82 == v4)
  {
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v39 = [v35 voiceOverTouchBrailleDisplayOutputTableIdentifier];
    goto LABEL_35;
  }

  v83 = +[VOSSettingsItem BSIActivationGestures];

  if (v83 == v4)
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277CE7E20] sharedInstance];
    v36 = [v35 voiceOverTouchBrailleGesturesActivationGestureEnabled];
    goto LABEL_34;
  }

  v84 = VOTLogCommon();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    v85 = 138412290;
    v86 = v4;
    _os_log_impl(&dword_223C70000, v84, OS_LOG_TYPE_DEFAULT, "Unhandled pref getter for item: %@", &v85, 0xCu);
  }

  v40 = 0;
LABEL_37:

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

uint64_t __42__VOSSettingsHelper_valueForSettingsItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CE7E20];
  v3 = a2;
  v4 = [v2 sharedInstance];
  v5 = [v4 voiceOverCurrentRotorVoiceIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (void)setValue:(id)a3 forSettingsItem:(id)a4
{
  v121 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[VOSSettingsItem Sounds];

  if (v8 == v7)
  {
    v39 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverSoundEffectsEnabled:v39];
    goto LABEL_39;
  }

  v9 = +[VOSSettingsItem AudioDucking];

  if (v9 == v7)
  {
    v40 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverMediaDuckingMode:v40];
    goto LABEL_39;
  }

  v10 = +[VOSSettingsItem DuckingAmount];

  if (v10 == v7)
  {
    [v6 doubleValue];
    v42 = v41;
    v43 = [MEMORY[0x277CE7E20] sharedInstance];
    [v43 setVoiceOverMediaDuckingAmount:v42];
    goto LABEL_33;
  }

  v11 = +[VOSSettingsItem Pitch];

  if (v11 == v7)
  {
    v44 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverPitchChangeEnabled:v44];
    goto LABEL_39;
  }

  v12 = +[VOSSettingsItem Volume];

  if (v12 == v7)
  {
    [v6 floatValue];
    [(VOSSettingsHelper *)self _setVolumeForActiveVoice:v45];
    goto LABEL_40;
  }

  v13 = +[VOSSettingsItem SendToHDMI];

  if (v13 == v7)
  {
    v46 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverAudioFollowsHDMIAudio:v46];
    goto LABEL_39;
  }

  v14 = +[VOSSettingsItem SoundCurtain];

  if (v14 == v7)
  {
    v47 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverSoundCurtain:v47];
    goto LABEL_39;
  }

  v15 = +[VOSSettingsItem SpeakNotifications];

  if (v15 == v7)
  {
    v48 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverSpeakNotificationsEnabled:v48];
    goto LABEL_39;
  }

  v16 = +[VOSSettingsItem SpeakingRate];

  if (v16 == v7)
  {
    [v6 floatValue];
    v53 = v52;
    v43 = [MEMORY[0x277CE7E20] sharedInstance];
    LODWORD(v54) = v53;
    [v43 setVoiceOverEffectiveSpeakingRate:v54];
    goto LABEL_33;
  }

  v17 = +[VOSSettingsItem Voice];

  if (v17 == v7)
  {
    if (![v6 integerValue])
    {
      v43 = [MEMORY[0x277CE7E20] sharedInstance];
      [v43 setVoiceOverCurrentRotorVoiceIdentifier:&stru_283729578];
      goto LABEL_33;
    }

    v43 = -[NSArray objectAtIndexedSubscript:](self->_enabledVoices, "objectAtIndexedSubscript:", [v6 integerValue]);
    v55 = [MEMORY[0x277CE7E20] sharedInstance];
    [v55 setVoiceOverCurrentRotorVoiceIdentifier:v43];
    goto LABEL_44;
  }

  v18 = +[VOSSettingsItem Hints];

  if (v18 == v7)
  {
    v56 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverHintsEnabled:v56];
    goto LABEL_39;
  }

  v19 = +[VOSSettingsItem RotorActionConfirmation];

  if (v19 == v7)
  {
    v57 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverSpeakActionConfirmation:v57];
    goto LABEL_39;
  }

  v20 = +[VOSSettingsItem BrailleAlerts];

  if (v20 == v7)
  {
    v58 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverBrailleAlertsEnabled:v58];
    goto LABEL_39;
  }

  v21 = +[VOSSettingsItem BrailleFormatting];

  if (v21 == v7)
  {
    v59 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverBrailleFormattingEnabled:v59];
    goto LABEL_39;
  }

  v22 = +[VOSSettingsItem ImageDescriptions];

  if (v22 == v7)
  {
    v60 = [v6 BOOLValue];
    v61 = [v7 settingsData];
    v43 = [v61 frontmostAppIdentifier];

    if (v43)
    {
      v62 = [MEMORY[0x277CE7E20] sharedInstance];
      v63 = [v62 imageCaptioningDisabledApps];
      v64 = [v63 mutableCopy];

      if (!v64)
      {
        v64 = [MEMORY[0x277CBEB18] array];
      }

      if (v60)
      {
        [v64 removeObject:v43];
      }

      else if (([v64 containsObject:v43] & 1) == 0)
      {
        [v64 addObject:v43];
      }

      v74 = [MEMORY[0x277CE7E20] sharedInstance];
      [v74 setImageCaptioningDisabledApps:v64];
    }

    goto LABEL_33;
  }

  v23 = +[VOSSettingsItem DirectTouch];

  if (v23 == v7)
  {
    v65 = [v7 settingsData];
    v43 = [v65 frontmostAppIdentifier];

    if (!v43)
    {
      goto LABEL_33;
    }

    v66 = [MEMORY[0x277CE7E20] sharedInstance];
    v67 = [v66 voiceOverDirectTouchEnabledApps];
    v55 = [v67 mutableCopy];

    v68 = [v55 objectForKey:v43];
    LODWORD(v67) = [v68 BOOLValue];

    v69 = [MEMORY[0x277CCABB0] numberWithInt:v67 ^ 1];
    [v55 setObject:v69 forKeyedSubscript:v43];

    v70 = [MEMORY[0x277CE7E20] sharedInstance];
    [v70 setVoiceOverDirectTouchEnabledApps:v55];

    goto LABEL_44;
  }

  v24 = +[VOSSettingsItem LiveRegions];

  if (v24 == v7)
  {
    v71 = [v7 settingsData];
    v72 = [v71 frontmostAppIdentifier];
    v73 = v72;
    if (v72)
    {
      v43 = v72;
    }

    else
    {
      v83 = [v7 settingsData];
      v43 = [v83 webAreaURL];
    }

    v84 = [MEMORY[0x277CE7E20] sharedInstance];
    v55 = [v84 liveRegionStatusForWebOrApp:v43];

    if (v55)
    {
      v85 = [v55 BOOLValue] ^ 1;
    }

    else
    {
      v85 = 0;
    }

    v86 = [MEMORY[0x277CE7E20] sharedInstance];
    v87 = [MEMORY[0x277CCABB0] numberWithInt:v85];
    [v86 setLiveRegionStatusForWebOrApp:v43 status:v87];

LABEL_44:
    goto LABEL_33;
  }

  v25 = +[VOSSettingsItem ScreenRecognition];

  if (v25 == v7)
  {
    v75 = [MEMORY[0x277CE7E20] sharedInstance];
    v76 = [v7 settingsData];
    v77 = [v76 frontmostAppIdentifier];
    v78 = [v75 automaticAccessibilityModeForBundleIdentifier:v77];

    v79 = v78 != 1;
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    v80 = [v7 settingsData];
    v81 = [v80 frontmostAppIdentifier];
    [v38 setAutomaticAccessibilityMode:v79 forBundleIdentifier:v81];

    goto LABEL_39;
  }

  v26 = +[VOSSettingsItem NavigationStyle];

  if (v26 == v7)
  {
    v82 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverNavigationStyle:v82];
    goto LABEL_39;
  }

  v27 = +[VOSSettingsItem NavigateImages];

  if (v27 == v7)
  {
    v88 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverNavigateImagesOption:v88];
    goto LABEL_39;
  }

  v28 = +[VOSSettingsItem GestureDirection];

  if (v28 == v7)
  {
    v89 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverNavigationDirectionMode:v89];
    goto LABEL_39;
  }

  v29 = +[VOSSettingsItem PhoneticFeedback];

  if (v29 == v7)
  {
    v90 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverPhoneticsFeedback:v90];
    goto LABEL_39;
  }

  v30 = +[VOSSettingsItem MediaDescriptions];

  if (v30 == v7)
  {
    v91 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverDescribedMedia:v91];
    goto LABEL_39;
  }

  v31 = +[VOSSettingsItem CaptionPanel];

  if (v31 == v7)
  {
    v92 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setEnableVoiceOverCaptions:v92];
    goto LABEL_39;
  }

  v32 = +[VOSSettingsItem LargeCursor];

  if (v32 == v7)
  {
    v93 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverLargeCursorEnabled:v93];
    goto LABEL_39;
  }

  v33 = +[VOSSettingsItem Activities];

  if (v33 == v7)
  {
    v94 = [MEMORY[0x277CBEB68] null];
    v95 = [v6 isEqual:v94];

    if (v95)
    {

      v6 = 0;
    }

    v43 = [MEMORY[0x277CE7E20] sharedInstance];
    [v43 setVoiceOverSelectedActivity:v6];
    goto LABEL_33;
  }

  v34 = +[VOSSettingsItem Punctuation];

  if (v34 == v7)
  {
    v96 = [MEMORY[0x277CBEB68] null];
    v97 = [v6 isEqual:v96];

    if (v97)
    {

      v6 = 0;
    }

    v43 = [v6 uuid];
    v55 = [MEMORY[0x277CE7E20] sharedInstance];
    [v55 setVoiceOverPunctuationGroup:v43];
    goto LABEL_44;
  }

  v35 = [v7 identifier];
  v36 = [v35 isEqualToString:@"ScreenCurtain"];

  if (v36)
  {
    v37 = [v6 BOOLValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverScreenCurtainEnabled:v37];
LABEL_39:

    goto LABEL_40;
  }

  v98 = +[VOSSettingsItem TypingStyle];

  if (v98 == v7)
  {
    v106 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverTypingMode:v106];
    goto LABEL_39;
  }

  v99 = +[VOSSettingsItem SoftwareTypingFeedback];

  if (v99 == v7)
  {
    v107 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverSoftwareTypingFeedback:v107];
    goto LABEL_39;
  }

  v100 = +[VOSSettingsItem HardwareTypingFeedback];

  if (v100 == v7)
  {
    v108 = [v6 integerValue];
    v38 = [MEMORY[0x277CE7E20] sharedInstance];
    [v38 setVoiceOverHardwareTypingFeedback:v108];
    goto LABEL_39;
  }

  v101 = +[VOSSettingsItem SlideToType];

  if (v101 == v7)
  {
    v109 = [v6 BOOLValue];
    v38 = +[VOSSettingsHelper sharedInstance];
    [v38 setSlideToTypeEnabled:v109];
    goto LABEL_39;
  }

  v102 = +[VOSSettingsItem BrailleAutoAdvanceDuration];

  if (v102 != v7)
  {
    v103 = +[VOSSettingsItem BrailleInput];

    if (v103 == v7)
    {
      v114 = [v6 stringValue];
      v115 = [MEMORY[0x277CE7E20] sharedInstance];
      [v115 setVoiceOverTouchBrailleDisplayInputTableIdentifier:v114];
    }

    else
    {
      v104 = +[VOSSettingsItem BrailleOutput];

      if (v104 != v7)
      {
        v105 = +[VOSSettingsItem BSIActivationGestures];

        if (v105 == v7)
        {
          v116 = [v6 BOOLValue];
          v38 = [MEMORY[0x277CE7E20] sharedInstance];
          [v38 setVoiceOverTouchBrailleGesturesActivationGestureEnabled:v116];
          goto LABEL_39;
        }

        v43 = VOTLogCommon();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v120 = v7;
          _os_log_impl(&dword_223C70000, v43, OS_LOG_TYPE_DEFAULT, "Unhandled pref setter for item: %@", buf, 0xCu);
        }

        goto LABEL_33;
      }

      v114 = [v6 stringValue];
      v115 = [MEMORY[0x277CE7E20] sharedInstance];
      [v115 setVoiceOverTouchBrailleDisplayOutputTableIdentifier:v114];
    }

    [(VOSSettingsHelper *)self _turnOffBrailleIOSyncIfNeeded];
    goto LABEL_40;
  }

  v110 = *MEMORY[0x277CE69E8];
  v111 = *MEMORY[0x277CE69E0] - *MEMORY[0x277CE69E8];
  [v6 floatValue];
  v113 = v110 + v111 * v112;
  v43 = [MEMORY[0x277CE7E20] sharedInstance];
  [v43 setVoiceOverBrailleAutoAdvanceDuration:v113];
LABEL_33:

LABEL_40:
  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  v117 = @"SettingsItem";
  v118 = v7;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  [v49 postNotificationName:@"VOSDidUpdateValueForSettingsItemNotification" object:self userInfo:v50];

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_turnOffBrailleIOSyncIfNeeded
{
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 voiceOverTouchBrailleDisplayInputTableIdentifier];
  v4 = [MEMORY[0x277CE7E20] sharedInstance];
  v5 = [v4 voiceOverTouchBrailleDisplayOutputTableIdentifier];
  v6 = [v3 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CE7E20] sharedInstance];
    [v7 setVoiceOverTouchBrailleDisplaySyncInputOutputTables:0];
  }
}

- (id)nameForItem:(id)a3
{
  v3 = a3;
  v4 = +[VOSSettingsItem PhoneticFeedback];

  if (v4 == v3)
  {
    v31 = @"PHONETICS_TITLE";
    goto LABEL_43;
  }

  v5 = +[VOSSettingsItem MediaDescriptions];

  if (v5 == v3)
  {
    v31 = @"MEDIA_DESC_TITLE";
    goto LABEL_43;
  }

  v6 = +[VOSSettingsItem Pitch];

  if (v6 == v3)
  {
    v31 = @"PITCH_CHANGES_TITLE";
    goto LABEL_43;
  }

  v7 = +[VOSSettingsItem RotorActionConfirmation];

  if (v7 == v3)
  {
    v31 = @"ACTION_CONFIRMATION_EXTENDED";
    goto LABEL_43;
  }

  v8 = +[VOSSettingsItem NavigateImages];

  if (v8 == v3)
  {
    v31 = @"NAVIGATE_IMAGES_TITLE";
    goto LABEL_43;
  }

  v9 = +[VOSSettingsItem GestureDirection];

  if (v9 == v3)
  {
    v32 = *MEMORY[0x277CE6A28];
    v33 = AXVoiceOverRotorLocString();
LABEL_44:
    v34 = v33;
    goto LABEL_45;
  }

  v10 = +[VOSSettingsItem Activities];

  if (v10 == v3)
  {
    v31 = @"ACTIVITIES";
    goto LABEL_43;
  }

  v11 = +[VOSSettingsItem Punctuation];

  if (v11 == v3)
  {
    v31 = @"PUNCTUATION";
    goto LABEL_43;
  }

  v12 = +[VOSSettingsItem SoftwareTypingFeedback];

  if (v12 == v3)
  {
    v31 = @"SOFTWARE_TYPING_FEEDBACK";
    goto LABEL_43;
  }

  v13 = +[VOSSettingsItem HardwareTypingFeedback];

  if (v13 == v3)
  {
    v31 = @"HARDWARE_TYPING_FEEDBACK";
    goto LABEL_43;
  }

  v14 = +[VOSSettingsItem SendToHDMI];

  if (v14 == v3)
  {
    v31 = @"ROUTE_TO_HDMI";
    goto LABEL_43;
  }

  v15 = +[VOSSettingsItem SoundCurtain];

  if (v15 == v3)
  {
    v31 = @"SOUND_CURTAIN";
    goto LABEL_43;
  }

  v16 = +[VOSSettingsItem CaptionPanel];

  if (v16 == v3)
  {
    v31 = @"CAPTION_PANEL";
    goto LABEL_43;
  }

  v17 = +[VOSSettingsItem LargeCursor];

  if (v17 == v3)
  {
    v31 = @"CURSOR_STYLE";
    goto LABEL_43;
  }

  v18 = +[VOSSettingsItem SpeakNotifications];

  if (v18 == v3)
  {
    v31 = @"ALWAYS_SPEAK_NOTIFICATIONS";
    goto LABEL_43;
  }

  v19 = +[VOSSettingsItem BrailleAlerts];

  if (v19 == v3)
  {
    v36 = @"BRAILLE_DISPLAY_TIMEOUT";
LABEL_50:
    v33 = soft_AXUILocalizedStringForKey(v36);
    goto LABEL_44;
  }

  v20 = +[VOSSettingsItem BrailleFormatting];

  if (v20 == v3)
  {
    v36 = @"BRAILLE_TEXT_FORMATTING";
    goto LABEL_50;
  }

  v21 = +[VOSSettingsItem ScreenRecognition];

  if (v21 == v3)
  {
    v37 = [v3 settingsData];
    v38 = [v37 frontmostAppIdentifier];

    if (v38)
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = @"VO_SCREEN_RECOGNITION_WITH_APP";
LABEL_61:
      v44 = AXVoiceOverSettingsLocalizedStringForKey(v40);
      v45 = [v3 settingsData];
      v46 = [v45 frontmostAppIdentifier];
      v51 = AXAppNameForBundleId();
      v34 = [v39 stringWithFormat:v44, v51];

      goto LABEL_62;
    }

    v31 = @"VO_SCREEN_RECOGNITION";
LABEL_43:
    v33 = AXVoiceOverSettingsLocalizedStringForKey(v31);
    goto LABEL_44;
  }

  v22 = +[VOSSettingsItem LiveRegions];

  if (v22 != v3)
  {
    v23 = +[VOSSettingsItem ImageDescriptions];

    if (v23 != v3)
    {
      v24 = +[VOSSettingsItem BrailleAutoAdvanceDuration];

      if (v24 == v3)
      {
        v31 = @"BRAILLE_AUTO_ADVANCE_DURATION";
      }

      else
      {
        v25 = +[VOSSettingsItem DirectTouch];

        if (v25 == v3)
        {
          v31 = @"DIRECT_TOUCH";
        }

        else
        {
          v26 = +[VOSSettingsItem Voice];

          if (v26 == v3)
          {
            v31 = @"QUICK_SETTINGS_ITEM_VO_VOICE";
          }

          else
          {
            v27 = +[VOSSettingsItem BrailleInput];

            if (v27 == v3)
            {
              v31 = @"BRAILLE_INPUT";
            }

            else
            {
              v28 = +[VOSSettingsItem BrailleOutput];

              if (v28 == v3)
              {
                v31 = @"BRAILLE_OUTPUT";
              }

              else
              {
                v29 = [v3 identifier];
                v30 = [v29 isEqualToString:@"ScreenCurtain"];

                if (v30)
                {
                  v31 = @"SCREEN_CURTAIN";
                }

                else
                {
                  v52 = +[VOSSettingsItem BSIActivationGestures];

                  if (v52 != v3)
                  {
                    v33 = [v3 localizedName];
                    goto LABEL_44;
                  }

                  v31 = @"BSI_USE_ACTIVATION_GESTURES";
                }
              }
            }
          }
        }
      }

      goto LABEL_43;
    }

    v47 = [v3 settingsData];
    v48 = [v47 frontmostAppIdentifier];

    if (v48)
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = @"VO_IMAGE_DESCRIPTIONS_WITH_APP";
      goto LABEL_61;
    }

    v31 = @"VO_IMAGE_DESCRIPTIONS";
    goto LABEL_43;
  }

  v41 = [v3 settingsData];
  v42 = [v41 webAreaURL];

  if (!v42)
  {
    v49 = [v3 settingsData];
    v50 = [v49 frontmostAppIdentifier];

    if (v50)
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = @"VO_LIVE_REGION_WITH_APP";
      goto LABEL_61;
    }

    v31 = @"VO_LIVE_REGION";
    goto LABEL_43;
  }

  v43 = MEMORY[0x277CCACA8];
  v44 = AXVoiceOverSettingsLocalizedStringForKey(@"VO_LIVE_REGION_WITH_APP");
  v45 = [v3 settingsData];
  v46 = [v45 webAreaURL];
  v34 = [v43 stringWithFormat:v44, v46];
LABEL_62:

LABEL_45:

  return v34;
}

- (void)_setVolumeForActiveVoice:(double)a3
{
  v5 = [MEMORY[0x277CE7E20] sharedInstance];
  *&v4 = a3;
  [v5 setVoiceOverEffectiveSpeakingVolume:v4];
}

- (id)_volumeForActiveVoice
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  [v3 voiceOverEffectiveSpeakingVolume];
  v4 = [v2 numberWithFloat:?];

  return v4;
}

- (id)possibleValuesForSettingsItem:(id)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[VOSSettingsItem NavigationStyle];

  if (v5 == v4)
  {
    v21 = &unk_2837361D0;
    goto LABEL_20;
  }

  v6 = +[VOSSettingsItem TypingStyle];

  if (v6 == v4)
  {
    v21 = &unk_2837361E8;
    goto LABEL_20;
  }

  v7 = +[VOSSettingsItem SoftwareTypingFeedback];
  v8 = v7;
  if (v7 == v4)
  {

    goto LABEL_19;
  }

  v9 = +[VOSSettingsItem HardwareTypingFeedback];

  if (v9 == v4)
  {
LABEL_19:
    v21 = &unk_283736200;
    goto LABEL_20;
  }

  v10 = +[VOSSettingsItem PhoneticFeedback];

  if (v10 == v4)
  {
    v21 = &unk_283736218;
    goto LABEL_20;
  }

  v11 = +[VOSSettingsItem MediaDescriptions];

  if (v11 == v4)
  {
    v21 = &unk_283736230;
    goto LABEL_20;
  }

  v12 = +[VOSSettingsItem NavigateImages];

  if (v12 == v4)
  {
    v21 = &unk_283736248;
    goto LABEL_20;
  }

  v13 = +[VOSSettingsItem GestureDirection];

  if (v13 == v4)
  {
    v21 = &unk_283736260;
    goto LABEL_20;
  }

  v14 = +[VOSSettingsItem AudioDucking];

  if (v14 == v4)
  {
    v21 = &unk_283736278;
    goto LABEL_20;
  }

  v15 = +[VOSSettingsItem Activities];

  if (v15 == v4)
  {
    v24 = [MEMORY[0x277CBEB68] null];
    v62[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
    v26 = [MEMORY[0x277CE7E20] sharedInstance];
    v27 = [v26 voiceOverActivities];
LABEL_30:
    v28 = v27;
    v21 = [v25 arrayByAddingObjectsFromArray:v27];

    goto LABEL_20;
  }

  v16 = +[VOSSettingsItem Punctuation];

  if (v16 == v4)
  {
    v24 = [MEMORY[0x277CBEB68] null];
    v61 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
    v26 = [MEMORY[0x277CE7658] sharedDatabase];
    v27 = [v26 punctuationGroups];
    goto LABEL_30;
  }

  v17 = +[VOSSettingsItem BrailleInput];
  v18 = v17;
  if (v17 == v4)
  {
  }

  else
  {
    v19 = +[VOSSettingsItem BrailleOutput];

    if (v19 != v4)
    {
      v20 = +[VOSSettingsItem Voice];

      if (v20 == v4)
      {
        v21 = objc_opt_new();
        v48 = [(VOSSettingsHelper *)self enabledVoices];
        v49 = [v48 count];

        if (v49)
        {
          v50 = 0;
          do
          {
            v51 = [MEMORY[0x277CCABB0] numberWithInt:v50];
            [v21 addObject:v51];

            ++v50;
            v52 = [(VOSSettingsHelper *)self enabledVoices];
            v53 = [v52 count];
          }

          while (v53 > v50);
        }
      }

      else
      {
        v21 = MEMORY[0x277CBEBF8];
      }

      goto LABEL_20;
    }
  }

  v54 = v4;
  v29 = _AXSVoiceOverTouchCopyBrailleLanguageRotorItems();
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v29, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v57;
    v34 = @"Enabled";
    v55 = v21;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v56 + 1) + 8 * i);
        v37 = [v36 objectForKeyedSubscript:{v34, v54}];
        v38 = [v37 BOOLValue];

        if (v38)
        {
          v39 = [v36 objectForKeyedSubscript:@"RotorItem"];
          if (!v39)
          {
            v40 = [v36 objectForKeyedSubscript:@"LanguageDefaults"];
            v41 = [MEMORY[0x277CE7DA0] sharedInstance];
            v42 = [v41 userLocale];

            v43 = [v42 localeIdentifier];
            v44 = [v40 objectForKeyedSubscript:v43];

            if (v44)
            {
              v39 = v44;
            }

            else
            {
              [MEMORY[0x277CF3350] defaultTableForLocale:v42];
              v45 = v34;
              v47 = v46 = v30;
              v39 = [v47 identifier];

              v30 = v46;
              v34 = v45;
              v21 = v55;
            }
          }

          [v21 addObject:v39];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v32);
  }

  v4 = v54;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)isItemSupported:(id)a3
{
  v4 = a3;
  v5 = +[VOSSettingsItem ImageDescriptions];

  if (v5 == v4)
  {
    v10 = [MEMORY[0x277CE7E20] sharedInstance];
    if (![v10 voiceOverImageCaptionsEnabled])
    {
LABEL_10:
      v9 = 0;
LABEL_15:

      goto LABEL_16;
    }

LABEL_7:
    v11 = [MEMORY[0x277CCAC38] processInfo];
    if ([v11 physicalMemory] <= 0x773593FF)
    {
      v9 = 0;
    }

    else
    {
      v9 = AXRuntimeCheck_HasANE();
    }

    goto LABEL_15;
  }

  v6 = +[VOSSettingsItem ScreenRecognition];

  if (v6 == v4)
  {
    v10 = [MEMORY[0x277CE7E20] sharedInstance];
    if (![v10 automaticAccessibilityEnabled])
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = +[VOSSettingsItem LiveRegions];

  if (v7 == v4)
  {
    v9 = 1;
    goto LABEL_16;
  }

  v8 = +[VOSSettingsItem GestureDirection];

  if (v8 == v4)
  {
    v10 = [MEMORY[0x277CE7E20] sharedInstance];
    v9 = [v10 anyUserPreferredLangaugeIsRTL];
    goto LABEL_15;
  }

  v9 = [(VOSSettingsHelper *)self itemIsSupportedForPlatform:v4];
LABEL_16:

  return v9;
}

- (id)_formatterForItem:(id)a3
{
  v4 = a3;
  v5 = +[VOSSettingsItem Volume];
  if (v5 == v4)
  {
    goto LABEL_21;
  }

  v6 = +[VOSSettingsItem SpeakingRate];
  v7 = v6;
  if (v6 == v4)
  {

LABEL_21:
    goto LABEL_22;
  }

  v8 = +[VOSSettingsItem DuckingAmount];

  if (v8 == v4)
  {
LABEL_22:
    v27 = +[VOSSettingsHelper percentageFormatter];
    goto LABEL_23;
  }

  v9 = +[VOSSettingsItem NavigationStyle];

  if (v9 == v4)
  {
    v27 = +[VOSSettingsHelper navigationStyleFormatter];
    goto LABEL_23;
  }

  v10 = +[VOSSettingsItem PhoneticFeedback];

  if (v10 == v4)
  {
    v27 = +[VOSSettingsHelper phoneticFeedbackFormatter];
    goto LABEL_23;
  }

  v11 = +[VOSSettingsItem MediaDescriptions];

  if (v11 == v4)
  {
    v27 = +[VOSSettingsHelper mediaDescriptionsFormatter];
    goto LABEL_23;
  }

  v12 = +[VOSSettingsItem NavigateImages];

  if (v12 == v4)
  {
    v27 = +[VOSSettingsHelper navigateImagesFormatter];
    goto LABEL_23;
  }

  v13 = +[VOSSettingsItem GestureDirection];

  if (v13 == v4)
  {
    v27 = +[VOSSettingsHelper gestureDirectionFormatter];
    goto LABEL_23;
  }

  v14 = +[VOSSettingsItem Activities];

  if (v14 == v4)
  {
    v27 = +[VOSSettingsHelper activitiesFormatter];
    goto LABEL_23;
  }

  v15 = +[VOSSettingsItem Punctuation];

  if (v15 == v4)
  {
    v27 = +[VOSSettingsHelper punctuationFormatter];
    goto LABEL_23;
  }

  v16 = +[VOSSettingsItem TypingStyle];

  if (v16 == v4)
  {
    v27 = +[VOSSettingsHelper typingStyleFormatter];
    goto LABEL_23;
  }

  v17 = +[VOSSettingsItem SoftwareTypingFeedback];
  v18 = v17;
  if (v17 == v4)
  {

    goto LABEL_36;
  }

  v19 = +[VOSSettingsItem HardwareTypingFeedback];

  if (v19 == v4)
  {
LABEL_36:
    v27 = +[VOSSettingsHelper typingFeedbackFormatter];
    goto LABEL_23;
  }

  v20 = +[VOSSettingsItem BrailleAutoAdvanceDuration];

  if (v20 == v4)
  {
    v27 = +[VOSSettingsHelper durationFormatter];
    goto LABEL_23;
  }

  v21 = +[VOSSettingsItem Voice];

  if (v21 != v4)
  {
    v22 = +[VOSSettingsItem BrailleInput];
    v23 = v22;
    if (v22 == v4)
    {
    }

    else
    {
      v24 = +[VOSSettingsItem BrailleOutput];

      if (v24 != v4)
      {
        v25 = +[VOSSettingsItem AudioDucking];

        if (v25 != v4)
        {
          v26 = 0;
          goto LABEL_24;
        }

        v27 = +[VOSSettingsHelper audioDuckingMode];
        goto LABEL_23;
      }
    }

    v27 = +[VOSSettingsHelper brailleTableFormatter];
LABEL_23:
    v26 = v27;
    goto LABEL_24;
  }

  v29 = [(VOSSettingsHelper *)self enabledVoices];
  v26 = [VOSSettingsHelper voiceFormatterForEnabledVoiceCodes:v29];

LABEL_24:

  return v26;
}

- (id)formattedValue:(id)a3 withItem:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(VOSSettingsHelper *)self _formatterForItem:v7];
    v9 = v8;
    if (v8)
    {
      v10 = (*(v8 + 16))(v8, v6);
    }

    else
    {
      if ([v7 itemType])
      {
        v12 = VOTLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412546;
          v16 = v6;
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&dword_223C70000, v12, OS_LOG_TYPE_DEFAULT, "Error. no formatter provided to format value: '%@'. item: %@", &v15, 0x16u);
        }
      }

      v10 = [v6 description];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)scaledValue:(id)a3 withItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[VOSSettingsItem BrailleAutoAdvanceDuration];

  if (v7 == v6)
  {
    v9 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = [v9 numberWithDouble:(v10 - *MEMORY[0x277CE69E8]) / (*MEMORY[0x277CE69E0] - *MEMORY[0x277CE69E8])];
  }

  else
  {
    v8 = v5;
  }

  v11 = v8;

  return v11;
}

+ (id)percentageFormatter
{
  if (percentageFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper percentageFormatter];
  }

  v2 = _Block_copy(percentageFormatter_formatter);

  return v2;
}

void __40__VOSSettingsHelper_percentageFormatter__block_invoke()
{
  v0 = percentageFormatter_formatter;
  percentageFormatter_formatter = &__block_literal_global_461;
}

uint64_t __40__VOSSettingsHelper_percentageFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 floatValue];

  return MEMORY[0x282138BE0](0);
}

+ (id)durationFormatter
{
  if (durationFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper durationFormatter];
  }

  v2 = _Block_copy(durationFormatter_formatter);

  return v2;
}

void __38__VOSSettingsHelper_durationFormatter__block_invoke()
{
  v0 = durationFormatter_formatter;
  durationFormatter_formatter = &__block_literal_global_465_1;
}

id __38__VOSSettingsHelper_durationFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 floatValue];
  v4 = v3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getAXLocalizedTimeSummarySymbolLoc_ptr;
  v13 = getAXLocalizedTimeSummarySymbolLoc_ptr;
  if (!getAXLocalizedTimeSummarySymbolLoc_ptr)
  {
    v6 = AccessibilityUIUtilitiesLibrary();
    v11[3] = dlsym(v6, "AXLocalizedTimeSummary");
    getAXLocalizedTimeSummarySymbolLoc_ptr = v11[3];
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    v9 = soft_AXUILocalizedStringForKey_cold_1();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v7 = v5(0, v4);

  return v7;
}

+ (id)typingFeedbackFormatter
{
  if (typingFeedbackFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper typingFeedbackFormatter];
  }

  v2 = _Block_copy(typingFeedbackFormatter_formatter);

  return v2;
}

void __44__VOSSettingsHelper_typingFeedbackFormatter__block_invoke()
{
  v0 = typingFeedbackFormatter_formatter;
  typingFeedbackFormatter_formatter = &__block_literal_global_469;
}

id __44__VOSSettingsHelper_typingFeedbackFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVoiceOverSettingsTypingFeedbackLocalizedStringForKey(off_2784F3768[v2]);
  }

  return v3;
}

+ (id)audioDuckingMode
{
  if (audioDuckingMode_onceToken != -1)
  {
    +[VOSSettingsHelper audioDuckingMode];
  }

  v2 = _Block_copy(audioDuckingMode_formatter);

  return v2;
}

void __37__VOSSettingsHelper_audioDuckingMode__block_invoke()
{
  v0 = audioDuckingMode_formatter;
  audioDuckingMode_formatter = &__block_literal_global_485_1;
}

id __37__VOSSettingsHelper_audioDuckingMode__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVoiceOverSettingsLocalizedStringForKey(off_2784F3788[v2]);
  }

  return v3;
}

+ (id)typingStyleFormatter
{
  if (typingStyleFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper typingStyleFormatter];
  }

  v2 = _Block_copy(typingStyleFormatter_formatter);

  return v2;
}

void __41__VOSSettingsHelper_typingStyleFormatter__block_invoke()
{
  v0 = typingStyleFormatter_formatter;
  typingStyleFormatter_formatter = &__block_literal_global_498;
}

id __41__VOSSettingsHelper_typingStyleFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = VOSLocString(off_2784F37A0[v2]);
  }

  return v3;
}

+ (id)brailleInputOutputFormatter
{
  if (brailleInputOutputFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper brailleInputOutputFormatter];
  }

  v2 = _Block_copy(brailleInputOutputFormatter_formatter);

  return v2;
}

void __48__VOSSettingsHelper_brailleInputOutputFormatter__block_invoke()
{
  v0 = brailleInputOutputFormatter_formatter;
  brailleInputOutputFormatter_formatter = &__block_literal_global_511;
}

id __48__VOSSettingsHelper_brailleInputOutputFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue] - 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVoiceOverBrailleOptionsLocalizedStringForKey(off_2784F37B8[v2]);
  }

  return v3;
}

+ (id)phoneticFeedbackFormatter
{
  if (phoneticFeedbackFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper phoneticFeedbackFormatter];
  }

  v2 = _Block_copy(phoneticFeedbackFormatter_formatter);

  return v2;
}

void __46__VOSSettingsHelper_phoneticFeedbackFormatter__block_invoke()
{
  v0 = phoneticFeedbackFormatter_formatter;
  phoneticFeedbackFormatter_formatter = &__block_literal_global_524;
}

id __46__VOSSettingsHelper_phoneticFeedbackFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVoiceOverSettingsLocalizedStringForKey(off_2784F37D0[v2]);
  }

  return v3;
}

+ (id)mediaDescriptionsFormatter
{
  if (mediaDescriptionsFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper mediaDescriptionsFormatter];
  }

  v2 = _Block_copy(mediaDescriptionsFormatter_formatter);

  return v2;
}

void __47__VOSSettingsHelper_mediaDescriptionsFormatter__block_invoke()
{
  v0 = mediaDescriptionsFormatter_formatter;
  mediaDescriptionsFormatter_formatter = &__block_literal_global_537_0;
}

id __47__VOSSettingsHelper_mediaDescriptionsFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = 0;
  if (v2 <= 1)
  {
    if (v2 > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v2 == 2 || v2 == 3)
  {
LABEL_6:
    v3 = AXParameterizedLocalizedString();
  }

LABEL_7:

  return v3;
}

+ (id)navigationStyleFormatter
{
  if (navigationStyleFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper navigationStyleFormatter];
  }

  v2 = _Block_copy(navigationStyleFormatter_formatter);

  return v2;
}

void __45__VOSSettingsHelper_navigationStyleFormatter__block_invoke()
{
  v0 = navigationStyleFormatter_formatter;
  navigationStyleFormatter_formatter = &__block_literal_global_556;
}

id __45__VOSSettingsHelper_navigationStyleFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (!v2)
  {
    v3 = @"VOSPref.item.value.flatNavigation";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = @"VOSPref.item.value.groupedNavigation";
LABEL_5:
    v4 = VOSLocString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

+ (id)gestureDirectionFormatter
{
  if (gestureDirectionFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper gestureDirectionFormatter];
  }

  v2 = _Block_copy(gestureDirectionFormatter_formatter);

  return v2;
}

void __46__VOSSettingsHelper_gestureDirectionFormatter__block_invoke()
{
  v0 = gestureDirectionFormatter_formatter;
  gestureDirectionFormatter_formatter = &__block_literal_global_566;
}

id __46__VOSSettingsHelper_gestureDirectionFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVoiceOverLocalizedStringForKey(off_2784F37E8[v2]);
  }

  return v3;
}

+ (id)navigateImagesFormatter
{
  if (navigateImagesFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper navigateImagesFormatter];
  }

  v2 = _Block_copy(navigateImagesFormatter_formatter);

  return v2;
}

void __44__VOSSettingsHelper_navigateImagesFormatter__block_invoke()
{
  v0 = navigateImagesFormatter_formatter;
  navigateImagesFormatter_formatter = &__block_literal_global_579;
}

id __44__VOSSettingsHelper_navigateImagesFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVoiceOverSettingsLocalizedStringForKey(off_2784F3800[v2]);
  }

  return v3;
}

+ (id)punctuationFormatter
{
  if (punctuationFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper punctuationFormatter];
  }

  v2 = _Block_copy(punctuationFormatter_formatter);

  return v2;
}

void __41__VOSSettingsHelper_punctuationFormatter__block_invoke()
{
  v0 = punctuationFormatter_formatter;
  punctuationFormatter_formatter = &__block_literal_global_592_0;
}

id __41__VOSSettingsHelper_punctuationFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if ([v2 isEqual:v3])
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [v2 name];
        goto LABEL_7;
      }
    }
  }

  v5 = soft_AXUILocalizedStringForKey(@"OFF");
LABEL_7:
  v6 = v5;

  return v6;
}

+ (id)activitiesFormatter
{
  if (activitiesFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper activitiesFormatter];
  }

  v2 = _Block_copy(activitiesFormatter_formatter);

  return v2;
}

void __40__VOSSettingsHelper_activitiesFormatter__block_invoke()
{
  v0 = activitiesFormatter_formatter;
  activitiesFormatter_formatter = &__block_literal_global_600_1;
}

id __40__VOSSettingsHelper_activitiesFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if ([v2 isEqual:v3])
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [v2 name];
        goto LABEL_7;
      }
    }
  }

  v5 = soft_AXUILocalizedStringForKey(@"OFF");
LABEL_7:
  v6 = v5;

  return v6;
}

+ (id)brailleTableFormatter
{
  if (brailleTableFormatter_onceToken != -1)
  {
    +[VOSSettingsHelper brailleTableFormatter];
  }

  v2 = _Block_copy(brailleTableFormatter_formatter);

  return v2;
}

void __42__VOSSettingsHelper_brailleTableFormatter__block_invoke()
{
  v0 = brailleTableFormatter_formatter;
  brailleTableFormatter_formatter = &__block_literal_global_605_1;
}

id __42__VOSSettingsHelper_brailleTableFormatter__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF3340];
  v3 = a2;
  v4 = [[v2 alloc] initWithIdentifier:v3];

  v5 = [v4 localizedNameWithService];

  return v5;
}

+ (id)voiceFormatterForEnabledVoiceCodes:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VOSSettingsHelper_voiceFormatterForEnabledVoiceCodes___block_invoke;
  aBlock[3] = &unk_2784F36E8;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

id __56__VOSSettingsHelper_voiceFormatterForEnabledVoiceCodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 integerValue])
  {
    v12 = [*(a1 + 32) objectAtIndexedSubscript:0];
    goto LABEL_6;
  }

  v4 = [MEMORY[0x277CE7E20] sharedInstance];
  v5 = [v4 voiceOverVoiceRotors];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v3, "integerValue") - 1}];

  v7 = [v6 userDefinedName];
  if (!v7 || (v8 = v7, [v6 userDefinedName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", &stru_283729578), v9, v8, (v10 & 1) != 0))
  {
    v11 = [v6 selection];
    v12 = [v11 voiceId];

LABEL_6:
    v13 = [MEMORY[0x277D703C8] sharedInstance];
    v6 = [v13 speechVoiceWithVoiceId:v12];

    v14 = [v6 localizedNameWithFootprint];
    v15 = [v6 language];
    v16 = [MEMORY[0x277CE7DA0] sharedInstance];
    v17 = [v16 dialectForLanguageID:v15];

    v18 = [v17 languageNameAndLocaleInCurrentLocale];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v14, v18];

    goto LABEL_7;
  }

  v19 = [v6 userDefinedName];
  v12 = &stru_283729578;
LABEL_7:

  return v19;
}

@end