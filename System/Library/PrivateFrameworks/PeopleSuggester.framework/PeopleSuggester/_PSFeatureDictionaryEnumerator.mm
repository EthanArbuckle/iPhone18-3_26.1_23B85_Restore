@interface _PSFeatureDictionaryEnumerator
- (id)_allKeys;
- (id)_nextKey;
- (uint64_t)_loadNextKeyEnumerator;
- (uint64_t)initWithCollection:(uint64_t)collection;
@end

@implementation _PSFeatureDictionaryEnumerator

- (uint64_t)initWithCollection:(uint64_t)collection
{
  v3 = a2;
  if (collection)
  {
    v8.receiver = collection;
    v8.super_class = _PSFeatureDictionaryEnumerator;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    collection = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 2, v3[1]);
      objc_storeStrong((collection + 24), v3[2]);
      allKeys = [*(collection + 16) allKeys];
      v7 = *(collection + 8);
      *(collection + 8) = allKeys;

      *(collection + 32) = [*(collection + 16) count];
      [(_PSFeatureDictionaryEnumerator *)collection _loadNextKeyEnumerator];
    }
  }

  return collection;
}

- (uint64_t)_loadNextKeyEnumerator
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      v3 = *(result + 16);
      v4 = [*(result + 8) objectAtIndexedSubscript:v2 - 1];
      v5 = [v3 objectForKeyedSubscript:v4];
      keyEnumerator = [v5 keyEnumerator];
      OUTLINED_FUNCTION_0_5(keyEnumerator, 40);

      --*(v1 + 32);
      return 1;
    }

    else
    {
      result = *(result + 24);
      if (result)
      {
        if (*(v1 + 48))
        {
          return 0;
        }

        else
        {
          keyEnumerator2 = [result keyEnumerator];
          OUTLINED_FUNCTION_0_5(keyEnumerator2, 40);
          result = 1;
          *(v1 + 48) = 1;
        }
      }
    }
  }

  return result;
}

- (id)_nextKey
{
  if (self)
  {
    do
    {
      nextObject = [*(self + 40) nextObject];
    }

    while (!nextObject && ([(_PSFeatureDictionaryEnumerator *)self _loadNextKeyEnumerator]& 1) != 0);
  }

  else
  {
    nextObject = 0;
  }

  return nextObject;
}

- (id)_allKeys
{
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_opt_new();
    nextObject = [*(self + 40) nextObject];
    if (nextObject)
    {
      v4 = nextObject;
      do
      {
        [v2 addObject:v4];
        nextObject2 = [*(self + 40) nextObject];

        v4 = nextObject2;
      }

      while (nextObject2);
    }

    for (i = *(self + 32); i; i = *(self + 32))
    {
      v7 = *(self + 16);
      v8 = [*(self + 8) objectAtIndexedSubscript:i - 1];
      v9 = [v7 objectForKeyedSubscript:v8];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v32;
        do
        {
          v15 = 0;
          v16 = v13;
          do
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v31 + 1) + 8 * v15);

            [v2 addObject:v13];
            ++v15;
            v16 = v13;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v12);
      }

      --*(self + 32);
    }

    v17 = *(self + 24);
    if (v17 && (*(self + 48) & 1) == 0)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v28;
        do
        {
          v23 = 0;
          v24 = v21;
          do
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v21 = *(*(&v27 + 1) + 8 * v23);

            [v2 addObject:{v21, v27}];
            ++v23;
            v24 = v21;
          }

          while (v20 != v23);
          v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v20);
      }

      *(self + 48) = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v2;
}

@end