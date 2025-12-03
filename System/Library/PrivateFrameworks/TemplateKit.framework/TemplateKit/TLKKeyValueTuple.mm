@interface TLKKeyValueTuple
+ (id)tupleWithKey:(id)key value:(id)value;
+ (id)tuplesForDictionary:(id)dictionary;
+ (id)tuplesForKeys:(id)keys values:(id)values;
- (void)setKey:(id)key;
- (void)setValue:(id)value;
@end

@implementation TLKKeyValueTuple

- (void)setKey:(id)key
{
  keyCopy = key;
  if (self->_key != keyCopy)
  {
    objc_storeStrong(&self->_key, key);
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->_value != valueCopy)
  {
    objc_storeStrong(&self->_value, value);
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

+ (id)tupleWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v7 = objc_alloc_init(TLKKeyValueTuple);
  [(TLKKeyValueTuple *)v7 setKey:keyCopy];

  [(TLKKeyValueTuple *)v7 setValue:valueCopy];

  return v7;
}

+ (id)tuplesForDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [dictionaryCopy valueForKey:v10];
        v12 = [TLKKeyValueTuple tupleWithKey:v10 value:v11];
        [v4 addObject:v12];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)tuplesForKeys:(id)keys values:(id)values
{
  keysCopy = keys;
  valuesCopy = values;
  v7 = objc_opt_new();
  if ([keysCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [keysCopy objectAtIndexedSubscript:v8];
      v10 = [valuesCopy objectAtIndexedSubscript:v8];
      v11 = [TLKKeyValueTuple tupleWithKey:v9 value:v10];
      [v7 addObject:v11];

      ++v8;
    }

    while (v8 < [keysCopy count]);
  }

  v12 = [v7 copy];

  return v12;
}

@end