@interface NSRTFReader
+ (NSArray)defaultTextHighlightColorSchemes;
+ (NSArray)defaultTextHighlightStyles;
- (BOOL)_currentTableCellIsPlaceholder;
- (CGSize)paperSize;
- (CGSize)viewSize;
- (NSRTFReader)initWithPath:(id)a3;
- (NSRTFReader)initWithRTF:(id)a3;
- (NSRTFReader)initWithRTFD:(id)a3;
- (NSRTFReader)initWithRTFDFileWrapper:(id)a3;
- (double)_updateFontSizeForTextScalingIfNeeded:(uint64_t)a1;
- (id)_currentTableCell;
- (id)_mutableParagraphStyle;
- (id)attributedString;
- (id)attributedStringToEndOfGroup;
- (id)attributesAtEndOfGroup;
- (id)defaultParagraphStyle;
- (id)documentAttributes;
- (id)mutableAttributes;
- (uint64_t)_beginTableRow;
- (uint64_t)_clearTableCells;
- (uint64_t)_determineFinalTextScalingType;
- (uint64_t)_determineSourceTextScalingType;
- (uint64_t)_documentInfoDictionary;
- (uint64_t)_ensureTableCells;
- (uint64_t)_setTableCells;
- (void)_addListDefinition:(id)a3 forKey:(int64_t)a4;
- (void)_addOverride:(int64_t)a3 forKey:(int64_t)a4;
- (void)_currentTableCellIsPlaceholder;
- (void)_endTableCell;
- (void)_endTableCellDefinition;
- (void)_endTableRow;
- (void)_mergeTableCellsHorizontally;
- (void)_mergeTableCellsVertically;
- (void)_paragraphInTable;
- (void)_popState;
- (void)_popTableState;
- (void)_pushState;
- (void)_pushTableState;
- (void)_setRTFDFileWrapper:(id)a3;
- (void)_setSourceTextScaling:(int64_t)a3;
- (void)_setTableNestingLevel:(int64_t)a3;
- (void)_setTargetTextScaling:(int64_t)a3;
- (void)_updateAttributes;
- (void)dealloc;
- (void)finalize;
- (void)processString:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setMutableAttributedString:(id)a3;
- (void)setTextFlow:(unint64_t)a3;
@end

@implementation NSRTFReader

- (void)_pushState
{
  ++self->_level;
  [(NSMutableArray *)self->_attributesStack addObject:self->_curAttributes];
  [(NSMutableData *)self->_attributeInfoStack appendBytes:&self->_attributeInfo length:48];
  *(&self->_attributeInfo + 42) |= 0xC000u;
}

