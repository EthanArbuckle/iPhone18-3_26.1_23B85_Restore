@interface REExportedDictionaryValue
- (REExportedDictionaryValue)initWithDictionary:(id)dictionary;
- (id)exportedValueForKey:(id)key;
- (void)enumerateValuesUsingBlock:(id)block;
@end

@implementation REExportedDictionaryValue

- (REExportedDictionaryValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = REExportedDictionaryValue;
  v6 = [(REExportedDictionaryValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (void)enumerateValuesUsingBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    allKeys = [(NSDictionary *)self->_dictionary allKeys];
    v6 = [allKeys mutableCopy];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__REExportedDictionaryValue_enumerateValuesUsingBlock___block_invoke_2;
    v20[3] = &unk_2785FAB80;
    v21 = &__block_literal_global_72;
    [v6 sortUsingComparator:v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:v12, v16];
          v14 = __55__REExportedDictionaryValue_enumerateValuesUsingBlock___block_invoke(v13, v12);
          blockCopy[2](blockCopy, v14, v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __55__REExportedDictionaryValue_enumerateValuesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 description];
  }

  v4 = v3;

  return v4;
}

uint64_t __55__REExportedDictionaryValue_enumerateValuesUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  v10 = [v8 compare:v9];
  return v10;
}

- (id)exportedValueForKey:(id)key
{
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:key];
  v4 = [REExportedValue exportedValueForObject:v3];

  return v4;
}

@end