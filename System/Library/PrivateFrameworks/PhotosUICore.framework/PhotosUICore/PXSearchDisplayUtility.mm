@interface PXSearchDisplayUtility
+ (BOOL)attributedStringFontNeedsUpdate:(id)update currentFont:(id)font;
+ (BOOL)layoutDirectionIsRTL;
+ (BOOL)shouldUseAccessibilityLayout;
+ (id)highlightedAttributedStringForString:(id)string highlightedSubstring:(id)substring matchedColor:(id)color remainingColor:(id)remainingColor;
+ (id)listStringJoiningSearchTerms:(id)terms;
+ (id)localizedListStringFromSearchTokenNames:(id)names searchText:(id)text includeQuotationDelimitersForSearchText:(BOOL)searchText;
@end

@implementation PXSearchDisplayUtility

+ (id)listStringJoiningSearchTerms:(id)terms
{
  v3 = sub_1A524CA34();
  sub_1A3F5E5F4(v3);

  v4 = sub_1A524C634();

  return v4;
}

+ (BOOL)shouldUseAccessibilityLayout
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  LOBYTE(mEMORY[0x1E69DC668]) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  return mEMORY[0x1E69DC668];
}

+ (BOOL)layoutDirectionIsRTL
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

  return v3;
}

+ (id)localizedListStringFromSearchTokenNames:(id)names searchText:(id)text includeQuotationDelimitersForSearchText:(BOOL)searchText
{
  searchTextCopy = searchText;
  v23 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  textCopy = text;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = namesCopy;
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
          if (searchTextCopy)
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

  if ([textCopy length])
  {
    if (searchTextCopy)
    {
      PXLocalizedStringFromTable(@"QUOTED_SEARCH_TEXT_FORMAT", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    [v8 addObject:textCopy];
  }

  v15 = [PXSearchDisplayUtility listStringJoiningSearchTerms:v8];

  return v15;
}

+ (id)highlightedAttributedStringForString:(id)string highlightedSubstring:(id)substring matchedColor:(id)color remainingColor:(id)remainingColor
{
  v26[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  substringCopy = substring;
  colorCopy = color;
  if (colorCopy && remainingColor)
  {
    v12 = *MEMORY[0x1E69DB650];
    v25 = *MEMORY[0x1E69DB650];
    v26[0] = remainingColor;
    v13 = MEMORY[0x1E695DF20];
    remainingColorCopy = remainingColor;
    v15 = [v13 dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = objc_alloc(MEMORY[0x1E696AD40]);

    v17 = [v16 initWithString:stringCopy attributes:v15];
    v18 = [stringCopy rangeOfString:substringCopy options:129];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v17 addAttribute:v12 value:colorCopy range:{v18, v19}];
    }

    v20 = [v17 copy];
  }

  else
  {
    v21 = MEMORY[0x1E696AAB0];
    remainingColorCopy2 = remainingColor;
    v23 = [v21 alloc];

    v20 = [v23 initWithString:&stru_1F1741150];
  }

  return v20;
}

+ (BOOL)attributedStringFontNeedsUpdate:(id)update currentFont:(id)font
{
  updateCopy = update;
  fontCopy = font;
  if (fontCopy && [updateCopy length])
  {
    v7 = [updateCopy attributesAtIndex:0 effectiveRange:0];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    fontDescriptor = [v8 fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    v11 = *MEMORY[0x1E69DB8C0];
    v12 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8C0]];

    fontDescriptor2 = [fontCopy fontDescriptor];
    fontAttributes2 = [fontDescriptor2 fontAttributes];
    v15 = [fontAttributes2 objectForKeyedSubscript:v11];

    v16 = v12 != v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end