- (id)attributedString
{
  level = self->_level;
  topAttributedString = self->_topAttributedString;
  self->_curAttributedString = topAttributedString;
  [(NSMutableAttributedString *)topAttributedString beginEditing];
  do
  {
    if (_NSRTFGetToken(&self->_private) == 4)
    {
      break;
    }

    _NSRTFRouteToken(&self->_private);
    if (self->_level < level)
    {
      break;
    }
  }

  while (!self->_limitReached);
  [(NSMutableAttributedString *)self->_topAttributedString endEditing];
  if (self->_verticalOrientationLocation != 0x7FFFFFFFFFFFFFFFLL)
  {
    layoutOrientationSections = self->_layoutOrientationSections;
    if (!layoutOrientationSections)
    {
      layoutOrientationSections = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      self->_layoutOrientationSections = layoutOrientationSections;
    }

    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    -[NSMutableArray addObject:](layoutOrientationSections, "addObject:", [v6 dictionaryWithObjectsAndKeys:{v7, @"NSTextLayoutSectionOrientation", objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", self->_verticalOrientationLocation, -[NSMutableAttributedString length](self->_curAttributedString, "length") - self->_verticalOrientationLocation), @"NSTextLayoutSectionRange", 0}]);
  }

  if (self->_private.class == 4)
  {
    return 0;
  }

  else
  {
    return self->_topAttributedString;
  }
}

- (void)_popState
{
  --self->_level;
  v3 = (&self->_attributeInfo + 42);
  toUniCharEncoding = *(&self->_attributeInfo + 42);
  if ((toUniCharEncoding & 0x4000) == 0)
  {

    toUniCharEncoding = v3->toUniCharEncoding;
  }

  if ((toUniCharEncoding & 0x8000) == 0)
  {
  }

  self->_curAttributes = [(NSMutableArray *)self->_attributesStack lastObject];
  [(NSMutableArray *)self->_attributesStack removeLastObject];
  [(NSMutableData *)self->_attributeInfoStack getBytes:&self->_attributeInfo range:48 * self->_level, 48];
  [(NSMutableData *)self->_attributeInfoStack setLength:48 * self->_level];
  v3->toUniCharEncoding &= ~0x20u;
}

- (id)_mutableParagraphStyle
{
  result = self->_attributeInfo.paraStyle;
  if (result)
  {
    v4 = *(&self->_attributeInfo + 42);
    if ((v4 & 0x8000) != 0)
    {
      result = [result mutableCopy];
      self->_attributeInfo.paraStyle = result;
      v4 = *(&self->_attributeInfo + 42) & 0xFFFF7FFF;
    }
  }

  else
  {
    v5 = [-[NSRTFReader defaultParagraphStyle](self "defaultParagraphStyle")];
    self->_attributeInfo.paraStyle = v5;
    [(NSMutableParagraphStyle *)v5 setDefaultTabInterval:self->_defaultTabInterval];
    if (self->_isRTLDocument)
    {
      [(NSMutableParagraphStyle *)self->_attributeInfo.paraStyle setBaseWritingDirection:1];
    }

    v4 = *(&self->_attributeInfo + 42) & 0xFFFF7FFF;
    result = self->_attributeInfo.paraStyle;
  }

  *(&self->_attributeInfo + 42) = v4 & 0xFFFFFFF7;
  return result;
}

- (id)defaultParagraphStyle
{
  result = defaultParagraphStyle_defaultParagraphStyle;
  if (!defaultParagraphStyle_defaultParagraphStyle)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v4 = objc_alloc_init(NSMutableParagraphStyle);
    [(NSMutableParagraphStyle *)v4 setTabStops:v3];
    [(NSMutableParagraphStyle *)v4 setBaseWritingDirection:0];
    [(NSMutableParagraphStyle *)v4 setAlignment:0];
    v5 = 0;
    atomic_compare_exchange_strong(&defaultParagraphStyle_defaultParagraphStyle, &v5, v4);
    if (v5)
    {
    }

    return defaultParagraphStyle_defaultParagraphStyle;
  }

  return result;
}

- (id)mutableAttributes
{
  v3 = (&self->_attributeInfo + 42);
  v4 = *(&self->_attributeInfo + 42);
  *(&self->_attributeInfo + 42) = v4 & 0xFFFFFFDF;
  result = self->_curAttributes;
  if ((v4 & 0x4000) != 0)
  {
    result = [result mutableCopy];
    self->_curAttributes = result;
    v3->toUniCharEncoding &= ~0x4000u;
  }

  return result;
}

- (void)_updateAttributes
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = (&self->_attributeInfo + 42);
  v4 = *(&self->_attributeInfo + 42);
  if ((v4 & 4) != 0)
  {
    if ((v4 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (self->_readLimit > 0 || (v18 = [(NSRTFReader *)self _updateFontSizeForTextScalingIfNeeded:?], self->_readLimit >= 1))
    {
      font = self->_attributeInfo.font;
    }

    else
    {
      v19 = v18;
      font = self->_attributeInfo.font;
      v20 = *v3;
      fontPalette = self->_attributeInfo.fontPalette;
      v22 = [(UIFont *)font fontDescriptor];
      v23 = [(UIFontDescriptor *)v22 symbolicTraits];
      v24 = __rbit32(v20) >> 30;
      if (fontPalette)
      {
        v26 = *MEMORY[0x1E6965820];
        v27[0] = [MEMORY[0x1E696AD98] numberWithShort:fontPalette];
        v22 = -[UIFontDescriptor fontDescriptorByAddingAttributes:](v22, "fontDescriptorByAddingAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1]);
      }

      if ((v24 & ~v23) != 0)
      {
        v22 = [(UIFontDescriptor *)v22 fontDescriptorWithSymbolicTraits:v23 & 0xF0000000 | v24];
      }

      if (![(UIFontDescriptor *)[(UIFont *)font fontDescriptor] isEqual:v22]|| ([(UIFont *)font pointSize], v25 != v19))
      {
        font = [UIFont fontWithDescriptor:v22 size:v19];
      }
    }

    v6 = *v3;
    if (font)
    {
      *v3 = v6 & 0xFFFFFFDF;
      curAttributes = self->_curAttributes;
      if ((v6 & 0x4000) != 0)
      {
        curAttributes = [(NSMutableDictionary *)curAttributes mutableCopy];
        self->_curAttributes = curAttributes;
        *v3 &= ~0x4000u;
      }

      [(NSMutableDictionary *)curAttributes setObject:font forKey:@"NSFont"];
      v6 = *v3;
    }

    v4 = v6 | 4;
    *v3 = v4;
    if ((v4 & 8) != 0)
    {
LABEL_3:
      if ((v4 & 0x10) != 0)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  paraStyle = self->_attributeInfo.paraStyle;
  if (paraStyle)
  {
    v9 = [(NSParagraphStyle *)self->_attributeInfo.paraStyle textBlocks];
    if (v9 == self->_textBlocks || ([(NSArray *)v9 isEqual:?]& 1) != 0)
    {
      v10 = [(NSMutableParagraphStyle *)paraStyle copyWithZone:[(NSRTFReader *)self zone]];
    }

    else
    {
      v10 = [(NSParagraphStyle *)paraStyle mutableCopyWithZone:[(NSRTFReader *)self zone]];
      [v10 setTextBlocks:self->_textBlocks];
    }

    v11 = *v3;
    *v3 &= ~0x20u;
    v12 = self->_curAttributes;
    if ((v11 & 0x4000) != 0)
    {
      v12 = [(NSMutableDictionary *)v12 mutableCopy];
      self->_curAttributes = v12;
      *v3 &= ~0x4000u;
    }

    [(NSMutableDictionary *)v12 setObject:v10 forKey:@"NSParagraphStyle"];

    v4 = *v3;
  }

  v4 |= 8u;
  *v3 = v4;
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    kern = self->_attributeInfo.kern;
    v14 = v4 & 0xFFFFFFCF;
    if (kern == 0.0)
    {
      *v3 = v14;
      v15 = self->_curAttributes;
      if ((v4 & 0x4000) != 0)
      {
        v15 = [(NSMutableDictionary *)v15 mutableCopy];
        self->_curAttributes = v15;
        *v3 &= ~0x4000u;
      }

      [(NSMutableDictionary *)v15 removeObjectForKey:@"NSKern"];
    }

    else
    {
      *v3 = v14;
      v16 = self->_curAttributes;
      if (kern == -100000.0)
      {
        if ((v4 & 0x4000) != 0)
        {
          v16 = [(NSMutableDictionary *)self->_curAttributes mutableCopy];
          self->_curAttributes = v16;
          *v3 &= ~0x4000u;
        }

        v17 = MEMORY[0x1E696AD98];
        kern = 0.0;
      }

      else
      {
        if ((v4 & 0x4000) != 0)
        {
          v16 = [(NSMutableDictionary *)self->_curAttributes mutableCopy];
          self->_curAttributes = v16;
          *v3 &= ~0x4000u;
          kern = self->_attributeInfo.kern;
        }

        v17 = MEMORY[0x1E696AD98];
      }

      -[NSMutableDictionary setObject:forKey:](v16, "setObject:forKey:", [v17 numberWithDouble:kern], @"NSKern");
    }

    *v3 |= 0x10u;
  }
}

- (id)documentAttributes
{
  v16 = MEMORY[0x1E695DF90];
  v15 = [MEMORY[0x1E696B098] valueWithSize:{self->_paperSize.width, self->_paperSize.height}];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lMargin];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rMargin];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_tMargin];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bMargin];
  v5 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{self->_tMargin, self->_lMargin, self->_bMargin, self->_rMargin}];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_hyphenationFactor];
  v7 = [v16 dictionaryWithObjectsAndKeys:{v15, @"PaperSize", v14, @"LeftMargin", v13, @"RightMargin", v3, @"TopMargin", v4, @"BottomMargin", v5, @"PaperMargin", v6, @"HyphenationFactor", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", self->_defaultTabInterval), @"DefaultTabInterval", 0}];
  if (!NSEqualSizes(self->_viewSize, *MEMORY[0x1E696AA88]))
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithSize:", self->_viewSize.width, self->_viewSize.height), @"ViewSize"}];
  }

  viewScale = self->_viewScale;
  if (viewScale != 100)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", viewScale), @"ViewZoom"}];
  }

  if (self->_viewKind)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:"), @"ViewMode"}];
  }

  cocoaVersion = self->_cocoaVersion;
  if (cocoaVersion == -1 || cocoaVersion >= 1)
  {
    if (cocoaVersion == -1)
    {
      cocoaVersion = 80;
    }

    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", self->_cocoaSubVersion / 1000.0 + cocoaVersion), 0x1F01B4978}];
  }

  if (self->_readOnly)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:"), @"ReadOnly"}];
  }

  documentBackgroundColor = self->_documentBackgroundColor;
  if (documentBackgroundColor)
  {
    [v7 setObject:documentBackgroundColor forKey:@"BackgroundColor"];
  }

  if (self->_isRTLDocument)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"RightToLeftDocument"}];
  }

  if (self->_readLimit >= 1 && self->_private.rtfHeaderEndLocation)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:"), @"NSRTFHeaderEndLocation"}];
  }

  if (self->_documentInfoDictionary)
  {
    [v7 addEntriesFromDictionary:?];
  }

  layoutOrientationSections = self->_layoutOrientationSections;
  if (layoutOrientationSections)
  {
    [v7 setObject:layoutOrientationSections forKey:@"NSTextLayoutSectionsAttribute"];
  }

  if ((self->_cocoaTextScaling & 0x8000000000000000) == 0)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:"), @"TextScaling"}];
  }

  return v7;
}

