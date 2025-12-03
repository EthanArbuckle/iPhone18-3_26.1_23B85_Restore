@interface CSAsset(SpeakerRecognition)
- (BOOL)containsMultiUserThresholds;
- (float)pruningExplicitUttThresholdPSR;
- (float)pruningExplicitUttThresholdSAT;
- (float)pruningThresholdPSR;
- (float)pruningThresholdSAT;
- (float)psrCombinationWeight;
- (float)satImplicitProfileDeltaThreshold;
- (float)satImplicitProfileThreshold;
- (float)satScoreThreshold;
- (float)satScoreThresholdForPhId:()SpeakerRecognition;
- (float)satVTImplicitThreshold;
- (id)getPhraseConfig:()SpeakerRecognition;
- (id)keywordDetectorNDAPIConfigFilePath;
- (id)keywordDetectorQuasarConfigFilePath;
- (uint64_t)maxAllowedEnrollmentUtterances;
- (uint64_t)multiUserConfidentScoreThreshold;
- (uint64_t)multiUserDeltaScoreThreshold;
- (uint64_t)multiUserHighScoreThreshold;
- (uint64_t)multiUserLowScoreThreshold;
- (uint64_t)pruningNumRetentionUtterance;
- (uint64_t)satImplicitTrainingEnabled;
- (uint64_t)useSpeakerRecognitionAsset;
- (unint64_t)multiUserConfidentScoreThresholdForPhId:()SpeakerRecognition;
- (unint64_t)multiUserDeltaScoreThresholdForPhId:()SpeakerRecognition;
- (unint64_t)multiUserHighScoreThresholdForPhId:()SpeakerRecognition;
- (unint64_t)multiUserLowScoreThresholdForPhId:()SpeakerRecognition;
@end

@implementation CSAsset(SpeakerRecognition)

- (uint64_t)useSpeakerRecognitionAsset
{
  v1 = [self getNumberForKey:@"useSpeakerRecognitionAsset" category:@"speakerRecognition" default:0];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (BOOL)containsMultiUserThresholds
{
  v23 = *MEMORY[0x277D85DE8];
  path = [self path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:path];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
    if (!v4)
    {
      v10 = *MEMORY[0x277D015D8];
      v9 = 0;
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSAsset(SpeakerRecognition) containsMultiUserThresholds]";
        v19 = 2114;
        v20 = path;
        _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Could not read: %{public}@", buf, 0x16u);
        v9 = 0;
      }

      goto LABEL_17;
    }

    v16 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v16];
    v6 = v16;
    if (v6)
    {
      v7 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = "[CSAsset(SpeakerRecognition) containsMultiUserThresholds]";
        v19 = 2114;
        v20 = path;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Could not decode contents of: %{public}@: err: %{public}@", buf, 0x20u);
      }
    }

    else if (v5)
    {
      v11 = [v5 objectForKeyedSubscript:@"speakerRecognition"];
      if (v11)
      {
        v12 = [v5 objectForKeyedSubscript:@"speakerRecognition"];
        v13 = [v12 objectForKeyedSubscript:@"multiUserConfidentScoreThreshold"];
        v9 = v13 != 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_16;
    }

    v9 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v8 = *MEMORY[0x277D015D8];
  v9 = 0;
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSAsset(SpeakerRecognition) containsMultiUserThresholds]";
    v19 = 2114;
    v20 = path;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ doesnt exist", buf, 0x16u);
    v9 = 0;
  }

LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)satImplicitTrainingEnabled
{
  v2 = (CSIsIOS() & 1) != 0 || CSIsMac();

  return [self getBoolForKey:@"implicit_training_enabled" category:@"speakerRecognition" default:v2];
}

- (id)keywordDetectorNDAPIConfigFilePath
{
  resourcePath = [self resourcePath];
  v3 = [self getStringForKey:@"configFileNDAPI" category:@"voiceTriggerSecondPassAOP" default:@"config.txt"];
  v4 = [resourcePath stringByAppendingPathComponent:v3];

  return v4;
}

