@interface NSDictionary(OFNSDictionaryExtensions)
- (void)postFormData;
- (void)stringifyArguments:()OFNSDictionaryExtensions requireEncoding:;
@end

@implementation NSDictionary(OFNSDictionaryExtensions)

- (void)postFormData
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB28] data];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [a1 objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v9 = [v9 description];
        }

        [v2 appendData:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "mimePart:forName:", v9, v8), "dataUsingEncoding:", 4)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

- (void)stringifyArguments:()OFNSDictionaryExtensions requireEncoding:
{
  v7 = [objc_msgSend(a1 "allKeys")];
  v8 = [v7 count];
  v9 = [MEMORY[0x277CCAB68] string];
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = [v7 objectAtIndex:v10];
      v12 = v11;
      if (a4)
      {
        v12 = [v11 stringByAddingPercentEscapes];
        v13 = [objc_msgSend(a1 objectForKey:{v12), "stringByAddingPercentEscapes"}];
      }

      else
      {
        v13 = [a1 objectForKey:v11];
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v12, v13];
      v15 = v14;
      if (v8 != 1)
      {
        v15 = [v14 stringByAppendingString:a3];
      }

      [v9 appendString:v15];
      ++v10;
      --v8;
    }

    while (v8);
  }

  return v9;
}

@end