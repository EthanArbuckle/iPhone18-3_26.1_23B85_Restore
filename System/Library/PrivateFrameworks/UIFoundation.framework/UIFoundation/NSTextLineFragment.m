@interface NSTextLineFragment
+ (__CFDictionary)_hiddenContentRenderingAttributes;
- (BOOL)_selectionColorShouldOverrideColor:(id)a3;
- (BOOL)drawMarkedTextBackgroundAtPoint:(CGPoint)a3 context:(CGContext *)a4 adjustmentCallback:(id)a5;
- (BOOL)drawMarkedTextIndicatorAtPoint:(CGPoint)a3 graphicsContext:(id)a4 backgroundOnly:(BOOL)a5 adjustmentCallback:(id)a6;
- (CGFloat)fractionOfDistanceThroughGlyphForPoint:(CGPoint)point;
- (CGPoint)glyphOrigin;
- (CGPoint)locationForCharacterAtIndex:(NSInteger)index;
- (CGRect)boundsForMarkedTextAtPoint:(CGPoint)a3 range:(id)a4 width:(double)a5 adjustmentCallback:(id)a6;
- (CGRect)boundsWithType:(int64_t)a3 options:(unint64_t)a4;
- (CGRect)imageBounds;
- (CGRect)typographicBounds;
- (NSInteger)characterIndexForPoint:(CGPoint)point;
- (NSRange)characterRange;
- (NSTextLineFragment)initWithAttributedString:(NSAttributedString *)attributedString range:(NSRange)range;
- (NSTextLineFragment)initWithCoder:(NSCoder *)aDecoder;
- (NSTextLineFragment)initWithString:(NSString *)string attributes:(NSDictionary *)attributes range:(NSRange)range;
- (_NSRange)_rangeOfLigatureContainingCharacterIndex:(unint64_t)a3;
- (__CTLine)lineRef;
- (__CTRun)_findRunForStringIndex:(int64_t)a3 runIndex:(int64_t *)a4;
- (id)_defaultRenderingAttributesAtCharacterIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)description;
- (id)textLineFragmentRange;
- (int64_t)characterIndexForPoint:(CGPoint)a3 fractionOfDistanceThroughGlyph:(double *)a4;
- (unint64_t)numberOfGlyphs;
- (void)_drawMarkedTextBackground:(id)a3 inTextRange:(id)a4 atOrigin:(CGPoint)a5 graphicsContext:(id)a6;
- (void)_drawMarkedTextUnderline:(id)a3 inTextRange:(id)a4 atOrigin:(CGPoint)a5 graphicsContext:(id)a6;
- (void)_drawTextCorrectionMarker:(int64_t)a3 characterRange:(_NSRange)a4 atOrigin:(CGPoint)a5 graphicsContext:(id)a6;
- (void)_enumerateTextAttachmentFramesInCharacterRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)_enumerateTextSegmentsInCharacterRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)_getCaretPositionsForCharactersInRange:(_NSRange)a3 positionsCache:(double *)a4 positionsCacheSize:(unint64_t *)a5 block:(id)a6;
- (void)_processCaretGlyphRunForTextSelectionProvider:(id)a3 baseLocation:(id)a4 runRange:(_NSRange)a5 glyphOffset:(double)a6 positionsCache:(double *)a7 positionsCacheSize:(unint64_t *)a8 stop:(BOOL *)a9 usingBlock:(id)a10;
- (void)_setColor:(id)a3 inGraphicsContext:(id)a4;
- (void)dealloc;
- (void)drawAtPoint:(CGPoint)a3 graphicsContext:(id)a4;
- (void)drawAtPoint:(CGPoint)point inContext:(CGContextRef)context;
- (void)drawMarkedTextIndicatorAtPoint:(CGPoint)a3 context:(CGContext *)a4 adjustmentCallback:(id)a5;
- (void)drawTextAttachmentsAtPoint:(CGPoint)a3 graphicsContext:(id)a4;
- (void)drawTextCorrectionMarkersAtPoint:(CGPoint)a3 context:(CGContext *)a4;
- (void)drawTextCorrectionMarkersAtPoint:(CGPoint)a3 graphicsContext:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateCaretOffsetsWithTextSelectionDataSource:(id)a3 baseLocation:(id)a4 usingBlock:(id)a5;
- (void)enumerateTextSegmentBoundsInTextRange:(id)a3 dataSourceLocationsOnly:(BOOL)a4 usingBlock:(id)a5;
- (void)invalidateCache;
- (void)setGlyphOrigin:(CGPoint)a3;
- (void)setGlyphs:(const unsigned __int16 *)a3 advances:(const CGSize *)a4 count:(int64_t)a5 elasticCount:(unint64_t)a6 font:(id)a7;
- (void)setIsHyphenated:(BOOL)a3;
- (void)setIsTruncated:(BOOL)a3;
- (void)setLineBadge:(id)a3;
- (void)setLineRef:(__CTLine *)a3;
- (void)setTypographicBounds:(CGRect)a3;
@end

@implementation NSTextLineFragment

- (CGRect)imageBounds
{
  if (CGRectIsNull(self->_imageBounds))
  {
    lineRef = self->_lineRef;
    if (lineRef)
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
      GlyphRuns = CTLineGetGlyphRuns(self->_lineRef);
      if (CFArrayGetCount(GlyphRuns) >= 1)
      {
        v9 = 0;
        do
        {
          CFArrayGetValueAtIndex(GlyphRuns, v9);
          Font = CTRunGetFont();
          if (Font)
          {
            v11 = Font;
            v12 = CFGetTypeID(Font);
            if (v12 == CTFontGetTypeID())
            {
              BoundingBox = CTFontGetBoundingBox(v11);
              v45.origin.x = x;
              v45.origin.y = y;
              v45.size.width = width;
              v45.size.height = height;
              v46 = CGRectUnion(v45, BoundingBox);
              x = v46.origin.x;
              y = v46.origin.y;
              width = v46.size.width;
              height = v46.size.height;
            }
          }

          ++v9;
        }

        while (v9 < CFArrayGetCount(GlyphRuns));
      }

      ascent.a = 0.0;
      descent.a = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(lineRef, &ascent.a, &descent.a, 0);
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v14 = -CGRectGetMinY(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      MaxY = CGRectGetMaxY(v48);
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      MinX = CGRectGetMinX(v49);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      MaxX = CGRectGetMaxX(v50);
      a = ascent.a;
      if (ascent.a < MaxY)
      {
        a = MaxY;
      }

      v19 = descent.a;
      if (descent.a < v14)
      {
        v19 = v14;
      }

      v20 = -v19;
      v21 = TypographicBounds - MinX + MaxX;
      v22 = a + v19;
    }

    else
    {
      v27 = self->_font;
      if (v27)
      {
        glyphs = self->_glyphs;
        advances = self->_advances;
        glyphCount = self->_glyphCount;
        v54 = CTFontGetBoundingBox(v27);
        MinX = *MEMORY[0x1E695F058];
        v20 = *(MEMORY[0x1E695F058] + 8);
        v21 = *(MEMORY[0x1E695F058] + 16);
        v22 = *(MEMORY[0x1E695F058] + 24);
        if (glyphCount)
        {
          v31 = v54.origin.x;
          v32 = v54.origin.y;
          v33 = v54.size.width;
          v34 = v54.size.height;
          v35 = 0;
          v36 = *MEMORY[0x1E695EFF8];
          do
          {
            if (glyphs[v35] != -1)
            {
              v37 = v31 + v36.f64[0];
              v38 = v32 + v36.f64[1];
              v36 = vaddq_f64(v36, advances[v35]);
              if (v35)
              {
                v55.origin.x = MinX;
                v41 = v36;
                v55.origin.y = v20;
                v55.size.width = v21;
                v55.size.height = v22;
                v39 = v33;
                v40 = v34;
                v56 = CGRectUnion(v55, *&v37);
                MinX = v56.origin.x;
                v20 = v56.origin.y;
                v36 = v41;
                v21 = v56.size.width;
                v22 = v56.size.height;
              }

              else
              {
                v22 = v34;
                v21 = v33;
                v20 = v38;
                MinX = v37;
              }
            }

            ++v35;
          }

          while (glyphCount != v35);
        }
      }

      else
      {
        MinX = *MEMORY[0x1E695F058];
        v20 = *(MEMORY[0x1E695F058] + 8);
        v21 = *(MEMORY[0x1E695F058] + 16);
        v22 = *(MEMORY[0x1E695F058] + 24);
      }
    }

    v23 = *(MEMORY[0x1E695EFD0] + 16);
    *&ascent.a = *MEMORY[0x1E695EFD0];
    *&ascent.c = v23;
    v24 = self->_typographicBounds.origin.y;
    v25 = self->_glyphOrigin.y;
    v26 = self->_typographicBounds.origin.x + self->_glyphOrigin.x;
    *&ascent.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&descent.a = *&ascent.a;
    *&descent.c = v23;
    *&descent.tx = *&ascent.tx;
    CGAffineTransformTranslate(&ascent, &descent, v26, v24 + v25);
    v42 = ascent;
    CGAffineTransformScale(&descent, &v42, 1.0, -1.0);
    ascent = descent;
    v51.origin.x = MinX;
    v51.origin.y = v20;
    v51.size.width = v21;
    v51.size.height = v22;
    v52 = CGRectApplyAffineTransform(v51, &descent);
    result = CGRectIntegral(v52);
    self->_imageBounds = result;
  }

  else
  {
    return self->_imageBounds;
  }

  return result;
}

- (CGPoint)glyphOrigin
{
  objc_sync_enter(self);
  x = self->_glyphOrigin.x;
  y = self->_glyphOrigin.y;
  objc_sync_exit(self);
  v5 = x;
  v6 = y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (NSRange)characterRange
{
  objc_copyStruct(v4, &self->_characterRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (CGRect)typographicBounds
{
  objc_sync_enter(self);
  x = self->_typographicBounds.origin.x;
  y = self->_typographicBounds.origin.y;
  width = self->_typographicBounds.size.width;
  height = self->_typographicBounds.size.height;
  objc_sync_exit(self);
  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)invalidateCache
{
  self->_activeRun = 0;
  self->_activeRunIndex = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(MEMORY[0x1E695F050] + 16);
  self->_imageBounds.origin = *MEMORY[0x1E695F050];
  self->_imageBounds.size = v2;
}

- (void)dealloc
{
  lineRef = self->_lineRef;
  if (lineRef)
  {
    CFRelease(lineRef);
  }

  glyphs = self->_glyphs;
  if (glyphs)
  {
    NSZoneFree(0, glyphs);
  }

  advances = self->_advances;
  if (advances)
  {
    NSZoneFree(0, advances);
  }

  v6.receiver = self;
  v6.super_class = NSTextLineFragment;
  [(NSTextLineFragment *)&v6 dealloc];
}

- (id)textLineFragmentRange
{
  v3 = [(NSTextLineFragment *)self characterRange];
  v5 = v4;
  v6 = [(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] textParagraph];
  if (v6)
  {
    v7 = v6;
    v11 = xmmword_18E856180;
    v6 = [(NSTextParagraph *)v6 locationForCharacterIndex:v3 dataSourceLocationsOnly:0 actualRange:&v11];
    if (v6)
    {
      v8 = v6;
      v10 = xmmword_18E856180;
      v6 = [(NSTextParagraph *)v7 locationForCharacterIndex:v3 + v5 dataSourceLocationsOnly:0 actualRange:&v10];
      if (v6)
      {
        v6 = [[NSTextRange alloc] initWithLocation:v8 endLocation:v6];
      }
    }
  }

  return v6;
}

- (__CTLine)lineRef
{
  objc_sync_enter(self);
  lineRef = self->_lineRef;
  if (lineRef)
  {
    v5 = CFRetain(self->_lineRef);
    v2 = CFAutorelease(v5);
  }

  objc_sync_exit(self);
  if (lineRef)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSTextLineFragment)initWithAttributedString:(NSAttributedString *)attributedString range:(NSRange)range
{
  length = range.length;
  v5 = range.location;
  if (range.location + range.length > [(NSAttributedString *)attributedString length])
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:@"The range is out side of the attributed string length."];
    self = 0;
  }

  v16.receiver = self;
  v16.super_class = NSTextLineFragment;
  v8 = [(NSTextLineFragment *)&v16 init];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v8->_applicationFrameworkContext = _NSTextScalingTypeForCurrentEnvironment();
    v8->_attributedString = [(NSAttributedString *)attributedString copyWithZone:0];
    v8->_characterRange.location = v5;
    v8->_characterRange.length = length;
    [(NSTextLineFragment *)v8 setRendersTextCorrectionMarkers:1];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __53__NSTextLineFragment_initWithAttributedString_range___block_invoke;
    v13 = &unk_1E7267678;
    objc_copyWeak(&v14, &location);
    [(NSTextLineFragment *)v8 set_renderingAttributeOverridesProvider:&v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  [(NSTextLineFragment *)v8 invalidateCache:v10];
  return v8;
}

__CFDictionary *__53__NSTextLineFragment_initWithAttributedString_range___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_loadWeak((a1 + 32)) _defaultRenderingAttributesAtCharacterIndex:a2 effectiveRange:a3];
  result = [objc_msgSend(objc_loadWeak((a1 + 32)) "textLayoutFragment")];
  if (!result)
  {

    return +[NSTextLineFragment _hiddenContentRenderingAttributes];
  }

  return result;
}

