@interface IKViewElement(VSAdditions)
- (id)vs_itemElementsOfType:()VSAdditions;
- (uint64_t)vs_BOOLAttributeValueForKey:()VSAdditions;
- (uint64_t)vs_selectedChildElementIndex;
@end

@implementation IKViewElement(VSAdditions)

- (id)vs_itemElementsOfType:()VSAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a1 children];
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
        if ([v11 vs_elementType] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (uint64_t)vs_BOOLAttributeValueForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 attributes];
  v6 = [v5 valueForKey:v4];

  if (v6)
  {
    if ([v6 isEqualToString:@"on"])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 BOOLValue];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)vs_selectedChildElementIndex
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [a1 children];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__IKViewElement_VSAdditions__vs_selectedChildElementIndex__block_invoke;
  v4[3] = &unk_279E1A520;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end