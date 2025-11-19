@interface NSSingleLineTypesetter
+ (BOOL)_validateAttributes:(id)a3 measuringOnly:(BOOL)a4;
+ (void)initialize;
+ (void)performWithSingleLineTypesetterContext:(id)a3;
- (NSSingleLineTypesetter)init;
- (_NSRange)characterRangeForGlyphRange:(_NSRange)a3 actualGlyphRange:(_NSRange *)a4;
- (_NSRange)glyphRangeForCharacterRange:(_NSRange)a3 actualCharacterRange:(_NSRange *)a4;
- (id)_textContainerForAttachmentProtocol;
- (id)createRenderingContextForCharacterRange:(_NSRange)a3 typesetterBehavior:(int64_t)a4 usesScreenFonts:(BOOL)a5 hasStrongRight:(BOOL)a6 syncDirection:(BOOL)a7 mirrorsTextAlignment:(BOOL)a8 maximumWidth:(double)a9;
- (id)substituteFontForFont:(id)a3;
- (unint64_t)getGlyphsInRange:(_NSRange)a3 glyphs:(unsigned __int16 *)a4 properties:(int64_t *)a5 characterIndexes:(unint64_t *)a6 bidiLevels:(char *)a7;
- (void)dealloc;
- (void)getLineFragmentRect:(CGRect *)a3 usedRect:(CGRect *)a4 remainingRect:(CGRect *)a5 forStartingGlyphAtIndex:(unint64_t)a6 proposedRect:(CGRect)a7 lineSpacing:(double)a8 paragraphSpacingBefore:(double)a9 paragraphSpacingAfter:(double)a10;
- (void)setGlyphs:(const unsigned __int16 *)a3 properties:(const int64_t *)a4 characterIndexes:(const unint64_t *)a5 font:(id)a6 forGlyphRange:(_NSRange)a7;
@end

@implementation NSSingleLineTypesetter

+ (void)initialize
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3[0] = @"NSBackgroundColor";
    v3[1] = @"NSLink";
    v3[2] = @"NSTextAlternativesDisplayStyle";
    v3[3] = @"NSSpellingState";
    v3[4] = @"NSUnderlineColor";
    v3[5] = @"NSUnderline";
    v3[6] = @"NSStrikethrough";
    v3[7] = @"NSStrikethroughColor";
    v3[8] = NSMarkedClauseSegmentAttributeName;
    __NSUnrecognizedAttributes = CFSetCreate(0, v3, 9, MEMORY[0x1E695E9F8]);
  }
}

- (NSSingleLineTypesetter)init
{
  v5.receiver = self;
  v5.super_class = NSSingleLineTypesetter;
  v2 = [(NSATSTypesetter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSTypesetter *)v2 setUsesFontLeading:0];
    [(NSATSTypesetter *)v3 _setBaselineRenderingMode:1];
    [(NSTypesetter *)v3 _setForceOriginalFontBaseline:1];
  }

  return v3;
}

+ (void)performWithSingleLineTypesetterContext:(id)a3
{
  os_unfair_lock_lock_with_options();
  v5 = __NSSingleLineTypesetterCacheNextIndex;
  if (__NSSingleLineTypesetterCacheNextIndex)
  {
    --__NSSingleLineTypesetterCacheNextIndex;
    v8 = __NSSingleLineTypesetterCache[v5 - 1];
    os_unfair_lock_unlock(&__NSSingleLineTypesetterLock);
    v6 = v8;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_lock_unlock(&__NSSingleLineTypesetterLock);
  }

  v6 = [objc_allocWithZone(a1) init];
LABEL_6:
  v9 = v6;
  (*(a3 + 2))(a3);
  os_unfair_lock_lock_with_options();
  v7 = __NSSingleLineTypesetterCacheNextIndex;
  if (__NSSingleLineTypesetterCacheNextIndex > 4)
  {
    os_unfair_lock_unlock(&__NSSingleLineTypesetterLock);
  }

  else
  {
    ++__NSSingleLineTypesetterCacheNextIndex;
    __NSSingleLineTypesetterCache[v7] = v9;

    os_unfair_lock_unlock(&__NSSingleLineTypesetterLock);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSingleLineTypesetter;
  [(NSATSTypesetter *)&v3 dealloc];
}

+ (BOOL)_validateAttributes:(id)a3 measuringOnly:(BOOL)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return 1;
  }

  memset(v12, 0, sizeof(v12));
  Count = CFDictionaryGetCount(a3);
  if (Count > 40)
  {
    return 0;
  }

  v7 = Count;
  v8 = v12;
  CFDictionaryGetKeysAndValues(a3, v12, 0);
  v9 = v12 + v7;
  do
  {
    v4 = v8 >= v9;
    if (v8 >= v9)
    {
      break;
    }

    v10 = *v8++;
  }

  while (!CFSetContainsValue(__NSUnrecognizedAttributes, v10));
  return v4;
}

- (id)_textContainerForAttachmentProtocol
{
  textStorage = self->_textStorage;
  if (!textStorage)
  {
    v4 = [[__NSImmutableTextStorage alloc] initWithAttributedString:[(NSSingleLineTypesetter *)self attributedString]];
    self->_textStorage = v4;
    v5 = [(__NSImmutableTextStorage *)v4 layoutManager];
    [(NSLayoutManager *)v5 setApplicationFrameworkContext:[(NSTypesetter *)self applicationFrameworkContext]];
    [(NSLayoutManager *)v5 setUsesFontLeading:[(NSTypesetter *)self usesFontLeading]];
    [(NSTextContainer *)[(__NSImmutableTextStorage *)self->_textStorage textContainer] setSize:self->_lineWidth, 0.0];
    textStorage = self->_textStorage;
  }

  return [(__NSImmutableTextStorage *)textStorage textContainer];
}