- (NSTextLineFragment)initWithString:(NSString *)string attributes:(NSDictionary *)attributes range:(NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:string attributes:attributes];
  v9 = [(NSTextLineFragment *)self initWithAttributedString:v8 range:location, length];

  [(NSTextLineFragment *)v9 invalidateCache];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSAttributedString *)[(NSTextLineFragment *)self attributedString] string];
  v6 = [(NSTextLineFragment *)self characterRange];
  return [v3 stringWithFormat:@"<%@: %p %@>", v4, self, -[NSString substringWithRange:](v5, "substringWithRange:", v6, v7)];
}

- (void)setLineRef:(__CTLine *)a3
{
  objc_sync_enter(self);
  lineRef = self->_lineRef;
  if (lineRef != a3)
  {
    if (lineRef)
    {
      CFRelease(lineRef);
    }

    self->_lineRef = CFRetain(a3);
    [(NSTextLineFragment *)self invalidateCache];
    IsRightToLeft = CTLineIsRightToLeft();
    v7 = IsRightToLeft ? 2 : 0;
    *&self->_flags = *&self->_flags & 0xFD | v7;
    if ((IsRightToLeft & 1) == 0)
    {
      if (CTLineHasBidiLevels())
      {
        GlyphRuns = CTLineGetGlyphRuns(self->_lineRef);
        Count = CFArrayGetCount(GlyphRuns);
        if (Count >= 1)
        {
          v10 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v10);
            if (CTRunGetStatus(ValueAtIndex))
            {
              break;
            }

            if (Count == ++v10)
            {
              goto LABEL_15;
            }
          }

          *&self->_flags |= 2u;
        }
      }
    }
  }

LABEL_15:

  objc_sync_exit(self);
}

- (void)setGlyphs:(const unsigned __int16 *)a3 advances:(const CGSize *)a4 count:(int64_t)a5 elasticCount:(unint64_t)a6 font:(id)a7
{
  v13 = a6 + a5;
  v14 = 2 * (a6 + a5);
  self->_glyphs = NSZoneMalloc(0, v14);
  v13 *= 16;
  self->_advances = NSZoneMalloc(0, v13);
  memcpy(self->_glyphs, a3, v14);
  memcpy(self->_advances, a4, v13);
  self->_glyphCount = a5;
  self->_elasticGlyphCount = a6;
  self->_font = a7;
  [(NSTextLineFragment *)self invalidateCache];
  *&self->_flags &= ~2u;
}

- (void)setTypographicBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_sync_enter(self);
  self->_typographicBounds.origin.x = x;
  self->_typographicBounds.origin.y = y;
  v8 = MEMORY[0x1E695F050];
  self->_typographicBounds.size.width = width;
  self->_typographicBounds.size.height = height;
  v9 = *(v8 + 16);
  self->_imageBounds.origin = *v8;
  self->_imageBounds.size = v9;

  objc_sync_exit(self);
}

- (void)setGlyphOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_sync_enter(self);
  v6 = MEMORY[0x1E695F050];
  self->_glyphOrigin.x = x;
  self->_glyphOrigin.y = y;
  v7 = *(v6 + 16);
  self->_imageBounds.origin = *v6;
  self->_imageBounds.size = v7;

  objc_sync_exit(self);
}

+ (__CFDictionary)_hiddenContentRenderingAttributes
{
  if (_hiddenContentRenderingAttributes_onceToken != -1)
  {
    +[NSTextLineFragment _hiddenContentRenderingAttributes];
  }

  return _hiddenContentRenderingAttributes_renderingAttributes;
}

id __55__NSTextLineFragment__hiddenContentRenderingAttributes__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = _NSTextScalingTypeForCurrentEnvironment();
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v1 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", v0];
  }

  else
  {
    v1 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v3 = @"NSColor";
  v4[0] = [(objc_class *)v1 clearColor];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  _hiddenContentRenderingAttributes_renderingAttributes = result;
  return result;
}

- (NSTextLineFragment)initWithCoder:(NSCoder *)aDecoder
{
  if ([(NSCoder *)aDecoder allowsKeyedCoding])
  {
    self->_attributedString = [(NSCoder *)aDecoder decodeObjectOfClass:objc_opt_class() forKey:@"NS.attributedString"];
    self->_characterRange.location = [-[NSCoder decodeObjectOfClass:forKey:](aDecoder decodeObjectOfClass:objc_opt_class() forKey:{@"NS.range", "rangeValue"}];
    self->_characterRange.length = v5;
    [(NSTextLineFragment *)self invalidateCache];
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:self->_attributedString forKey:@"NS.attributedString"];
    v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_characterRange.location, self->_characterRange.length}];

    [a3 encodeObject:v5 forKey:@"NS.range"];
  }
}

- (void)setLineBadge:(id)a3
{
  v4 = [a3 copy];

  self->_lineBadge = v4;
}

- (void)setIsHyphenated:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (void)setIsTruncated:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
}

- (CGRect)boundsWithType:(int64_t)a3 options:(unint64_t)a4
{
  if (a3 != 2)
  {
    [(NSTextLineFragment *)self typographicBounds:a3];
    v6 = v15;
    v19 = v18;
    v10 = v16;
    v20 = v17;
    v34 = 0;
    v35 = &v34;
    v36 = 0x4010000000;
    v37 = "";
    v21 = *(MEMORY[0x1E696A2A0] + 16);
    v38 = *MEMORY[0x1E696A2A0];
    v39 = v21;
    if (a3)
    {
      if (a3 != 1)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
        v6 = *MEMORY[0x1E695F050];
        v8 = *(MEMORY[0x1E695F050] + 8);
        v10 = *(MEMORY[0x1E695F050] + 16);
        v12 = *(MEMORY[0x1E695F050] + 24);
        goto LABEL_9;
      }

      v22 = v33;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __45__NSTextLineFragment_boundsWithType_options___block_invoke;
      v33[3] = &unk_1E72676A0;
    }

    else
    {
      v22 = v32;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __45__NSTextLineFragment_boundsWithType_options___block_invoke_2;
      v32[3] = &unk_1E72676C8;
      *&v32[5] = v15;
      *&v32[6] = v19;
      *&v32[7] = v16;
      *&v32[8] = v17;
    }

    v22[4] = &v34;
    v23 = [(NSTextLineFragment *)self attributedString];
    v24 = [(NSTextLineFragment *)self characterRange];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__NSTextLineFragment_boundsWithType_options___block_invoke_3;
    v31[3] = &unk_1E72676F0;
    v31[4] = v22;
    [(NSAttributedString *)v23 enumerateAttributesInRange:v24 options:v25 usingBlock:0x100000, v31];
    v26 = v35[4];
    v8 = v19 - v26;
    v12 = v20 + v26 + v35[6];
LABEL_9:
    _Block_object_dispose(&v34, 8);
    goto LABEL_10;
  }

  [(NSTextLineFragment *)self imageBounds:2];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
LABEL_10:
  v27 = v6;
  v28 = v8;
  v29 = v10;
  v30 = v12;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

uint64_t __45__NSTextLineFragment_boundsWithType_options___block_invoke(uint64_t a1)
{
  result = CTFontGetLanguageAwareOutsets();
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 32) < 0.0)
  {
    *(v3 + 32) = 0;
    v3 = *(*(a1 + 32) + 8);
  }

  if (*(v3 + 48) < 0.0)
  {
    *(v3 + 48) = 0;
  }

  return result;
}

void __45__NSTextLineFragment_boundsWithType_options___block_invoke_2(uint64_t a1, CTFontRef font)
{
  BoundingBox = CTFontGetBoundingBox(font);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 8);
  if (v3 - BoundingBox.origin.y > *(v4 + 32))
  {
    *(v4 + 32) = v3 - BoundingBox.origin.y;
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 32) + 8);
  }

  v5 = BoundingBox.origin.y + BoundingBox.size.height - (v3 + *(a1 + 64));
  if (v5 > *(v4 + 48))
  {
    *(v4 + 48) = v5;
  }
}

uint64_t __45__NSTextLineFragment_boundsWithType_options___block_invoke_3(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"NSFont"])
  {
    NSDefaultFont();
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (__CTRun)_findRunForStringIndex:(int64_t)a3 runIndex:(int64_t *)a4
{
  if (!self->_lineRef)
  {
    return 0;
  }

  objc_sync_enter(self);
  activeRun = self->_activeRun;
  if (!activeRun || ((v8 = CTRunGetStringRange(activeRun), v8.location <= a3) ? (v9 = v8.location + v8.length <= a3) : (v9 = 1), v9))
  {
    GlyphRuns = CTLineGetGlyphRuns(self->_lineRef);
    if (CFArrayGetCount(GlyphRuns) < 1)
    {
LABEL_13:
      __assert_rtn("__NSFindRunForStringIndex", "NSTextLineFragment.m", 445, "NO && couldn't find run for character at given index");
    }

    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v11);
      StringRange = CTRunGetStringRange(ValueAtIndex);
      if (StringRange.location <= a3 && StringRange.location + StringRange.length > a3)
      {
        break;
      }

      if (++v11 >= CFArrayGetCount(GlyphRuns))
      {
        goto LABEL_13;
      }
    }

    self->_activeRun = ValueAtIndex;
    self->_activeRunIndex = v11;
    if (a4)
    {
      *a4 = v11;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = self->_activeRunIndex;
    }

    ValueAtIndex = self->_activeRun;
  }

  objc_sync_exit(self);
  return ValueAtIndex;
}

