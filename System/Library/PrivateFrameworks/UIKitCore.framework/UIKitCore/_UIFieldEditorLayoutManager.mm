@interface _UIFieldEditorLayoutManager
- (CGRect)_boundingBoxForBulletAtCharIndex:(int64_t)a3 inUnobscuredRange:(_NSRange)a4;
- (int64_t)_generateBulletGlyphs:(const unsigned __int16 *)a3 properties:(const int64_t *)a4 characterIndexes:(const unint64_t *)a5 font:(id)a6 forGlyphRange:(_NSRange)a7 unobscuredRange:(_NSRange)a8;
- (void)_completeBulletRenderingForTextContainer:(id)a3;
- (void)resetFontForExtraBulletRendering;
- (void)showCGGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(int64_t)a5 font:(id)a6 textMatrix:(CGAffineTransform *)a7 attributes:(id)a8 inContext:(CGContext *)c;
- (void)useFontForExtraBulletRendering:(id)a3;
@end

@implementation _UIFieldEditorLayoutManager

- (void)useFontForExtraBulletRendering:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fontForExtraBulletRendering, a3);
    v5 = v6;
  }
}

- (void)resetFontForExtraBulletRendering
{
  fontForExtraBulletRendering = self->_fontForExtraBulletRendering;
  self->_fontForExtraBulletRendering = 0;
}

- (void)showCGGlyphs:(const unsigned __int16 *)a3 positions:(const CGPoint *)a4 count:(int64_t)a5 font:(id)a6 textMatrix:(CGAffineTransform *)a7 attributes:(id)a8 inContext:(CGContext *)c
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = a6;
  v15 = a8;
  v16 = self->_fontForExtraBulletRendering;
  if (a5 >= 1)
  {
    v17 = 0;
    v35 = 0;
    v18 = &a3[a5];
    memset(__b, 0, sizeof(__b));
    v19 = &classRef_UITextDraggableGeometrySameViewDropOperationResult;
    v20 = a3;
    v28 = v18;
    do
    {
      if (a3 == v18 && v20 < a3 || v16 && a3 < v18 && !*a3)
      {
        if (v20 < a3)
        {
          v21 = a3 - v20;
          v22 = v19[152];
          v33.receiver = self;
          v33.super_class = v22;
          v23 = *&a7->c;
          __pattern4 = *&a7->a;
          v31 = v23;
          v32 = *&a7->tx;
          [_UIFieldEditorLayoutManager showCGGlyphs:sel_showCGGlyphs_positions_count_font_textMatrix_attributes_inContext_ positions:c count:? font:? textMatrix:? attributes:? inContext:?];
          v19 = &classRef_UITextDraggableGeometrySameViewDropOperationResult;
          v18 = v28;
          a4 = (a4 + 8 * v21);
        }

        ++v17;
        v20 = ++a3;
      }

      else
      {
        if (v17)
        {
          v27 = v20;
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
            v25 = *&a7->c;
            __pattern4 = *&a7->a;
            v31 = v25;
            v32 = *&a7->tx;
            [(_UIFieldEditorLayoutManager *)&v29 showCGGlyphs:__b positions:a4 count:v24 font:v16 textMatrix:&__pattern4 attributes:v15 inContext:c];
            a4 += v24;
            v17 -= v24;
          }

          while (v17);
          CGContextRestoreGState(c);
          v19 = &classRef_UITextDraggableGeometrySameViewDropOperationResult;
          v18 = v28;
          v20 = v27;
        }

        v17 = 0;
        ++a3;
      }
    }

    while (a3 <= v18);
  }
}

- (int64_t)_generateBulletGlyphs:(const unsigned __int16 *)a3 properties:(const int64_t *)a4 characterIndexes:(const unint64_t *)a5 font:(id)a6 forGlyphRange:(_NSRange)a7 unobscuredRange:(_NSRange)a8
{
  length = a7.length;
  location = a7.location;
  v40 = *MEMORY[0x1E69E9840];
  v14 = a6;
  if (a8.location == *a5 && a8.length == a5[length - 1] - *a5 + 1)
  {
    v31 = 0;
  }

  else
  {
    v35 = self;
    v16 = [(_UIFieldEditorLayoutManager *)self textStorage];
    v17 = [v16 attribute:*off_1E70EC978 atIndex:*a5 effectiveRange:0];

    v36 = v14;
    v37 = 0;
    v33 = v17;
    v18 = [v14 _bulletGlyphWithOriginalFont:v17 fontForBulletRendering:&v37];
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
        v25 = a3;
        v26 = a5;
        do
        {
          v28 = *v25++;
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
              if (*v26 >= a8.location && *v26 - a8.location < a8.length)
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
          ++v26;
          ++v24;
          --v22;
        }

        while (v22);
      }

      [(_UIFieldEditorLayoutManager *)v35 setGlyphs:v39 properties:v38 characterIndexes:a5 font:v36 forGlyphRange:location, v21];
      a3 += v21;
      a4 += v21;
      location += v21;
      a5 += v21;
    }

    [(_UIFieldEditorLayoutManager *)v35 useFontForExtraBulletRendering:v19];

    v31 = v34;
    v14 = v36;
  }

  return v31;
}

- (CGRect)_boundingBoxForBulletAtCharIndex:(int64_t)a3 inUnobscuredRange:(_NSRange)a4
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12 = *MEMORY[0x1E695F058];
  v13 = v4;
  if (a3 < a4.location || a3 - a4.location >= a4.length)
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

- (void)_completeBulletRenderingForTextContainer:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_fontForExtraBulletRendering)
  {
    v4 = [(_UIFieldEditorLayoutManager *)self glyphRangeForTextContainer:a3];
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
              v12 = [MEMORY[0x1E696AB08] controlCharacterSet];
              v13 = [(_UIFieldEditorLayoutManager *)self textStorage];
              v14 = [v13 string];
              v15 = [v12 characterIsMember:{objc_msgSend(v14, "characterAtIndex:", *v8)}];

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