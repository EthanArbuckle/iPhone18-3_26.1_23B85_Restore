@interface WLKSearchWatchListResponse
- (WLKSearchWatchListResponse)init;
- (WLKSearchWatchListResponse)initWithDictionary:(id)a3;
@end

@implementation WLKSearchWatchListResponse

- (WLKSearchWatchListResponse)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v28.receiver = self;
  v28.super_class = WLKSearchWatchListResponse;
  v6 = [(WLKSearchWatchListResponse *)&v28 init];
  v7 = v6;
  if (v6)
  {
    v23 = v6;
    objc_storeStrong(&v6->_dictionary, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = [v5 wlk_dictionaryForKey:@"data"];
    v9 = [v22 wlk_arrayForKey:@"items"];
    v10 = v9;
    if (v9)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 wlk_dictionaryForKey:@"content"];
              v17 = [[WLKBasicContentMetadata alloc] initWithDictionary:v16];
              if (v17)
              {
                [v8 addObject:v17];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }
    }

    v18 = [v8 copy];
    v7 = v23;
    items = v23->_items;
    v23->_items = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (WLKSearchWatchListResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKSearchWatchListResponse" format:@"-init is not supported"];

  return 0;
}

@end