- (void)_getCaretPositionsForCharactersInRange:(_NSRange)a3 positionsCache:(double *)a4 positionsCacheSize:(unint64_t *)a5 block:(id)a6
{
  length = a3.length;
  location = a3.location;
  v41 = *MEMORY[0x1E69E9840];
  v12 = self->_glyphs[a3.location];
  if (a3.location && v12 == 0xFFFF)
  {
    [NSTextLineFragment _getCaretPositionsForCharactersInRange:a2 positionsCache:self positionsCacheSize:a3.location block:?];
  }

  width = self->_advances[location].width;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = v40;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __101__NSTextLineFragment__getCaretPositionsForCharactersInRange_positionsCache_positionsCacheSize_block___block_invoke;
  v31 = &unk_1E7267718;
  v32 = &v36;
  v33 = a4;
  v34 = a5;
  v35 = v40;
  if (length < 2)
  {
    goto LABEL_16;
  }

  LigatureCaretPositions = CTFontGetLigatureCaretPositions(self->_font, v12, 0, 0);
  v15 = LigatureCaretPositions;
  if (LigatureCaretPositions)
  {
    v16 = LigatureCaretPositions + 2;
    v30(v29, LigatureCaretPositions + 2);
    *v37[3] = 0;
    CTFontGetLigatureCaretPositions(self->_font, v12, (v37[3] + 8), v15);
    *(v37[3] + 8 * v15 + 8) = width;
    if (v15 == -2)
    {
LABEL_16:
      v30(v29, 2uLL);
      *v37[3] = 0;
      *(v37[3] + 8) = width;
      v16 = 2;
    }
  }

  else
  {
    v17 = [(NSAttributedString *)[(NSTextLineFragment *)self attributedString] string];
    v18 = [(NSTextLineFragment *)self characterRange]+ location;
    if (length == 2 && [(NSString *)v17 characterAtIndex:v18]>> 10 == 54)
    {
      goto LABEL_16;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = [MEMORY[0x1E696AB08] controlCharacterSet];
    v20 = [(NSString *)v17 length];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __101__NSTextLineFragment__getCaretPositionsForCharactersInRange_positionsCache_positionsCacheSize_block___block_invoke_2;
    v24[3] = &unk_1E7267740;
    v24[4] = v19;
    v24[5] = &v25;
    v24[6] = v18 + length;
    [(NSString *)v17 enumerateSubstringsInRange:v18 options:v20 - v18 usingBlock:5, v24];
    v21 = v26[3];
    if (v21 < 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v21 + 1;
      v30(v29, v21 + 1);
      v22 = width / v26[3];
      *v37[3] = 0;
      for (i = 1; i != v21; ++i)
      {
        *(v37[3] + 8 * i) = v22 * i;
      }

      *(v37[3] + 8 * v21) = width;
    }

    _Block_object_dispose(&v25, 8);
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  (*(a6 + 2))(a6, v37[3], v16);
  _Block_object_dispose(&v36, 8);
}

char *__101__NSTextLineFragment__getCaretPositionsForCharactersInRange_positionsCache_positionsCacheSize_block___block_invoke(char *result, unint64_t a2)
{
  v2 = result;
  if (a2 < 9)
  {
    v5 = (result + 56);
    goto LABEL_6;
  }

  v4 = **(result + 5);
  if (!v4 || **(result + 6) < a2)
  {
    result = NSZoneRealloc(0, v4, 8 * a2);
    **(v2 + 5) = result;
    v5 = *(v2 + 5);
    **(v2 + 6) = a2;
LABEL_6:
    v4 = *v5;
  }

  *(*(*(v2 + 4) + 8) + 24) = v4;
  return result;
}

uint64_t __101__NSTextLineFragment__getCaretPositionsForCharactersInRange_positionsCache_positionsCacheSize_block___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 rangeOfCharacterFromSet:a1[4] options:8];
  if (!v12)
  {
    ++*(*(a1[5] + 8) + 24);
  }

  if ((a3 + a4) >= a1[6])
  {
    *a7 = 1;
  }

  return result;
}

- (void)_processCaretGlyphRunForTextSelectionProvider:(id)a3 baseLocation:(id)a4 runRange:(_NSRange)a5 glyphOffset:(double)a6 positionsCache:(double *)a7 positionsCacheSize:(unint64_t *)a8 stop:(BOOL *)a9 usingBlock:(id)a10
{
  length = a5.length;
  location = a5.location;
  [(NSTextLineFragment *)self typographicBounds];
  v20 = v18 + v19;
  [(NSTextLineFragment *)self padding];
  v22[1] = 3221225472;
  v22[0] = MEMORY[0x1E69E9820];
  v22[2] = __152__NSTextLineFragment__processCaretGlyphRunForTextSelectionProvider_baseLocation_runRange_glyphOffset_positionsCache_positionsCacheSize_stop_usingBlock___block_invoke;
  v22[3] = &unk_1E7267768;
  *&v22[8] = a6;
  *&v22[9] = v20 - v21;
  v22[4] = a3;
  v22[5] = a4;
  v22[10] = location;
  v22[11] = length;
  v22[6] = a10;
  v22[7] = a9;
  [(NSTextLineFragment *)self _getCaretPositionsForCharactersInRange:location positionsCache:length positionsCacheSize:a7 block:a8, v22];
}

uint64_t __152__NSTextLineFragment__processCaretGlyphRunForTextSelectionProvider_baseLocation_runRange_glyphOffset_positionsCache_positionsCacheSize_stop_usingBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (a3 != 1)
  {
    v4 = result;
    v5 = *(result + 56);
    if ((*v5 & 1) == 0)
    {
      v7 = 0;
      do
      {
        v8 = (a2 + 8 * v7);
        v9 = *v8;
        v10 = v8[1];
        v11 = *(v4 + 72);
        if (*(v4 + 64) + *v8 >= v11)
        {
          v12 = *(v4 + 72);
        }

        else
        {
          v12 = *(v4 + 64) + *v8;
        }

        v13 = *(v4 + 48);
        v14 = [*(v4 + 32) locationFromLocation:*(v4 + 40) withOffset:v7 + *(v4 + 80)];
        result = (*(v13 + 16))(v13, v14, 1, v5, v12);
        if ((*v5 & 1) == 0)
        {
          v15 = v10 - v9;
          v16 = fmax(v11 - v12, 0.0);
          if (v10 - v9 + v12 > v11)
          {
            v15 = v16;
          }

          result = (*(v13 + 16))(v13, v14, 0, v5, v12 + v15);
        }

        if (++v7 >= v3)
        {
          break;
        }

        v5 = *(v4 + 56);
      }

      while (!*v5);
    }
  }

  return result;
}

