@interface NSSingleLineTypesetter
+ (BOOL)_validateAttributes:(id)attributes measuringOnly:(BOOL)only;
+ (void)initialize;
+ (void)performWithSingleLineTypesetterContext:(id)context;
- (NSSingleLineTypesetter)init;
- (_NSRange)characterRangeForGlyphRange:(_NSRange)range actualGlyphRange:(_NSRange *)glyphRange;
- (_NSRange)glyphRangeForCharacterRange:(_NSRange)range actualCharacterRange:(_NSRange *)characterRange;
- (id)_textContainerForAttachmentProtocol;
- (id)createRenderingContextForCharacterRange:(_NSRange)range typesetterBehavior:(int64_t)behavior usesScreenFonts:(BOOL)fonts hasStrongRight:(BOOL)right syncDirection:(BOOL)direction mirrorsTextAlignment:(BOOL)alignment maximumWidth:(double)width;
- (id)substituteFontForFont:(id)font;
- (unint64_t)getGlyphsInRange:(_NSRange)range glyphs:(unsigned __int16 *)glyphs properties:(int64_t *)properties characterIndexes:(unint64_t *)indexes bidiLevels:(char *)levels;
- (void)dealloc;
- (void)getLineFragmentRect:(CGRect *)rect usedRect:(CGRect *)usedRect remainingRect:(CGRect *)remainingRect forStartingGlyphAtIndex:(unint64_t)index proposedRect:(CGRect)proposedRect lineSpacing:(double)spacing paragraphSpacingBefore:(double)before paragraphSpacingAfter:(double)self0;
- (void)setGlyphs:(const unsigned __int16 *)glyphs properties:(const int64_t *)properties characterIndexes:(const unint64_t *)indexes font:(id)font forGlyphRange:(_NSRange)range;
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

+ (void)performWithSingleLineTypesetterContext:(id)context
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

  v6 = [objc_allocWithZone(self) init];
LABEL_6:
  v9 = v6;
  (*(context + 2))(context);
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

+ (BOOL)_validateAttributes:(id)attributes measuringOnly:(BOOL)only
{
  v13 = *MEMORY[0x1E69E9840];
  if (only)
  {
    return 1;
  }

  memset(v12, 0, sizeof(v12));
  Count = CFDictionaryGetCount(attributes);
  if (Count > 40)
  {
    return 0;
  }

  v7 = Count;
  v8 = v12;
  CFDictionaryGetKeysAndValues(attributes, v12, 0);
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
    layoutManager = [(__NSImmutableTextStorage *)v4 layoutManager];
    [(NSLayoutManager *)layoutManager setApplicationFrameworkContext:[(NSTypesetter *)self applicationFrameworkContext]];
    [(NSLayoutManager *)layoutManager setUsesFontLeading:[(NSTypesetter *)self usesFontLeading]];
    [(NSTextContainer *)[(__NSImmutableTextStorage *)self->_textStorage textContainer] setSize:self->_lineWidth, 0.0];
    textStorage = self->_textStorage;
  }

  return [(__NSImmutableTextStorage *)textStorage textContainer];
}

- (id)createRenderingContextForCharacterRange:(_NSRange)range typesetterBehavior:(int64_t)behavior usesScreenFonts:(BOOL)fonts hasStrongRight:(BOOL)right syncDirection:(BOOL)direction mirrorsTextAlignment:(BOOL)alignment maximumWidth:(double)width
{
  directionCopy = direction;
  rightCopy = right;
  fontsCopy = fonts;
  length = range.length;
  location = range.location;
  v30 = 0;
  v29 = *MEMORY[0x1E696AA78];
  v17 = [(NSAttributedString *)self->super.attributedString length];
  if (length || (v18 = v17, result = 0, location <= v18))
  {
    self->_lineWidth = width;
    self->_slFlags = (*&self->_slFlags & 0xFFFFFFFE | fontsCopy);
    [(NSTypesetter *)self setTypesetterBehavior:behavior];
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
    if (rightCopy)
    {
      v22 = 0x8000;
    }

    else
    {
      v22 = 0;
    }

    *(v21 + 216) = *(v21 + 216) & 0xFFFF7FFF | v22;
    if (alignment)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    if (directionCopy)
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
    _baseWritingDirection = [(NSATSTypesetter *)self _baseWritingDirection];
    [v30 setResolvedBaseWritingDirection:_baseWritingDirection];
    [(NSATSTypesetter *)self endParagraph];
    [(NSATSTypesetter *)self _flushCachedObjects];

    self->_textStorage = 0;
    return v30;
  }

  return result;
}