- (void)dealloc
{
  _NSRTFDealloc(&self->_private, a2);

  cachedRTFFontTable = self->_cachedRTFFontTable;
  if (cachedRTFFontTable)
  {
    NSFreeMapTable(cachedRTFFontTable);
  }

  v4.receiver = self;
  v4.super_class = NSRTFReader;
  [(NSRTFReader *)&v4 dealloc];
}

- (uint64_t)_determineSourceTextScalingType
{
  if (result)
  {
    v1 = result;
    result = *(result + 2968);
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v2 = *(v1 + 2984);
    result = *(v1 + 2992);
    if ((result & 0x8000000000000000) == 0 && (v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    v3 = *(v1 + 340);
    if (v3 == -1)
    {
      v3 = 80;
    }

    v4 = *(v1 + 344) / 1000.0 + v3;
    if (v4 <= 80.0)
    {
      if (!v2)
      {
        result = 1;
        goto LABEL_14;
      }
    }

    else
    {
      if (v4 < 2466.0)
      {
        result = dyld_program_sdk_at_least() ^ 1;
LABEL_14:
        *(v1 + 2992) = result;
        return result;
      }

      result = *(v1 + 2984);
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    result = _NSTextScalingTypeForCurrentEnvironment();
    goto LABEL_14;
  }

  return result;
}

- (uint64_t)_determineFinalTextScalingType
{
  if (result)
  {
    v1 = result;
    result = _NSTextScalingTypeForCurrentEnvironment();
    v2 = result;
    if (result < 0)
    {
      result = [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v3 = v1[373];
    if (v3 < 2 || (v3 = v2, v2 <= 1))
    {
      v1[371] = v3;
      v2 = v3;
    }

    v1[375] = v2;
  }

  return result;
}

- (NSRTFReader)initWithRTFD:(id)a3
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC38]) initWithSerializedRepresentation:a3];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 isDirectory];
  if (v6)
  {
    v7 = rtfDataFromFileWrapper(v5);
  }

  else
  {
    if (![v5 isRegularFile])
    {
LABEL_12:

LABEL_13:
      return 0;
    }

    v7 = [v5 regularFileContents];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = [(NSRTFReader *)self initWithRTF:v8];
  self = v9;
  v10 = v6 ^ 1;
  if (!v9)
  {
    v10 = 1;
  }

  if (v10)
  {

    if (self)
    {
      return self;
    }

    goto LABEL_13;
  }

  [(NSRTFReader *)v9 _setRTFDFileWrapper:v5];

  return self;
}

- (NSRTFReader)initWithPath:(id)a3
{
  v11 = 0;
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    goto LABEL_8;
  }

  if (v11 == 1)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v6 = [v5 initWithURL:objc_msgSend(MEMORY[0x1E695DFF8] options:"fileURLWithPath:" error:{a3), 0, 0}];
    if (v6)
    {
      v7 = v6;
      v8 = [(NSRTFReader *)self initWithRTFDFileWrapper:v6];
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:a3];
  if (!v9)
  {
    goto LABEL_8;
  }

  v7 = v9;
  v8 = [(NSRTFReader *)self initWithRTF:v9];
LABEL_7:
  self = v8;

  if (!self)
  {
    goto LABEL_8;
  }

  return self;
}

