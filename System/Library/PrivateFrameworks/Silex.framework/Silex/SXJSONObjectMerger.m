@interface SXJSONObjectMerger
- (SXJSONObjectMerger)initWithClassProvider:(id)a3 exclusionKeys:(id)a4;
- (SXJSONObjectMerger)initWithObjectClass:(Class)a3 exclusionKeys:(id)a4;
- (id)appendKey:(id)a3 keyPath:(id)a4;
- (id)mergeDictionary:(id)a3 withDictionary:(id)a4 keyPath:(id)a5;
- (id)mergeObjects:(id)a3;
- (id)replaceLastKeyOfKeyPath:(id)a3 withKey:(id)a4;
- (void)addTransformer:(id)a3 keyPath:(id)a4;
- (void)removeTransformerForKeyPath:(id)a3;
- (void)transformObject:(id)a3 otherObject:(id)a4 transformer:(id)a5 key:(id)a6 keyPath:(id)a7 dictionary:(id)a8;
@end

@implementation SXJSONObjectMerger

- (SXJSONObjectMerger)initWithObjectClass:(Class)a3 exclusionKeys:(id)a4
{
  v6 = a4;
  v7 = [[SXJSONObjectMergerClassProvider alloc] initWithObjectClass:a3];
  v8 = [(SXJSONObjectMerger *)self initWithClassProvider:v7 exclusionKeys:v6];

  return v8;
}

- (SXJSONObjectMerger)initWithClassProvider:(id)a3 exclusionKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SXJSONObjectMerger;
  v9 = [(SXJSONObjectMerger *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_classProvider, a3);
    v11 = [v8 copy];
    exclusionKeys = v10->_exclusionKeys;
    v10->_exclusionKeys = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    transformers = v10->_transformers;
    v10->_transformers = v13;
  }

  return v10;
}

- (id)mergeObjects:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v6 = [v4 reverseObjectEnumerator];
    v7 = [MEMORY[0x1E695DF20] dictionary];
    v8 = [v6 nextObject];
    v9 = [v8 JSONRepresentation];

    if (v9)
    {
      do
      {
        v10 = [(SXJSONObjectMerger *)self mergeDictionary:v7 withDictionary:v9 keyPath:&stru_1F532F6C0];

        v11 = [v6 nextObject];
        v12 = [v11 JSONRepresentation];

        v9 = v12;
        v7 = v10;
      }

      while (v12);
    }

    else
    {
      v10 = v7;
    }

    v13 = [v4 firstObject];
    v14 = [v13 specificationVersion];

    v5 = [objc_alloc(-[SXJSONObjectMergerClassProviding classForObject:specVersion:](self->_classProvider classForObject:v10 specVersion:{v14)), "initWithJSONObject:andVersion:", v10, v14}];
  }

  return v5;
}

- (void)addTransformer:(id)a3 keyPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && [v6 length])
  {
    [(NSMutableDictionary *)self->_transformers setObject:v7 forKey:v6];
  }
}

- (void)removeTransformerForKeyPath:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSMutableDictionary *)self->_transformers removeObjectForKey:v4];
  }
}

- (id)mergeDictionary:(id)a3 withDictionary:(id)a4 keyPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 mutableCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__SXJSONObjectMerger_mergeDictionary_withDictionary_keyPath___block_invoke;
  v16[3] = &unk_1E8500050;
  v16[4] = self;
  v17 = v8;
  v11 = v10;
  v18 = v11;
  v12 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v16];

  [v11 removeObjectsForKeys:self->_exclusionKeys];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __61__SXJSONObjectMerger_mergeDictionary_withDictionary_keyPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) appendKey:v11 keyPath:*(a1 + 40)];
  v7 = [*(a1 + 48) objectForKey:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [*(a1 + 32) mergeDictionary:v7 withDictionary:v5 keyPath:v6];
LABEL_7:
      v9 = v8;
      [*(a1 + 48) setObject:v8 forKey:v11];

      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 arrayByAddingObjectsFromArray:v7];
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = [*(*(a1 + 32) + 24) objectForKey:v6];
  if (v10)
  {
    [*(a1 + 32) transformObject:v7 otherObject:v5 transformer:v10 key:v11 keyPath:*(a1 + 40) dictionary:*(a1 + 48)];
  }

  else if (!v7)
  {
    [*(a1 + 48) setObject:v5 forKey:v11];
  }
}

- (void)transformObject:(id)a3 otherObject:(id)a4 transformer:(id)a5 key:(id)a6 keyPath:(id)a7 dictionary:(id)a8
{
  v24 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v16 transformKey:v24];
  v20 = [v16 transformObject:v18 otherObject:v17];

  v21 = [v15 objectForKey:v19];
  if ([v19 isEqualToString:v24])
  {
    if (v20)
    {
      [v15 setObject:v20 forKey:v24];
    }
  }

  else if (v21)
  {
    v22 = [(SXJSONObjectMerger *)self appendKey:v19 keyPath:v14];
    v23 = [(NSMutableDictionary *)self->_transformers objectForKey:v22];
    if (v23)
    {
      [(SXJSONObjectMerger *)self transformObject:v21 otherObject:v20 transformer:v23 key:v19 keyPath:v22 dictionary:v15];
    }
  }

  else if (v20)
  {
    [v15 setObject:v20 forKey:v19];
    [v15 removeObjectForKey:v24];
  }
}

- (id)appendKey:(id)a3 keyPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AD60] string];
  if ([v6 length])
  {
    [v7 appendString:v6];
  }

  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    [v7 appendString:@"."];
  }

  if ([v5 length])
  {
    [v7 appendString:v5];
  }

  v8 = [v7 copy];

  return v8;
}

- (id)replaceLastKeyOfKeyPath:(id)a3 withKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([v5 length])
  {
    v8 = [v5 componentsSeparatedByString:@"."];
    [v7 addObjectsFromArray:v8];
  }

  if ([v7 count])
  {
    [v7 replaceObjectAtIndex:objc_msgSend(v7 withObject:{"count") - 1, v6}];
  }

  else if ([v6 length])
  {
    [v7 addObject:v6];
  }

  v9 = [v7 componentsJoinedByString:@"."];

  return v9;
}

@end