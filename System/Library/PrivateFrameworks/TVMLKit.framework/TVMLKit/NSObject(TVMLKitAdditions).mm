@interface NSObject(TVMLKitAdditions)
+ (id)tv_allowedLiteralJSONObjects;
- (BOOL)tv_superOfClass:()TVMLKitAdditions respondsToSelector:;
- (id)tv_JSCompatibleValue;
- (id)tv_toPropertiesJSDictionary;
- (void)tv_setAssociatedIKViewElement:()TVMLKitAdditions;
@end

@implementation NSObject(TVMLKitAdditions)

- (BOOL)tv_superOfClass:()TVMLKitAdditions respondsToSelector:
{
    ;
  }

  Superclass = class_getSuperclass(i);
  return class_getInstanceMethod(Superclass, a4) != 0;
}

- (void)tv_setAssociatedIKViewElement:()TVMLKitAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  objc_setAssociatedObject(a1, "_TVObjectKeyViewElement", a3, 0x301);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a3 && (isKindOfClass & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [a1 subviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) tv_setAssociatedIKViewElement:0];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

+ (id)tv_allowedLiteralJSONObjects
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];

  return v0;
}

- (id)tv_JSCompatibleValue
{
  v31 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = a1;
    v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v26;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v9 = [v3 objectForKey:v8];
          v10 = [v9 tv_JSCompatibleValue];

          v11 = [v8 tv_JSCompatibleValue];
          if (v11)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            [v2 setObject:v10 forKey:v11];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v5);
    }

LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = a1;
    v13 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v3);
          }

          v17 = [*(*(&v21 + 1) + 8 * j) tv_JSCompatibleValue];
          if (v17)
          {
            [v2 addObject:v17];
          }
        }

        v14 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    goto LABEL_25;
  }

  v19 = [MEMORY[0x277D82BB8] tv_allowedLiteralJSONObjects];
  if ([v19 containsObject:objc_opt_class()])
  {

LABEL_32:
    v2 = a1;
    goto LABEL_26;
  }

  v20 = [a1 conformsToProtocol:&unk_287EADA10];

  if (v20)
  {
    goto LABEL_32;
  }

  v2 = 0;
LABEL_26:

  return v2;
}

- (id)tv_toPropertiesJSDictionary
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  outCount = 0;
  v3 = objc_opt_class();
  v4 = class_copyPropertyList(v3, &outCount);
  if (outCount)
  {
    v5 = v4;
    for (i = 0; i < outCount; ++i)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithCString:property_getName(v5[i]) encoding:4];
      v8 = [a1 valueForKey:v7];
      v9 = [v8 tv_JSCompatibleValue];

      if (v9)
      {
        [v2 setObject:v9 forKey:v7];
      }
    }
  }

  return v2;
}

@end