@interface _UIFieldEditorLayoutManager
- (CGRect)_boundingBoxForBulletAtCharIndex:(int64_t)index inUnobscuredRange:(_NSRange)range;
- (int64_t)_generateBulletGlyphs:(const unsigned __int16 *)glyphs properties:(const int64_t *)properties characterIndexes:(const unint64_t *)indexes font:(id)font forGlyphRange:(_NSRange)range unobscuredRange:(_NSRange)unobscuredRange;
- (void)_completeBulletRenderingForTextContainer:(id)container;
- (void)resetFontForExtraBulletRendering;
- (void)showCGGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(int64_t)count font:(id)font textMatrix:(CGAffineTransform *)matrix attributes:(id)attributes inContext:(CGContext *)c;
- (void)useFontForExtraBulletRendering:(id)rendering;
@end

@implementation _UIFieldEditorLayoutManager

- (void)useFontForExtraBulletRendering:(id)rendering
{
  renderingCopy = rendering;
  if (renderingCopy)
  {
    v6 = renderingCopy;
    objc_storeStrong(&self->_fontForExtraBulletRendering, rendering);
    renderingCopy = v6;
  }
}

- (void)resetFontForExtraBulletRendering
{
  fontForExtraBulletRendering = self->_fontForExtraBulletRendering;
  self->_fontForExtraBulletRendering = 0;
}

- (void)showCGGlyphs:(const unsigned __int16 *)glyphs positions:(const CGPoint *)positions count:(int64_t)count font:(id)font textMatrix:(CGAffineTransform *)matrix attributes:(id)attributes inContext:(CGContext *)c
{
  v36 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  attributesCopy = attributes;
  v16 = self->_fontForExtraBulletRendering;
  if (count >= 1)
  {
    v17 = 0;
    v35 = 0;
    v18 = &glyphs[count];
    memset(__b, 0, sizeof(__b));
    v19 = &classRef_UITextDraggableGeometrySameViewDropOperationResult;
    glyphsCopy = glyphs;
    v28 = v18;
    do
    {
      if (glyphs == v18 && glyphsCopy < glyphs || v16 && glyphs < v18 && !*glyphs)
      {
        if (glyphsCopy < glyphs)
        {
          v21 = glyphs - glyphsCopy;
          v22 = v19[152];
          v33.receiver = self;
          v33.super_class = v22;
          v23 = *&matrix->c;
          __pattern4 = *&matrix->a;
          v31 = v23;
          v32 = *&matrix->tx;
          [_UIFieldEditorLayoutManager showCGGlyphs:sel_showCGGlyphs_positions_count_font_textMatrix_attributes_inContext_ positions:c count:? font:? textMatrix:? attributes:? inContext:?];
          v19 = &classRef_UITextDraggableGeometrySameViewDropOperationResult;
          v18 = v28;
          positions = (positions + 8 * v21);
        }

        ++v17;
        glyphsCopy = ++glyphs;
      }

      else
      {
        if (v17)
        {
          v27 = glyphsCopy;
          if (!LOWORD(__b[0]))
          {
            LOWORD(__pattern4) = [(UIFont *)v16 _bulletGlyph];
            WORD1(__pattern4) = __pattern4;
            memset_pattern4(__b, &__pattern4, 0xC8uLL);
          }

          CGContextSaveGState(c);
          [(UIFont *)v16 setInContext:c];
          do
          {
            if (v17 >= 0x64)
            {
              v24 = 100;
            }

            else
            {
              v24 = v17;
            }

            v29.receiver = self;
            v29.super_class = _UIFieldEditorLayoutManager;
            v25 = *&matrix->c;
            __pattern4 = *&matrix->a;
            v31 = v25;
            v32 = *&matrix->tx;
            [(_UIFieldEditorLayoutManager *)&v29 showCGGlyphs:__b positions:positions count:v24 font:v16 textMatrix:&__pattern4 attributes:attributesCopy inContext:c];
            positions += v24;
            v17 -= v24;
          }

          while (v17);
          CGContextRestoreGState(c);
          v19 = &classRef_UITextDraggableGeometrySameViewDropOperationResult;
          v18 = v28;
          glyphsCopy = v27;
        }

        v17 = 0;
        ++glyphs;
      }
    }

    while (glyphs <= v18);
  }
}