- (void)setGlyphs:(const unsigned __int16 *)glyphs properties:(const int64_t *)properties characterIndexes:(const unint64_t *)indexes font:(id)font forGlyphRange:(_NSRange)range
{
  length = range.length;
  v11 = range.location - self->_currentBufferRange.location;
  if (glyphs)
  {
    glyphs = self->_glyphs;
    if (glyphs)
    {
      memcpy(&glyphs[v11], glyphs, 2 * range.length);
    }
  }

  if (properties)
  {
    props = self->_props;
    if (props)
    {
      memcpy(&props[v11], properties, 8 * length);
    }
  }

  if (indexes)
  {
    charIndexes = self->_charIndexes;
    if (charIndexes)
    {

      memcpy(&charIndexes[v11], indexes, 8 * length);
    }
  }
}

- (_NSRange)characterRangeForGlyphRange:(_NSRange)range actualGlyphRange:(_NSRange *)glyphRange
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)glyphRangeForCharacterRange:(_NSRange)range actualCharacterRange:(_NSRange *)characterRange
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)getGlyphsInRange:(_NSRange)range glyphs:(unsigned __int16 *)glyphs properties:(int64_t *)properties characterIndexes:(unint64_t *)indexes bidiLevels:(char *)levels
{
  length = range.length;
  location = range.location;
  self->_currentBufferRange = range;
  self->_glyphs = glyphs;
  self->_props = properties;
  self->_charIndexes = indexes;
  if (levels)
  {
    bzero(levels, range.length);
  }

  [+[NSGlyphGenerator defaultGlyphGenerator](NSGlyphGenerator defaultGlyphGenerator];
  self->_glyphs = 0;
  self->_props = 0;
  self->_charIndexes = 0;
  return length;
}

- (void)getLineFragmentRect:(CGRect *)rect usedRect:(CGRect *)usedRect remainingRect:(CGRect *)remainingRect forStartingGlyphAtIndex:(unint64_t)index proposedRect:(CGRect)proposedRect lineSpacing:(double)spacing paragraphSpacingBefore:(double)before paragraphSpacingAfter:(double)self0
{
  lineWidth = self->_lineWidth;
  if (lineWidth < proposedRect.size.width && lineWidth > 0.0)
  {
    proposedRect.size.width = self->_lineWidth;
  }

  if (rect)
  {
    rect->origin.x = proposedRect.origin.x;
    rect->origin.y = proposedRect.origin.y;
    rect->size.width = proposedRect.size.width;
    rect->size.height = proposedRect.size.height + spacing + before + after;
  }

  if (usedRect)
  {
    usedRect->origin.x = proposedRect.origin.x;
    usedRect->origin.y = proposedRect.origin.y + before;
    usedRect->size.width = proposedRect.size.width;
    usedRect->size.height = proposedRect.size.height + before + after;
  }

  if (remainingRect)
  {
    v12 = *(MEMORY[0x1E696AA80] + 16);
    remainingRect->origin = *MEMORY[0x1E696AA80];
    remainingRect->size = v12;
  }
}

- (id)substituteFontForFont:(id)font
{
  if (*&self->_slFlags)
  {
    return [font screenFontWithRenderingMode:0];
  }

  else
  {
    return font;
  }
}

@end