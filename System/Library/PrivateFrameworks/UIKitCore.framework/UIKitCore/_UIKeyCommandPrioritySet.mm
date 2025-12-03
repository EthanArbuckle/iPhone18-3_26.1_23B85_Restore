@interface _UIKeyCommandPrioritySet
- (BOOL)isEqual:(id)equal;
- (_UIKeyCommandPrioritySet)init;
- (id)allKeyCommands;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)intersection:(id *)intersection;
- (id)member:(uint64_t)member;
- (uint64_t)count;
- (void)addKeyCommand:(uint64_t)command;
- (void)minusSet:(uint64_t)set;
- (void)unionSet:(uint64_t)set;
@end

@implementation _UIKeyCommandPrioritySet

- (_UIKeyCommandPrioritySet)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyCommandPrioritySet;
  v2 = [(_UIKeyCommandPrioritySet *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->_storage;
    v2->_storage = dictionary;
  }

  return v2;
}

- (id)allKeyCommands
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    keyEnumerator = [selfCopy[1] keyEnumerator];
    v4 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v8 = [selfCopy[1] objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
          allObjects = [v8 allObjects];
          [array addObjectsFromArray:allObjects];
        }

        v5 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    selfCopy = [array copy];
  }

  return selfCopy;
}

- (uint64_t)count
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  keyEnumerator = [*(self + 8) keyEnumerator];
  v3 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = [*(self + 8) objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i)];
        v5 += [v8 count];
      }

      v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)unionSet:(uint64_t)set
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (set)
  {
    allKeys = [v3[1] allKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
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
          v11 = [*(set + 8) objectForKeyedSubscript:v10];
          v12 = [v4[1] objectForKeyedSubscript:v10];
          v13 = v12;
          if (v11)
          {
            [v11 unionSet:v12];
          }

          else
          {
            v14 = [v12 mutableCopy];
            [*(set + 8) setObject:v14 forKeyedSubscript:v10];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

- (void)minusSet:(uint64_t)set
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (set)
  {
    allKeys = [*(set + 8) allKeys];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [*(set + 8) objectForKeyedSubscript:v9];
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
              [*(set + 8) removeObjectForKey:v9];
            }
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (id)intersection:(id *)intersection
{
  intersectionCopy = intersection;
  v22 = *MEMORY[0x1E69E9840];
  if (intersection)
  {
    v3 = a2;
    intersectionCopy = [intersectionCopy copy];
    v4 = v3;
    if (intersectionCopy)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      keyEnumerator = [intersectionCopy[1] keyEnumerator];
      v6 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(keyEnumerator);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [intersectionCopy[1] objectForKeyedSubscript:v10];
            v12 = [v4[1] objectForKeyedSubscript:v10];
            if (v12)
            {
              v13 = [v11 mutableCopy];

              [v13 intersectSet:v12];
              if ([v13 count])
              {
                [dictionary setObject:v13 forKeyedSubscript:v10];
              }
            }

            else
            {
              v13 = v11;
            }
          }

          v7 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v7);
      }

      v14 = intersectionCopy[1];
      intersectionCopy[1] = dictionary;
    }
  }

  return intersectionCopy;
}

- (void)addKeyCommand:(uint64_t)command
{
  v3 = a2;
  if (command)
  {
    v8 = v3;
    _enumerationPriorityNumber = [(UIKeyCommand *)v3 _enumerationPriorityNumber];
    v5 = [*(command + 8) objectForKeyedSubscript:_enumerationPriorityNumber];
    v6 = v5;
    if (v5)
    {
      [v5 addObject:v8];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA8] setWithObject:v8];
      [*(command + 8) setObject:v7 forKeyedSubscript:_enumerationPriorityNumber];
    }

    v3 = v8;
  }
}

- (id)member:(uint64_t)member
{
  if (member)
  {
    v2 = *(member + 8);
    v3 = a2;
    _enumerationPriorityNumber = [(UIKeyCommand *)v3 _enumerationPriorityNumber];
    v5 = [v2 objectForKeyedSubscript:_enumerationPriorityNumber];
    v6 = [v5 member:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [(_UIKeyCommandPrioritySet *)v4 unionSet:?];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendDictionarySection:self->_storage withName:@"_storage" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

@end