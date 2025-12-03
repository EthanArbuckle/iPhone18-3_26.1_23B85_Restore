@interface NSPropertyListSerialization(TSUtility)
+ (id)tsu_localizedPropertyListWithContentsOfURL:()TSUtility options:error:;
+ (id)tsu_propertyListWithContentsOfURL:()TSUtility options:error:;
+ (void)tsu_processLocalizedPropertyList:()TSUtility;
@end

@implementation NSPropertyListSerialization(TSUtility)

+ (id)tsu_propertyListWithContentsOfURL:()TSUtility options:error:
{
  v7 = [MEMORY[0x277CBEAE0] inputStreamWithURL:?];
  v8 = v7;
  if (v7)
  {
    [v7 open];
    v9 = [MEMORY[0x277CCAC58] propertyListWithStream:v8 options:a4 format:0 error:a5];
    [v8 close];
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] tsu_IOErrorWithCode:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)tsu_processLocalizedPropertyList:()TSUtility
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 objectForKey:@"_LOCALIZABLE_"];
    if (v6)
    {
      [v5 removeObjectForKey:@"_LOCALIZABLE_"];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__NSPropertyListSerialization_TSUtility__tsu_processLocalizedPropertyList___block_invoke;
    v19[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
    v19[4] = self;
    [v5 enumerateKeysAndObjectsUsingBlock:v19];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = +[TSUAssertionHandler currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSPropertyListSerialization(TSUtility) tsu_processLocalizedPropertyList:]"];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSPropertyListSerialization_TSUtility.m"];
        [v7 handleFailureInFunction:v8 file:v9 lineNumber:52 description:{@"Expected a dictionary as a child of %@", @"_LOCALIZABLE_"}];
      }

      [v5 addEntriesFromDictionary:v6];
    }

LABEL_17:
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [self tsu_processLocalizedPropertyList:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v12);
    }

    goto LABEL_17;
  }

LABEL_18:
}

+ (id)tsu_localizedPropertyListWithContentsOfURL:()TSUtility options:error:
{
  v8 = a3;
  if ((a4 - 1) >= 2)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSPropertyListSerialization(TSUtility) tsu_localizedPropertyListWithContentsOfURL:options:error:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSPropertyListSerialization_TSUtility.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:73 description:@"Need mutable containers to process a localizable property list"];
  }

  v12 = [self tsu_propertyListWithContentsOfURL:v8 options:a4 error:a5];
  [self tsu_processLocalizedPropertyList:v12];

  return v12;
}

@end