@interface _PASLowValueCardinalityMutableDictionary
- (_PASLowValueCardinalityMutableDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)allKeysForObject:(id)a3;
- (id)allValues;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation _PASLowValueCardinalityMutableDictionary

- (id)keyEnumerator
{
  v3 = [(NSMutableArray *)self->_objectsAndKeys count];
  if (v3 == 2)
  {
    v5 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:1];
    v4 = [(_PASLowValueCardinalityMutableDictionary *)v5 objectEnumerator];
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E695E0F0] objectEnumerator];
      goto LABEL_9;
    }

    v4 = [_PASLowValueCardinalityMutableDictionaryEnumerator alloc];
    v5 = self;
    if (v4)
    {
      v8.receiver = v4;
      v8.super_class = _PASLowValueCardinalityMutableDictionaryEnumerator;
      v6 = [(_PASLowValueCardinalityMutableDictionary *)&v8 init];
      v4 = v6;
      if (v6)
      {
        objc_storeStrong(&v6->_objectsAndKeys, self->_objectsAndKeys);
        v4->_i = [(NSArray *)v4->_objectsAndKeys count];
        [(_PASLowValueCardinalityMutableDictionaryEnumerator *)v4 _loadNextKeyEnumerator];
      }
    }
  }

LABEL_9:

  return v4;
}

- (id)allKeysForObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSMutableArray *)self->_objectsAndKeys count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v18 = self;
    do
    {
      v9 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:v8];
      if ([v9 isEqual:v4])
      {
        v10 = v4;
        v11 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:v8 | 1];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v5 addObject:*(*(&v19 + 1) + 8 * i)];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v13);
        }

        v4 = v10;
        self = v18;
      }

      v8 += 2;
    }

    while (v8 < v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)allValues
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_count];
  v4 = [(NSMutableArray *)self->_objectsAndKeys count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i < v5; i += 2)
    {
      v7 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:i];
      v8 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:i | 1];
      v9 = [v8 count];

      while (v9)
      {
        --v9;
        [v3 addObject:v7];
      }
    }
  }

  return v3;
}

- (void)removeObjectForKey:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableArray *)self->_objectsAndKeys count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:v6 + 1];
      if ([v7 containsObject:v8])
      {
        break;
      }

      v6 += 2;

      if (v6 >= v5)
      {
        goto LABEL_9;
      }
    }

    [v7 removeObject:v8];
    if (![v7 count])
    {
      [(NSMutableArray *)self->_objectsAndKeys removeObjectsInRange:v6, 2];
    }

    --self->_count;
  }

LABEL_9:
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v34 = a3;
  v7 = a4;
  if (!v34)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_PASLowValueCardinalityMutableDictionary.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"anObject"}];

    if (self)
    {
      goto LABEL_3;
    }

LABEL_35:
    v11 = 0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_35;
  }

LABEL_3:
  objectsAndKeys = self->_objectsAndKeys;
  if (!objectsAndKeys)
  {
    v9 = objc_opt_new();
    v10 = self->_objectsAndKeys;
    self->_objectsAndKeys = v9;

    objectsAndKeys = self->_objectsAndKeys;
  }

  v11 = objectsAndKeys;
LABEL_6:
  v12 = [(NSMutableArray *)v11 count];
  if (v12)
  {
    v13 = v12;
    v33 = self;
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = [(NSMutableArray *)v11 objectAtIndexedSubscript:v17];
      v20 = [(NSMutableArray *)v11 objectAtIndexedSubscript:v17 + 1];
      v21 = v20;
      if (v14)
      {
        break;
      }

      v14 = [v20 containsObject:v7];
      if (v19 == v34)
      {
        goto LABEL_17;
      }

      if (v14)
      {
        [v21 removeObject:v7];
        if (![v21 count])
        {
          v18 = 2;
          v16 = v17;
        }

        LOBYTE(v14) = 1;
LABEL_18:
        if (v15)
        {

          if (v18)
          {
            [(NSMutableArray *)v11 removeObjectsInRange:v16, v18];
          }

          goto LABEL_31;
        }
      }

LABEL_19:
      v17 += 2;

      if (v17 >= v13)
      {
        if (v18)
        {
          if (v15)
          {
            [(NSMutableArray *)v11 removeObjectsInRange:v16, v18];
          }

          else
          {
            [(NSMutableArray *)v11 setObject:v34 atIndexedSubscript:v16];
            v29 = objc_alloc(MEMORY[0x1E695DFA8]);
            v30 = [v7 copyWithZone:0];
            v31 = [v29 initWithObjects:{v30, 0}];
            [(NSMutableArray *)v11 setObject:v31 atIndexedSubscript:v16 + 1];
          }
        }

        else if ((v15 & 1) == 0)
        {
          [(NSMutableArray *)v11 addObject:v34];
          v26 = objc_alloc(MEMORY[0x1E695DFA8]);
          v27 = [v7 copyWithZone:0];
          v28 = [v26 initWithObjects:{v27, 0}];
          [(NSMutableArray *)v11 addObject:v28];
        }

        self = v33;
        if (v14)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    v14 = 1;
    if (v19 != v34)
    {
      goto LABEL_18;
    }

LABEL_17:
    v22 = [v7 copyWithZone:0];
    [v21 addObject:v22];

    v15 = 1;
    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  [(NSMutableArray *)v11 addObject:v34];
  v23 = objc_alloc(MEMORY[0x1E695DFA8]);
  v24 = [v7 copyWithZone:0];
  v25 = [v23 initWithObjects:{v24, 0}];
  [(NSMutableArray *)v11 addObject:v25];

LABEL_30:
  ++self->_count;
LABEL_31:
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_objectsAndKeys count];
  v6 = -2;
  while (1)
  {
    v7 = v6 + 2;
    if (v6 + 2 >= v5)
    {
      break;
    }

    v8 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:v6 + 3];
    v9 = [v8 containsObject:v4];

    v6 = v7;
    if (v9)
    {
      v10 = [(NSMutableArray *)self->_objectsAndKeys objectAtIndexedSubscript:v7];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (_PASLowValueCardinalityMutableDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = _PASLowValueCardinalityMutableDictionary;
  v8 = [(_PASLowValueCardinalityMutableDictionary *)&v14 init];
  if (v8)
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      [(_PASLowValueCardinalityMutableDictionary *)v8 setObject:v10 forKeyedSubscript:v12];
      --a5;
    }

    while (a5);
  }

  return v8;
}

@end