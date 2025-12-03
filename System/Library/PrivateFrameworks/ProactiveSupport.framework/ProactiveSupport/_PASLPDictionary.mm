@interface _PASLPDictionary
- (BOOL)isEqualToDictionary:(id)dictionary;
- (_PASLPDictionary)initWithCoder:(id)coder;
- (_PASLPDictionary)initWithLazyPlistReader:(id)reader context:(id)context;
- (_PASLPDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)_pas_overrideUnlazyDictionary;
- (id)allKeys;
- (id)allKeysForObject:(id)object;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  if (count)
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
    if (context >= count)
    {
      context = count;
    }

    selfCopy = self;
    objectsCopy = objects;
    v11 = context;
    keysCopy = keys;
    pthread_mutex_lock(&runWithGlobalPLPLock_lock_3366);
    v7(v6);
    pthread_mutex_unlock(&runWithGlobalPLPLock_lock_3366);
  }
}

- (BOOL)isEqualToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy == self)
  {
    goto LABEL_6;
  }

  if (!dictionaryCopy)
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

- (id)allKeysForObject:(id)object
{
  objectCopy = object;
  if (objectCopy && (context = self->_context) != 0 && context->_count)
  {
    v6 = objc_opt_new();
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __37___PASLPDictionary_allKeysForObject___block_invoke;
    v13 = &unk_1E77F24A0;
    v14 = objectCopy;
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  enumerationCache = [(_PASLPDictionaryContext *)self->_context enumerationCache];
  v12 = enumerationCache;
  if (var0)
  {
    if (enumerationCache)
    {
      [enumerationCache removeAllObjects];
    }
  }

  else if (!enumerationCache)
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

      if (v16 >= count)
      {
        countCopy = count;
      }

      else
      {
        countCopy = v16;
      }

      [v14 setCountLimit:countCopy];
      [(_PASLPDictionaryContext *)self->_context setEnumerationCache:v15];
      v12 = v15;
      CFAutorelease(v12);
    }

    else
    {
      v12 = 0;
    }
  }

  countCopy2 = 0;
  if (count)
  {
    while (1)
    {
      v19 = self->_context;
      if (!v19 || state->var0 >= v19->_count)
      {
        break;
      }

      v20 = [_PASLPReaderProtocol keyAtIndex:"keyAtIndex:usingDictionaryContext:" usingDictionaryContext:?];
      if (!v20)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"key"}];
      }

      CFRetain(v20);
      CFAutorelease(v20);
      objects[countCopy2] = v20;
      ++state->var0;

      if (count == ++countCopy2)
      {
        countCopy2 = count;
        break;
      }
    }
  }

  state->var1 = objects;
  state->var2 = self;
  return countCopy2;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"block"}];
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
    blockCopy[2](blockCopy, v10, v11, &v14);
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

- (_PASLPDictionary)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (_PASLPDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:objects forKeys:keys count:count];

  return v6;
}

- (_PASLPDictionary)initWithLazyPlistReader:(id)reader context:(id)context
{
  readerCopy = reader;
  contextCopy = context;
  v10 = contextCopy;
  if (readerCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"reader"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLPDictionary.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = _PASLPDictionary;
  v11 = [(_PASLPDictionary *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_reader, reader);
    objc_storeStrong(&v12->_context, context);
  }

  return v12;
}

@end