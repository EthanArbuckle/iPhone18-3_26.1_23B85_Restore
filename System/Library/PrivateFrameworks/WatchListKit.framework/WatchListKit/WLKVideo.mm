@interface WLKVideo
+ (id)videosWithDictionaries:(id)dictionaries;
- (WLKVideo)initWithDictionary:(id)dictionary;
@end

@implementation WLKVideo

+ (id)videosWithDictionaries:(id)dictionaries
{
  v22 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [WLKVideo alloc];
        v12 = [(WLKVideo *)v11 initWithDictionary:v10, v17];
        if (v12)
        {
          [array addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([array count])
  {
    v13 = array;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (WLKVideo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v21.receiver = self;
    v21.super_class = WLKVideo;
    v5 = [(WLKVideo *)&v21 init];
    if (v5)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"id"];
      ID = v5->_ID;
      v5->_ID = v6;

      v8 = [dictionaryCopy wlk_stringForKey:@"externalId"];
      externalID = v5->_externalID;
      v5->_externalID = v8;

      v10 = [dictionaryCopy wlk_stringForKey:@"title"];
      title = v5->_title;
      v5->_title = v10;

      v12 = [dictionaryCopy wlk_dictionaryForKey:@"assets"];
      if (v12)
      {
        v13 = [[WLKVideoAsset alloc] initWithDictionary:v12];
        asset = v5->_asset;
        v5->_asset = v13;
      }

      v15 = [dictionaryCopy wlk_dictionaryForKey:@"images"];
      v16 = [[WLKArtworkVariantListing alloc] initWithArtworkDictionary:v15];
      images = v5->_images;
      v5->_images = v16;

      v18 = [dictionaryCopy wlk_numberForKey:@"duration"];
      v5->_duration = [v18 unsignedIntegerValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end