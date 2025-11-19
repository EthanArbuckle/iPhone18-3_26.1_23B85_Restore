@interface UIFont
@end

@implementation UIFont

void __77__UIFont_PosterUIFoundation__pui_fontWithFallbacks_beforeFontContainingName___block_invoke(uint64_t a1, CTFontDescriptorRef descriptor, uint64_t a3, _BYTE *a4)
{
  v7 = CTFontDescriptorCopyAttribute(descriptor, *MEMORY[0x1E6965808]);
  if ([v7 rangeOfString:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __59__UIFont_PosterUIFoundation__pui_replaceFallbackFontNames___block_invoke(uint64_t a1, CTFontDescriptorRef descriptor, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = CTFontDescriptorCopyAttribute(descriptor, *MEMORY[0x1E6965808]);
  v6 = [*(a1 + 32) objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E69DB880];
    v14 = *MEMORY[0x1E69DB8B8];
    v15[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v8 fontDescriptorWithFontAttributes:v9];

    MatchingFontDescriptorsWithOptions = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions();
    v12 = MatchingFontDescriptorsWithOptions;
    if (MatchingFontDescriptorsWithOptions)
    {
      v13 = [MatchingFontDescriptorsWithOptions objectAtIndexedSubscript:0];
      [*(a1 + 48) setObject:v13 atIndexedSubscript:a3];
    }
  }
}

@end