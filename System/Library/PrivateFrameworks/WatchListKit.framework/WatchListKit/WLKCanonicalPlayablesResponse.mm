@interface WLKCanonicalPlayablesResponse
+ (id)_parseChannelsFromPayload:(id)payload;
- (WLKCanonicalPlayablesResponse)init;
- (WLKCanonicalPlayablesResponse)initWithDictionary:(id)dictionary;
- (WLKCanonicalPlayablesResponse)initWithSiriResponse:(id)response statsID:(id)d;
@end

@implementation WLKCanonicalPlayablesResponse

- (WLKCanonicalPlayablesResponse)initWithDictionary:(id)dictionary
{
  v46 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = WLKCanonicalPlayablesResponse;
  v5 = [(WLKCanonicalPlayablesResponse *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionary = v5->_dictionary;
    v34 = v5;
    v5->_dictionary = v6;

    v35 = dictionaryCopy;
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v33 = [v8 wlk_dictionaryForKey:@"content"];
    v32 = [v8 wlk_dictionaryForKey:@"channels"];
    v36 = [v8 wlk_dictionaryForKey:@"contentPersonalizedInfo"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v8 wlk_arrayForKey:@"smartPlayables"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [v8 wlk_dictionaryForKey:@"playables"];
          v16 = [v14 wlk_stringForKey:@"playableId"];
          v17 = [v15 wlk_dictionaryForKey:v16];
          [v9 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v11);
    }

    v18 = +[WLKNetworkRequestUtilities isGDPRAccepted];
    activeAccount = [MEMORY[0x277D6C478] activeAccount];

    v20 = [v36 wlk_BOOLForKey:@"isAddToUpNextEnabled" defaultValue:0] & v18;
    if (!activeAccount)
    {
      LOBYTE(v20) = 0;
    }

    v5 = v34;
    v34->_watchListable = v20;
    v21 = WLKSystemLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v44 = v18;
      _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesResponse - isGDPRAccepted:%d", buf, 8u);
    }

    v22 = WLKSystemLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v44 = activeAccount != 0;
      _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "WLKCanonicalPlayablesResponse - isAccountPresent:%d", buf, 8u);
    }

    v34->_watchListed = [v36 wlk_BOOLForKey:@"inUpNext" defaultValue:0];
    v23 = [WLKCanonicalPlayablesResponse _parseChannelsFromPayload:v32];
    v24 = [v33 wlk_stringForKey:@"id"];
    canonicalID = v34->_canonicalID;
    v34->_canonicalID = v24;

    v26 = [v33 wlk_stringForKey:@"type"];
    v34->_contentType = [WLKBasicContentMetadata contentTypeForString:v26];

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([(NSString *)v34->_canonicalID length])
    {
      [v27 setObject:v34->_canonicalID forKey:@"WLKModelContextKeyCanonicalID"];
    }

    dictionaryCopy = v35;
    if (v23)
    {
      [v27 setObject:v23 forKey:@"WLKModelContextKeyChannels"];
    }

    v28 = [WLKPlayable playablesWithDictionaries:v9 context:v27];
    playables = v34->_playables;
    v34->_playables = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (WLKCanonicalPlayablesResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKCanonicalPlayablesResponse" format:@"-init is not supported"];

  return 0;
}

+ (id)_parseChannelsFromPayload:(id)payload
{
  v3 = MEMORY[0x277CBEB18];
  payloadCopy = payload;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(payloadCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WLKCanonicalPlayablesResponse__parseChannelsFromPayload___block_invoke;
  v9[3] = &unk_279E5F2F8;
  v6 = v5;
  v10 = v6;
  [payloadCopy enumerateKeysAndObjectsUsingBlock:v9];

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

void __59__WLKCanonicalPlayablesResponse__parseChannelsFromPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[WLKChannelDetails alloc] initWithDictionary:v4];

  v5 = [(WLKChannelDetails *)v6 channelID];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (WLKCanonicalPlayablesResponse)initWithSiriResponse:(id)response statsID:(id)d
{
  responseCopy = response;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = WLKCanonicalPlayablesResponse;
  v8 = [(WLKCanonicalPlayablesResponse *)&v21 init];
  v9 = v8;
  if (responseCopy && v8)
  {
    v10 = [[WLKCanonicalPlayablesSiriResponse alloc] initWithDictionary:responseCopy statsID:dCopy];
    playables = [(WLKCanonicalPlayablesSiriResponse *)v10 playables];
    v12 = [playables copy];
    playables = v9->_playables;
    v9->_playables = v12;

    dictionary = [(WLKCanonicalPlayablesSiriResponse *)v10 dictionary];
    v15 = [dictionary copy];
    dictionary = v9->_dictionary;
    v9->_dictionary = v15;

    v9->_watchListed = [(WLKCanonicalPlayablesSiriResponse *)v10 isWatchListed];
    v9->_watchListable = [(WLKCanonicalPlayablesSiriResponse *)v10 isWatchListable];
    v9->_contentType = [(WLKCanonicalPlayablesSiriResponse *)v10 contentType];
    canonicalID = [(WLKCanonicalPlayablesSiriResponse *)v10 canonicalID];
    v18 = [canonicalID copy];
    canonicalID = v9->_canonicalID;
    v9->_canonicalID = v18;
  }

  return v9;
}

@end