- (NSRTFReader)initWithRTFDFileWrapper:(id)a3
{
  v3 = a3;
  if ([a3 isSymbolicLink])
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:objc_msgSend(v3 options:"symbolicLinkDestinationURL") error:{0, 0}];
  }

  if ([v3 isDirectory] && (v5 = rtfDataFromFileWrapper(v3)) != 0 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v7 = -[NSRTFReader initWithRTF:](self, "initWithRTF:", v6), (self = v7) != 0))
  {
    [(NSRTFReader *)v7 _setRTFDFileWrapper:v3];
  }

  else
  {

    return 0;
  }

  return self;
}

- (NSRTFReader)initWithRTF:(id)a3
{
  v5 = [(NSRTFReader *)self zone];
  v13.receiver = self;
  v13.super_class = NSRTFReader;
  v6 = [(NSRTFReader *)&v13 init];
  v7 = v6;
  if (v6)
  {
    _NSRTFInit(&v6->_private);
    v7->_private.reader = v7;
    _NSRTFSetPanicProc(&v7->_private, raiseRTFException);
    _NSRTFSetClassCallback(&v7->_private, 0, unknownClass);
    _NSRTFSetClassCallback(&v7->_private, 2uLL, textClass);
    _NSRTFSetClassCallback(&v7->_private, 3uLL, controlClass);
    _NSRTFSetClassCallback(&v7->_private, 1uLL, groupClass);
    v7->_cocoaVersion = -1;
    v7->_rtfData = [a3 copyWithZone:v5];
    v7->_curAttributes = [objc_msgSend(MEMORY[0x1E695DF90] allocWithZone:{v5), "initWithCapacity:", 4}];
    v7->_attributesStack = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{v5), "initWithCapacity:", 4}];
    v7->_attributeInfoStack = [objc_msgSend(MEMORY[0x1E695DF88] allocWithZone:{v5), "initWithCapacity:", 192}];
    v7->_topAttributedString = [objc_msgSend(MEMORY[0x1E696AD40] allocWithZone:{v5), "init"}];
    v7->_fontTable = [objc_msgSend(MEMORY[0x1E695DF90] allocWithZone:{v5), "initWithCapacity:", 4}];
    v7->_attributeInfo.toUniCharEncoding = 2817;
    v7->_defaultToUniCharEncoding = 2817;
    v7->_explicitCharSetEncountered = 0;
    v7->_level = 0;
    v7->_paperSize.width = 612.0;
    v7->_viewSize = *MEMORY[0x1E696AA88];
    *&v7->_viewScale = 100;
    v7->_tMargin = 72.0;
    *&v7->_paperSize.height = xmmword_18E856750;
    *&v7->_rMargin = xmmword_18E856760;
    *&v7->_hyphenationFactor = xmmword_18E856770;
    v8 = [(NSRTFReader *)v7 zone];
    keyCallBacks = *byte_1F01ACE40;
    v11 = **&MEMORY[0x1E696A788];
    v7->_cachedRTFFontTable = NSCreateMapTableWithZone(&keyCallBacks, &v11, 0x14uLL, v8);
    *(&v7->_attributeInfo + 42) = *(&v7->_attributeInfo + 42) & 0xFFFFC07F | 0x80;
    v7->_attributeInfo.codePageEncoding = -1;
    v7->_currentDefinitionColumn = 0;
    *&v7->_currentRow = 0;
    v7->_colorTblColorSpace = -1;
    v7->_verticalOrientationLocation = 0x7FFFFFFFFFFFFFFFLL;
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *&v7->_cocoaTextScaling = v9;
    *&v7->_targetTextScaling = v9;
    v7->_finalTextScaling = -1;
    v7->_includesTextListMarkers = 1;
    _NSRTFSetInput(&v7->_private.reader, [(NSData *)v7->_rtfData bytes], [(NSData *)v7->_rtfData length]);
    if (_NSRTFGetToken(&v7->_private) == 1 && !v7->_private.major)
    {
      _NSRTFRouteToken(&v7->_private);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)_setRTFDFileWrapper:(id)a3
{
  document = self->_document;
  if (document != a3)
  {

    self->_document = a3;
  }
}

