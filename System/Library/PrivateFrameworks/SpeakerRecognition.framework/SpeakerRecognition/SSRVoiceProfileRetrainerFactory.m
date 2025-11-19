@interface SSRVoiceProfileRetrainerFactory
- (SSRVoiceProfileRetrainerFactory)init;
- (id)voiceRetrainersWithContext:(id)a3;
@end

@implementation SSRVoiceProfileRetrainerFactory

- (id)voiceRetrainersWithContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [[SSRVoiceProfileRetrainerPSR alloc] initWithVoiceRetrainingContext:v3];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = [[SSRVoiceProfileRetrainerSAT alloc] initWithVoiceRetrainingContext:v3];
  if (v6)
  {
    [v4 addObject:v6];
  }

  if ([MEMORY[0x277D018F8] supportsSecureAssetForSpeakerRecognition])
  {
    v7 = objc_alloc_init(SSRSecureAssetProvider);
    v8 = [v3 voiceProfile];
    v9 = [v8 locale];
    v10 = [v3 asset];
    v11 = [(SSRSecureAssetProvider *)v7 fetchSecureAssetForLocale:v9 withAsset:v10];

    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x277D01F58]);
      v13 = [v12 decode:v11];
      v14 = [[SSRVoiceProfileRetrainerPSRExclave alloc] initWithVoiceRetrainingContext:v3 secureAsset:v11 secureSpeakerRecognitionConfig:v13];
      if (v14)
      {
        [v4 addObject:v14];
      }

      if ((CSIsCommunalDevice() & 1) == 0)
      {
        v15 = [[SSRVoiceProfileRetrainerSATExclave alloc] initWithVoiceRetrainingContext:v3 secureAsset:v11 secureSpeakerRecognitionConfig:v13];
        if (v15)
        {
          [v4 addObject:v15];
        }
      }
    }

    else
    {
      v16 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v21 = 136315138;
        v22 = "[SSRVoiceProfileRetrainerFactory voiceRetrainersWithContext:]";
        _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s SecureAsset is nil", &v21, 0xCu);
      }
    }
  }

  if ([v4 count])
  {
    v17 = v4;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (SSRVoiceProfileRetrainerFactory)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D01788] sharedPreferences];
  v4 = [v3 isSpeakerRecognitionAvailable];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SSRVoiceProfileRetrainerFactory;
    self = [(SSRVoiceProfileRetrainerFactory *)&v9 init];
    v5 = self;
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[SSRVoiceProfileRetrainerFactory init]";
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s ERR: SpeakerRecognition is not available on this platform", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end