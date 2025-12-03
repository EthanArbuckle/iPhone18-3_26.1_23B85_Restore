@interface WLKGenre
+ (id)genresWithDictionaries:(id)dictionaries;
- (BOOL)isEqual:(id)equal;
- (WLKGenre)initWithDictionary:(id)dictionary;
@end

@implementation WLKGenre

+ (id)genresWithDictionaries:(id)dictionaries
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
          v11 = [WLKGenre alloc];
          v12 = [(WLKGenre *)v11 initWithDictionary:v10, v15];
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

- (WLKGenre)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v14.receiver = self;
    v14.super_class = WLKGenre;
    v5 = [(WLKGenre *)&v14 init];
    if (v5)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"id"];
      v7 = [v6 copy];
      uniqueID = v5->_uniqueID;
      v5->_uniqueID = v7;

      v9 = [dictionaryCopy wlk_stringForKey:@"name"];
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    uniqueID = self->_uniqueID;
    uniqueID = [equalCopy uniqueID];
    v7 = [(NSString *)uniqueID isEqualToString:uniqueID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end