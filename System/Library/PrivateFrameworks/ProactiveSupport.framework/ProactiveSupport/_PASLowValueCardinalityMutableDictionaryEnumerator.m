@interface _PASLowValueCardinalityMutableDictionaryEnumerator
- (BOOL)_loadNextKeyEnumerator;
- (id)allObjects;
- (id)nextObject;
@end

@implementation _PASLowValueCardinalityMutableDictionaryEnumerator

- (BOOL)_loadNextKeyEnumerator
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = [*(a1 + 8) objectAtIndexedSubscript:v1 - 1];
    v4 = [v3 objectEnumerator];
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    *(a1 + 16) -= 2;
  }

  return v1 != 0;
}

- (id)nextObject
{
  if (self)
  {
    v3 = self;
    self = [(NSEnumerator *)self->_keyEnumerator nextObject];
    if (!self)
    {
      if ([(_PASLowValueCardinalityMutableDictionaryEnumerator *)v3 _loadNextKeyEnumerator])
      {
        self = [(NSEnumerator *)v3->_keyEnumerator nextObject];
      }

      else
      {
        self = 0;
      }
    }

    v2 = vars8;
  }

  return self;
}

- (id)allObjects
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = objc_opt_new();
    v4 = [(NSEnumerator *)self->_keyEnumerator nextObject];
    if (v4)
    {
      v5 = v4;
      do
      {
        [v3 addObject:v5];
        v6 = [(NSEnumerator *)self->_keyEnumerator nextObject];

        v5 = v6;
      }

      while (v6);
    }

    for (i = self->_i; i; i = self->_i)
    {
      v8 = [(NSArray *)self->_objectsAndKeys objectAtIndexedSubscript:i - 1];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v18;
        do
        {
          v13 = 0;
          v14 = v11;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v11 = *(*(&v17 + 1) + 8 * v13);

            [v3 addObject:v11];
            ++v13;
            v14 = v11;
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      self->_i -= 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

@end