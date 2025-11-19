@interface SADecoratedString(SiriUI)
- (id)siriui_attributedStringValueWithAttribute:()SiriUI value:forRegionsWithProperty:;
- (void)siriui_enumeratePropertyRangesUsingBlock:()SiriUI;
- (void)siriui_enumerateRangesOfRegionsWithProperty:()SiriUI usingBlock:;
@end

@implementation SADecoratedString(SiriUI)

- (void)siriui_enumeratePropertyRangesUsingBlock:()SiriUI
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [a1 regions];
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
          v11 = [v10 property];
          v12 = [v10 siriui_range];
          v4[2](v4, v11, v12, v13);
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (void)siriui_enumerateRangesOfRegionsWithProperty:()SiriUI usingBlock:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __84__SADecoratedString_SiriUI__siriui_enumerateRangesOfRegionsWithProperty_usingBlock___block_invoke;
    v8[3] = &unk_279C5A920;
    v9 = v6;
    v10 = v7;
    [a1 siriui_enumeratePropertyRangesUsingBlock:v8];
  }
}

- (id)siriui_attributedStringValueWithAttribute:()SiriUI value:forRegionsWithProperty:
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCAB48];
  v11 = a5;
  v12 = [v10 alloc];
  v13 = [a1 text];
  v14 = [v12 initWithString:v13];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__SADecoratedString_SiriUI__siriui_attributedStringValueWithAttribute_value_forRegionsWithProperty___block_invoke;
  v21[3] = &unk_279C5A948;
  v15 = v14;
  v22 = v15;
  v23 = v8;
  v24 = v9;
  v16 = v9;
  v17 = v8;
  [a1 siriui_enumerateRangesOfRegionsWithProperty:v11 usingBlock:v21];

  v18 = v24;
  v19 = v15;

  return v15;
}

@end