- (void)enumerateCaretOffsetsWithTextSelectionDataSource:(id)a3 baseLocation:(id)a4 usingBlock:(id)a5
{
  [(NSTextLineFragment *)self typographicBounds];
  v10 = v9;
  [(NSTextLineFragment *)self glyphOrigin];
  v12 = v10 + v11;
  v13 = [(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] textParagraph];
  v14 = objc_autoreleasePoolPush();
  if (self->_lineRef)
  {
    [(NSTextLineFragment *)self typographicBounds];
    v17 = v15 + v16;
    [(NSTextLineFragment *)self padding];
    v19 = v17 - v18;
    StringRange = CTLineGetStringRange(self->_lineRef);
    lineRef = self->_lineRef;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__NSTextLineFragment_enumerateCaretOffsetsWithTextSelectionDataSource_baseLocation_usingBlock___block_invoke;
    block[3] = &unk_1E7267790;
    *&block[9] = v12;
    *&block[10] = v19;
    block[4] = v13;
    block[5] = a3;
    block[6] = a4;
    block[7] = self;
    v32 = StringRange;
    block[8] = a5;
    CTLineEnumerateCaretOffsets(lineRef, block);
  }

  else if (self->_elasticGlyphCount + self->_glyphCount < 1)
  {
    if (self->_characterRange.length || (v27 = [objc_msgSend(objc_msgSend(objc_loadWeak(&self->_textLayoutFragment) "textLayoutManager")]) != 0 && objc_msgSend(a4, "isEqual:", objc_msgSend(v27, "endLocation")))
    {
      LOBYTE(v30) = 0;
      (*(a5 + 2))(a5, [a3 locationFromLocation:a4 withOffset:0], 1, &v30, v12);
    }
  }

  else
  {
    v22 = 0;
    ptr = 0;
    v30 = 0;
    v28 = 0;
    do
    {
      v23 = self->_elasticGlyphCount + self->_glyphCount;
      if (v22 >= v23)
      {
        break;
      }

      v24 = v12 + self->_advances[v22].width;
      v25 = v22 + 1;
      while (v23 != v25)
      {
        v26 = self->_glyphs[v25++];
        if (v26 != -1)
        {
          v23 = v25 - 1;
          break;
        }
      }

      [(NSTextLineFragment *)self _processCaretGlyphRunForTextSelectionProvider:a3 baseLocation:a4 runRange:v22 glyphOffset:v23 - v22 positionsCache:&ptr positionsCacheSize:&v30 stop:v12 usingBlock:&v28, a5];
      v22 = v23;
      v12 = v24;
    }

    while (v28 != 1);
    if (ptr)
    {
      NSZoneFree(0, ptr);
    }
  }

  objc_autoreleasePoolPop(v14);
}

uint64_t __95__NSTextLineFragment_enumerateCaretOffsetsWithTextSelectionDataSource_baseLocation_usingBlock___block_invoke(uint64_t a1, unint64_t a2, char a3, _BYTE *a4, double a5)
{
  v8 = *(a1 + 72) + a5;
  if (v8 >= *(a1 + 80))
  {
    v9 = *(a1 + 80);
  }

  else
  {
    v9 = v8;
  }

  v16 = 0;
  v10 = *(a1 + 32);
  if (v10)
  {
    v14 = 0;
    v15 = 0;
    v11 = (a3 & 1) != 0 || a2 + 1 != *(a1 + 96) + *(a1 + 88);
    result = [v10 locationForCharacterIndex:a2 dataSourceLocationsOnly:v11 actualRange:&v14];
    if (!result || a2 < v14 || a2 - v14 >= v15)
    {
      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    [*(a1 + 40) locationFromLocation:*(a1 + 48) withOffset:a2 - *(*(a1 + 56) + 16)];
  }

  result = (*(*(a1 + 64) + 16))(v9);
  v13 = v16;
LABEL_14:
  *a4 = v13;
  return result;
}

- (void)enumerateTextSegmentBoundsInTextRange:(id)a3 dataSourceLocationsOnly:(BOOL)a4 usingBlock:(id)a5
{
  v8 = [(NSTextLineFragment *)self characterRange];
  if (!a3)
  {
    return;
  }

  v10 = v8;
  v11 = v9;
  v12 = [a3 isEmpty];
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = a3;
    goto LABEL_15;
  }

  v16 = [(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] textParagraph];
  if (!v16 || (v17 = v16, *location = xmmword_18E856180, (v18 = [(NSTextParagraph *)v16 locationForCharacterIndex:v10 dataSourceLocationsOnly:0 actualRange:location]) == 0) || (v19 = v18, v64 = xmmword_18E856180, (v20 = [(NSTextParagraph *)v17 locationForCharacterIndex:v10 + v11 dataSourceLocationsOnly:0 actualRange:&v64]) == 0))
  {
    v22 = 0;
    goto LABEL_13;
  }

  v21 = [[NSTextRange alloc] initWithLocation:v19 endLocation:v20];
  v22 = v21;
  if (!v21)
  {
LABEL_13:
    v13 = 0;
LABEL_14:

    v15 = a3;
    v14 = v13;
    goto LABEL_15;
  }

  if (a4)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v13 = [-[NSTextRange location](v21 "location")];
  v59 = [-[NSTextRange endLocation](v22 "endLocation")];
  v14 = v59;
  if (v13 && v59)
  {
    v13 = 1;
    goto LABEL_14;
  }

LABEL_10:
  v15 = [a3 textRangeByIntersectingWithTextRange:v22];

  if (!v15)
  {
    return;
  }

LABEL_15:
  [(NSTextLineFragment *)self typographicBounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(NSTextLineFragment *)self glyphOrigin];
  v32 = v31;
  v34 = v33;
  v35 = [(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] textParagraph];
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  if (v35)
  {
    v37 = v35;
    v60 = v14;
    v38 = v11;
    v39 = v12;
    v40 = -[NSTextParagraph rangeForLocation:allowsTrailingEdge:](v35, "rangeForLocation:allowsTrailingEdge:", [v15 location], 1);
    v41 = [v15 isEmpty];
    if (v40 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v39;
      if (v41)
      {
        v11 = v38;
        if ([-[NSTextRange endLocation](-[NSTextParagraph paragraphContentRange](v37 "paragraphContentRange")])
        {
          v42 = [(NSTextLineFragment *)self characterRange];
          v43 = 0;
          v36 = v42 + v44;
        }

        else
        {
          v43 = 0;
        }

        goto LABEL_32;
      }

      v43 = 0;
    }

    else
    {
      if (v41)
      {
        v43 = 0;
        v36 = v40;
      }

      else
      {
        v45 = -[NSTextParagraph rangeForLocation:allowsTrailingEdge:](v37, "rangeForLocation:allowsTrailingEdge:", [v15 endLocation], 1);
        v46 = [(NSTextLineFragment *)self characterRange];
        if (v45 <= v46 + v47)
        {
          v43 = v45 - v40;
        }

        else
        {
          v43 = 0;
        }

        if (v45 <= v46 + v47)
        {
          v36 = v40;
        }

        else
        {
          v36 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v12 = v39;
    }

    v11 = v38;
LABEL_32:
    v14 = v60;
    goto LABEL_33;
  }

  v43 = 0;
LABEL_33:
  v48 = v10 < v36;
  v49 = (v13 & v48) == 0;
  if ((v13 & v48) != 0)
  {
    v50 = v10;
  }

  else
  {
    v50 = v36;
  }

  if (!v49)
  {
    v43 = v43 - v10 + v36;
  }

  if (v10 + v11 <= v50 + v43)
  {
    v51 = v43;
  }

  else
  {
    v51 = v10 + v11 - v50;
  }

  if (v14)
  {
    v52 = v51;
  }

  else
  {
    v52 = v43;
  }

  if (v52)
  {
    objc_initWeak(location, self);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __95__NSTextLineFragment_enumerateTextSegmentBoundsInTextRange_dataSourceLocationsOnly_usingBlock___block_invoke;
    v62[3] = &unk_1E72677B8;
    objc_copyWeak(v63, location);
    v63[1] = v24;
    v63[2] = v26;
    v63[3] = v28;
    v63[4] = v30;
    v63[5] = v32;
    v63[6] = v34;
    v62[4] = a5;
    [(NSTextLineFragment *)self _enumerateTextSegmentsInCharacterRange:v50 usingBlock:v52, v62];
    objc_destroyWeak(v63);
    objc_destroyWeak(location);
  }

  else if (v12)
  {
    v53 = [(NSTextLineFragment *)self characterRange];
    v55 = v54;
    v56 = [(NSTextLineFragment *)self characterRange];
    v58 = v50 - v56 < v57 && v50 >= v56;
    if (v58 || v50 == v53 + v55)
    {
      [(NSTextLineFragment *)self locationForCharacterAtIndex:v50];
      (*(a5 + 2))(a5, a3);
    }
  }
}

void __95__NSTextLineFragment_enumerateTextSegmentBoundsInTextRange_dataSourceLocationsOnly_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = [objc_msgSend(objc_loadWeak((a1 + 40)) "textLayoutFragment")];
  if (v10 && (v11 = v10, v16 = xmmword_18E856180, (v12 = [v10 locationForCharacterIndex:a2 dataSourceLocationsOnly:0 actualRange:&v16]) != 0))
  {
    v13 = v12;
    v15 = xmmword_18E856180;
    v14 = [v11 locationForCharacterIndex:a2 + a3 dataSourceLocationsOnly:0 actualRange:&v15];
    if (v14)
    {
      v14 = [[NSTextRange alloc] initWithLocation:v13 endLocation:v14];
    }
  }

  else
  {
    v14 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 48) + *(a1 + 80) + a4, *(a1 + 56), a5 - a4, *(a1 + 72));
}

- (id)_defaultRenderingAttributesAtCharacterIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = [(NSTextLineFragment *)self attributedString];
  range2 = xmmword_18E856180;
  v8 = [(NSTextLineFragment *)self textLayoutFragment];
  v56 = self;
  v9 = [(NSTextLineFragment *)self applicationFrameworkContext];
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    v10 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", v9];
  }

  else
  {
    v10 = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v62 = 0;
  v59 = [(objc_class *)v10 blackColor];
  v57 = [(NSAttributedString *)v7 attributesAtIndex:a3 effectiveRange:&v62];
  if (![(NSDictionary *)v57 objectForKeyedSubscript:@"NSTextHighlightStyle"]|| (v60 = v62, [(NSAttributedString *)v7 attribute:@"NSTextHighlightStyle" atIndex:a3 effectiveRange:&v60], v11 = NSIntersectionRange(v60, v62), v60 = v11, !v11.length))
  {
    v58 = 0;
    v13 = 0;
    if (!v8)
    {
      goto LABEL_72;
    }

    goto LABEL_22;
  }

  v12 = [(NSTextLayoutFragment *)[(NSTextLineFragment *)v56 textLayoutFragment] textParagraph];
  v13 = v12;
  if (!v12)
  {
    v16 = 0;
    v58 = 0;
    goto LABEL_21;
  }

  v64 = xmmword_18E856180;
  v14 = [(NSTextParagraph *)v12 locationForCharacterIndex:v11.location dataSourceLocationsOnly:0 actualRange:&v64];
  if (!v14)
  {
    v16 = 0;
LABEL_20:
    v58 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v15 = v14;
  v63 = xmmword_18E856180;
  v16 = [(NSTextParagraph *)v13 locationForCharacterIndex:v11.location + v11.length dataSourceLocationsOnly:0 actualRange:&v63];
  if (!v16)
  {
    goto LABEL_20;
  }

  v16 = [[NSTextRange alloc] initWithLocation:v15 endLocation:v16];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = [-[NSTextLayoutManager textHighlightRenderingAttributesForTextRange:attributes:](-[NSTextLayoutFragment textLayoutManager](v8 "textLayoutManager")];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(NSDictionary *)v57 objectForKeyedSubscript:@"NSColor"];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v59;
  }

  if ([v18 isEqual:v20])
  {
    v13 = 0;
    v58 = 1;
  }

  else
  {
    v52 = [(NSDictionary *)v57 mutableCopy];
    [(NSDictionary *)v52 setObject:v18 forKeyedSubscript:@"NSColor"];
    v62 = v60;
    v58 = 1;
    v57 = v52;
    v13 = v52;
  }

LABEL_21:

  if (!v8)
  {
    goto LABEL_72;
  }

LABEL_22:
  v21 = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)v8 textLayoutManager] textContainerForLocation:[(NSTextRange *)[(NSTextLayoutFragment *)v8 rangeInElement] location]];
  v22 = [(NSTextLayoutFragment *)v8 _resolvedRenderingAttributesForCharacterIndex:a3 effectiveRange:&range2];
  v55 = v21;
  if (v21)
  {
    v23 = v22;
    v53 = a3;
    v54 = a4;
    v24 = [v22 objectForKeyedSubscript:@"__NSTextSelectionForegroundColorAttributeName"];
    v25 = 0;
    v8 = 0;
    v64.location = @"NSColor";
    v64.length = @"NSBackgroundColor";
    v65 = @"NSStrokeColor";
    v66 = @"NSUnderlineColor";
    v67 = @"NSStrikethroughColor";
    while (1)
    {
      v26 = *(&v64.location + v25);
      v27 = [v23 objectForKeyedSubscript:v26];
      v28 = [v27 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
      v29 = v28;
      if (v27)
      {
        if (@"NSColor" != v26 || (v28 & 1) == 0)
        {
          v30 = v27;
        }

        else
        {
          v30 = v59;
        }

        if (@"NSColor" != v26 || (v28 & 1) == 0 || v59 != 0)
        {
          v32 = 0;
          v29 = (@"NSColor" != v26) & v28;
          goto LABEL_42;
        }

        v29 = 0;
      }

      v33 = [(NSDictionary *)v57 objectForKeyedSubscript:v26];
      v34 = v59;
      if (@"NSColor" != v26)
      {
        v34 = 0;
      }

      if (v33)
      {
        v32 = v33;
      }

      else
      {
        v32 = v34;
      }

      if (v33)
      {
        v30 = v33;
      }

      else
      {
        v30 = v34;
      }

LABEL_42:
      if (v30)
      {
        v35 = v58;
      }

      else
      {
        v35 = 1;
      }

      if ((v35 & 1) == 0 && @"NSColor" == v26 && (v29 & 1) == 0 && v24 && [(NSTextLineFragment *)v56 _selectionColorShouldOverrideColor:v30])
      {
        v32 = 0;
        v30 = v24;
      }

      if (v30)
      {
        v36 = v29;
      }

      else
      {
        v36 = 1;
      }

      if (v36)
      {
        if (!v30)
        {
          goto LABEL_64;
        }

        v37 = 0;
        if (!v32)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v37 = [v55 renderingColorForDocumentColor:v30];
        if (!v32)
        {
          goto LABEL_60;
        }
      }

      if (([v37 isEqual:v30] & 1) == 0)
      {
LABEL_60:
        if (v8)
        {
          if (v29)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if ([(NSDictionary *)v57 count])
          {
            v38 = [(NSDictionary *)v57 mutableCopy];
          }

          else
          {
            v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
          }

          v8 = v38;
          if (v29)
          {
LABEL_62:
            v37 = [MEMORY[0x1E695DFB0] null];
          }
        }

        [(NSTextLayoutFragment *)v8 setObject:v37 forKeyedSubscript:v26];
      }

LABEL_64:
      v25 += 8;
      if (v25 == 40)
      {
        a3 = v53;
        a4 = v54;
        goto LABEL_72;
      }
    }
  }

  v8 = 0;
LABEL_72:
  v39 = [(NSTextLineFragment *)v56 renderingAttributesProvider];
  v40 = MEMORY[0x1E695E0F8];
  v64 = xmmword_18E856180;
  if (v57)
  {
    v40 = v57;
  }

  if (v8)
  {
    v41 = v8;
  }

  else
  {
    v41 = v40;
  }

  if (a4 | v39)
  {
    v42 = v39;
    v64 = v62;
    v43.location = range2;
    length = v62.length;
    location = v62.location;
    if (range2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v43.length = *(&range2 + 1);
      if (*(&range2 + 1))
      {
        v46 = NSIntersectionRange(v64, v43);
        location = v46.location;
        length = v46.length;
      }
    }

    v70.location = [(NSTextLineFragment *)v56 characterRange];
    v70.length = v47;
    v69.location = location;
    v69.length = length;
    v48 = NSIntersectionRange(v69, v70);
    v64 = v48;
    if (v42)
    {
      v49 = v48.length;
      if (v48.length + v48.location > a3)
      {
        if (v48.location >= a3)
        {
          a3 = v48.location;
        }

        else
        {
          v64.location = a3;
          v64.length = v48.length + v48.location - a3;
          v49 = v64.length;
        }

        v41 = (*(v42 + 16))(v42, v56, a3, v49, v41, &v64);
      }
    }

    if (a4)
    {
      *a4 = v64;
    }
  }

  v50 = [NSAttributeDictionary newWithDictionary:v41];
  if (v8)
  {
  }

  return v50;
}

- (BOOL)_selectionColorShouldOverrideColor:(id)a3
{
  v3 = [(NSTextLayoutManager *)[(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] textLayoutManager] isSelectionOverridableColor];
  if (v3)
  {
    v4 = v3[2];

    LOBYTE(v3) = v4();
  }

  return v3;
}

- (unint64_t)numberOfGlyphs
{
  if (self->_lineRef)
  {
    lineRef = self->_lineRef;

    return CTLineGetGlyphCount(lineRef);
  }

  else
  {
    [(NSTextLineFragment *)self characterRange:v2];
    return v6;
  }
}

- (void)_setColor:(id)a3 inGraphicsContext:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__NSTextLineFragment__setColor_inGraphicsContext___block_invoke;
  v4[3] = &unk_1E72657B8;
  v4[4] = a3;
  [(NSTextLineFragment *)self _setCurrentGraphicsContext:a4 duringBlock:v4];
}

