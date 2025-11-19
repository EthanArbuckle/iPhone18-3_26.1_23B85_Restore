@interface SFSpeechSynthesisVoice
+ (id)getDefaultVoiceByLocale:(id)a3;
+ (id)getVoiceByName:(id)a3;
+ (id)supportedVoicesByLocale:(id)a3;
+ (void)initialize;
- (SFSpeechSynthesisVoice)initWithVoiceAsset:(id)a3 resourceAsset:(id)a4;
- (id)init:(id)a3 gender:(id)a4 name:(id)a5 isDefault:(BOOL)a6;
@end

@implementation SFSpeechSynthesisVoice

- (id)init:(id)a3 gender:(id)a4 name:(id)a5 isDefault:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SFSpeechSynthesisVoice;
  v14 = [(SFSpeechSynthesisVoice *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_locale, a3);
    objc_storeStrong(&v15->_gender, a4);
    objc_storeStrong(&v15->_name, a5);
    v15->_isDefault = a6;
  }

  return v15;
}

- (SFSpeechSynthesisVoice)initWithVoiceAsset:(id)a3 resourceAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SFSpeechSynthesisVoice;
  v9 = [(SFSpeechSynthesisVoice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voiceAsset, a3);
    objc_storeStrong(&v10->_resourceAsset, a4);
  }

  return v10;
}

+ (id)getDefaultVoiceByLocale:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [a1 supportedVoicesByLocale:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isDefault])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getVoiceByName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = sSupportedVoices;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)supportedVoicesByLocale:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = sSupportedVoices;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 locale];
        v12 = [v11 isEqual:v3];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)initialize
{
  v29 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 pathForResource:@"tts_voices" ofType:@"plist"];

    v21 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        v8 = 0;
        do
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v4 objectForKey:*(*(&v24 + 1) + 8 * v8)];
          v10 = [v9 objectForKey:@"default"];
          v11 = v10 != 0;

          v12 = [v9 objectForKey:@"locale"];
          v13 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v12];
          v14 = [v9 objectForKey:@"gender"];
          v15 = [v9 objectForKey:@"name"];
          v16 = [[SFSpeechSynthesisVoice alloc] init:v13 gender:v14 name:v15 isDefault:v11];
          [v22 addObject:v16];
          [v23 addObject:v13];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    v17 = sSupportedVoices;
    sSupportedVoices = v22;
    v18 = v22;

    v19 = sSupportedLocales;
    sSupportedLocales = v23;
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end