- (id)keywordDetectorQuasarConfigFilePath
{
  resourcePath = [self resourcePath];
  if ([MEMORY[0x277D018F8] horsemanDeviceType] != 1 || (objc_msgSend(MEMORY[0x277D01958], "getDefaultRecognizerForB238"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "getStringForKey:category:default:", v3, @"voiceTriggerSecondPass", 0), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = [self getStringForKey:@"configFileRecognizer" category:@"voiceTriggerSecondPassAOP" default:@"recognizer.json"];
  }

  v5 = [resourcePath stringByAppendingPathComponent:v4];

  return v5;
}

- (uint64_t)maxAllowedEnrollmentUtterances
{
  v1 = [self getNumberForKey:@"maxEnrollmentUtterances" category:@"speakerRecognition" default:&unk_283933A50];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (uint64_t)pruningNumRetentionUtterance
{
  v1 = [self getNumberForKey:@"numPruningRetentionUtt" category:@"speakerRecognition" default:&unk_283933A38];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (float)pruningThresholdPSR
{
  v1 = [self getNumberForKey:@"pruningPSRThreshold" category:@"speakerRecognition" default:&unk_283933A78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)pruningThresholdSAT
{
  v1 = [self getNumberForKey:@"pruningSATThreshold" category:@"speakerRecognition" default:&unk_283933A78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)pruningExplicitUttThresholdPSR
{
  v1 = [self getNumberForKey:@"pruningExplicitPSRThreshold" category:@"speakerRecognition" default:&unk_283933A78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)pruningExplicitUttThresholdSAT
{
  v1 = [self getNumberForKey:@"pruningExplicitSATThreshold" category:@"speakerRecognition" default:&unk_283933A78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)satVTImplicitThreshold
{
  v1 = [self getNumberForKey:@"implicitVTThreshold" category:@"speakerRecognition" default:&unk_283933A78];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)satImplicitProfileDeltaThreshold
{
  v1 = [self getNumberForKey:@"implicitProfileDeltaThreshold" category:@"speakerRecognition" default:&unk_283933A98];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)satImplicitProfileThreshold
{
  [self satScoreThreshold];
  v2 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v3 = [self getNumberForKey:@"implicitProfileThreshold" category:@"speakerRecognition" default:v2];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)psrCombinationWeight
{
  v1 = [self getNumberForKey:@"combinationWeight" category:@"speakerRecognition" default:&unk_283933A88];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)multiUserDeltaScoreThreshold
{
  v1 = [self getNumberForKey:@"multiUserDeltaScoreThreshold" category:@"speakerRecognition" default:&unk_283933A20];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (unint64_t)multiUserDeltaScoreThresholdForPhId:()SpeakerRecognition
{
  v2 = [self getPhraseConfig:?];
  v3 = v2;
  if (v2 && ([v2 objectForKeyedSubscript:@"multiUserDeltaScoreThreshold"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKeyedSubscript:@"multiUserDeltaScoreThreshold"];
    [v5 floatValue];
    multiUserDeltaScoreThreshold = v6;
  }

  else
  {
    multiUserDeltaScoreThreshold = [self multiUserDeltaScoreThreshold];
  }

  return multiUserDeltaScoreThreshold;
}

- (uint64_t)multiUserConfidentScoreThreshold
{
  v1 = [self getNumberForKey:@"multiUserConfidentScoreThreshold" category:@"speakerRecognition" default:&unk_283933A08];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (unint64_t)multiUserConfidentScoreThresholdForPhId:()SpeakerRecognition
{
  v2 = [self getPhraseConfig:?];
  v3 = v2;
  if (v2 && ([v2 objectForKeyedSubscript:@"multiUserConfidentScoreThreshold"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKeyedSubscript:@"multiUserConfidentScoreThreshold"];
    [v5 floatValue];
    multiUserConfidentScoreThreshold = v6;
  }

  else
  {
    multiUserConfidentScoreThreshold = [self multiUserConfidentScoreThreshold];
  }

  return multiUserConfidentScoreThreshold;
}

- (uint64_t)multiUserHighScoreThreshold
{
  v1 = [self getNumberForKey:@"multiUserHighScoreThreshold" category:@"speakerRecognition" default:&unk_2839339F0];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (unint64_t)multiUserHighScoreThresholdForPhId:()SpeakerRecognition
{
  v2 = [self getPhraseConfig:?];
  v3 = v2;
  if (v2 && ([v2 objectForKeyedSubscript:@"multiUserHighScoreThreshold"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKeyedSubscript:@"multiUserHighScoreThreshold"];
    [v5 floatValue];
    multiUserHighScoreThreshold = v6;
  }

  else
  {
    multiUserHighScoreThreshold = [self multiUserHighScoreThreshold];
  }

  return multiUserHighScoreThreshold;
}

- (uint64_t)multiUserLowScoreThreshold
{
  v1 = [self getNumberForKey:@"multiUserLowScoreThreshold" category:@"speakerRecognition" default:&unk_2839339D8];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (unint64_t)multiUserLowScoreThresholdForPhId:()SpeakerRecognition
{
  v2 = [self getPhraseConfig:?];
  v3 = v2;
  if (v2 && ([v2 objectForKeyedSubscript:@"multiUserLowScoreThreshold"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKeyedSubscript:@"multiUserLowScoreThreshold"];
    [v5 floatValue];
    multiUserLowScoreThreshold = v6;
  }

  else
  {
    multiUserLowScoreThreshold = [self multiUserLowScoreThreshold];
  }

  return multiUserLowScoreThreshold;
}

- (float)satScoreThreshold
{
  v1 = [self getNumberForKey:@"satThreshold" category:@"speakerRecognition" default:&unk_283933A68];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (float)satScoreThresholdForPhId:()SpeakerRecognition
{
  v2 = [self getPhraseConfig:?];
  v3 = v2;
  if (v2 && ([v2 objectForKeyedSubscript:@"satThreshold"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKeyedSubscript:@"satThreshold"];
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    [self satScoreThreshold];
    v7 = v8;
  }

  return v7;
}

- (id)getPhraseConfig:()SpeakerRecognition
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [self getValueForKey:@"phrase" category:@"speakerRecognition"];
  v5 = v4;
  if (v4 && [v4 count] <= a3)
  {
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSAsset(SpeakerRecognition) getPhraseConfig:]";
      v12 = 1024;
      v13 = a3;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Config for ph: %d doesn't exist, use default", &v10, 0x12u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end