- (void)drawAtPoint:(CGPoint)a3 graphicsContext:(id)a4
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    v8 = [NSTextLineFragment drawMarkedTextBackgroundAtPoint:"drawMarkedTextBackgroundAtPoint:graphicsContext:" graphicsContext:?];
    [(NSTextLineFragment *)self glyphOrigin];
    v10 = x + v9;
    v12 = y + v11;
    lineRef = self->_lineRef;
    if (lineRef)
    {
      v14 = [(NSTextLineFragment *)self _renderingAttributeOverridesProvider];
      _NSCoreTypesetterRenderLine(lineRef, a4, v14, self->_lineBadge, 0, 0, v10, v12, *MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24));
      if ([(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] textAttachmentLayoutContext]|| [(NSArray *)[(NSTextLayoutFragment *)[(NSTextLineFragment *)self textLayoutFragment] truncatedRanges] count])
      {
        [(NSTextLineFragment *)self drawTextAttachmentsAtPoint:a4 graphicsContext:x, y];
      }
    }

    else if (self->_glyphs)
    {
      v15 = [(NSTextLineFragment *)self _renderingAttributeOverridesProvider];
      v16 = [(NSTextLineFragment *)self characterRange];
      glyphCount = self->_glyphCount;
      v18 = [(NSTextLineFragment *)self applicationFrameworkContext];
      v48 = v8;
      if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
      {
        v19 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", v18];
      }

      else
      {
        v19 = +[NSTextGraphicsContextProvider __defaultColorClass];
      }

      v51 = [(objc_class *)v19 blackColor];
      v20 = [a4 CGContext];
      glyphs = self->_glyphs;
      advances = self->_advances;
      v23 = [(NSAttributedString *)[(NSTextLineFragment *)self attributedString] attributesAtIndex:v16 effectiveRange:0];
      v24 = [(NSDictionary *)v23 objectForKeyedSubscript:@"NSFont"];
      v50 = v23;
      v52 = [(NSDictionary *)v23 objectForKeyedSubscript:@"NSShadow"];
      if (!v24)
      {
        v24 = NSDefaultFont();
      }

      v25 = v16 + glyphCount;
      while (1)
      {
        v54 = 0;
        v55 = 0;
        if (v15)
        {
          v26 = v15[2](v15, v16, &v54);
          v28 = v54;
          v27 = v55;
        }

        else
        {
          v26 = 0;
          v27 = v25 - v16;
          v54 = v16;
          v55 = v25 - v16;
          v28 = v16;
        }

        if (v27 + v28 > v25)
        {
          v27 = v25 - v28;
          v55 = v25 - v28;
        }

        v29 = v28 - v16;
        if (v29)
        {
          v27 += v29;
          v54 = v16;
          v55 = v27;
        }

        if (!v27)
        {
          break;
        }

        if ([v26 count])
        {
          v30 = [v26 objectForKeyedSubscript:@"NSBackgroundColor"];
          if (v30)
          {
            v31 = v30;
            if (([v30 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
            {
              [(NSTextLineFragment *)self typographicBounds];
              v49 = v32;
              v34 = v33;
              v36 = v35;
              v38 = v37;
              [(NSTextLineFragment *)self glyphOrigin];
              v39 = y;
              v41 = v40;
              [(NSTextLineFragment *)self _setColor:v31 inGraphicsContext:a4];
              v53[0] = MEMORY[0x1E69E9820];
              v53[1] = 3221225472;
              v53[2] = __50__NSTextLineFragment_drawAtPoint_graphicsContext___block_invoke;
              v53[3] = &__block_descriptor_80_e26_v40__0__NSRange_QQ_8d24d32l;
              v53[4] = v49;
              v53[5] = v34;
              v53[6] = v36;
              v53[7] = v38;
              v53[8] = v41;
              y = v39;
              v53[9] = v20;
              [(NSTextLineFragment *)self _enumerateTextSegmentsInCharacterRange:v54 usingBlock:v55, v53];
            }
          }
        }

        if (![v26 count] || (v42 = objc_msgSend(v26, "objectForKeyedSubscript:", @"NSColor")) == 0 || (v43 = v42, objc_msgSend(v42, "isEqual:", objc_msgSend(MEMORY[0x1E695DFB0], "null"))))
        {
          v44 = [(NSDictionary *)v50 objectForKeyedSubscript:@"NSColor"];
          if (v44)
          {
            v43 = v44;
          }

          else
          {
            v43 = v51;
          }
        }

        CGContextSaveGState(v20);
        CGContextGetFontRenderingStyle();
        [v24 applyToGraphicsContext:a4];
        [(NSTextLineFragment *)self _setColor:v43 inGraphicsContext:a4];
        CGContextSetCharacterSpacing(v20, 0.0);
        [v52 applyToGraphicsContext:a4];
        CGContextSetTextPosition(v20, v10, v12);
        CTFontDrawGlyphsWithAdvances();
        CGContextSetFontRenderingStyle();
        CGContextRestoreGState(v20);
        v16 = v55 + v54;
        if (v55 + v54 >= v25)
        {
          break;
        }

        if (v55 >= 1)
        {
          v45 = &advances[v55];
          do
          {
            width = advances->width;
            height = advances->height;
            ++advances;
            v10 = v10 + width;
            v12 = v12 + height;
          }

          while (advances < v45);
        }

        glyphs += v55;
      }

      v8 = v48;
    }

    if (!v8)
    {
      [(NSTextLineFragment *)self drawMarkedTextIndicatorAtPoint:a4 graphicsContext:x, y];
    }

    if ([(NSTextLineFragment *)self rendersTextCorrectionMarkers])
    {
      [(NSTextLineFragment *)self drawTextCorrectionMarkersAtPoint:a4 graphicsContext:x, y];
    }
  }
}

double __50__NSTextLineFragment_drawAtPoint_graphicsContext___block_invoke(uint64_t a1, double a2, double a3)
{
  v4.size.height = *(a1 + 56);
  v4.size.width = a3 - a2;
  v4.origin.x = *(a1 + 32) + *(a1 + 64) + a2;
  v4.origin.y = *(a1 + 40);
  CGContextFillRect(*(a1 + 72), v4);
  return result;
}

- (void)_enumerateTextAttachmentFramesInCharacterRange:(_NSRange)a3 usingBlock:(id)a4
{
  lineRef = self->_lineRef;
  if (lineRef)
  {
    GlyphRuns = CTLineGetGlyphRuns(lineRef);
    Count = CFArrayGetCount(GlyphRuns);
    [(NSTextLineFragment *)self glyphOrigin];
    if (Count >= 1)
    {
      v11 = v9;
      v12 = v10;
      v13 = 0;
      v14 = *MEMORY[0x1E6965A50];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v13);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        if ([(__CFDictionary *)Attributes objectForKeyedSubscript:v14])
        {
          v17 = [(__CFDictionary *)Attributes objectForKeyedSubscript:@"NSAttachment"];
          if (v17)
          {
            v18 = v17;
            location = CTRunGetStringRange(ValueAtIndex).location;
            buffer.x = 0.0;
            buffer.y = 0.0;
            v21 = 0.0;
            ascent = 0.0;
            v24.location = 0;
            v24.length = 0;
            TypographicBounds = CTRunGetTypographicBounds(ValueAtIndex, v24, &ascent, &v21, 0);
            v25.location = 0;
            v25.length = 1;
            CTRunGetPositions(ValueAtIndex, v25, &buffer);
            (*(a4 + 2))(a4, v18, location, v11 + buffer.x, v12 - (buffer.y - v21), TypographicBounds, v21 + ascent);
          }
        }

        ++v13;
      }

      while (Count != v13);
    }
  }
}

- (void)drawTextAttachmentsAtPoint:(CGPoint)a3 graphicsContext:(id)a4
{
  lineRef = self->_lineRef;
  if (lineRef)
  {
    y = a3.y;
    x = a3.x;
    GlyphRuns = CTLineGetGlyphRuns(lineRef);
    Count = CFArrayGetCount(GlyphRuns);
    [(NSTextLineFragment *)self glyphOrigin];
    v12 = v11;
    v14 = v13;
    v39 = +[NSTextAttachmentViewProvider acceptsViewProviderForContext:](NSTextAttachmentViewProvider, "acceptsViewProviderForContext:", [a4 CGContext]);
    if (Count >= 1)
    {
      v15 = 0;
      v37 = x + v12;
      v16 = y + v14;
      v17 = *MEMORY[0x1E6965A50];
      v38 = Count;
      v36 = *MEMORY[0x1E6965A50];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v15);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        if ([(__CFDictionary *)Attributes objectForKeyedSubscript:v17])
        {
          v20 = [(__CFDictionary *)Attributes objectForKeyedSubscript:@"NSAttachment"];
          if (v20)
          {
            v21 = v20;
            v22 = [(NSTextLineFragment *)self textLayoutFragment];
            location = CTRunGetStringRange(ValueAtIndex).location;
            buffer.x = 0.0;
            buffer.y = 0.0;
            descent = 0.0;
            ascent = 0.0;
            v45.location = 0;
            v45.length = 0;
            TypographicBounds = CTRunGetTypographicBounds(ValueAtIndex, v45, &ascent, &descent, 0);
            v46.location = 0;
            v46.length = 1;
            CTRunGetPositions(ValueAtIndex, v46, &buffer);
            v25 = buffer.x;
            v26 = a4;
            v27 = [a4 isFlipped];
            v28 = buffer.y;
            v29 = descent;
            v30 = ascent;
            if (v27)
            {
              v31 = -descent;
            }

            else
            {
              v31 = descent;
            }

            if (v22 && (v32 = [(NSTextLayoutFragment *)v22 textLayoutManager], (v33 = [(NSTextParagraph *)[(NSTextLayoutFragment *)v22 textParagraph] locationForCharacterIndex:location dataSourceLocationsOnly:0 actualRange:0]) != 0))
            {
              v34 = v33;
              v35 = [(NSTextLayoutManager *)v32 textContainerForLocation:v33];
            }

            else
            {
              v34 = [[NSCountableTextLocation alloc] initWithIndex:location];
              v35 = 0;
            }

            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 3221225472;
            v40[2] = __65__NSTextLineFragment_drawTextAttachmentsAtPoint_graphicsContext___block_invoke;
            v40[3] = &unk_1E7267808;
            *&v40[9] = v37 + v25;
            *&v40[10] = v16 - (v28 + v31);
            *&v40[11] = TypographicBounds;
            *&v40[12] = v30 + v29;
            v40[4] = v21;
            v40[5] = Attributes;
            v40[6] = v34;
            v40[7] = v35;
            v40[8] = self;
            v41 = v39;
            a4 = v26;
            [(NSTextLineFragment *)self _setCurrentGraphicsContext:v26 duringBlock:v40];

            Count = v38;
            v17 = v36;
          }
        }

        ++v15;
      }

      while (Count != v15);
    }
  }
}

uint64_t __65__NSTextLineFragment_drawTextAttachmentsAtPoint_graphicsContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) applicationFrameworkContext];
  v7 = *(a1 + 104);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);

  return [v2 _showWithBounds:v3 attributes:v4 location:v5 textContainer:v6 applicationFrameworkContext:v7 acceptsViewProvider:{v8, v9, v10, v11}];
}

- (void)drawAtPoint:(CGPoint)point inContext:(CGContextRef)context
{
  if (context)
  {
    y = point.y;
    x = point.x;
    v7 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:context];
    [(NSTextLineFragment *)self drawAtPoint:v7 graphicsContext:x, y];
  }
}

- (_NSRange)_rangeOfLigatureContainingCharacterIndex:(unint64_t)a3
{
  v3 = self->_elasticGlyphCount + self->_glyphCount;
  if (v3 == a3)
  {
    v4 = 0;
    v5 = a3;
  }

  else
  {
    if (a3)
    {
      v5 = a3;
      do
      {
        if (self->_glyphs[v5] != -1)
        {
          break;
        }

        --v5;
      }

      while (v5);
    }

    else
    {
      v5 = 0;
    }

    v7 = a3 + 1;
    if (v3 <= a3 + 1)
    {
      v8 = a3 + 1;
    }

    else
    {
      v8 = v3;
    }

    while (v7 < v3)
    {
      v9 = self->_glyphs[v7++];
      if (v9 != -1)
      {
        v8 = v7 - 1;
        break;
      }
    }

    v4 = v8 - v5;
  }

  result.length = v4;
  result.location = v5;
  return result;
}

