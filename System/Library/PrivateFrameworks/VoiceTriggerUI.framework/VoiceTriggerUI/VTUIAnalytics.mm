@interface VTUIAnalytics
- (void)logEvent;
@end

@implementation VTUIAnalytics

- (void)logEvent
{
  v20[11] = *MEMORY[0x277D85DE8];
  v19[0] = @"AboutViewShown";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics aboutViewShown](self, "aboutViewShown")}];
  v20[0] = v18;
  v19[1] = @"IntroViewShown";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics introViewShown](self, "introViewShown")}];
  v20[1] = v17;
  v19[2] = @"SkippedFromIntroAOP";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics skippedFromIntroAOP](self, "skippedFromIntroAOP")}];
  v20[2] = v16;
  v19[3] = @"SkippedFromIntroNonAOP";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics skippedFromIntroNonAOP](self, "skippedFromIntroNonAOP")}];
  v20[3] = v15;
  v19[4] = @"TurnOnSiriNonAOP";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics turnOnSiriNonAOP](self, "turnOnSiriNonAOP")}];
  v20[4] = v3;
  v19[5] = @"VoiceTrainingCancelled";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingCancelled](self, "voiceTrainingCancelled")}];
  v20[5] = v4;
  v19[6] = @"VoiceTrainingStep";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingCancelledStep](self, "voiceTrainingCancelledStep")}];
  v20[6] = v5;
  v19[7] = @"VoiceTrainingCompleted";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingCompleted](self, "voiceTrainingCompleted")}];
  v20[7] = v6;
  v19[8] = @"VoiceTrainingStarted";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[VTUIAnalytics voiceTrainingStarted](self, "voiceTrainingStarted")}];
  v20[8] = v7;
  v19[9] = @"LanguageCode";
  languageCode = [(VTUIAnalytics *)self languageCode];
  if (languageCode)
  {
    languageCode2 = [(VTUIAnalytics *)self languageCode];
  }

  else
  {
    languageCode2 = &stru_2881E5778;
  }

  v20[9] = languageCode2;
  v19[10] = @"SetupMode";
  setupMode = [(VTUIAnalytics *)self setupMode];
  if (setupMode)
  {
    setupMode2 = [(VTUIAnalytics *)self setupMode];
  }

  else
  {
    setupMode2 = &stru_2881E5778;
  }

  v20[10] = setupMode2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:11];
  if (setupMode)
  {
  }

  if (languageCode)
  {
  }

  v13 = v12;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x277D85DE8];
}

@end