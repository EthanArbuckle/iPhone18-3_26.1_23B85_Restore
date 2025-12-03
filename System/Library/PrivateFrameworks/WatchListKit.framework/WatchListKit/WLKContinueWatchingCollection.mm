@interface WLKContinueWatchingCollection
- (WLKContinueWatchingCollection)initWithDictionary:(id)dictionary;
@end

@implementation WLKContinueWatchingCollection

- (WLKContinueWatchingCollection)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = WLKContinueWatchingCollection;
  v5 = [(WLKContinueWatchingCollection *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [dictionaryCopy wlk_stringForKey:@"id"];
    v10 = [v9 copy];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    array = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [dictionaryCopy wlk_arrayForKey:{@"items", 0}];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [[WLKBasicContentMetadata alloc] initWithDictionary:v18];
            if (v19)
            {
              [array addObject:v19];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }

    v20 = [array copy];
    items = v5->_items;
    v5->_items = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

@end