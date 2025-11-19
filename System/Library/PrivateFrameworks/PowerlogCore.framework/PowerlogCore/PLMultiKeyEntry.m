@interface PLMultiKeyEntry
+ (void)load;
- (PLMultiKeyEntry)init;
- (id)keysForSubKey:(id)a3 ofSubKeyType:(id)a4;
- (id)objectsForSubKey:(id)a3 ofSubKeyType:(id)a4;
- (id)serializedForJSON;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PLMultiKeyEntry

- (PLMultiKeyEntry)init
{
  v6.receiver = self;
  v6.super_class = PLMultiKeyEntry;
  v2 = [(PLEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    multiKeys = v2->_multiKeys;
    v2->_multiKeys = v3;
  }

  return v2;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLMultiKeyEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = PLMultiKeyEntry;
  [(PLEntry *)&v10 setObject:a3 forKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__PLMultiKeyEntry_setObject_forKey___block_invoke;
    v8[3] = &unk_1E8519948;
    v8[4] = self;
    v9 = v7;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __36__PLMultiKeyEntry_setObject_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) multiKeys];
  v7 = [v6 objectForKeyedSubscript:v19];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = [*(a1 + 32) multiKeys];
    [v9 setObject:v8 forKeyedSubscript:v19];
  }

  v10 = [*(a1 + 32) multiKeys];
  v11 = [v10 objectForKeyedSubscript:v19];
  v12 = [v11 objectForKeyedSubscript:v5];

  if (!v12)
  {
    v13 = objc_opt_new();
    v14 = [*(a1 + 32) multiKeys];
    v15 = [v14 objectForKeyedSubscript:v19];
    [v15 setObject:v13 forKeyedSubscript:v5];
  }

  v16 = [*(a1 + 32) multiKeys];
  v17 = [v16 objectForKeyedSubscript:v19];
  v18 = [v17 objectForKeyedSubscript:v5];
  [v18 addObject:*(a1 + 40)];
}

- (id)keysForSubKey:(id)a3 ofSubKeyType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLMultiKeyEntry *)self multiKeys];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 objectForKeyedSubscript:v7];

  return v10;
}

- (id)objectsForSubKey:(id)a3 ofSubKeyType:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(PLMultiKeyEntry *)self keysForSubKey:a3 ofSubKeyType:a4];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PLEntry *)self objectForKey:*(*(&v15 + 1) + 8 * i), v15];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)serializedForJSON
{
  v3 = objc_opt_new();
  v4 = [(PLEntry *)self dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__PLMultiKeyEntry_serializedForJSON__block_invoke;
  v10[3] = &unk_1E8519700;
  v5 = v3;
  v11 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = MEMORY[0x1E696AD98];
  v7 = [(PLEntry *)self entryDate];
  [v7 timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v5 setObject:v8 forKeyedSubscript:@"timestamp"];

  return v5;
}

void __36__PLMultiKeyEntry_serializedForJSON__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v11 allValues];
    v7 = [v6 componentsJoinedByString:@"__"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v11;
    }

    else
    {
      v8 = [v11 description];
    }

    v7 = v8;
  }

  if (([v5 isNil] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E696AD98];
      [v5 timeIntervalSince1970];
      v10 = [v9 numberWithDouble:?];
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
    }
  }
}

@end