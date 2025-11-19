@interface StocksOpenURLHelper
+ (id)URLForStockComponents:(id)a3;
+ (id)componentDictionaryFromURL:(id)a3;
@end

@implementation StocksOpenURLHelper

+ (id)URLForStockComponents:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"symbol"];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v4 setScheme:@"stocks"];
    v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"symbol" value:v3];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v4 setQueryItems:v6];

    v7 = [v4 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)componentDictionaryFromURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 queryItems];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 value];
        v12 = [v10 name];
        [v4 na_safeSetObject:v11 forKey:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end