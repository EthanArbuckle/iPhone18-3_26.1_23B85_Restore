@interface StocksOpenURLHelper
+ (id)URLForStockComponents:(id)components;
+ (id)componentDictionaryFromURL:(id)l;
@end

@implementation StocksOpenURLHelper

+ (id)URLForStockComponents:(id)components
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [components objectForKeyedSubscript:@"symbol"];
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

+ (id)componentDictionaryFromURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  queryItems = [v3 queryItems];
  v6 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        value = [v10 value];
        name = [v10 name];
        [dictionary na_safeSetObject:value forKey:name];
      }

      v7 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return dictionary;
}

@end