- (CGSize)paperSize
{
  width = self->_paperSize.width;
  height = self->_paperSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  documentBackgroundColor = self->_documentBackgroundColor;
  if (documentBackgroundColor != a3)
  {

    self->_documentBackgroundColor = [a3 copy];
  }
}

- (void)setTextFlow:(unint64_t)a3
{
  if (self->_textFlow != a3)
  {
    *(&self->_attributeInfo + 42) &= ~0x20u;
    self->_textFlow = a3;
  }
}

- (void)_setTargetTextScaling:(int64_t)a3
{
  if (a3 <= 1)
  {
    self->_targetTextScaling = a3;
  }
}

- (void)_setSourceTextScaling:(int64_t)a3
{
  if (a3 <= 1)
  {
    self->_sourceTextScaling = a3;
  }
}

- (id)_currentTableCell
{
  if (!self->_currentTable)
  {
    return 0;
  }

  [(NSRTFReader *)self _ensureTableCells];
  currentRowArray = self->_currentRowArray;
  currentDefinitionColumn = self->_currentDefinitionColumn;

  return [(NSMutableArray *)currentRowArray objectAtIndex:currentDefinitionColumn];
}

- (BOOL)_currentTableCellIsPlaceholder
{
  currentTable = self->_currentTable;
  if (currentTable)
  {
    [(NSRTFReader *)self _currentTableCellIsPlaceholder];
    LOBYTE(currentTable) = v5;
  }

  return currentTable & 1 | !self->_setTableCells;
}

- (void)_setTableNestingLevel:(int64_t)a3
{
  nestedTables = self->_nestedTables;
  if (nestedTables)
  {
    nestedTables = [nestedTables count];
  }

  if (a3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3;
  }

  if (nestedTables + 1 >= v6)
  {
    if (nestedTables + 1 > v6)
    {
      if (nestedTables + 1 - v6 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = nestedTables + 1 - v6;
      }

      do
      {
        [(NSRTFReader *)self _popTableState];
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    for (i = v6 + ~nestedTables; i; --i)
    {
      [(NSRTFReader *)self _pushTableState];
    }
  }

  if (a3 < 1)
  {
    [NSRTFReader _setTableNestingLevel:?];
  }

  else
  {
    [NSRTFReader _setTableNestingLevel:?];
  }
}

- (void)_mergeTableCellsHorizontally
{
  currentDefinitionColumn = self->_currentDefinitionColumn;
  if (currentDefinitionColumn >= 1)
  {
    v4 = [(NSMutableArray *)self->_currentRowArray objectAtIndex:(currentDefinitionColumn - 1)];
    v5 = [v4 startingColumn];
    v6 = [v4 columnSpan];
    [(NSMutableArray *)self->_currentRowArray replaceObjectAtIndex:self->_currentDefinitionColumn withObject:v4];
    v7 = self->_currentDefinitionColumn;
    if (v6 + v5 <= v7)
    {

      [v4 _setColumnSpan:v7 - v5 + 1];
    }
  }
}

- (void)_mergeTableCellsVertically
{
  if (self->_currentRow >= 1)
  {
    previousRowArray = self->_previousRowArray;
    if (previousRowArray)
    {
      if ([(NSMutableArray *)previousRowArray count]> self->_currentDefinitionColumn)
      {
        v4 = [(NSMutableArray *)self->_previousRowArray objectAtIndex:?];
        v5 = [v4 startingRow];
        v6 = [v4 rowSpan];
        [(NSMutableArray *)self->_currentRowArray replaceObjectAtIndex:self->_currentDefinitionColumn withObject:v4];
        currentRow = self->_currentRow;
        if (v6 + v5 <= currentRow)
        {

          [v4 _setRowSpan:currentRow - v5 + 1];
        }
      }
    }
  }
}

- (void)setMutableAttributedString:(id)a3
{
  topAttributedString = self->_topAttributedString;
  if (topAttributedString != a3)
  {
    if (topAttributedString)
    {
      v6 = [(NSMutableAttributedString *)topAttributedString length];
      v7 = self->_topAttributedString;
      if (v6)
      {
        [a3 setAttributedString:v7];
        v7 = self->_topAttributedString;
      }
    }

    else
    {
      v7 = 0;
    }

    self->_topAttributedString = a3;
  }
}

- (id)attributedStringToEndOfGroup
{
  level = self->_level;
  curAttributedString = self->_curAttributedString;
  v5 = [objc_msgSend(MEMORY[0x1E696AD40] allocWithZone:{-[NSRTFReader zone](self, "zone")), "init"}];
  self->_curAttributedString = v5;
  do
  {
    if (_NSRTFGetToken(&self->_private) == 4)
    {
      break;
    }

    _NSRTFRouteToken(&self->_private);
    if (self->_level < level)
    {
      break;
    }
  }

  while (!self->_limitReached);
  self->_curAttributedString = curAttributedString;
  return v5;
}

- (id)attributesAtEndOfGroup
{
  v3 = 0;
  level = self->_level;
  do
  {
    if (_NSRTFGetToken(&self->_private) == 4)
    {
      break;
    }

    if (self->_private.class == 1 && self->_private.major == 1 && self->_level == level)
    {
      [(NSRTFReader *)self _updateAttributes];
      v3 = [-[NSRTFReader mutableAttributes](self "mutableAttributes")];
    }

    _NSRTFRouteToken(&self->_private);
  }

  while (self->_level >= level);
  return v3;
}

- (void)_addListDefinition:(id)a3 forKey:(int64_t)a4
{
  listDefinitions = self->_listDefinitions;
  if (!listDefinitions)
  {
    listDefinitions = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_listDefinitions = listDefinitions;
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:a3];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];

  [(NSMutableDictionary *)listDefinitions setObject:v8 forKey:v9];
}

- (void)_addOverride:(int64_t)a3 forKey:(int64_t)a4
{
  v6 = -[NSMutableDictionary objectForKey:](self->_listDefinitions, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:a4]);
  v7 = [v6 count];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = 0;
    do
    {
      v12 = [objc_msgSend(v6 objectAtIndex:{v11), "copy"}];
      [v10 addObject:v12];

      ++v11;
    }

    while (v9 != v11);

    [(NSRTFReader *)self _addListDefinition:v10 forKey:a3];
  }
}

