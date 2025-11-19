@interface WLKChannel
+ (id)channelsWithDictionaries:(id)a3 context:(id)a4;
+ (id)channelsWithDictionaries:(id)a3 context:(id)a4 seasons:(id)a5;
- (WLKChannel)init;
- (WLKChannel)initWithDictionary:(id)a3 context:(id)a4;
@end

@implementation WLKChannel

- (WLKChannel)initWithDictionary:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = WLKChannel;
  v8 = [(WLKChannel *)&v26 init];
  if (v8)
  {
    v9 = [v6 wlk_stringForKey:@"channelId"];
    ID = v8->_ID;
    v8->_ID = v9;

    v11 = [v6 wlk_dictionaryForKey:@"punchoutUrls"];
    punchoutUrls = v8->_punchoutUrls;
    v8->_punchoutUrls = v11;

    v13 = [v6 wlk_arrayForKey:@"seasonNumbers"];
    seasonNumbers = v8->_seasonNumbers;
    v8->_seasonNumbers = v13;

    v15 = [v6 wlk_arrayForKey:@"subscriptionOffers"];
    if (v15)
    {
      v16 = [WLKStoreOffer offersWithSubscriptionDictionaries:v15];
      subscriptionOffers = v8->_subscriptionOffers;
      v8->_subscriptionOffers = v16;
    }

    v18 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 wlk_arrayForKey:@"WLKModelContextKeyChannels"];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __41__WLKChannel_initWithDictionary_context___block_invoke;
      v24[3] = &unk_279E5F158;
      v25 = v8;
      [v19 enumerateObjectsUsingBlock:v24];
    }

    if (!v8->_details)
    {
      v20 = +[WLKChannelUtilities sharedInstance];
      v21 = [v20 channelForID:v8->_ID];
      details = v8->_details;
      v8->_details = v21;
    }
  }

  return v8;
}

void __41__WLKChannel_initWithDictionary_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 channelID];
  v8 = [v7 isEqualToString:*(*(a1 + 32) + 8)];

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    *a4 = 1;
  }
}

- (WLKChannel)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKChannelInitException" format:@"-init not supported. Use initWithDictionary: instead"];

  return 0;
}

+ (id)channelsWithDictionaries:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [WLKChannel alloc];
        v15 = [(WLKChannel *)v14 initWithDictionary:v13 context:v6, v19];
        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)channelsWithDictionaries:(id)a3 context:(id)a4 seasons:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v28 = a4;
  v8 = a5;
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v10 = 0;
    v27 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v36 + 1) + 8 * v11);
        v31 = v11;
        v12 = [v30 wlk_arrayForKey:@"seasons"];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v10 = v12;
        v13 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v33;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v10);
              }

              v17 = [*(*(&v32 + 1) + 8 * i) wlk_stringForKey:@"id"];
              v18 = [v8 wlk_dictionaryForKey:v17];
              v19 = [v18 wlk_numberForKey:@"seasonNumber"];

              [v9 addObject:v19];
            }

            v14 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v14);
        }

        v20 = [v30 mutableCopy];
        [v20 setObject:v9 forKey:@"seasonNumbers"];
        v21 = [[WLKChannel alloc] initWithDictionary:v20 context:v28];
        if (v21)
        {
          [v26 addObject:v21];
        }

        v11 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  v22 = [v26 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end