@interface PXStoryTVCellSpec
- (BOOL)_isSupportedCharacterSetForFontDescriptor:(id)a3 fontSize:(double)a4 string:(id)a5 supportedCharacterAttributes:(id)a6 leading:(double)a7;
- (PXStoryTVCellSpec)initWithExtendedTraitCollection:(id)a3;
- (UIEdgeInsets)_languageAwareOutsetsForFont:(id)a3;
- (UIFont)memorySubtitleFont;
- (UIFont)memoryTitleFont;
- (double)memorySubtitleLeading;
- (double)memorySubtitleTracking;
- (double)memoryTitleLeading;
- (double)memoryTitleTracking;
- (id)_setupSubtitleAttributesWithAllCharactersSupported:(BOOL)a3;
- (id)_setupSubtitleFont;
- (id)_setupTitleAttributesWithAllCharactersSupported:(BOOL)a3;
- (id)_setupTitleFont;
- (id)attributedStringForSubtitle:(id)a3;
- (id)attributedStringForTitle:(id)a3;
@end

@implementation PXStoryTVCellSpec

- (UIEdgeInsets)_languageAwareOutsetsForFont:(id)a3
{
  v7 = *off_1E7721FA8;
  v8 = *(off_1E7721FA8 + 1);
  CTFontGetLanguageAwareOutsets();
  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)_isSupportedCharacterSetForFontDescriptor:(id)a3 fontSize:(double)a4 string:(id)a5 supportedCharacterAttributes:(id)a6 leading:(double)a7
{
  v38[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v37 = *MEMORY[0x1E69DB8C0];
  v13 = MEMORY[0x1E696AD98];
  v14 = a6;
  v15 = a5;
  v16 = [v13 numberWithDouble:a4];
  v38[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v18 = [v12 fontDescriptorByAddingAttributes:v17];

  if (_isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__onceToken != -1)
  {
    dispatch_once(&_isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__onceToken, &__block_literal_global_138763);
  }

  v19 = _isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__cachedInvertedCharacterSetByFontDescriptor;
  v20 = [v18 fontAttributes];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __116__PXStoryTVCellSpec__isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading___block_invoke_2;
  v34[3] = &unk_1E773CC80;
  v35 = v12;
  v36 = a4;
  v21 = v12;
  v22 = [v19 px_objectForKey:v20 usingPromise:v34];

  v23 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:a4];
  [(PXStoryTVCellSpec *)self _languageAwareOutsetsForFont:v23];
  v25 = v24;
  v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15 attributes:v14];

  v27 = CTLineCreateWithAttributedString(v26);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v27, 8uLL);
  y = BoundsWithOptions.origin.y;
  height = BoundsWithOptions.size.height;
  CFRelease(v27);
  v30 = [v15 rangeOfCharacterFromSet:v22];

  v32 = v25 * 0.5 + height - y < a7 && v30 == 0x7FFFFFFFFFFFFFFFLL;
  return v32;
}

id __116__PXStoryTVCellSpec__isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fontAttributes];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69DB898]];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:*(a1 + 32) size:*(a1 + 40)];
    v3 = CTFontCopyCharacterSet(v4);
  }

  v5 = [v3 invertedSet];

  return v5;
}

void __116__PXStoryTVCellSpec__isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__cachedInvertedCharacterSetByFontDescriptor;
  _isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__cachedInvertedCharacterSetByFontDescriptor = v0;
}

- (id)attributedStringForSubtitle:(id)a3
{
  v4 = [a3 localizedUppercaseString];
  v5 = [(PXStoryTVCellSpec *)self subtitleFont];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 fontDescriptor];
    [v6 pointSize];
    v9 = v8;
    v10 = [(PXStoryTVCellSpec *)self subtitleSupportedCharactersAttributes];
    [(PXStoryTVCellSpec *)self memorySubtitleLeading];
    v12 = [(PXStoryTVCellSpec *)self _isSupportedCharacterSetForFontDescriptor:v7 fontSize:v4 string:v10 supportedCharacterAttributes:v9 leading:v11];

    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v12)
    {
      [(PXStoryTVCellSpec *)self subtitleSupportedCharactersAttributes];
    }

    else
    {
      [(PXStoryTVCellSpec *)self subtitleUnsupportedCharactersAttributes];
    }
    v15 = ;
    v14 = [v13 initWithString:v4 attributes:v15];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  return v14;
}

- (id)attributedStringForTitle:(id)a3
{
  v4 = [a3 localizedUppercaseString];
  v5 = [off_1E77217B8 defaultHelper];
  v6 = [v5 displayableTextForTitle:v4 intent:1];

  v7 = [(PXStoryTVCellSpec *)self titleFont];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 fontDescriptor];
    [v8 pointSize];
    v11 = v10;
    v12 = [(PXStoryTVCellSpec *)self titleSupportedCharactersAttributes];
    [(PXStoryTVCellSpec *)self memoryTitleLeading];
    v14 = [(PXStoryTVCellSpec *)self _isSupportedCharacterSetForFontDescriptor:v9 fontSize:v6 string:v12 supportedCharacterAttributes:v11 leading:v13];

    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v14)
    {
      [(PXStoryTVCellSpec *)self titleSupportedCharactersAttributes];
    }

    else
    {
      [(PXStoryTVCellSpec *)self titleUnsupportedCharactersAttributes];
    }
    v17 = ;
    v16 = [v15 initWithString:v6 attributes:v17];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  return v16;
}

