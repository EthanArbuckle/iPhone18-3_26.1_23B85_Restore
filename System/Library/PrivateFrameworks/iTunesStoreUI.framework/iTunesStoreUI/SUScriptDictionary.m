@interface SUScriptDictionary
+ (BOOL)isSelectorExcludedFromWebScript:(SEL)a3;
+ (void)initialize;
- (SUScriptDictionary)initWithDictionary:(id)a3;
- (id)stringRepresentation;
- (id)valueForNotNativelySupportedKey:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation SUScriptDictionary

- (SUScriptDictionary)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SUScriptDictionary;
  v5 = [(SUScriptDictionary *)&v25 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.iTunesStoreUI.SUScriptDictionary-%p", v5];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v5->_dictionary;
    v13 = [(NSDictionary *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSDictionary *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    stringKeys = v5->_stringKeys;
    v5->_stringKeys = v18;
  }

  return v5;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v4 = MEMORY[0x1E69E2F88];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", a4];
  [v4 throwException:v5];
}

- (id)valueForNotNativelySupportedKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__33;
  v16 = __Block_byref_object_dispose__33;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SUScriptDictionary_valueForNotNativelySupportedKey___block_invoke;
  block[3] = &unk_1E81660C8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__SUScriptDictionary_valueForNotNativelySupportedKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 32) objectForKey:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = *(*(a1[6] + 8) + 40);
      v8 = [[SUScriptDictionary alloc] initWithDictionary:v15];
      v9 = *(a1[4] + 24);
      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = a1[4];
        v12 = *(v11 + 24);
        *(v11 + 24) = v10;

        v9 = *(a1[4] + 24);
      }

      [v9 setObject:v8 forKey:a1[5]];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v8;
    }
  }
}

- (id)stringRepresentation
{
  dictionary = self->_dictionary;
  if (dictionary)
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:1 error:0];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isSelectorExcludedFromWebScript:(SEL)a3
{
  v3 = [a1 webScriptNameForSelector:a3];
  v4 = v3 == 0;

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_36 = sel_stringRepresentation;
    unk_1EBF3B280 = @"toString";
    qword_1EBF3B288 = sel_valueForNotNativelySupportedKey_;
    unk_1EBF3B290 = @"get";
  }
}

@end