- (void)processString:(id)a3
{
  v5 = [(NSMutableAttributedString *)self->_curAttributedString length];
  [(NSMutableAttributedString *)self->_curAttributedString replaceCharactersInRange:v5 withString:0, a3];
  v6 = [(NSMutableAttributedString *)self->_curAttributedString length];
  v7 = (&self->_attributeInfo + 42);
  toUniCharEncoding = *(&self->_attributeInfo + 42);
  if ((~toUniCharEncoding & 0x1C) != 0)
  {
    [(NSRTFReader *)self _updateAttributes];
    toUniCharEncoding = v7->toUniCharEncoding;
  }

  if ((toUniCharEncoding & 0x20) == 0)
  {
    if (self->_readLimit > 0)
    {
      goto LABEL_5;
    }

    [(NSMutableAttributedString *)self->_curAttributedString setAttributes:self->_curAttributes range:v5, v6 - v5];
    if (!v5 || ((v25 = [(NSMutableAttributedString *)self->_curAttributedString string], v12 = [(NSMutableDictionary *)self->_curAttributes objectForKey:@"NSParagraphStyle"], v13 = [(NSMutableAttributedString *)self->_curAttributedString attribute:@"NSParagraphStyle" atIndex:v5 - 1 effectiveRange:0], v12) ? (v14 = v13 == 0) : (v14 = 1), !v14 ? (v15 = v6 > v5) : (v15 = 0), !v15))
    {
LABEL_35:
      textFlow = self->_textFlow;
      if (textFlow == 4)
      {
        goto LABEL_38;
      }

      if (textFlow == 1)
      {
        if (self->_verticalOrientationLocation == 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_verticalOrientationLocation = v5;
        }

        goto LABEL_5;
      }

      if (!self->_textFlow)
      {
LABEL_38:
        if (self->_verticalOrientationLocation != 0x7FFFFFFFFFFFFFFFLL)
        {
          layoutOrientationSections = self->_layoutOrientationSections;
          if (!layoutOrientationSections)
          {
            layoutOrientationSections = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
            self->_layoutOrientationSections = layoutOrientationSections;
          }

          v23 = MEMORY[0x1E695DF20];
          v24 = [MEMORY[0x1E696AD98] numberWithInteger:1];
          -[NSMutableArray addObject:](layoutOrientationSections, "addObject:", [v23 dictionaryWithObjectsAndKeys:{v24, @"NSTextLayoutSectionOrientation", objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", self->_verticalOrientationLocation, v5 - self->_verticalOrientationLocation), @"NSTextLayoutSectionRange", 0}]);
          self->_verticalOrientationLocation = 0x7FFFFFFFFFFFFFFFLL;
          textFlow = self->_textFlow;
        }

        if (textFlow == 4)
        {
          -[NSMutableAttributedString addAttribute:value:range:](self->_curAttributedString, "addAttribute:value:range:", @"CTVerticalForms", [MEMORY[0x1E696AD98] numberWithInteger:0], v5, objc_msgSend(a3, "length"));
        }
      }

LABEL_5:
      v7->toUniCharEncoding |= 0x20u;
      goto LABEL_6;
    }

    v16 = v13;
    v17 = [v25 characterAtIndex:v5 - 1];
    if (v17 > 132)
    {
      if ((v17 - 8232) < 2 || v17 == 133)
      {
        goto LABEL_35;
      }
    }

    else if (v17 == 10 || v17 == 12 || v17 == 13 && (v5 >= [v25 length] || objc_msgSend(v25, "characterAtIndex:", v5) != 10))
    {
      goto LABEL_35;
    }

    if (([v12 isEqual:v16] & 1) == 0)
    {
      curAttributedString = self->_curAttributedString;
      v19 = [v25 paragraphRangeForRange:{v5, v6 - v5}];
      [(NSMutableAttributedString *)curAttributedString addAttribute:@"NSParagraphStyle" value:v12 range:v19, v20];
    }

    goto LABEL_35;
  }

LABEL_6:
  previousTable = self->_previousTable;
  if (previousTable)
  {

    self->_previousTable = 0;
    self->_currentRow = 0;
  }

  readLimit = self->_readLimit;
  if (readLimit >= 1 && v6 > readLimit)
  {
    self->_limitReached = 1;
  }

  thumbnailLimit = self->_thumbnailLimit;
  if (thumbnailLimit >= 1 && v6 > thumbnailLimit)
  {
    self->_limitReached = 1;
  }
}

- (void)finalize
{
  _NSRTFDealloc(&self->_private, a2);

  cachedRTFFontTable = self->_cachedRTFFontTable;
  if (cachedRTFFontTable)
  {
    NSFreeMapTable(cachedRTFFontTable);
  }

  v4.receiver = self;
  v4.super_class = NSRTFReader;
  [(NSRTFReader *)&v4 finalize];
}

+ (NSArray)defaultTextHighlightStyles
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"NSTextHighlightStyleDefault";
  v3[1] = @"NSTextHighlightStyleOutlined";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
}

+ (NSArray)defaultTextHighlightColorSchemes
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"NSTextHighlightColorSchemePurple";
  v3[1] = @"NSTextHighlightColorSchemePink";
  v3[2] = @"NSTextHighlightColorSchemeOrange";
  v3[3] = @"NSTextHighlightColorSchemeMint";
  v3[4] = @"NSTextHighlightColorSchemeBlue";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
}

- (uint64_t)_ensureTableCells
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 2888);
    if (!v2)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v1 + 2888) = v2;
    }

    if (!*(v1 + 2872))
    {
      v3 = objc_alloc_init(NSTextTable);
      *(v1 + 2872) = v3;
      [(NSTextTable *)v3 setNumberOfColumns:1];
      [*(v1 + 2872) setLayoutAlgorithm:0];
      [*(v1 + 2872) setCollapsesBorders:1];
      [*(v1 + 2872) setHidesEmptyCells:0];
      *(v1 + 2904) = 0;
      v2 = *(v1 + 2888);
    }

    result = [v2 count];
    for (i = result; i <= *(v1 + 2908) || i <= *(v1 + 2912); i = result)
    {
      v5 = [[NSTextTableBlock alloc] initWithTable:*(v1 + 2872) startingRow:*(v1 + 2904) rowSpan:1 startingColumn:i columnSpan:1];
      [(NSTextBlock *)v5 setWidth:0 type:0 forLayer:1.0];
      [OUTLINED_FUNCTION_0_6() setWidth:? type:? forLayer:? edge:?];
      [OUTLINED_FUNCTION_0_6() setWidth:? type:? forLayer:? edge:?];
      [(NSTextBlock *)v5 setVerticalAlignment:1];
      [(NSTextBlock *)v5 setBorderColor:[(objc_class *)getNSColorClass_3() colorWithCalibratedWhite:0.75 alpha:1.0]];
      [*(v1 + 2888) addObject:v5];

      result = [*(v1 + 2888) count];
    }
  }

  return result;
}