- (double)memorySubtitleTracking
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:109 description:@"concrete subclass must implement"];

  return 0.0;
}

- (double)memorySubtitleLeading
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:104 description:@"concrete subclass must implement"];

  return 0.0;
}

- (UIFont)memorySubtitleFont
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:99 description:@"concrete subclass must implement"];

  return 0;
}

- (double)memoryTitleTracking
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:94 description:@"concrete subclass must implement"];

  return 0.0;
}

- (double)memoryTitleLeading
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:89 description:@"concrete subclass must implement"];

  return 0.0;
}

- (UIFont)memoryTitleFont
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:84 description:@"concrete subclass must implement"];

  return 0;
}

- (id)_setupSubtitleAttributesWithAllCharactersSupported:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PXStoryTVCellSpec *)self memorySubtitleFont];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (v3)
  {
    v7 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    [(PXStoryTVCellSpec *)self memorySubtitleLeading];
    [v8 setMaximumLineHeight:?];
    [v8 setLineBreakMode:4];
    [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB688]];
    v9 = MEMORY[0x1E696AD98];
    [(PXStoryTVCellSpec *)self memorySubtitleTracking];
    v10 = [v9 numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB660]];
  }

  v11 = [v5 copy];

  return v11;
}

- (id)_setupTitleAttributesWithAllCharactersSupported:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PXStoryTVCellSpec *)self memoryTitleFont];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (v3)
  {
    v7 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    [(PXStoryTVCellSpec *)self memoryTitleLeading];
    [v8 setMaximumLineHeight:?];
    [v8 setLineBreakMode:4];
    [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB688]];
    v9 = MEMORY[0x1E696AD98];
    [(PXStoryTVCellSpec *)self memoryTitleTracking];
    v10 = [v9 numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB660]];
  }

  v11 = [v5 copy];

  return v11;
}

- (id)_setupSubtitleFont
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E69DB8F0];
  v13[0] = *MEMORY[0x1E69DB9C0];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69659B8]];
  v14[0] = v3;
  v13[1] = *MEMORY[0x1E69DB990];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v13[2] = *MEMORY[0x1E69DB940];
  v5 = *MEMORY[0x1E69DB8C8];
  v14[1] = v4;
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v8 = [objc_alloc(MEMORY[0x1E69DB880]) initWithFontAttributes:v7];
  v9 = MEMORY[0x1E69DB878];
  v10 = [(PXStoryTVCellSpec *)self memorySubtitleFont];
  [v10 pointSize];
  v11 = [v9 fontWithDescriptor:v8 size:?];

  return v11;
}

- (id)_setupTitleFont
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E69DB8F0];
  v13[0] = *MEMORY[0x1E69DB9C0];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965998]];
  v14[0] = v3;
  v13[1] = *MEMORY[0x1E69DB990];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  v13[2] = *MEMORY[0x1E69DB940];
  v5 = *MEMORY[0x1E69DB8C8];
  v14[1] = v4;
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v8 = [objc_alloc(MEMORY[0x1E69DB880]) initWithFontAttributes:v7];
  v9 = MEMORY[0x1E69DB878];
  v10 = [(PXStoryTVCellSpec *)self memoryTitleFont];
  [v10 pointSize];
  v11 = [v9 fontWithDescriptor:v8 size:?];

  return v11;
}

- (PXStoryTVCellSpec)initWithExtendedTraitCollection:(id)a3
{
  v18.receiver = self;
  v18.super_class = PXStoryTVCellSpec;
  v3 = [(PXStoryTVCellSpec *)&v18 initWithExtendedTraitCollection:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXStoryTVCellSpec *)v3 _setupTitleFont];
    titleFont = v4->_titleFont;
    v4->_titleFont = v5;

    v7 = [(PXStoryTVCellSpec *)v4 _setupSubtitleFont];
    subtitleFont = v4->_subtitleFont;
    v4->_subtitleFont = v7;

    v9 = [(PXStoryTVCellSpec *)v4 _setupTitleAttributesWithAllCharactersSupported:1];
    titleSupportedCharactersAttributes = v4->_titleSupportedCharactersAttributes;
    v4->_titleSupportedCharactersAttributes = v9;

    v11 = [(PXStoryTVCellSpec *)v4 _setupTitleAttributesWithAllCharactersSupported:0];
    titleUnsupportedCharactersAttributes = v4->_titleUnsupportedCharactersAttributes;
    v4->_titleUnsupportedCharactersAttributes = v11;

    v13 = [(PXStoryTVCellSpec *)v4 _setupSubtitleAttributesWithAllCharactersSupported:1];
    subtitleSupportedCharactersAttributes = v4->_subtitleSupportedCharactersAttributes;
    v4->_subtitleSupportedCharactersAttributes = v13;

    v15 = [(PXStoryTVCellSpec *)v4 _setupSubtitleAttributesWithAllCharactersSupported:0];
    subtitleUnsupportedCharactersAttributes = v4->_subtitleUnsupportedCharactersAttributes;
    v4->_subtitleUnsupportedCharactersAttributes = v15;
  }

  return v4;
}

@end