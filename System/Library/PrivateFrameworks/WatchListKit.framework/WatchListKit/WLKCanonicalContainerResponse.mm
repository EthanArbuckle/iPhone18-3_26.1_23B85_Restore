@interface WLKCanonicalContainerResponse
+ (id)parseChannelsFromPayload:(id)a3;
- (WLKCanonicalContainerResponse)init;
- (WLKCanonicalContainerResponse)initWithDictionary:(id)a3;
@end

@implementation WLKCanonicalContainerResponse

- (WLKCanonicalContainerResponse)initWithDictionary:(id)a3
{
  v64[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v62.receiver = self;
  v62.super_class = WLKCanonicalContainerResponse;
  v6 = [(WLKCanonicalContainerResponse *)&v62 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    v49 = v5;
    v8 = [v5 wlk_dictionaryForKey:@"data"];
    v9 = [v8 wlk_dictionaryForKey:@"content"];
    v10 = [v8 wlk_dictionaryForKey:@"channels"];
    v11 = [v8 wlk_dictionaryForKey:@"contentPersonalizedInfo"];
    v12 = [v8 wlk_arrayForKey:@"howToWatch"];
    v13 = [v8 wlk_dictionaryForKey:@"smartEpisode"];
    v43 = [v8 wlk_dictionaryForKey:@"playables"];
    v42 = [v8 wlk_arrayForKey:@"smartEpisodePlayables"];
    v14 = [v8 wlk_dictionaryForKey:@"seasons"];
    v15 = [v13 wlk_stringForKey:@"seasonId"];
    v41 = [v14 wlk_dictionaryForKey:v15];

    v16 = [v8 wlk_dictionaryForKey:@"seasons"];
    v7->_watchListable = [v11 wlk_BOOLForKey:@"isAddToUpNextEnabled" defaultValue:0];
    v46 = v11;
    v7->_watchListed = [v11 wlk_BOOLForKey:@"inUpNext" defaultValue:0];
    v47 = v10;
    v17 = [WLKCanonicalContainerResponse parseChannelsFromPayload:v10];
    v18 = [v9 wlk_stringForKey:@"id"];
    canonicalID = v7->_canonicalID;
    v7->_canonicalID = v18;

    v48 = v9;
    v20 = [v9 wlk_stringForKey:@"type"];
    v7->_contentType = [WLKBasicContentMetadata contentTypeForString:v20];

    v45 = v17;
    if (v17)
    {
      v63 = @"WLKModelContextKeyChannels";
      v64[0] = v17;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    }

    else
    {
      v21 = 0;
    }

    v22 = dispatch_group_create();
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WLKCanonicalContainerResponse_initWithDictionary___block_invoke;
    block[3] = &unk_279E5FB58;
    v24 = v7;
    v58 = v24;
    v25 = v12;
    v59 = v25;
    v26 = v21;
    v60 = v26;
    v40 = v16;
    v61 = v40;
    dispatch_group_async(v22, v23, block);

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __52__WLKCanonicalContainerResponse_initWithDictionary___block_invoke_2;
    v50[3] = &unk_279E5FB80;
    v27 = v24;
    v51 = v27;
    v39 = v13;
    v52 = v39;
    v28 = v26;
    v53 = v28;
    v29 = v43;
    v54 = v29;
    v30 = v42;
    v55 = v30;
    v31 = v41;
    v56 = v31;
    dispatch_group_async(v22, v23, v50);

    dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    if (v25 && [v25 count])
    {
      v44 = v28;
      v32 = [v25 firstObject];
      v33 = [v32 wlk_arrayForKey:@"seasons"];
      v34 = v33;
      if (v33 && [v33 count])
      {
        v35 = [v34 firstObject];
        defaultSeason = v27->_defaultSeason;
        v27->_defaultSeason = v35;
      }

      v28 = v44;
    }

    v5 = v49;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __52__WLKCanonicalContainerResponse_initWithDictionary___block_invoke(void *a1)
{
  v2 = [WLKChannel channelsWithDictionaries:a1[5] context:a1[6] seasons:a1[7]];
  v3 = a1[4];
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __52__WLKCanonicalContainerResponse_initWithDictionary___block_invoke_2(void *a1)
{
  v2 = [[WLKBasicEpisodeMetadata alloc] initWithDictionary:a1[5] context:a1[6] playablesDict:a1[7] playablesId:a1[8] seasonsDict:a1[9]];
  v3 = a1[4];
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)parseChannelsFromPayload:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__WLKCanonicalContainerResponse_parseChannelsFromPayload___block_invoke;
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

void __58__WLKCanonicalContainerResponse_parseChannelsFromPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[WLKChannelDetails alloc] initWithDictionary:v4];

  v5 = [(WLKChannelDetails *)v6 channelID];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (WLKCanonicalContainerResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKCanonicalContainerResponse" format:@"-init is not supported"];

  return 0;
}

@end