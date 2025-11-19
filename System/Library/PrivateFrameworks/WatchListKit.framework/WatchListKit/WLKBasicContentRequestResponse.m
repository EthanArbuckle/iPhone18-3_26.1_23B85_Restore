@interface WLKBasicContentRequestResponse
- (WLKBasicContentRequestResponse)initWithDictionary:(id)a3;
@end

@implementation WLKBasicContentRequestResponse

- (WLKBasicContentRequestResponse)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WLKBasicContentRequestResponse;
  v5 = [(WLKBasicContentRequestResponse *)&v24 init];
  if (v5)
  {
    v6 = [v4 wlk_arrayForKey:@"data"];
    v7 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [WLKBasicContentMetadata alloc];
            v15 = [(WLKBasicContentMetadata *)v14 initWithDictionary:v13, v20];
            if (v15)
            {
              [v7 addObject:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    items = v5->_items;
    v5->_items = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end