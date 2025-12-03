@interface WLKBasicSeasonMetadata
+ (id)seasonsWithDictionaries:(id)dictionaries;
- (WLKBasicSeasonMetadata)initWithDictionary:(id)dictionary;
@end

@implementation WLKBasicSeasonMetadata

+ (id)seasonsWithDictionaries:(id)dictionaries
{
  v20 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dictionariesCopy;
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [WLKBasicSeasonMetadata alloc];
          v12 = [(WLKBasicSeasonMetadata *)v11 initWithDictionary:v10, v15];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (WLKBasicSeasonMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = WLKBasicSeasonMetadata;
  v5 = [(WLKBasicContentMetadata *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_numberForKey:@"seasonNumber"];
    seasonNumber = v5->_seasonNumber;
    v5->_seasonNumber = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"showId"];
    v9 = [v8 copy];
    canonicalShowID = v5->_canonicalShowID;
    v5->_canonicalShowID = v9;
  }

  return v5;
}

@end