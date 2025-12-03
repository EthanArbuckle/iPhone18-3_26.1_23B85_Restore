@interface STSizeDict
- (STSizeDict)init;
- (STSizeDict)initWithDictionary:(id)dictionary;
- (STSizeVector)total;
- (id)get:(id)get;
- (id)plus:(id)plus;
- (id)remapKeys:(id)keys removeMissing:(BOOL)missing;
@end

@implementation STSizeDict

- (STSizeDict)init
{
  v6.receiver = self;
  v6.super_class = STSizeDict;
  v2 = [(STSizeDict *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary = v2->_dictionary;
    v2->_dictionary = dictionary;
  }

  return v2;
}

- (STSizeDict)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = STSizeDict;
  v6 = [(STSizeDict *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (id)remapKeys:(id)keys removeMissing:(BOOL)missing
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v7 = objc_alloc_init(STMutableSizeDict);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_dictionary;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [keysCopy objectForKeyedSubscript:{v13, v18}];
        if (!v14 && !missing)
        {
          v14 = v13;
        }

        if (v14)
        {
          v15 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:v13];
          [(STMutableSizeDict *)v7 addSize:v15 toKey:v14];
        }
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (STSizeVector)total
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dictionary = [(STSizeDict *)self dictionary];
  allValues = [dictionary allValues];

  v4 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v8 += [v11 fixed];
        v6 += [v11 docsAndData];
        v7 += [v11 purgeable];
      }

      v5 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v12 = [STSizeVector fixed:v8 docsAndData:v6 purgeable:v7];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)plus:(id)plus
{
  plusCopy = plus;
  v5 = objc_alloc_init(STMutableSizeDict);
  [(STMutableSizeDict *)v5 plusEquals:self];
  [(STMutableSizeDict *)v5 plusEquals:plusCopy];

  return v5;
}

- (id)get:(id)get
{
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:get];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[STSizeVector zero];
  }

  v6 = v5;

  return v6;
}

@end