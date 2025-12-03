@interface MTDictionaryDiff
- (MTDictionaryDiff)initWithProperties:(id)properties;
- (void)addCallback:(id)callback;
- (void)setDictionary:(id)dictionary;
@end

@implementation MTDictionaryDiff

- (MTDictionaryDiff)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = MTDictionaryDiff;
  v6 = [(MTDictionaryDiff *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;

    objc_storeStrong(&v6->_properties, properties);
  }

  return v6;
}

- (void)setDictionary:(id)dictionary
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [(MTDictionaryDiff *)self dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = [(MTDictionaryDiff *)self properties];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v21 = *v30;
    v22 = dictionaryCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [dictionary objectForKeyedSubscript:{v10, v21, v22}];
        v12 = [(NSDictionary *)dictionaryCopy objectForKeyedSubscript:v10];
        if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
        {
          v13 = dictionary;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          callbacks = [(MTDictionaryDiff *)selfCopy callbacks];
          v15 = [callbacks countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(callbacks);
                }

                (*(*(*(&v25 + 1) + 8 * j) + 16))();
              }

              v16 = [callbacks countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v16);
          }

          dictionary = v13;
          v8 = v21;
          dictionaryCopy = v22;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  dictionary = selfCopy->_dictionary;
  selfCopy->_dictionary = dictionaryCopy;

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addCallback:(id)callback
{
  callbackCopy = callback;
  callbacks = [(MTDictionaryDiff *)self callbacks];
  v5 = _Block_copy(callbackCopy);

  [callbacks addObject:v5];
}

@end