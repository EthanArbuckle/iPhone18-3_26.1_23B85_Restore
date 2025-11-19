@interface MTDictionaryDiff
- (MTDictionaryDiff)initWithProperties:(id)a3;
- (void)addCallback:(id)a3;
- (void)setDictionary:(id)a3;
@end

@implementation MTDictionaryDiff

- (MTDictionaryDiff)initWithProperties:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MTDictionaryDiff;
  v6 = [(MTDictionaryDiff *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    callbacks = v6->_callbacks;
    v6->_callbacks = v7;

    objc_storeStrong(&v6->_properties, a3);
  }

  return v6;
}

- (void)setDictionary:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTDictionaryDiff *)self dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self;
  obj = [(MTDictionaryDiff *)self properties];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v21 = *v30;
    v22 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v21, v22}];
        v12 = [(NSDictionary *)v4 objectForKeyedSubscript:v10];
        if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
        {
          v13 = v5;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = [(MTDictionaryDiff *)v23 callbacks];
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                  objc_enumerationMutation(v14);
                }

                (*(*(*(&v25 + 1) + 8 * j) + 16))();
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v16);
          }

          v5 = v13;
          v8 = v21;
          v4 = v22;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  dictionary = v23->_dictionary;
  v23->_dictionary = v4;

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addCallback:(id)a3
{
  v4 = a3;
  v6 = [(MTDictionaryDiff *)self callbacks];
  v5 = _Block_copy(v4);

  [v6 addObject:v5];
}

@end