- (uint64_t)_beginTableRow
{
  if (result)
  {
    v1 = result;
    if (!*(result + 2888))
    {
      *(result + 2888) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (!*(v1 + 2872))
    {
      v2 = *(v1 + 2880);
      if (v2)
      {
        *(v1 + 2872) = v2;
        *(v1 + 2880) = 0;
      }

      else
      {
        v3 = objc_alloc_init(NSTextTable);
        *(v1 + 2872) = v3;
        [(NSTextTable *)v3 setNumberOfColumns:1];
        [*(v1 + 2872) setLayoutAlgorithm:0];
        [*(v1 + 2872) setCollapsesBorders:1];
        [*(v1 + 2872) setHidesEmptyCells:0];
        *(v1 + 2904) = 0;
      }
    }

    *(v1 + 2908) = 0;

    return [(NSRTFReader *)v1 _ensureTableCells];
  }

  return result;
}

- (void)_pushTableState
{
  if (a1)
  {
    v4 = objc_alloc_init(NSRTFReaderTableState);
    [(NSRTFReader *)a1 _ensureTableCells];
    v2 = v4;
    v4->_currentTable = *(a1 + 2872);
    v4->_previousTable = *(a1 + 2880);
    v4->_currentRowArray = *(a1 + 2888);
    v4->_previousRowArray = *(a1 + 2896);
    v4->_currentRow = *(a1 + 2904);
    v4->_currentColumn = *(a1 + 2908);
    v4->_currentDefinitionColumn = *(a1 + 2912);
    v4->_currentRowIsLast = *(a1 + 2916);
    *(a1 + 2901) = 0u;
    *(a1 + 2872) = 0u;
    *(a1 + 2888) = 0u;
    v3 = *(a1 + 2864);
    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2 = v4;
      *(a1 + 2864) = v3;
    }

    [v3 addObject:v2];
  }
}

- (void)_popTableState
{
  if (a1)
  {
    v2 = [*(a1 + 2864) lastObject];

    if (v2)
    {
      *(a1 + 2872) = *(v2 + 8);
      *(a1 + 2880) = *(v2 + 16);
      *(a1 + 2888) = *(v2 + 24);
      *(a1 + 2896) = *(v2 + 32);
      *(a1 + 2904) = *(v2 + 40);
      *(a1 + 2908) = *(v2 + 44);
      *(a1 + 2912) = *(v2 + 48);
      *(a1 + 2916) = *(v2 + 52);
    }

    else
    {
      *(a1 + 2872) = 0u;
      *(a1 + 2888) = 0u;
    }

    [*(a1 + 2864) removeLastObject];
    if (![*(a1 + 2864) count])
    {

      *(a1 + 2864) = 0;
    }
  }
}

