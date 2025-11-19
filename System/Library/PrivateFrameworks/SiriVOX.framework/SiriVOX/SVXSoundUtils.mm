@interface SVXSoundUtils
- (SVXSoundUtils)init;
- (SVXSoundUtils)initWithSpeechSynthesisUtils:(id)a3 resourceURLSupplier:(id)a4;
- (id)createAudioPlaybackRequestFromID:(int64_t)a3 preferences:(id)a4;
- (int64_t)getIDFromAudioPlaybackRequest:(id)a3;
@end

@implementation SVXSoundUtils

- (id)createAudioPlaybackRequestFromID:(int64_t)a3 preferences:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXSoundUtils createAudioPlaybackRequestFromID:preferences:]"];
    [v33 handleFailureInFunction:v34 file:@"SVXSoundUtils.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
  }

  v7 = 0;
  if (a3 > 3)
  {
    if (a3 != 4 && a3 != 5)
    {
      if (a3 != 6)
      {
        goto LABEL_31;
      }

      v36 = v6;
      v10 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:1 preferences:v6];
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      v12 = [v10 languageCode];
      v35 = v10;
      v13 = [v10 gender];
      v14 = @"Female";
      if (v13 == 1)
      {
        v14 = @"Male";
      }

      v15 = [v11 initWithFormat:@"%@-%@-%@", @"Phatic", v12, v14];

      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [(SVXResourceURLSupplier *)self->_resourceURLSupplier URLsForResourcesWithExtension:@"wav" subdirectory:0];
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            v23 = [v22 lastPathComponent];
            v24 = [v23 hasPrefix:v15];

            if (v24)
            {
              [v16 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v19);
      }

      v25 = [v16 count];
      if (v25)
      {
        v26 = [v16 objectAtIndex:arc4random_uniform(v25)];
      }

      else
      {
        v26 = 0;
      }

      v6 = v36;
      if (v26)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    resourceURLSupplier = self->_resourceURLSupplier;
    v9 = @"DeviceSetup-b238.wav";
  }

  else
  {
    if (a3 == 1)
    {
LABEL_7:
      resourceURLSupplier = self->_resourceURLSupplier;
      v9 = @"SiriSummon-b238.wav";
      goto LABEL_26;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_7;
    }

    resourceURLSupplier = self->_resourceURLSupplier;
    v9 = @"SessionInactive-b238.wav";
  }

LABEL_26:
  v27 = [(__CFString *)v9 stringByDeletingPathExtension];
  v28 = [(__CFString *)v9 pathExtension];
  v26 = [(SVXResourceURLSupplier *)resourceURLSupplier URLForResource:v27 withExtension:v28];

  if (v26)
  {
LABEL_27:
    v29 = objc_alloc(MEMORY[0x277CEF188]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__SVXSoundUtils_createAudioPlaybackRequestFromID_preferences___block_invoke;
    v37[3] = &unk_279C67798;
    v38 = v26;
    v39 = a3;
    v30 = v26;
    v7 = [v29 initWithBuilder:v37];

    goto LABEL_31;
  }

LABEL_30:
  v7 = 0;
LABEL_31:

  v31 = *MEMORY[0x277D85DE8];

  return v7;
}

void __62__SVXSoundUtils_createAudioPlaybackRequestFromID_preferences___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setItemURL:v3];
  [v4 setNumberOfLoops:0];
  LODWORD(v5) = 1.0;
  [v4 setVolume:v5];
  [v4 setFadeInDuration:0.0];
  [v4 setFadeOutDuration:0.0];
  v9 = @"_SVXSoundID";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 setUserInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)getIDFromAudioPlaybackRequest:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:@"_SVXSoundID"];
  v5 = [v4 integerValue];

  if (v5 <= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (SVXSoundUtils)initWithSpeechSynthesisUtils:(id)a3 resourceURLSupplier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SVXSoundUtils;
  v9 = [(SVXSoundUtils *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_speechSynthesisUtils, a3);
    objc_storeStrong(&v10->_resourceURLSupplier, a4);
  }

  return v10;
}

- (SVXSoundUtils)init
{
  v3 = objc_alloc_init(SVXSpeechSynthesisUtils);
  v4 = +[SVXBundleUtils sharedInstance];
  v5 = [v4 getSiriVOXFramework];
  v6 = [(SVXSoundUtils *)self initWithSpeechSynthesisUtils:v3 resourceURLSupplier:v5];

  return v6;
}

@end