- (CGPoint)locationForCharacterAtIndex:(NSInteger)index
{
  x = self->_glyphOrigin.x;
  y = self->_glyphOrigin.y;
  if (+[NSTextLayoutFragment coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled])
  {
    x = x + self->_typographicBounds.origin.x;
    y = y + self->_typographicBounds.origin.y;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  lineRef = self->_lineRef;
  if (lineRef)
  {
    OffsetForStringIndex = CTLineGetOffsetForStringIndex(lineRef, index, 0);
    v10 = v28;
    v28[3] = OffsetForStringIndex;
  }

  else if (self->_glyphs)
  {
    v14 = [(NSTextLineFragment *)self characterRange];
    [(NSTextLineFragment *)self characterRange];
    v15 = index - v14;
    if (v15 > v16)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v31.location = [(NSTextLineFragment *)self characterRange];
      [v26 handleFailureInMethod:a2 object:self file:@"NSTextLineFragment.m" lineNumber:1155 description:{@"characterIndex %ld is out of bounds %@", v15, NSStringFromRange(v31)}];
    }

    elasticGlyphCount = self->_elasticGlyphCount;
    if (v15 >= elasticGlyphCount + self->_glyphCount)
    {
      v18 = elasticGlyphCount + self->_glyphCount;
    }

    else
    {
      v18 = v15;
    }

    if (v18 >= 1)
    {
      advances = self->_advances;
      v20 = &advances[v18];
      v21 = v28;
      v22 = v28[3];
      do
      {
        width = advances->width;
        ++advances;
        v22 = width + v22;
        v21[3] = v22;
      }

      while (advances < v20);
    }

    v24 = [(NSTextLineFragment *)self _rangeOfLigatureContainingCharacterIndex:v18];
    v10 = v28;
    if (v24 < v18 && v25 >= 2)
    {
      v28[3] = v28[3] - self->_advances[v24].width;
      [NSTextLineFragment _getCaretPositionsForCharactersInRange:"_getCaretPositionsForCharactersInRange:positionsCache:positionsCacheSize:block:" positionsCache:? positionsCacheSize:? block:?];
      v10 = v28;
    }
  }

  else
  {
    v10 = &v27;
  }

  v11 = x + v10[3];
  _Block_object_dispose(&v27, 8);
  v12 = v11;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

double __50__NSTextLineFragment_locationForCharacterAtIndex___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  v3 = a1[7];
  if (v4 >= v3 + a3)
  {
    v5 = (*(a1[4] + 48) + 16 * v3);
  }

  else
  {
    v5 = (a2 + 8 * (v4 - v3));
  }

  v6 = *v5;
  v7 = *(a1[5] + 8);
  result = v6 + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

- (int64_t)characterIndexForPoint:(CGPoint)a3 fractionOfDistanceThroughGlyph:(double *)a4
{
  v6 = a3.x - self->_glyphOrigin.x;
  lineRef = self->_lineRef;
  if (lineRef)
  {
    v8 = a3.y - self->_glyphOrigin.y;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = -1;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = -1;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __76__NSTextLineFragment_characterIndexForPoint_fractionOfDistanceThroughGlyph___block_invoke;
    v38[3] = &unk_1E7267858;
    v38[4] = self;
    v38[5] = &v43;
    *&v38[10] = v6;
    *&v38[11] = v8;
    v38[6] = &v47;
    v38[7] = &v55;
    v38[8] = &v39;
    v38[9] = &v51;
    CTLineEnumerateCaretOffsets(lineRef, v38);
    if ((v40[3] & 1) != 0 || v52[3] > v6 || v44[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v48[3] != -1)
      {
LABEL_40:
        if (a4)
        {
          v33 = v56[3];
          v34 = v52[3];
          v35 = 0.0;
          if (v33 != v34)
          {
            v36 = (v6 - v33) / (v34 - v33);
            if (*(v40 + 24))
            {
              v36 = 1.0 - v36;
            }

            if (v36 < 0.0)
            {
              v36 = 0.0;
            }

            v35 = fmin(v36, 1.0);
          }

          *a4 = v35;
        }

        v20 = v48[3];
        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v51, 8);
        _Block_object_dispose(&v55, 8);
        return v20;
      }

      v9 = [(NSTextLineFragment *)self characterRange];
      v48[3] = v9;
      [(NSTextLineFragment *)self glyphOrigin];
      *(v52 + 3) = v10;
    }

    else
    {
      v24 = [(NSTextLineFragment *)self characterRange];
      v26 = v25;
      v27 = [(NSTextLineFragment *)self textLayoutFragment];
      v28 = [(NSTextParagraph *)[(NSTextLayoutFragment *)v27 textParagraph] paragraphSeparatorRange];
      v29 = v24 + v26;
      if ([(NSTextRange *)v28 isNotEmpty]&& [(NSArray *)[(NSTextLayoutFragment *)v27 textLineFragments] lastObject]== self)
      {
        v30 = [(NSTextContentManager *)[(NSTextLayoutManager *)[(NSTextLayoutFragment *)v27 textLayoutManager] textContentManager] offsetFromLocation:[(NSTextRange *)v28 location] toLocation:[(NSTextRange *)v28 endLocation]];
        if (v29 < v30 || v30 < 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v29 -= v32;
      }

      v48[3] = v29;
      v10 = *(v52 + 3);
    }

    *(v56 + 3) = v10;
    goto LABEL_40;
  }

  if (self->_glyphs)
  {
    advances = self->_advances;
    glyphCount = self->_glyphCount;
    v14 = 0.0;
    if (glyphCount < 1 || v6 < 0.0)
    {
      v17 = 0.0;
      v16 = self->_advances;
    }

    else
    {
      v15 = &advances[glyphCount];
      v16 = self->_advances;
      do
      {
        v17 = v14;
        width = v16->width;
        ++v16;
        v14 = v14 + width;
      }

      while (v16 < v15 && v14 <= v6);
    }

    if (v6 <= v14)
    {
      v21 = v16 - advances - (v16 - advances > 0);
      if (v21 < 0 || ([(NSTextLineFragment *)self characterRange], v21 >= v22))
      {
        [NSTextLineFragment characterIndexForPoint:a2 fractionOfDistanceThroughGlyph:self];
      }

      v20 = [(NSTextLineFragment *)self characterRange]+ v21;
      if (a4)
      {
        v23 = 0.0;
        if (v14 != 0.0)
        {
          v23 = (v6 - v17) / (v14 - v17);
        }

        *a4 = v23;
      }
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0.0;
    }

    return [(NSTextLineFragment *)self characterRange];
  }

  return v20;
}

uint64_t __76__NSTextLineFragment_characterIndexForPoint_fractionOfDistanceThroughGlyph___block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, double a5)
{
  result = CTRunGetStatus([*(a1 + 32) _findRunForStringIndex:a2 runIndex:0]);
  *(*(*(a1 + 40) + 8) + 24) = -1;
  if ((result & 1) == a3)
  {
    *(*(*(a1 + 72) + 8) + 24) = a5;
    *(*(*(a1 + 40) + 8) + 24) = a2;
    v13 = *(a1 + 80);
    if (v13 == a5)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    if (v13 < a5 || v14 != 0)
    {
      *a4 = 1;
    }
  }

  else
  {
    v11 = *(a1 + 80);
    if (v11 == a5)
    {
      v12 = a3;
    }

    else
    {
      v12 = 0;
    }

    if (v11 > a5 || (v12 & 1) != 0 || *(*(*(a1 + 48) + 8) + 24) == -1)
    {
      *(*(*(a1 + 56) + 8) + 24) = a5;
      *(*(*(a1 + 48) + 8) + 24) = a2;
      *(*(*(a1 + 64) + 8) + 24) = result & 1;
    }
  }

  return result;
}

- (NSInteger)characterIndexForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_sync_enter(self);
  if (x == self->_cachedPoint.x && y == self->_cachedPoint.y)
  {
    cachedCharacterIndex = self->_cachedCharacterIndex;
  }

  else
  {
    self->_cachedPoint.x = x;
    self->_cachedPoint.y = y;
    cachedCharacterIndex = [(NSTextLineFragment *)self characterIndexForPoint:&self->_cachedFractionWithinGlyph fractionOfDistanceThroughGlyph:x, y];
    self->_cachedCharacterIndex = cachedCharacterIndex;
  }

  objc_sync_exit(self);
  return cachedCharacterIndex;
}

- (CGFloat)fractionOfDistanceThroughGlyphForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_sync_enter(self);
  if (x != self->_cachedPoint.x || y != self->_cachedPoint.y)
  {
    self->_cachedPoint.x = x;
    self->_cachedPoint.y = y;
    self->_cachedCharacterIndex = [(NSTextLineFragment *)self characterIndexForPoint:&self->_cachedFractionWithinGlyph fractionOfDistanceThroughGlyph:x, y];
  }

  cachedFractionWithinGlyph = self->_cachedFractionWithinGlyph;
  objc_sync_exit(self);
  return cachedFractionWithinGlyph;
}