- (uint64_t)_setTableCells
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 2864);
    if (v2)
    {
      v3 = [v2 count];

      if (v3)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        for (i = 0; i != v3; ++i)
        {
          v6 = [*(v1 + 2864) objectAtIndex:i];
          [v4 addObject:{objc_msgSend(*(v6 + 24), "objectAtIndex:", *(v6 + 44))}];
        }

        [v4 addObject:{objc_msgSend(*(v1 + 2888), "objectAtIndex:", *(v1 + 2908))}];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(*(v1 + 2888), "objectAtIndex:", *(v1 + 2908)), 0}];
LABEL_9:
    *(v1 + 2856) = v4;
    result = [objc_msgSend(v1 "_mutableParagraphStyle")];
    *(v1 + 2917) = 1;
  }

  return result;
}

- (uint64_t)_clearTableCells
{
  if (result)
  {
    v1 = result;

    *(v1 + 2856) = 0;
    result = [objc_msgSend(v1 "_mutableParagraphStyle")];
    *(v1 + 2917) = 0;
  }

  return result;
}

- (void)_endTableCellDefinition
{
  if (!self->_currentTable)
  {
    [(NSRTFReader *)self _beginTableRow];
  }

  ++self->_currentDefinitionColumn;

  [(NSRTFReader *)self _ensureTableCells];
}

- (void)_paragraphInTable
{
  if (!self->_currentTable)
  {
    [(NSRTFReader *)self _beginTableRow];
  }

  [(NSRTFReader *)self _ensureTableCells];

  [(NSRTFReader *)self _setTableCells];
}

- (void)_endTableCell
{
  currentTable = self->_currentTable;
  if (!currentTable)
  {
    [(NSRTFReader *)self _beginTableRow];
    currentTable = self->_currentTable;
  }

  ++self->_currentColumn;
  if ([(NSTextTable *)currentTable numberOfColumns]< self->_currentColumn)
  {
    [(NSTextTable *)self->_currentTable setNumberOfColumns:?];
  }

  [(NSRTFReader *)self _ensureTableCells];

  [(NSRTFReader *)self _setTableCells];
}

- (void)_endTableRow
{
  [(NSRTFReader *)self _clearTableCells];
  ++self->_currentRow;
  *&self->_currentColumn = 0;

  currentTable = self->_currentTable;
  if (self->_currentRowIsLast)
  {

    self->_currentRow = 0;
    *&self->_currentTable = 0u;
    *&self->_currentRowArray = 0u;
    if ([(NSMutableArray *)self->_nestedTables count])
    {
      [(NSRTFReader *)self _popTableState];
    }
  }

  else
  {
    self->_previousTable = currentTable;
    self->_previousRowArray = self->_currentRowArray;
    self->_currentTable = 0;
    self->_currentRowArray = 0;
  }

  self->_currentRowIsLast = 0;
}

- (uint64_t)_documentInfoDictionary
{
  if (result)
  {
    v1 = result;
    result = *(result + 472);
    if (!result)
    {
      result = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
      *(v1 + 472) = result;
    }
  }

  return result;
}

- (double)_updateFontSizeForTextScalingIfNeeded:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if ((*(a1 + 2992) & 0x8000000000000000) != 0)
  {
    [(NSRTFReader *)a1 _determineSourceTextScalingType];
  }

  v4 = *(a1 + 3000);
  if (v4 < 0)
  {
    [(NSRTFReader *)a1 _determineFinalTextScalingType];
    v4 = *(a1 + 3000);
  }

  v5 = *(a1 + 2992);
  if (v5 == v4)
  {
    return a2;
  }

  return _NSTextScalingConvertFontPointSize(v5, v4, a2);
}

- (void)_currentTableCellIsPlaceholder
{
  [(NSRTFReader *)a1 _ensureTableCells];
  v4 = [*(a1 + 2888) objectAtIndex:*(a1 + 2908)];
  v5 = *(a1 + 2908);
  v6 = (v5 - 1);
  if (v5 >= 1 && (result = [*(a1 + 2888) objectAtIndex:v6], result == v4))
  {
    v8 = 1;
  }

  else
  {
    result = *(a1 + 2896);
    if (result && (result = [result count], result > *(a1 + 2908)))
    {
      result = [*(a1 + 2896) objectAtIndex:?];
      v8 = result == v4;
    }

    else
    {
      v8 = 0;
    }
  }

  *a2 = v8;
  return result;
}

- (double)_setTableNestingLevel:(uint64_t)a1 .cold.1(uint64_t a1)
{
  [(NSRTFReader *)a1 _clearTableCells];

  result = 0.0;
  *(a1 + 2901) = 0u;
  *(a1 + 2872) = 0u;
  *(a1 + 2888) = 0u;
  return result;
}

- (uint64_t)_setTableNestingLevel:(uint64_t)a1 .cold.2(uint64_t a1)
{
  if (!*(a1 + 2872))
  {
    [(NSRTFReader *)a1 _beginTableRow];
  }

  [(NSRTFReader *)a1 _ensureTableCells];

  return [(NSRTFReader *)a1 _setTableCells];
}

@end