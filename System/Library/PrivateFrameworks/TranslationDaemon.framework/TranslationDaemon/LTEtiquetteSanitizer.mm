@interface LTEtiquetteSanitizer
@end

@implementation LTEtiquetteSanitizer

void __50___LTEtiquetteSanitizer_treeForReplacementTokens___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = *(a1 + 32);
  v7 = [v5 lowercaseString];
  v8 = [v5 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50___LTEtiquetteSanitizer_treeForReplacementTokens___block_invoke_35;
  v9[3] = &unk_2789B6A98;
  v9[4] = &v10;
  [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v9}];

  [v11[5] setObject:v6 forKeyedSubscript:@"TOKEN"];
  _Block_object_dispose(&v10, 8);
}

void __50___LTEtiquetteSanitizer_treeForReplacementTokens___block_invoke_35(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:?];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v4 forKeyedSubscript:v8];
  }

  v5 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __42___LTEtiquetteSanitizer_matchesForString___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v26 = WeakRetained;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = [v14 node];
          v16 = [v15 objectForKeyedSubscript:v6];
          v17 = *(*(a1 + 56) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          if (*(*(*(a1 + 56) + 8) + 40))
          {
            v34.location = [v14 range];
            v35.location = a3;
            v35.length = a4;
            v19 = NSUnionRange(v34, v35);
            [v14 setRange:{v19.location, v19.length}];
            [v14 setNode:*(*(*(a1 + 56) + 8) + 40)];
          }

          else
          {
            v20 = [v14 node];
            v21 = [v20 objectForKeyedSubscript:@"TOKEN"];

            if (v21)
            {
              [v14 setToken:v21];
              [*(a1 + 40) addObject:v14];
            }

            [*(a1 + 48) addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v8 = v26;
    v22 = [v26[1] objectForKeyedSubscript:v6];
    if (v22)
    {
      v23 = *(a1 + 32);
      v24 = [[_LTMatch alloc] initWithNode:v22 range:a3, a4];
      [v23 addObject:v24];
    }

    [*(a1 + 32) removeObjectsInArray:{*(a1 + 48), v26}];
    [*(a1 + 48) removeAllObjects];
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __61___LTEtiquetteSanitizer_replacementStringForString_forToken___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 isEqualToString:@"*"];
  if (result)
  {
    v8 = *(a1 + 32);

    return [v8 replaceCharactersInRange:a3 withString:{a4, @"*"}];
  }

  return result;
}

@end