- (void)_enumerateTextSegmentsInCharacterRange:(_NSRange)a3 usingBlock:(id)a4
{
  v5 = +[NSTextLayoutFragment coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
  if ((*&self->_flags & 2) == 0)
  {
    v6 = 0.0;
    if (v5)
    {
      [(NSTextLineFragment *)self typographicBounds];
      v8 = v7;
      [(NSTextLineFragment *)self glyphOrigin];
      v6 = v8 + v9;
    }

    [(NSTextLineFragment *)self locationForCharacterAtIndex:a3.location];
    v11 = v10;
    [(NSTextLineFragment *)self locationForCharacterAtIndex:a3.location + a3.length];
    v13 = *(a4 + 2);
    v14.n128_f64[0] = v12.n128_f64[0] - v6;

    v12.n128_f64[0] = v11 - v6;
    v13(v12, v14);
    return;
  }

  GlyphRuns = CTLineGetGlyphRuns(self->_lineRef);
  range1_8 = CFArrayGetCount(GlyphRuns);
  if (range1_8 < 1)
  {
    return;
  }

  length = 0;
  v17 = 0;
  v18 = 0.0;
  location = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0.0;
  do
  {
    lineRef = self->_lineRef;
    v22 = CTLineGetGlyphRuns(lineRef);
    ValueAtIndex = CFArrayGetValueAtIndex(v22, v17);
    StringRange = CTRunGetStringRange(ValueAtIndex);
    v25 = NSIntersectionRange(a3, StringRange);
    v42 = 0.0;
    secondaryOffset = 0.0;
    Status = CTRunGetStatus(ValueAtIndex);
    if (!v25.length)
    {
      v36 = 0.0;
      if (!length)
      {
        v20 = 0.0;
        v18 = 0.0;
        goto LABEL_40;
      }

      OffsetForStringIndex = 0.0;
      goto LABEL_38;
    }

    v27 = Status;
    range1 = location;
    v28 = self;
    TrailingWhitespaceWidth = 0.0;
    if (CTLineIsRightToLeft())
    {
      TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(lineRef);
    }

    v30 = v27 & 1;
    OffsetForStringIndex = CTLineGetOffsetForStringIndex(lineRef, v25.location, &secondaryOffset);
    if (OffsetForStringIndex != secondaryOffset && v25.location == StringRange.location)
    {
      OffsetForStringIndex = getWidthOfRuns(lineRef, 0, v17 + (v27 & 1)) - TrailingWhitespaceWidth;
    }

    v33 = v25.location + v25.length;
    v34 = CTLineGetOffsetForStringIndex(lineRef, v25.location + v25.length, &v42);
    if (v34 != v42 && v33 == StringRange.location + StringRange.length)
    {
      v34 = getWidthOfRuns(lineRef, 0, v17 + (v30 ^ 1u)) - TrailingWhitespaceWidth;
    }

    if (v34 >= OffsetForStringIndex)
    {
      v36 = v34;
    }

    else
    {
      v36 = OffsetForStringIndex;
    }

    if (v34 < OffsetForStringIndex)
    {
      OffsetForStringIndex = v34;
    }

    if (length)
    {
      self = v28;
      if (OffsetForStringIndex - v20 >= 0.001)
      {
        location = range1;
      }

      else
      {
        location = range1;
        if (range1 + length == v25.location || v33 == range1)
        {
          v45.location = range1;
          v45.length = length;
          v37 = NSUnionRange(v45, v25);
          location = v37.location;
          length = v37.length;
          v20 = v36;
          goto LABEL_41;
        }
      }

LABEL_38:
      (*(a4 + 2))(a4, location, length, v18, v20);
      v20 = v36;
      v18 = OffsetForStringIndex;
      length = v25.length;
      goto LABEL_40;
    }

    v20 = v36;
    v18 = OffsetForStringIndex;
    length = v25.length;
    self = v28;
LABEL_40:
    location = v25.location;
LABEL_41:
    ++v17;
  }

  while (range1_8 != v17);
  if (length)
  {
    (*(a4 + 2))(a4, location, length, v18, v20);
  }
}

- (void)_drawTextCorrectionMarker:(int64_t)a3 characterRange:(_NSRange)a4 atOrigin:(CGPoint)a5 graphicsContext:(id)a6
{
  y = a5.y;
  x = a5.x;
  length = a4.length;
  location = a4.location;
  v14 = [a6 CGContext];
  [(NSTextLineFragment *)self glyphOrigin];
  if (v14 && length)
  {
    v17 = v15;
    v18 = v16;
    v25.location = [(NSTextLineFragment *)self characterRange];
    v25.length = v19;
    v24.location = location;
    v24.length = length;
    v20 = NSIntersectionRange(v24, v25);
    if (!v20.length)
    {
      [NSTextLineFragment _drawTextCorrectionMarker:length characterRange:a2 atOrigin:self graphicsContext:?];
    }

    v23 = 0.0;
    v21 = [NSTextCorrectionMarkerRendering textCorrectionAdjustmentAttributedString:[(NSTextLineFragment *)self attributedString] range:v20.location glyphOrigin:v20.length yDelta:&v23, v17, v18];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__NSTextLineFragment__drawTextCorrectionMarker_characterRange_atOrigin_graphicsContext___block_invoke;
    v22[3] = &unk_1E7267880;
    v22[5] = a6;
    v22[6] = a3;
    *&v22[7] = x + v17;
    *&v22[8] = y + v18 + v23;
    v22[4] = v21;
    [(NSTextLineFragment *)self _enumerateTextSegmentsInCharacterRange:v20.location usingBlock:v20.length, v22];
  }
}

- (void)drawTextCorrectionMarkersAtPoint:(CGPoint)a3 graphicsContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(NSTextLineFragment *)self textLayoutFragment];
  v9 = [(NSTextLineFragment *)self characterRange];
  if (v8)
  {
    v11 = v10;
    if (v10)
    {
      v12 = v9;
      v13 = [(NSTextLayoutFragment *)v8 textLayoutManager];
      v14 = [(NSTextLayoutFragment *)v8 textParagraph];
      v15 = [(NSTextRange *)[(NSTextLayoutFragment *)v8 rangeInElement] location];
      v16 = [(NSTextParagraph *)v14 locationForCharacterIndex:v12 dataSourceLocationsOnly:0 actualRange:0];
      v17 = [(NSTextParagraph *)v14 locationForCharacterIndex:v12 + v11 dataSourceLocationsOnly:0 actualRange:0];
      if (v16)
      {
        if (v17)
        {
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v41 = -1;
          v32 = 0;
          v33 = &v32;
          v34 = 0x3052000000;
          v35 = __Block_byref_object_copy__9;
          v36 = __Block_byref_object_dispose__9;
          v37 = 0;
          v26 = 0;
          v27 = &v26;
          v28 = 0x3052000000;
          v29 = __Block_byref_object_copy__9;
          v30 = __Block_byref_object_dispose__9;
          v31 = 0;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __71__NSTextLineFragment_drawTextCorrectionMarkersAtPoint_graphicsContext___block_invoke;
          v25[3] = &unk_1E72678A8;
          v25[4] = v17;
          v25[5] = self;
          v25[10] = &v26;
          v25[11] = &v32;
          v25[6] = v14;
          v25[7] = v15;
          *&v25[12] = x;
          *&v25[13] = y;
          v25[8] = a4;
          v25[9] = &v38;
          [(NSTextLayoutFragment *)v8 enumerateRenderingAttributesFromLocation:v16 reverse:0 usingBlock:v25];
          v18 = v39[3];
          if (v18 != -1)
          {
            v19 = v33[5];
            v20 = v27[5];
            v21 = [[NSTextRange alloc] initWithLocation:v19 endLocation:v20];
            v22 = [(NSTextLayoutManager *)v13 _shouldDrawTextCorrectionMarkerWithType:v18 inRange:v21];

            if (v22)
            {
              if (v14)
              {
                v23 = [(NSTextParagraph *)v14 rangeForLocation:v19 allowsTrailingEdge:0];
                v24 = [(NSTextParagraph *)v14 rangeForLocation:v20 allowsTrailingEdge:1];
              }

              else
              {
                v23 = [(NSTextLayoutManager *)v13 offsetFromLocation:v15 toLocation:v19];
                v24 = [(NSTextLayoutManager *)v13 offsetFromLocation:v15 toLocation:v20];
              }

              if (v23 != 0x7FFFFFFFFFFFFFFFLL && v24 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [(NSTextLineFragment *)self _drawTextCorrectionMarker:v18 characterRange:v23 atOrigin:v24 - v23 graphicsContext:a4, x, y];
              }
            }
          }

          _Block_object_dispose(&v26, 8);
          _Block_object_dispose(&v32, 8);
          _Block_object_dispose(&v38, 8);
        }
      }
    }
  }
}

id __71__NSTextLineFragment_drawTextCorrectionMarkersAtPoint_graphicsContext___block_invoke(double *a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v9 = [NSTextCorrectionMarkerRendering textCorrectionMarkerTypeWithAttributes:?];
  result = [objc_msgSend(a4 "endLocation")];
  if (result != -1)
  {
    *a5 = 1;
    return result;
  }

  v11 = *(*(*(a1 + 9) + 8) + 24);
  if (v9 != -1 && v11 == v9)
  {
    if ([*(*(*(a1 + 10) + 8) + 40) isEqual:{objc_msgSend(a4, "location")}])
    {

      goto LABEL_25;
    }

    v11 = *(*(*(a1 + 9) + 8) + 24);
  }

  if (v11 != -1)
  {
    v13 = *(*(*(a1 + 11) + 8) + 40);
    v14 = *(*(*(a1 + 10) + 8) + 40);
    v15 = *(a1 + 6);
    v24 = *(a1 + 7);
    v25 = *(a1 + 5);
    v26 = *(a1 + 8);
    v16 = a1[12];
    v17 = a1[13];
    v18 = [[NSTextRange alloc] initWithLocation:v13 endLocation:v14];
    v19 = [a2 _shouldDrawTextCorrectionMarkerWithType:v11 inRange:v18];

    if (v19)
    {
      if (v15)
      {
        v20 = [v15 rangeForLocation:v13 allowsTrailingEdge:0];
        v21 = [v15 rangeForLocation:v14 allowsTrailingEdge:1];
      }

      else
      {
        v20 = [a2 offsetFromLocation:v24 toLocation:v13];
        v21 = [a2 offsetFromLocation:v24 toLocation:v14];
      }

      if (v20 != 0x7FFFFFFFFFFFFFFFLL && v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v25 _drawTextCorrectionMarker:v11 characterRange:v20 atOrigin:v21 - v20 graphicsContext:{v26, v16, v17}];
      }
    }
  }

  *(*(*(a1 + 9) + 8) + 24) = v9;

  if (*(*(*(a1 + 9) + 8) + 24) == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = [a4 location];
  }

  *(*(*(a1 + 11) + 8) + 40) = v23;

  if (*(*(*(a1 + 9) + 8) + 24) == -1)
  {
    result = 0;
    goto LABEL_27;
  }

LABEL_25:
  result = [a4 endLocation];
LABEL_27:
  *(*(*(a1 + 10) + 8) + 40) = result;
  return result;
}

- (void)drawTextCorrectionMarkersAtPoint:(CGPoint)a3 context:(CGContext *)a4
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    v7 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:a4];
    [(NSTextLineFragment *)self drawTextCorrectionMarkersAtPoint:v7 graphicsContext:x, y];
  }
}

- (void)_drawMarkedTextUnderline:(id)a3 inTextRange:(id)a4 atOrigin:(CGPoint)a5 graphicsContext:(id)a6
{
  y = a5.y;
  x = a5.x;
  v12 = [(NSTextLineFragment *)self textLayoutFragment];
  v13 = [a6 CGContext];
  [(NSTextLineFragment *)self glyphOrigin];
  v15 = v14;
  v17 = v16;
  v18 = [a6 isFlipped];
  if (v13)
  {
    v19 = v18;
    v20 = [a3 objectForKeyedSubscript:@"NSUnderline"];
    v21 = [a3 objectForKeyedSubscript:@"NSUnderlineColor"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __84__NSTextLineFragment__drawMarkedTextUnderline_inTextRange_atOrigin_graphicsContext___block_invoke;
    v22[3] = &unk_1E72678D0;
    v22[4] = v21;
    v22[5] = v20;
    v22[9] = v15;
    v22[10] = v17;
    v23 = v19;
    *&v22[11] = x;
    *&v22[12] = y;
    v22[13] = v13;
    v22[6] = self;
    v22[7] = v12;
    v22[8] = a6;
    [(NSTextLineFragment *)self enumerateTextSegmentBoundsInTextRange:a4 dataSourceLocationsOnly:1 usingBlock:v22];
  }
}

void __84__NSTextLineFragment__drawMarkedTextUnderline_inTextRange_atOrigin_graphicsContext___block_invoke(uint64_t a1, void *a2, CGFloat a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) integerValue];
  v14 = v13 & 3;
  if (v13 <= 0)
  {
    v14 = -(-v13 & 3);
  }

  v15 = v14;
  v16 = [*(a1 + 40) integerValue];
  if ((v16 & 0x2000) != 0)
  {
    if ((~v16 & 0x3000) != 0)
    {
      if (*(a1 + 112))
      {
        v21 = a4 + *(a1 + 96);
        v22 = 1.0;
        goto LABEL_15;
      }

      v23 = *(a1 + 96);
      v24 = a4 + 1.0;
    }

    else
    {
      if (*(a1 + 112))
      {
        v21 = a4 + a6 + *(a1 + 96);
        v22 = -1.0;
LABEL_15:
        v20 = v21 + v22;
        goto LABEL_19;
      }

      v23 = *(a1 + 96);
      v24 = a4 + a6 + -1.0;
    }

    v20 = v23 - v24;
    goto LABEL_19;
  }

  v17 = (a6 - *(a1 + 80)) * 0.5;
  v18 = floor(v17);
  if (v17 >= 4.0)
  {
    v19 = (v17 - v15) * 0.666;
  }

  else
  {
    v19 = v18;
  }

  if (*(a1 + 112) == 1)
  {
    v20 = a4 + a6 - v19;
  }

  else
  {
    v20 = a4 + v19;
  }

LABEL_19:
  CGContextSaveGState(*(a1 + 104));
  if (!v12)
  {
    v25 = [*(a1 + 48) applicationFrameworkContext];
    if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
    {
      v26 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", v25];
    }

    else
    {
      v26 = +[NSTextGraphicsContextProvider __defaultColorClass];
    }

    v27 = v26;
    v28 = [(objc_class *)v26 blackColor];
    v29 = [objc_msgSend(*(a1 + 56) "textLayoutManager")];
    v30 = [objc_msgSend(*(a1 + 56) "rangeInElement")];
    v31 = [v29 offsetFromLocation:v30 toLocation:{objc_msgSend(a2, "location")}];
    v32 = [v29 offsetFromLocation:v30 toLocation:{objc_msgSend(a2, "endLocation")}] - v31;
    v41.location = [*(a1 + 48) characterRange];
    v42.location = v31;
    v42.length = v32;
    location = NSIntersectionRange(v41, v42).location;
    v40[0] = 0;
    v40[1] = 0;
    v34 = [*(a1 + 48) _defaultRenderingAttributesAtCharacterIndex:location effectiveRange:v40];
    if (([v34 count] && (v35 = objc_msgSend(v34, "objectForKeyedSubscript:", @"NSColor")) != 0 || ((v36 = objc_msgSend(objc_msgSend(*(a1 + 48), "attributedString"), "attribute:atIndex:effectiveRange:", @"NSColor", location, 0)) != 0 ? (v35 = v36) : (v35 = v28), v35)) && (objc_msgSend(v35, "isEqual:", v28) & 1) == 0)
    {
      v37 = [v35 colorWithAlphaComponent:0.8];
    }

    else
    {
      v37 = [(objc_class *)v27 colorWithWhite:0.17 alpha:1.0];
    }

    v12 = v37;
  }

  [*(a1 + 48) _setColor:v12 inGraphicsContext:*(a1 + 64)];
  v38 = a3 + a5;
  if (a3 + a5 - a3 > 1.0)
  {
    a3 = a3 + 1.0;
  }

  if (v38 - a3 <= 1.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + -1.0;
  }

  CGContextSetLineWidth(*(a1 + 104), v15);
  CGContextMoveToPoint(*(a1 + 104), a3, v20);
  CGContextAddLineToPoint(*(a1 + 104), v39, v20);
  CGContextStrokePath(*(a1 + 104));
  CGContextRestoreGState(*(a1 + 104));
}

