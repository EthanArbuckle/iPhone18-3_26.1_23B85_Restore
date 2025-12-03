@interface SADecoratedString(SiriUIFoundationAdditions)
- (id)sruif_attributedStringValueWithAttribute:()SiriUIFoundationAdditions value:forRegionsWithProperty:;
- (void)sruif_enumeratePropertyRangesUsingBlock:()SiriUIFoundationAdditions;
- (void)sruif_enumerateRangesOfRegionsWithProperty:()SiriUIFoundationAdditions usingBlock:;
@end

@implementation SADecoratedString(SiriUIFoundationAdditions)

- (void)sruif_enumeratePropertyRangesUsingBlock:()SiriUIFoundationAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    regions = [self regions];
    v6 = [regions countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(regions);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          property = [v10 property];
          sruif_range = [v10 sruif_range];
          v4[2](v4, property, sruif_range, v13);
        }

        v7 = [regions countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sruif_enumerateRangesOfRegionsWithProperty:()SiriUIFoundationAdditions usingBlock:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __102__SADecoratedString_SiriUIFoundationAdditions__sruif_enumerateRangesOfRegionsWithProperty_usingBlock___block_invoke;
    v8[3] = &unk_279C62A38;
    v9 = v6;
    v10 = v7;
    [self sruif_enumeratePropertyRangesUsingBlock:v8];
  }
}

- (id)sruif_attributedStringValueWithAttribute:()SiriUIFoundationAdditions value:forRegionsWithProperty:
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCAB48];
  v11 = a5;
  v12 = [v10 alloc];
  text = [self text];
  v14 = [v12 initWithString:text];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __118__SADecoratedString_SiriUIFoundationAdditions__sruif_attributedStringValueWithAttribute_value_forRegionsWithProperty___block_invoke;
  v21[3] = &unk_279C62A60;
  v15 = v14;
  v22 = v15;
  v23 = v8;
  v24 = v9;
  v16 = v9;
  v17 = v8;
  [self sruif_enumerateRangesOfRegionsWithProperty:v11 usingBlock:v21];

  v18 = v24;
  v19 = v15;

  return v15;
}

@end