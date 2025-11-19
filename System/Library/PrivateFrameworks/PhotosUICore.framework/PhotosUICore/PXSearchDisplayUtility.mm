@interface PXSearchDisplayUtility
+ (BOOL)attributedStringFontNeedsUpdate:(id)a3 currentFont:(id)a4;
+ (BOOL)layoutDirectionIsRTL;
+ (BOOL)shouldUseAccessibilityLayout;
+ (id)highlightedAttributedStringForString:(id)a3 highlightedSubstring:(id)a4 matchedColor:(id)a5 remainingColor:(id)a6;
+ (id)listStringJoiningSearchTerms:(id)a3;
+ (id)localizedListStringFromSearchTokenNames:(id)a3 searchText:(id)a4 includeQuotationDelimitersForSearchText:(BOOL)a5;
@end

@implementation PXSearchDisplayUtility

+ (id)listStringJoiningSearchTerms:(id)a3
{
  v3 = sub_1A524CA34();
  sub_1A3F5E5F4(v3);

  v4 = sub_1A524C634();

  return v4;
}

+ (BOOL)shouldUseAccessibilityLayout
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(v3);
  return v2;
}

+ (BOOL)layoutDirectionIsRTL
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

+ (id)localizedListStringFromSearchTokenNames:(id)a3 searchText:(id)a4 includeQuotationDelimitersForSearchText:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v17 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 length])
        {
          if (v5)
          {
            PXLocalizedStringFromTable(@"QUOTED_SEARCH_TEXT_FORMAT", @"PhotosUICore");
            objc_claimAutoreleasedReturnValue();
            PXStringWithValidatedFormat();
          }

          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if ([v17 length])
  {
    if (v5)
    {
      PXLocalizedStringFromTable(@"QUOTED_SEARCH_TEXT_FORMAT", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    [v8 addObject:v17];
  }

  v15 = [PXSearchDisplayUtility listStringJoiningSearchTerms:v8];

  return v15;
}

+ (id)highlightedAttributedStringForString:(id)a3 highlightedSubstring:(id)a4 matchedColor:(id)a5 remainingColor:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11 && a6)
  {
    v12 = *MEMORY[0x1E69DB650];
    v25 = *MEMORY[0x1E69DB650];
    v26[0] = a6;
    v13 = MEMORY[0x1E695DF20];
    v14 = a6;
    v15 = [v13 dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = objc_alloc(MEMORY[0x1E696AD40]);

    v17 = [v16 initWithString:v9 attributes:v15];
    v18 = [v9 rangeOfString:v10 options:129];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v17 addAttribute:v12 value:v11 range:{v18, v19}];
    }

    v20 = [v17 copy];
  }

  else
  {
    v21 = MEMORY[0x1E696AAB0];
    v22 = a6;
    v23 = [v21 alloc];

    v20 = [v23 initWithString:&stru_1F1741150];
  }

  return v20;
}

+ (BOOL)attributedStringFontNeedsUpdate:(id)a3 currentFont:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && [v5 length])
  {
    v7 = [v5 attributesAtIndex:0 effectiveRange:0];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    v9 = [v8 fontDescriptor];
    v10 = [v9 fontAttributes];
    v11 = *MEMORY[0x1E69DB8C0];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB8C0]];

    v13 = [v6 fontDescriptor];
    v14 = [v13 fontAttributes];
    v15 = [v14 objectForKeyedSubscript:v11];

    v16 = v12 != v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end