- (void)_drawMarkedTextBackground:(id)a3 inTextRange:(id)a4 atOrigin:(CGPoint)a5 graphicsContext:(id)a6
{
  v10 = [a6 CGContext];
  v11 = [a3 objectForKeyedSubscript:@"NSBackgroundColor"];
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = v11;
    if (v11 != [MEMORY[0x1E695DFB0] null])
    {
      CGContextSaveGState(v10);
      [(NSTextLineFragment *)self _setColor:v13 inGraphicsContext:a6];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __85__NSTextLineFragment__drawMarkedTextBackground_inTextRange_atOrigin_graphicsContext___block_invoke;
      v14[3] = &__block_descriptor_40_e55_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__NSTextRange_40l;
      v14[4] = v10;
      [(NSTextLineFragment *)self enumerateTextSegmentBoundsInTextRange:a4 dataSourceLocationsOnly:1 usingBlock:v14];
      CGContextRestoreGState(v10);
    }
  }
}

void __85__NSTextLineFragment__drawMarkedTextBackground_inTextRange_atOrigin_graphicsContext___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a4 > 1.0)
  {
    a4 = a4 + -1.0;
  }

  v6 = CGPathCreateWithRoundedRect(*&a2, 3.0, 3.0, 0);
  CGContextAddPath(*(a1 + 32), v6);
  CGContextFillPath(*(a1 + 32));

  CGPathRelease(v6);
}

- (CGRect)boundsForMarkedTextAtPoint:(CGPoint)a3 range:(id)a4 width:(double)a5 adjustmentCallback:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = [(NSTextLineFragment *)self textLayoutFragment:a3.x];
  v27 = 0;
  v28 = &v27;
  v29 = 0x4010000000;
  v30 = "";
  v12 = *(MEMORY[0x1E695F050] + 16);
  v31 = *MEMORY[0x1E695F050];
  v32 = v12;
  if (v11)
  {
    v13 = v11;
    if (([a4 isEmpty] & 1) == 0)
    {
      v14 = [(NSTextLayoutFragment *)v13 textLayoutManager];
      v15 = objc_autoreleasePoolPush();
      v16 = [(NSTextLineFragment *)self textLineFragmentRange];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __80__NSTextLineFragment_boundsForMarkedTextAtPoint_range_width_adjustmentCallback___block_invoke;
      v25[3] = &unk_1E7267940;
      v25[4] = self;
      v25[5] = v13;
      v26 = 1;
      *&v25[8] = x;
      *&v25[9] = y;
      v25[6] = a6;
      v25[7] = &v27;
      [(NSTextLayoutManager *)v14 markedTextAttributesForRange:v16 usingBlock:v25];
      objc_autoreleasePoolPop(v15);
    }
  }

  v17 = v28[4];
  v18 = v28[5];
  v19 = v28[6];
  v20 = v28[7];
  _Block_object_dispose(&v27, 8);
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

uint64_t __80__NSTextLineFragment_boundsForMarkedTextAtPoint_range_width_adjustmentCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    result = [a2 isNotEmpty];
    if (result)
    {
      result = [a3 objectForKeyedSubscript:@"NSUnderline"];
      if (result)
      {
        v7 = result;
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          result = [v7 unsignedIntegerValue];
          if (result)
          {
            v10[0] = MEMORY[0x1E69E9820];
            v10[1] = 3221225472;
            v10[2] = __80__NSTextLineFragment_boundsForMarkedTextAtPoint_range_width_adjustmentCallback___block_invoke_2;
            v10[3] = &unk_1E7267918;
            v13 = result;
            v8 = *(a1 + 48);
            v14 = *(a1 + 64);
            v9 = *(a1 + 32);
            v15 = *(a1 + 80);
            v11 = vextq_s8(v9, v9, 8uLL);
            v12 = v8;
            return [v9.i64[0] enumerateTextSegmentBoundsInTextRange:a2 dataSourceLocationsOnly:1 usingBlock:v10];
          }
        }
      }
    }
  }

  return result;
}

void __80__NSTextLineFragment_boundsForMarkedTextAtPoint_range_width_adjustmentCallback___block_invoke_2(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a5.n128_f64[0];
  v6 = a4.n128_f64[0];
  v7 = a3.n128_f64[0];
  v8 = a2.n128_f64[0];
  v10 = *(a1 + 48);
  if (v10)
  {
    v8 = (*(v10 + 16))(a2, a3, a4, a5);
    v7 = v11;
    v6 = v12;
    v5 = v13;
  }

  v14 = *(a1 + 64) & 0x3000;
  if (v14 != 4096 && (v14 || (v15 = [objc_msgSend(*(a1 + 32) "textLayoutManager")]) != 0 && objc_msgSend(v15, "layoutOrientation")))
  {
    v16 = *(a1 + 80) - v7;
  }

  else
  {
    [*(a1 + 40) glyphOrigin];
    v18 = (v5 - v17) * 0.5;
    v19 = floor(v18);
    if (v18 >= 4.0)
    {
      v20 = (v18 + -2.0) * 0.666;
    }

    else
    {
      v20 = v19;
    }

    v21 = v7 + v20;
    v22 = v5 + v7 - v20;
    if (*(a1 + 88) == 1)
    {
      v16 = v22;
    }

    else
    {
      v16 = v21;
    }
  }

  v23 = v6 + v8;
  if (v6 + v8 - v8 <= 1.0)
  {
    v24 = v8;
  }

  else
  {
    v24 = v8 + 1.0;
  }

  if (v23 - v24 > 1.0)
  {
    v23 = v23 + -1.0;
  }

  v25 = v23 - v24;
  v26 = 2.0;
  *(*(*(a1 + 56) + 8) + 32) = CGRectUnion(*(*(*(a1 + 56) + 8) + 32), *(&v16 - 1));
}

- (BOOL)drawMarkedTextIndicatorAtPoint:(CGPoint)a3 graphicsContext:(id)a4 backgroundOnly:(BOOL)a5 adjustmentCallback:(id)a6
{
  y = a3.y;
  x = a3.x;
  v12 = [(NSTextLineFragment *)self textLayoutFragment];
  [(NSTextLineFragment *)self characterRange];
  v14 = 0;
  if (v12 && v13)
  {
    v15 = [(NSTextLayoutFragment *)v12 textLayoutManager];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3052000000;
    v30 = __Block_byref_object_copy__9;
    v31 = __Block_byref_object_dispose__9;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v16 = _os_feature_enabled_impl();
    v17 = objc_autoreleasePoolPush();
    v18 = [(NSTextLineFragment *)self textLineFragmentRange];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __103__NSTextLineFragment_drawMarkedTextIndicatorAtPoint_graphicsContext_backgroundOnly_adjustmentCallback___block_invoke;
    v20[3] = &unk_1E7267968;
    v21 = a5;
    v22 = v16 ^ 1;
    *&v20[9] = x;
    *&v20[10] = y;
    v20[4] = self;
    v20[5] = a4;
    v20[7] = &v27;
    v20[8] = &v23;
    v20[6] = a6;
    [(NSTextLayoutManager *)v15 markedTextAttributesForRange:v18 usingBlock:v20];
    if ([(__NSMarkedTextUnderlineRenderer *)v28[5] renderUnderline:a6])
    {
      *(v24 + 24) = 1;
    }

    objc_autoreleasePoolPop(v17);
    v14 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  return v14 & 1;
}

uint64_t __103__NSTextLineFragment_drawMarkedTextIndicatorAtPoint_graphicsContext_backgroundOnly_adjustmentCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    result = [a2 isNotEmpty];
    if (result)
    {
      if ((*(a1 + 88) & 1) == 0 && [a3 objectForKeyedSubscript:@"NSUnderline"])
      {
        if (*(a1 + 89) == 1)
        {
          [*(a1 + 32) _drawMarkedTextUnderline:a3 inTextRange:a2 atOrigin:*(a1 + 40) graphicsContext:{*(a1 + 72), *(a1 + 80)}];
        }

        else if (!*(*(*(a1 + 56) + 8) + 40))
        {
          __103__NSTextLineFragment_drawMarkedTextIndicatorAtPoint_graphicsContext_backgroundOnly_adjustmentCallback___block_invoke_cold_1(a1, a1 + 56);
        }
      }

      else
      {
        v7 = [a3 objectForKeyedSubscript:@"NSBackgroundColor"];
        if (v7 && ([v7 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
        {
          [*(a1 + 32) _drawMarkedTextBackground:a3 inTextRange:a2 atOrigin:*(a1 + 40) graphicsContext:{*(a1 + 72), *(a1 + 80)}];
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }
      }

      result = [(__NSMarkedTextUnderlineRenderer *)*(*(*(a1 + 56) + 8) + 40) processMarkedTextUnderline:a3 textRange:a2 adjustmentCallback:*(a1 + 48)];
      if (result)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

- (void)drawMarkedTextIndicatorAtPoint:(CGPoint)a3 context:(CGContext *)a4 adjustmentCallback:(id)a5
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    v9 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:a4];
    [(NSTextLineFragment *)self drawMarkedTextIndicatorAtPoint:v9 graphicsContext:a5 adjustmentCallback:x, y];
  }
}

- (BOOL)drawMarkedTextBackgroundAtPoint:(CGPoint)a3 context:(CGContext *)a4 adjustmentCallback:(id)a5
{
  if (!a4)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  v9 = [[_NSCGTextGraphicsContext alloc] initWithCGContext:a4];
  LOBYTE(a5) = [(NSTextLineFragment *)self drawMarkedTextIndicatorAtPoint:v9 graphicsContext:1 backgroundOnly:a5 adjustmentCallback:x, y];

  return a5;
}

- (uint64_t)characterIndexForPoint:(uint64_t)a1 fractionOfDistanceThroughGlyph:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"NSTextLineFragment.m" lineNumber:1280 description:@"no character found that contains point"];
}

- (uint64_t)_drawTextCorrectionMarker:(NSUInteger)a1 characterRange:(NSUInteger)a2 atOrigin:(const char *)a3 graphicsContext:(uint64_t)a4 .cold.1(NSUInteger a1, NSUInteger a2, const char *a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v11.location = a1;
  v11.length = a2;
  v9 = NSStringFromRange(v11);
  return [v8 handleFailureInMethod:a3 object:a4 file:@"NSTextLineFragment.m" lineNumber:1430 description:{@"out of bounds characterRange %@ specified to %@", v9, NSStringFromSelector(a3)}];
}

__NSMarkedTextUnderlineRenderer *__103__NSTextLineFragment_drawMarkedTextIndicatorAtPoint_graphicsContext_backgroundOnly_adjustmentCallback___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = [__NSMarkedTextUnderlineRenderer alloc];
  if (result)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 32);
    v7.receiver = result;
    v7.super_class = __NSMarkedTextUnderlineRenderer;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *&result->_textLineFragment = v6;
      result->_origin = v5;
      result->_underlineThickness = 2.0;
    }
  }

  *(*(*a2 + 8) + 40) = result;
  return result;
}

@end