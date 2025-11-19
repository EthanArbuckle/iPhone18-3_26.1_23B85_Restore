@interface NSString(UIKBExtras)
- (double)_optimizedSizeWithFont:()UIKBExtras;
@end

@implementation NSString(UIKBExtras)

- (double)_optimizedSizeWithFont:()UIKBExtras
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![a1 length])
  {
    v7 = *MEMORY[0x1E695F060];
    goto LABEL_15;
  }

  if (![a1 _isOnlyIdeographs])
  {
LABEL_14:
    [a1 _legacy_sizeWithFont:v4];
    v7 = v21;
    goto LABEL_15;
  }

  v5 = [a1 _graphemeCount];
  if (v5 == 1)
  {
    [v4 pointSize];
    v7 = ceil(v6 * 1.05);
    goto LABEL_15;
  }

  v8 = v5;
  if (v5 > 0x14)
  {
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = *off_1E70EC918;
    v27[0] = v4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v15 = [v13 initWithString:a1 attributes:v14];

    v16 = CTLineCreateWithAttributedString(v15);
    if (v16)
    {
      v17 = v16;
      descent = 0.0;
      ascent = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(v16, &ascent, &descent, 0);
      CFRelease(v17);
      v7 = ceil(TypographicBounds);

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = 2 * v5;
  MEMORY[0x1EEE9AC00](v5);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v12 = [a1 _fastCharacterContents];
  if (v12)
  {
    CTFontGetGlyphsForCharacters(v4, v12, (&v23 - v10), v8);
  }

  else
  {
    [a1 getCharacters:&v23 - v10 range:{0, v8, MEMORY[0x1EEE9AC00](0)}];
    CTFontGetGlyphsForCharacters(v4, (&v23 - v10), (&v23 - v10), v8);
  }

  AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(v4, kCTFontOrientationHorizontal, (&v23 - v10), &v23 - v8, v8);
  v20 = CTFontGetAscent(v4);
  v7 = ceil(AdvancesForGlyphs);
  ceil(v20 + CTFontGetDescent(v4));
LABEL_15:

  return v7;
}

@end