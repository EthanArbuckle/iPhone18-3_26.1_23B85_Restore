@interface PXStoryTVCellSpec
- (BOOL)_isSupportedCharacterSetForFontDescriptor:(id)descriptor fontSize:(double)size string:(id)string supportedCharacterAttributes:(id)attributes leading:(double)leading;
- (PXStoryTVCellSpec)initWithExtendedTraitCollection:(id)collection;
- (UIEdgeInsets)_languageAwareOutsetsForFont:(id)font;
- (UIFont)memorySubtitleFont;
- (UIFont)memoryTitleFont;
- (double)memorySubtitleLeading;
- (double)memorySubtitleTracking;
- (double)memoryTitleLeading;
- (double)memoryTitleTracking;
- (id)_setupSubtitleAttributesWithAllCharactersSupported:(BOOL)supported;
- (id)_setupSubtitleFont;
- (id)_setupTitleAttributesWithAllCharactersSupported:(BOOL)supported;
- (id)_setupTitleFont;
- (id)attributedStringForSubtitle:(id)subtitle;
- (id)attributedStringForTitle:(id)title;
@end

@implementation PXStoryTVCellSpec

- (UIEdgeInsets)_languageAwareOutsetsForFont:(id)font
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

- (BOOL)_isSupportedCharacterSetForFontDescriptor:(id)descriptor fontSize:(double)size string:(id)string supportedCharacterAttributes:(id)attributes leading:(double)leading
{
  v38[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v37 = *MEMORY[0x1E69DB8C0];
  v13 = MEMORY[0x1E696AD98];
  attributesCopy = attributes;
  stringCopy = string;
  v16 = [v13 numberWithDouble:size];
  v38[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v18 = [descriptorCopy fontDescriptorByAddingAttributes:v17];

  if (_isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__onceToken != -1)
  {
    dispatch_once(&_isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__onceToken, &__block_literal_global_138763);
  }

  v19 = _isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading__cachedInvertedCharacterSetByFontDescriptor;
  fontAttributes = [v18 fontAttributes];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __116__PXStoryTVCellSpec__isSupportedCharacterSetForFontDescriptor_fontSize_string_supportedCharacterAttributes_leading___block_invoke_2;
  v34[3] = &unk_1E773CC80;
  v35 = descriptorCopy;
  sizeCopy = size;
  v21 = descriptorCopy;
  v22 = [v19 px_objectForKey:fontAttributes usingPromise:v34];

  v23 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:size];
  [(PXStoryTVCellSpec *)self _languageAwareOutsetsForFont:v23];
  v25 = v24;
  v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:attributesCopy];

  v27 = CTLineCreateWithAttributedString(v26);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v27, 8uLL);
  y = BoundsWithOptions.origin.y;
  height = BoundsWithOptions.size.height;
  CFRelease(v27);
  v30 = [stringCopy rangeOfCharacterFromSet:v22];

  v32 = v25 * 0.5 + height - y < leading && v30 == 0x7FFFFFFFFFFFFFFFLL;
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

- (id)attributedStringForSubtitle:(id)subtitle
{
  localizedUppercaseString = [subtitle localizedUppercaseString];
  subtitleFont = [(PXStoryTVCellSpec *)self subtitleFont];
  v6 = subtitleFont;
  if (localizedUppercaseString)
  {
    fontDescriptor = [subtitleFont fontDescriptor];
    [v6 pointSize];
    v9 = v8;
    subtitleSupportedCharactersAttributes = [(PXStoryTVCellSpec *)self subtitleSupportedCharactersAttributes];
    [(PXStoryTVCellSpec *)self memorySubtitleLeading];
    v12 = [(PXStoryTVCellSpec *)self _isSupportedCharacterSetForFontDescriptor:fontDescriptor fontSize:localizedUppercaseString string:subtitleSupportedCharactersAttributes supportedCharacterAttributes:v9 leading:v11];

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
    v14 = [v13 initWithString:localizedUppercaseString attributes:v15];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  return v14;
}

- (id)attributedStringForTitle:(id)title
{
  localizedUppercaseString = [title localizedUppercaseString];
  defaultHelper = [off_1E77217B8 defaultHelper];
  v6 = [defaultHelper displayableTextForTitle:localizedUppercaseString intent:1];

  titleFont = [(PXStoryTVCellSpec *)self titleFont];
  v8 = titleFont;
  if (v6)
  {
    fontDescriptor = [titleFont fontDescriptor];
    [v8 pointSize];
    v11 = v10;
    titleSupportedCharactersAttributes = [(PXStoryTVCellSpec *)self titleSupportedCharactersAttributes];
    [(PXStoryTVCellSpec *)self memoryTitleLeading];
    v14 = [(PXStoryTVCellSpec *)self _isSupportedCharacterSetForFontDescriptor:fontDescriptor fontSize:v6 string:titleSupportedCharactersAttributes supportedCharacterAttributes:v11 leading:v13];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:109 description:@"concrete subclass must implement"];

  return 0.0;
}

- (double)memorySubtitleLeading
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:104 description:@"concrete subclass must implement"];

  return 0.0;
}

- (UIFont)memorySubtitleFont
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:99 description:@"concrete subclass must implement"];

  return 0;
}

- (double)memoryTitleTracking
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:94 description:@"concrete subclass must implement"];

  return 0.0;
}

- (double)memoryTitleLeading
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:89 description:@"concrete subclass must implement"];

  return 0.0;
}

- (UIFont)memoryTitleFont
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTVCellSpec.m" lineNumber:84 description:@"concrete subclass must implement"];

  return 0;
}

- (id)_setupSubtitleAttributesWithAllCharactersSupported:(BOOL)supported
{
  supportedCopy = supported;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memorySubtitleFont = [(PXStoryTVCellSpec *)self memorySubtitleFont];
  [v5 setObject:memorySubtitleFont forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (supportedCopy)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v8 = [defaultParagraphStyle mutableCopy];

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

- (id)_setupTitleAttributesWithAllCharactersSupported:(BOOL)supported
{
  supportedCopy = supported;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memoryTitleFont = [(PXStoryTVCellSpec *)self memoryTitleFont];
  [v5 setObject:memoryTitleFont forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if (supportedCopy)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v8 = [defaultParagraphStyle mutableCopy];

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
  memorySubtitleFont = [(PXStoryTVCellSpec *)self memorySubtitleFont];
  [memorySubtitleFont pointSize];
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
  memoryTitleFont = [(PXStoryTVCellSpec *)self memoryTitleFont];
  [memoryTitleFont pointSize];
  v11 = [v9 fontWithDescriptor:v8 size:?];

  return v11;
}

- (PXStoryTVCellSpec)initWithExtendedTraitCollection:(id)collection
{
  v18.receiver = self;
  v18.super_class = PXStoryTVCellSpec;
  v3 = [(PXStoryTVCellSpec *)&v18 initWithExtendedTraitCollection:collection];
  v4 = v3;
  if (v3)
  {
    _setupTitleFont = [(PXStoryTVCellSpec *)v3 _setupTitleFont];
    titleFont = v4->_titleFont;
    v4->_titleFont = _setupTitleFont;

    _setupSubtitleFont = [(PXStoryTVCellSpec *)v4 _setupSubtitleFont];
    subtitleFont = v4->_subtitleFont;
    v4->_subtitleFont = _setupSubtitleFont;

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