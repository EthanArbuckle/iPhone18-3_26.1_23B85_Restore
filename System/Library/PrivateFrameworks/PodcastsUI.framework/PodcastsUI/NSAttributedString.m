@interface NSAttributedString
@end

@implementation NSAttributedString

void __73__NSAttributedString_IMAdditions__attributedStringWithDefaultLineSpacing__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  [*(a1 + 32) lineSpacing];
  [v7 setLineSpacing:?];
  [*(a1 + 32) lineHeightMultiple];
  [v7 setLineHeightMultiple:?];
  [*(a1 + 32) paragraphSpacingBefore];
  [v7 setParagraphSpacingBefore:?];
  [*(a1 + 40) addAttribute:*MEMORY[0x277D74118] value:v7 range:{a3, a4}];
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __75__NSAttributedString_IMAdditions__safeAttributedStringWithHTML_attributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x277D740E8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isEqualToString:v10])
        {
          v13 = [v6 objectForKeyedSubscript:v12];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v13 host], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
          {
            [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
          }
        }

        else if (([*(a1 + 40) containsObject:v12] & 1) == 0)
        {
          [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

void __111__NSAttributedString_MTMPUDynamicType__MTMPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = [a2 fontDescriptor];
  v7 = [v13 objectForKey:*MEMORY[0x277D74378]];
  if (v7)
  {
    v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v7];
    v9 = [v8 fontDescriptorWithSymbolicTraits:{objc_msgSend(v13, "symbolicTraits")}];

    v10 = *(a1 + 32);
    v11 = *MEMORY[0x277D740A8];
    v12 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
    [v10 addAttribute:v11 value:v12 range:{a3, a4}];
  }
}

void __71__NSAttributedString_MTMPUDynamicType__MTMPU_tallestFontFromAttributes__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    [v6 _bodyLeading];
    v5 = *(*(a1 + 32) + 8);
    if (v4 > *(v5 + 24))
    {
      *(v5 + 24) = v4;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

@end