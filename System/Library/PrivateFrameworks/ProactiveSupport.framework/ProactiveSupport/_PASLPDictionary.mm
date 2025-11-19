@interface _PASLPDictionary
- (BOOL)isEqualToDictionary:(id)a3;
- (_PASLPDictionary)initWithCoder:(id)a3;
- (_PASLPDictionary)initWithLazyPlistReader:(id)a3 context:(id)a4;
- (_PASLPDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)_pas_overrideUnlazyDictionary;
- (id)allKeys;
- (id)allKeysForObject:(id)a3;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
@end

@implementation _PASLPDictionary

- (id)allKeys
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  context = self->_context;
  if (context)
  {
    count = context->_count;
  }

  else
  {
    count = 0;
  }

  v6 = [v3 initWithCapacity:count];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27___PASLPDictionary_allKeys__block_invoke;
  v10[3] = &unk_1E77F2478;
  v11 = v6;
  v7 = v6;
  [(_PASLPDictionary *)self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [v7 copy];

  return v8;
}

- (unint64_t)count
{
  context = self->_context;
  if (context)
  {
    return context->_count;
  }

  else
  {
    return 0;
  }
}

- (id)_pas_overrideUnlazyDictionary
{
  reader = self->_reader;
  if (objc_opt_respondsToSelector())
  {
    DeepCopy = [(_PASLPReaderProtocol *)self->_reader unlazyCopyForDictionaryWithContext:self->_context];
  }

  else
  {
    DeepCopy = CFPropertyListCreateDeepCopy(0, self, 0);
  }

  return DeepCopy;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  context = self->_context;
  if (context)
  {
    count = context->_count;
  }

  else
  {
    count = 0;
  }

  v7 = [v4 initWithCapacity:count];
  for (i = 0; ; ++i)
  {
    v9 = self->_context;
    if (v9)
    {
      v9 = v9->_count;
    }

    if (i >= v9)
    {
      break;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = [(_PASLPReaderProtocol *)self->_reader keyAtIndex:i usingDictionaryContext:self->_context];
    v12 = [(_PASLPReaderProtocol *)self->_reader objectAtIndex:i usingDictionaryContext:self->_context];
    [v7 setObject:v12 forKeyedSubscript:v11];

    objc_autoreleasePoolPop(v10);
  }

  return v7;
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  if (a5)
  {
    context = self->_context;
    if (context)
    {
      context = *(context + 16);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __45___PASLPDictionary_getObjects_andKeys_count___block_invoke;
    v8 = &unk_1E77F24F0;
    if (context >= a5)
    {
      context = a5;
    }

    v9 = self;
    v10 = a3;
    v11 = context;
    v12 = a4;
    pthread_mutex_lock(&runWithGlobalPLPLock_lock_3366);
    v7(v6);
    pthread_mutex_unlock(&runWithGlobalPLPLock_lock_3366);
  }
}

- (BOOL)isEqualToDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  if (!v4)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_reader != v5->_reader || ![(_PASLPDictionaryContext *)self->_context isEqual:v5->_context])
  {
    v7 = [(_PASLPDictionary *)v5 count];
    context = self->_context;
    if (context)
    {
      context = context->_count;
    }

    if (v7 == context)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 1;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40___PASLPDictionary_isEqualToDictionary___block_invoke;
      v10[3] = &unk_1E77F24C8;
      v11 = v5;
      v12 = &v13;
      [(_PASLPDictionary *)self enumerateKeysAndObjectsUsingBlock:v10];
      v6 = *(v14 + 24);

      _Block_object_dispose(&v13, 8);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_6:
  v6 = 1;
LABEL_12:

  return v6 & 1;
}

- (id)allKeysForObject:(id)a3
{
  v4 = a3;
  if (v4 && (context = self->_context) != 0 && context->_count)
  {
    v6 = objc_opt_new();
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __37___PASLPDictionary_allKeysForObject___block_invoke;
    v13 = &unk_1E77F24A0;
    v14 = v4;
    v15 = v6;
    v7 = v6;
    [(_PASLPDictionary *)self enumerateKeysAndObjectsUsingBlock:&v10];
    v8 = [v7 copy];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)allValues
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  context = self->_context;
  if (context)
  {
    count = context->_count;
  }

  else
  {
    count = 0;
  }

  v6 = [v3 initWithCapacity:count];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29___PASLPDictionary_allValues__block_invoke;
  v10[3] = &unk_1E77F2478;
  v11 = v6;
  v7 = v6;
  [(_PASLPDictionary *)self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [v7 copy];

  return v8;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  v11 = [(_PASLPDictionaryContext *)self->_context enumerationCache];
  v12 = v11;
  if (var0)
  {
    if (v11)
    {
      [v11 removeAllObjects];
    }
  }

  else if (!v11)
  {
    context = self->_context;
    if (context && context->_count)
    {
      v14 = objc_opt_new();
      v15 = v14;
      v16 = self->_context;
      if (v16)
      {
        v16 = v16->_count;
      }

      if (v16 >= a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = v16;
      }

      [v14 setCountLimit:v17];
      [(_PASLPDictionaryContext *)self->_context setEnumerationCache:v15];
      v12 = v15;
      CFAutorelease(v12);
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = 0;
  if (a5)
  {
    while (1)
    {
      v19 = self->_context;
      if (!v19 || a3->var0 >= v19->_count)
      {
        break;
      }

      v20 = [_PASLPReaderProtocol keyAtIndex:"keyAtIndex:usingDictionaryContext:" usingDictionaryContext:?];
      if (!v20)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"key"}];
      }

      CFRetain(v20);
      CFAutorelease(v20);
      a4[v18] = v20;
      ++a3->var0;

      if (a5 == ++v18)
      {
        v18 = a5;
        break;
      }
    }
  }

  a3->var1 = a4;
  a3->var2 = self;
  return v18;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v7 = 0;
  v14 = 0;
  do
  {
    context = self->_context;
    if (context)
    {
      context = context->_count;
    }

    if (v7 >= context)
    {
      break;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = [(_PASLPReaderProtocol *)self->_reader keyAtIndex:v7 usingDictionaryContext:self->_context];
    v11 = [(_PASLPReaderProtocol *)self->_reader objectAtIndex:v7 usingDictionaryContext:self->_context];
    v6[2](v6, v10, v11, &v14);
    v12 = v14;

    objc_autoreleasePoolPop(v9);
    ++v7;
  }

  while (v12 != 1);
}

- (id)keyEnumerator
{
  v2 = [[_PASLPDictionaryEnumerator alloc] initWithLazyPlistReader:self->_reader context:self->_context];

  return v2;
}

- (_PASLPDictionary)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (_PASLPDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:a3 forKeys:a4 count:a5];

  return v6;
}

- (_PASLPDictionary)initWithLazyPlistReader:(id)a3 context:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"reader"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = _PASLPDictionary;
  v11 = [(_PASLPDictionary *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_reader, a3);
    objc_storeStrong(&v12->_context, a4);
  }

  return v12;
}

@end