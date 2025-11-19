@interface NSString(WiFiKitUI)
- (BOOL)isEmpty;
- (id)formattedWiFiAddress;
- (id)placeholderStringWithMaxCharacters:()WiFiKitUI;
@end

@implementation NSString(WiFiKitUI)

- (BOOL)isEmpty
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];
  v4 = [v3 length] == 0;

  return v4;
}

- (id)formattedWiFiAddress
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = [a1 componentsSeparatedByString:@":"];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__NSString_WiFiKitUI__formattedWiFiAddress__block_invoke;
    v16[3] = &unk_279EC5B40;
    v16[4] = &v17;
    [v1 enumerateObjectsUsingBlock:v16];
    v2 = [v18[5] firstObject];
    [v18[5] removeObjectAtIndex:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v18[5];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v23 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        v6 = 0;
        v7 = v2;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", *(*(&v12 + 1) + 8 * v6)];
          v2 = [v7 stringByAppendingString:v8];

          ++v6;
          v7 = v2;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v12 objects:v23 count:16];
      }

      while (v4);
    }

    v9 = [v2 uppercaseString];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)placeholderStringWithMaxCharacters:()WiFiKitUI
{
  v3 = a3;
  if ([a1 length] < a3)
  {
    v3 = [a1 length];
  }

  for (i = [MEMORY[0x277CCAB68] string];
  {
    [i appendFormat:@"%C", 63386];
  }

  return i;
}

@end