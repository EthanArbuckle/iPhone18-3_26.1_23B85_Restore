@interface WLKSiriBestPlayablesResponse
- (WLKSiriBestPlayablesResponse)init;
- (WLKSiriBestPlayablesResponse)initWithDictionary:(id)dictionary;
- (id)playableForStatsID:(id)d;
@end

@implementation WLKSiriBestPlayablesResponse

- (WLKSiriBestPlayablesResponse)init
{
  [(WLKSiriBestPlayablesResponse *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WLKSiriBestPlayablesResponse)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = WLKSiriBestPlayablesResponse;
  v5 = [(WLKSiriBestPlayablesResponse *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v23 = v5;
    v5->_dictionary = v6;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = dictionaryCopy;
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v9 = [WLKChannelsResponse parseChannelsFromPayload:v8];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v8;
    obj = [v8 allKeys];
    v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v26 wlk_dictionaryForKey:v14];
            v16 = [v15 wlk_stringForKey:@"canonicalId"];
            v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
            if ([v16 length])
            {
              [v17 setObject:v16 forKey:@"WLKModelContextKeyCanonicalID"];
            }

            if (v9)
            {
              [v17 setObject:v9 forKey:@"WLKModelContextKeyChannels"];
            }

            v18 = [[WLKPlayable alloc] initWithDictionary:v15 context:v17];
            if (v18)
            {
              [v25 setObject:v18 forKey:v14];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    v19 = [v25 copy];
    v5 = v23;
    playablesByID = v23->_playablesByID;
    v23->_playablesByID = v19;

    dictionaryCopy = v24;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)playableForStatsID:(id)d
{
  dCopy = d;
  playablesByID = [(WLKSiriBestPlayablesResponse *)self playablesByID];
  v6 = [playablesByID objectForKey:dCopy];

  return v6;
}

@end