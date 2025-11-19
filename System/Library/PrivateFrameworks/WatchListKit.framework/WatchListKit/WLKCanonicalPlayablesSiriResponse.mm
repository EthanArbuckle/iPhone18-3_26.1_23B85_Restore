@interface WLKCanonicalPlayablesSiriResponse
+ (id)_parseChannelsFromPayload:(id)a3;
- (WLKCanonicalPlayablesSiriResponse)init;
- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)a3;
- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)a3 statsID:(id)a4;
@end

@implementation WLKCanonicalPlayablesSiriResponse

- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = WLKCanonicalPlayablesSiriResponse;
  v5 = [(WLKCanonicalPlayablesSiriResponse *)&v43 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v35 = v5;
    v5->_dictionary = v6;

    v36 = v4;
    v8 = [v4 wlk_dictionaryForKey:@"data"];
    v34 = [v8 wlk_dictionaryForKey:@"content"];
    v33 = [v8 wlk_dictionaryForKey:@"channels"];
    v37 = [v8 wlk_dictionaryForKey:@"contentPersonalizedInfo"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 wlk_arrayForKey:@"smartPlayables"];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v8 wlk_dictionaryForKey:@"playables"];
          v16 = [v14 wlk_stringForKey:@"playableId"];
          v17 = [v15 wlk_dictionaryForKey:v16];
          [v9 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v11);
    }

    v18 = +[WLKNetworkRequestUtilities isGDPRAccepted];
    v19 = [MEMORY[0x277D6C478] activeAccount];

    v20 = [v37 wlk_BOOLForKey:@"isWatchlistEnabled" defaultValue:0] & v18;
    if (!v19)
    {
      LOBYTE(v20) = 0;
    }

    v5 = v35;
    v35->_watchListable = v20;
    v21 = WLKSystemLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = v18;
      _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isGDPRAccepted:%d", buf, 8u);
    }

    v22 = WLKSystemLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v45 = v19 != 0;
      _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isAccountPresent:%d", buf, 8u);
    }

    v35->_watchListed = [v37 wlk_BOOLForKey:@"inUpNext" defaultValue:0];
    v23 = [WLKCanonicalPlayablesSiriResponse _parseChannelsFromPayload:v33];
    v24 = [v34 wlk_stringForKey:@"id"];
    canonicalID = v35->_canonicalID;
    v35->_canonicalID = v24;

    v26 = [v34 wlk_stringForKey:@"type"];
    v35->_contentType = [WLKBasicContentMetadata contentTypeForString:v26];

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(NSString *)v35->_canonicalID length])
    {
      [v27 setObject:v35->_canonicalID forKey:@"WLKModelContextKeyCanonicalID"];
    }

    if (v23)
    {
      [v27 setObject:v23 forKey:@"WLKModelContextKeyChannels"];
    }

    v28 = [v9 copy];
    v29 = [WLKPlayable playablesWithDictionaries:v28 context:v27];
    playables = v35->_playables;
    v35->_playables = v29;

    v4 = v36;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (WLKCanonicalPlayablesSiriResponse)initWithDictionary:(id)a3 statsID:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = WLKCanonicalPlayablesSiriResponse;
  v8 = [(WLKCanonicalPlayablesSiriResponse *)&v30 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_canonicalID, a4);
    v9->_contentType = 5;
    v10 = [v6 copy];
    dictionary = v9->_dictionary;
    v9->_dictionary = v10;

    v12 = [v6 wlk_dictionaryForKey:@"data"];
    v13 = [v12 wlk_dictionaryForKey:@"playables"];
    v14 = [v12 wlk_dictionaryForKey:@"channels"];
    v15 = v14;
    if (v13 && v14 && v9->_canonicalID)
    {
      v16 = [v13 wlk_dictionaryForKey:?];
      v17 = [[WLKPlayable alloc] initWithDictionary:v16];
      v33[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      playables = v9->_playables;
      v9->_playables = v18;

      v29 = v16;
      v28 = [v16 objectForKey:@"channelId"];
      v20 = [v15 wlk_dictionaryForKey:?];
      v21 = +[WLKNetworkRequestUtilities isGDPRAccepted];
      v22 = [MEMORY[0x277D6C478] activeAccount];

      v23 = [v20 wlk_BOOLForKey:@"isWatchlistEnabled" defaultValue:0] & v21;
      if (!v22)
      {
        LOBYTE(v23) = 0;
      }

      v9->_watchListable = v23;
      v24 = WLKSystemLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v32 = v21;
        _os_log_impl(&dword_272A0F000, v24, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isGDPRAccepted:%d", buf, 8u);
      }

      v25 = WLKSystemLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v32 = v22 != 0;
        _os_log_impl(&dword_272A0F000, v25, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesSiriResponse - isAccountPresent:%d", buf, 8u);
      }

      v9->_watchListed = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)_parseChannelsFromPayload:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__WLKCanonicalPlayablesSiriResponse__parseChannelsFromPayload___block_invoke;
  v9[3] = &unk_279E5F2F8;
  v6 = v5;
  v10 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __63__WLKCanonicalPlayablesSiriResponse__parseChannelsFromPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[WLKChannelDetails alloc] initWithDictionary:v4];

  v5 = [(WLKChannelDetails *)v6 channelID];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (WLKCanonicalPlayablesSiriResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKCanonicalPlayablesSiriResponse" format:@"-init is not supported"];

  return 0;
}

@end