@interface NSDictionary
@end

@implementation NSDictionary

void __51__NSDictionary_TRI__triKeys_values_fromDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  [v5 addObject:a2];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

void __38__NSDictionary_TRIDAG__triReversedDag__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = objc_opt_new();
          [*(*(*(a1 + 32) + 8) + 40) setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __52__NSDictionary_TRIDAG__triTransformValuesWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, a3);
  [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v7];
}

@end