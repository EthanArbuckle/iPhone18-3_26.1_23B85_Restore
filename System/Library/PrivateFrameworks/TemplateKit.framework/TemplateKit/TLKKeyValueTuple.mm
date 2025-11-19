@interface TLKKeyValueTuple
+ (id)tupleWithKey:(id)a3 value:(id)a4;
+ (id)tuplesForDictionary:(id)a3;
+ (id)tuplesForKeys:(id)a3 values:(id)a4;
- (void)setKey:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation TLKKeyValueTuple

- (void)setKey:(id)a3
{
  v10 = a3;
  if (self->_key != v10)
  {
    objc_storeStrong(&self->_key, a3);
    v5 = [(TLKObject *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKObject *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKObject *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setValue:(id)a3
{
  v10 = a3;
  if (self->_value != v10)
  {
    objc_storeStrong(&self->_value, a3);
    v5 = [(TLKObject *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKObject *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKObject *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

+ (id)tupleWithKey:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TLKKeyValueTuple);
  [(TLKKeyValueTuple *)v7 setKey:v6];

  [(TLKKeyValueTuple *)v7 setValue:v5];

  return v7;
}

+ (id)tuplesForDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 allKeys];
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
        v11 = [v3 valueForKey:v10];
        v12 = [TLKKeyValueTuple tupleWithKey:v10 value:v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)tuplesForKeys:(id)a3 values:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 count])
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = [TLKKeyValueTuple tupleWithKey:v9 value:v10];
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [v5 count]);
  }

  v12 = [v7 copy];

  return v12;
}

@end