- (int64_t)_generateBulletGlyphs:(const unsigned __int16 *)glyphs properties:(const int64_t *)properties characterIndexes:(const unint64_t *)indexes font:(id)font forGlyphRange:(_NSRange)range unobscuredRange:(_NSRange)unobscuredRange
{
  length = range.length;
  location = range.location;
  v40 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  if (unobscuredRange.location == *indexes && unobscuredRange.length == indexes[length - 1] - *indexes + 1)
  {
    v31 = 0;
  }

  else
  {
    selfCopy = self;
    textStorage = [(_UIFieldEditorLayoutManager *)self textStorage];
    v17 = [textStorage attribute:*off_1E70EC978 atIndex:*indexes effectiveRange:0];

    v36 = fontCopy;
    v37 = 0;
    v33 = v17;
    v18 = [fontCopy _bulletGlyphWithOriginalFont:v17 fontForBulletRendering:&v37];
    v19 = v37;
    v34 = length;
    v20 = location + length;
    while (location < v20)
    {
      if (v20 - location >= 0x64)
      {
        v21 = 100;
      }

      else
      {
        v21 = v20 - location;
      }

      __memcpy_chk();
      if (v20 != location)
      {
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v23 = v39;
        v24 = v38;
        glyphsCopy = glyphs;
        indexesCopy = indexes;
        do
        {
          v28 = *glyphsCopy++;
          v27 = v28;
          v29 = *v24;
          if ((*v24 & 1) == 0)
          {
            if ((v29 & 8) != 0)
            {
              v27 = 0;
              v30 = 1;
            }

            else
            {
              if (*indexesCopy >= unobscuredRange.location && *indexesCopy - unobscuredRange.location < unobscuredRange.length)
              {
                goto LABEL_22;
              }

              v27 = v18;
              if (!v19)
              {
                goto LABEL_22;
              }

              v27 = -1;
              v30 = 2;
            }

            *v24 = v30 | v29;
          }

LABEL_22:
          *v23++ = v27;
          ++indexesCopy;
          ++v24;
          --v22;
        }

        while (v22);
      }

      [(_UIFieldEditorLayoutManager *)selfCopy setGlyphs:v39 properties:v38 characterIndexes:indexes font:v36 forGlyphRange:location, v21];
      glyphs += v21;
      properties += v21;
      location += v21;
      indexes += v21;
    }

    [(_UIFieldEditorLayoutManager *)selfCopy useFontForExtraBulletRendering:v19];

    v31 = v34;
    fontCopy = v36;
  }

  return v31;
}

- (CGRect)_boundingBoxForBulletAtCharIndex:(int64_t)index inUnobscuredRange:(_NSRange)range
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12 = *MEMORY[0x1E695F058];
  v13 = v4;
  if (index < range.location || index - range.location >= range.length)
  {
    fontForExtraBulletRendering = self->_fontForExtraBulletRendering;
    if (fontForExtraBulletRendering)
    {
      v6 = fontForExtraBulletRendering;
      glyphs = [(UIFont *)v6 _bulletGlyph];
      CTFontGetAdvancesForGlyphs(v6, kCTFontOrientationDefault, &glyphs, &v13, 1);
    }
  }

  v8 = *(&v12 + 1);
  v7 = *&v12;
  height = v13.height;
  width = v13.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)_completeBulletRenderingForTextContainer:(id)container
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_fontForExtraBulletRendering)
  {
    v4 = [(_UIFieldEditorLayoutManager *)self glyphRangeForTextContainer:container];
    v16 = v4 + v5;
    if (v4 < v4 + v5)
    {
      v6 = v4;
      if (v5 >= 0x64)
      {
        v7 = 100;
      }

      else
      {
        v7 = v5;
      }

      do
      {
        [(_UIFieldEditorLayoutManager *)self getGlyphsInRange:v6 glyphs:v7 properties:0 characterIndexes:v19 bidiLevels:v18, 0, v16];
        v17 = v7;
        if (v7)
        {
          v8 = v18;
          v9 = v19;
          v10 = v6;
          do
          {
            v11 = *v9;
            v9 += 8;
            if ((v11 & 2) != 0)
            {
              controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
              textStorage = [(_UIFieldEditorLayoutManager *)self textStorage];
              string = [textStorage string];
              v15 = [controlCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", *v8)}];

              if ((v15 & 1) == 0)
              {
                [(_UIFieldEditorLayoutManager *)self setNotShownAttribute:0 forGlyphAtIndex:v10];
              }
            }

            ++v10;
            ++v8;
            --v7;
          }

          while (v7);
        }

        v6 += v17;
        if (v16 - v6 >= 0x64)
        {
          v7 = 100;
        }

        else
        {
          v7 = v16 - v6;
        }
      }

      while (v16 > v6);
    }
  }
}

@end