- (id)createRenderingContextForCharacterRange:(_NSRange)a3 typesetterBehavior:(int64_t)a4 usesScreenFonts:(BOOL)a5 hasStrongRight:(BOOL)a6 syncDirection:(BOOL)a7 mirrorsTextAlignment:(BOOL)a8 maximumWidth:(double)a9
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  length = a3.length;
  location = a3.location;
  v30 = 0;
  v29 = *MEMORY[0x1E696AA78];
  v17 = [(NSAttributedString *)self->super.attributedString length];
  if (length || (v18 = v17, result = 0, location <= v18))
  {
    self->_lineWidth = a9;
    self->_slFlags = (*&self->_slFlags & 0xFFFFFFFE | v11);
    [(NSTypesetter *)self setTypesetterBehavior:a4];
    [(NSTypesetter *)self setParagraphGlyphRange:location separatorGlyphRange:length, location + length, 0];
    [(NSATSTypesetter *)self beginParagraph];
    v27 = location;
    v28 = location;
    v20 = self->super._private;
    if (!v20)
    {
      [NSATSTypesetter _doBidiProcessing];
      v20 = v31;
    }

    v21 = v20[5];
    if (v10)
    {
      v22 = 0x8000;
    }

    else
    {
      v22 = 0;
    }

    *(v21 + 216) = *(v21 + 216) & 0xFFFF7FFF | v22;
    if (a8)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    if (v9)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    self->_slFlags = (v23 | v24 | *&self->_slFlags & 0xFFFFFFF9);
    [(NSATSTypesetter *)self _layoutLineFragmentStartingWithGlyphAtIndex:&v28 characterIndex:&v27 atPoint:&v29 renderingContext:&v30];
    v25 = self->super._private;
    if (!v25)
    {
      [NSATSTypesetter _doBidiProcessing];
      v25 = v31;
    }

    [v30 setResolvedTextAlignment:{(*(v25[5] + 216) >> 7) & 0xF, v27, v28}];
    v26 = [(NSATSTypesetter *)self _baseWritingDirection];
    [v30 setResolvedBaseWritingDirection:v26];
    [(NSATSTypesetter *)self endParagraph];
    [(NSATSTypesetter *)self _flushCachedObjects];

    self->_textStorage = 0;
    return v30;
  }

  return result;
}

- (void)setGlyphs:(const unsigned __int16 *)a3 properties:(const int64_t *)a4 characterIndexes:(const unint64_t *)a5 font:(id)a6 forGlyphRange:(_NSRange)a7
{
  length = a7.length;
  v11 = a7.location - self->_currentBufferRange.location;
  if (a3)
  {
    glyphs = self->_glyphs;
    if (glyphs)
    {
      memcpy(&glyphs[v11], a3, 2 * a7.length);
    }
  }

  if (a4)
  {
    props = self->_props;
    if (props)
    {
      memcpy(&props[v11], a4, 8 * length);
    }
  }

  if (a5)
  {
    charIndexes = self->_charIndexes;
    if (charIndexes)
    {

      memcpy(&charIndexes[v11], a5, 8 * length);
    }
  }
}

- (_NSRange)characterRangeForGlyphRange:(_NSRange)a3 actualGlyphRange:(_NSRange *)a4
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)glyphRangeForCharacterRange:(_NSRange)a3 actualCharacterRange:(_NSRange *)a4
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)getGlyphsInRange:(_NSRange)a3 glyphs:(unsigned __int16 *)a4 properties:(int64_t *)a5 characterIndexes:(unint64_t *)a6 bidiLevels:(char *)a7
{
  length = a3.length;
  location = a3.location;
  self->_currentBufferRange = a3;
  self->_glyphs = a4;
  self->_props = a5;
  self->_charIndexes = a6;
  if (a7)
  {
    bzero(a7, a3.length);
  }

  [+[NSGlyphGenerator defaultGlyphGenerator](NSGlyphGenerator defaultGlyphGenerator];
  self->_glyphs = 0;
  self->_props = 0;
  self->_charIndexes = 0;
  return length;
}

- (void)getLineFragmentRect:(CGRect *)a3 usedRect:(CGRect *)a4 remainingRect:(CGRect *)a5 forStartingGlyphAtIndex:(unint64_t)a6 proposedRect:(CGRect)a7 lineSpacing:(double)a8 paragraphSpacingBefore:(double)a9 paragraphSpacingAfter:(double)a10
{
  lineWidth = self->_lineWidth;
  if (lineWidth < a7.size.width && lineWidth > 0.0)
  {
    a7.size.width = self->_lineWidth;
  }

  if (a3)
  {
    a3->origin.x = a7.origin.x;
    a3->origin.y = a7.origin.y;
    a3->size.width = a7.size.width;
    a3->size.height = a7.size.height + a8 + a9 + a10;
  }

  if (a4)
  {
    a4->origin.x = a7.origin.x;
    a4->origin.y = a7.origin.y + a9;
    a4->size.width = a7.size.width;
    a4->size.height = a7.size.height + a9 + a10;
  }

  if (a5)
  {
    v12 = *(MEMORY[0x1E696AA80] + 16);
    a5->origin = *MEMORY[0x1E696AA80];
    a5->size = v12;
  }
}

- (id)substituteFontForFont:(id)a3
{
  if (*&self->_slFlags)
  {
    return [a3 screenFontWithRenderingMode:0];
  }

  else
  {
    return a3;
  }
}

@end