@interface SBCountedMap
- (BOOL)checkinValue:(id)a3;
- (BOOL)containsValue:(id)a3;
- (SBCountedMap)init;
- (id)checkoutValueForKey:(id)a3 creationBlock:(id)a4;
- (id)description;
- (void)checkinValues:(id)a3;
@end

@implementation SBCountedMap

- (SBCountedMap)init
{
  v8.receiver = self;
  v8.super_class = SBCountedMap;
  v2 = [(SBCountedMap *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    countedKeys = v2->_countedKeys;
    v2->_countedKeys = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    map = v2->_map;
    v2->_map = v5;
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_map withName:@"map"];
  v5 = objc_opt_new();
  countedKeys = self->_countedKeys;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __27__SBCountedMap_description__block_invoke;
  v14 = &unk_1E808B228;
  v15 = v5;
  v16 = self;
  v7 = v5;
  [(NSCountedSet *)countedKeys enumerateObjectsUsingBlock:&v11];
  v8 = [v3 appendObject:v7 withName:{@"countedKeys w/ count", v11, v12, v13, v14}];
  v9 = [v3 build];

  return v9;
}

void __27__SBCountedMap_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(*(a1 + 40) + 8);
  v5 = a2;
  v6 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", v5)}];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)checkoutValueForKey:(id)a3 creationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = [(NSMutableDictionary *)self->_map objectForKey:v6];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 sbh_countedMapKey];
    [(NSCountedSet *)self->_countedKeys addObject:v10];
LABEL_4:

    goto LABEL_9;
  }

  if (v7)
  {
    v11 = v7[2](v7, v6);
    v9 = v11;
    if (v11)
    {
      v10 = [v11 sbh_countedMapKey];
      [(NSCountedSet *)self->_countedKeys addObject:v10];
      [(NSMutableDictionary *)self->_map setObject:v9 forKey:v10];
      goto LABEL_4;
    }
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (BOOL)checkinValue:(id)a3
{
  v4 = a3;
  v5 = [v4 sbh_countedMapKey];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_map objectForKey:v5];
    if (v6 == v4 && ([(NSCountedSet *)self->_countedKeys removeObject:v5], ([(NSCountedSet *)self->_countedKeys containsObject:v5]& 1) == 0))
    {
      [(NSMutableDictionary *)self->_map removeObjectForKey:v5];
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)checkinValues:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBCountedMap *)self checkinValue:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)containsValue:(id)a3
{
  v4 = [a3 sbh_countedMapKey];
  if (v4)
  {
    v5 = [(NSCountedSet *)self->_countedKeys containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end