@interface _PSFeatureDictionaryEnumerator
- (id)_allKeys;
- (id)_nextKey;
- (uint64_t)_loadNextKeyEnumerator;
- (uint64_t)initWithCollection:(uint64_t)a1;
@end

@implementation _PSFeatureDictionaryEnumerator

- (uint64_t)initWithCollection:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = _PSFeatureDictionaryEnumerator;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 2, v3[1]);
      objc_storeStrong((a1 + 24), v3[2]);
      v6 = [*(a1 + 16) allKeys];
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      *(a1 + 32) = [*(a1 + 16) count];
      [(_PSFeatureDictionaryEnumerator *)a1 _loadNextKeyEnumerator];
    }
  }

  return a1;
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
      v6 = [v5 keyEnumerator];
      OUTLINED_FUNCTION_0_5(v6, 40);

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
          v7 = [result keyEnumerator];
          OUTLINED_FUNCTION_0_5(v7, 40);
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
  if (a1)
  {
    do
    {
      v2 = [*(a1 + 40) nextObject];
    }

    while (!v2 && ([(_PSFeatureDictionaryEnumerator *)a1 _loadNextKeyEnumerator]& 1) != 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_allKeys
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [*(a1 + 40) nextObject];
    if (v3)
    {
      v4 = v3;
      do
      {
        [v2 addObject:v4];
        v5 = [*(a1 + 40) nextObject];

        v4 = v5;
      }

      while (v5);
    }

    for (i = *(a1 + 32); i; i = *(a1 + 32))
    {
      v7 = *(a1 + 16);
      v8 = [*(a1 + 8) objectAtIndexedSubscript:i - 1];
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

      --*(a1 + 32);
    }

    v17 = *(a1 + 24);
    if (v17 && (*(a1 + 48) & 1) == 0)
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

      *(a1 + 48) = 1;
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