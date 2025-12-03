@interface WLKUpNextItemCollection
- (WLKUpNextItemCollection)initWithDictionary:(id)dictionary context:(id)context;
- (id)description;
@end

@implementation WLKUpNextItemCollection

- (WLKUpNextItemCollection)initWithDictionary:(id)dictionary context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  v32.receiver = self;
  v32.super_class = WLKUpNextItemCollection;
  v8 = [(WLKUpNextItemCollection *)&v32 init];
  if (v8)
  {
    v9 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"timestamp"];
    timestamp = v8->_timestamp;
    v8->_timestamp = v9;

    v11 = [dictionaryCopy wlk_stringForKey:@"title"];
    v12 = [v11 copy];
    title = v8->_title;
    v8->_title = v12;

    v27 = dictionaryCopy;
    v14 = [dictionaryCopy wlk_arrayForKey:@"items"];
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [[WLKContinuationMetadata alloc] initWithDictionary:v21 context:contextCopy];
            if (v22)
            {
              [v15 addObject:v22];
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    if ([v15 count])
    {
      v23 = [v15 copy];
      items = v8->_items;
      v8->_items = v23;
    }

    dictionaryCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WLKUpNextItemCollection;
  v4 = [(WLKUpNextItemCollection *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ items:%@", v4, self->_items];

  return v5;
}

@end