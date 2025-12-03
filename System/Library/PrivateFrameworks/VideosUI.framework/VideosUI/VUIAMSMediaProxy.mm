@interface VUIAMSMediaProxy
- (VUIAMSMediaProxy)initWithDictionary:(id)dictionary;
- (void)_initializeProperties:(id)properties;
@end

@implementation VUIAMSMediaProxy

- (VUIAMSMediaProxy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = VUIAMSMediaProxy;
  v5 = [(VUIAMSMediaProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VUIAMSMediaProxy *)v5 _initializeProperties:dictionaryCopy];
  }

  return v6;
}

- (void)_initializeProperties:(id)properties
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [properties vui_arrayForKey:@"data"];
  if ([v4 count])
  {
    v26 = v4;
    v25 = [v4 objectAtIndexedSubscript:0];
    v5 = [v25 vui_dictionaryForKey:@"attributes"];
    v6 = [v5 vui_dictionaryForKey:@"contentRatingsBySystem"];
    contentRatingsBySystemDictionary = self->_contentRatingsBySystemDictionary;
    self->_contentRatingsBySystemDictionary = v6;

    v24 = v5;
    v23 = [v5 vui_dictionaryForKey:@"platformAttributes"];
    v8 = [v23 vui_dictionaryForKey:@"appletvos"];
    v9 = [v8 vui_arrayForKey:@"offers"];
    self->_hasInAppPurchases = [v8 vui_BOOLForKey:@"hasInAppPurchases" defaultValue:0];
    v10 = [v8 vui_stringForKey:@"subtitle"];
    subtitle = self->_subtitle;
    self->_subtitle = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v18 vui_stringForKey:@"buyParams"];

          if (v19)
          {
            v20 = [v18 vui_stringForKey:@"buyParams"];
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    v21 = [v12 copy];
    buyParameters = self->_buyParameters;
    self->_buyParameters = v21;

    NSLog(&cfstr_Vuiamsmediapro.isa, self->_contentRatingsBySystemDictionary, self->_hasInAppPurchases, self->_subtitle, self->_buyParameters);
    v4 = v26;
  }

  else
  {
    NSLog(&cfstr_DictionaryResp.isa);
  }
}

@end