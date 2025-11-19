@interface WLKAMSMediaProxy
- (WLKAMSMediaProxy)initWithDictionary:(id)a3;
- (void)_initializeProperties:(id)a3;
@end

@implementation WLKAMSMediaProxy

- (WLKAMSMediaProxy)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WLKAMSMediaProxy;
  v5 = [(WLKAMSMediaProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLKAMSMediaProxy *)v5 _initializeProperties:v4];
  }

  return v6;
}

- (void)_initializeProperties:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a3 wlk_arrayForKey:@"data"];
  if ([v4 count])
  {
    v25 = [v4 objectAtIndexedSubscript:0];
    v5 = [v25 wlk_dictionaryForKey:@"attributes"];
    v6 = [v5 wlk_dictionaryForKey:@"contentRatingsBySystem"];
    contentRatingsBySystemDictionary = self->_contentRatingsBySystemDictionary;
    self->_contentRatingsBySystemDictionary = v6;

    v24 = v5;
    v23 = [v5 wlk_dictionaryForKey:@"platformAttributes"];
    v8 = [v23 wlk_dictionaryForKey:@"appletvos"];
    v9 = [v8 wlk_arrayForKey:@"offers"];
    self->_hasInAppPurchases = [v8 wlk_BOOLForKey:@"hasInAppPurchases" defaultValue:0];
    v10 = [v8 wlk_stringForKey:@"subtitle"];
    subtitle = self->_subtitle;
    self->_subtitle = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v26 + 1) + 8 * i) wlk_stringForKey:@"buyParams"];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v19 = [v12 copy];
    buyParameters = self->_buyParameters;
    self->_buyParameters = v19;

    v21 = self->_subtitle;
    NSLog(&cfstr_Wlkamsmediapro.isa, self->_contentRatingsBySystemDictionary, self->_hasInAppPurchases, v21, self->_buyParameters);
  }

  else
  {
    NSLog(&cfstr_DictionaryResp.isa);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end