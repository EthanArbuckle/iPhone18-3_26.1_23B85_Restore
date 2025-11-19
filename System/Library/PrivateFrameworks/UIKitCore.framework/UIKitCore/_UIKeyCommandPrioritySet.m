@interface _UIKeyCommandPrioritySet
- (BOOL)isEqual:(id)a3;
- (_UIKeyCommandPrioritySet)init;
- (id)allKeyCommands;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)intersection:(id *)a1;
- (id)member:(uint64_t)a1;
- (uint64_t)count;
- (void)addKeyCommand:(uint64_t)a1;
- (void)minusSet:(uint64_t)a1;
- (void)unionSet:(uint64_t)a1;
@end

@implementation _UIKeyCommandPrioritySet

- (_UIKeyCommandPrioritySet)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyCommandPrioritySet;
  v2 = [(_UIKeyCommandPrioritySet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (id)allKeyCommands
{
  v1 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [v1[1] keyEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [v1[1] objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
          v9 = [v8 allObjects];
          [v2 addObjectsFromArray:v9];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v1 = [v2 copy];
  }

  return v1;
}

- (uint64_t)count
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 8) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(a1 + 8) objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i)];
        v5 += [v8 count];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)unionSet:(uint64_t)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3[1] allKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
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
          v11 = [*(a1 + 8) objectForKeyedSubscript:v10];
          v12 = [v4[1] objectForKeyedSubscript:v10];
          v13 = v12;
          if (v11)
          {
            [v11 unionSet:v12];
          }

          else
          {
            v14 = [v12 mutableCopy];
            [*(a1 + 8) setObject:v14 forKeyedSubscript:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

- (void)minusSet:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 8) allKeys];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [*(a1 + 8) objectForKeyedSubscript:v9];
          v11 = [v3[1] objectForKeyedSubscript:v9];
          v12 = v11;
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            [v10 minusSet:v11];
            if (![v10 count])
            {
              [*(a1 + 8) removeObjectForKey:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (id)intersection:(id *)a1
{
  v2 = a1;
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v2 = [v2 copy];
    v4 = v3;
    if (v2)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v5 = [v2[1] keyEnumerator];
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [v2[1] objectForKeyedSubscript:v10];
            v12 = [v4[1] objectForKeyedSubscript:v10];
            if (v12)
            {
              v13 = [v11 mutableCopy];

              [v13 intersectSet:v12];
              if ([v13 count])
              {
                [v16 setObject:v13 forKeyedSubscript:v10];
              }
            }

            else
            {
              v13 = v11;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v7);
      }

      v14 = v2[1];
      v2[1] = v16;
    }
  }

  return v2;
}

- (void)addKeyCommand:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [(UIKeyCommand *)v3 _enumerationPriorityNumber];
    v5 = [*(a1 + 8) objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      [v5 addObject:v8];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA8] setWithObject:v8];
      [*(a1 + 8) setObject:v7 forKeyedSubscript:v4];
    }

    v3 = v8;
  }
}

- (id)member:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = a2;
    v4 = [(UIKeyCommand *)v3 _enumerationPriorityNumber];
    v5 = [v2 objectForKeyedSubscript:v4];
    v6 = [v5 member:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      storage = v7->_storage;
      v9 = self->_storage;
      v10 = storage;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [(NSMutableDictionary *)v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [(_UIKeyCommandPrioritySet *)v4 unionSet:?];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendDictionarySection:self->_storage withName:@"_storage" skipIfEmpty:0];
  v4 = [v3 build];

  return v4;
}

@end