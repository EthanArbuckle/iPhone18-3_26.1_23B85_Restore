@interface NSString(UIKBExtras)
- (double)_optimizedSizeWithFont:()UIKBExtras;
@end

@implementation NSString(UIKBExtras)

- (double)_optimizedSizeWithFont:()UIKBExtras
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![self length])
  {
    v7 = *MEMORY[0x1E695F060];
    goto LABEL_15;
  }

  if (![self _isOnlyIdeographs])
  {
LABEL_14:
    [self _legacy_sizeWithFont:v4];
    v7 = v21;
    goto LABEL_15;
  }

  _graphemeCount = [self _graphemeCount];
  if (_graphemeCount == 1)
  {
    [v4 pointSize];
    v7 = ceil(v6 * 1.05);
    goto LABEL_15;
  }

  v8 = _graphemeCount;
  if (_graphemeCount > 0x14)
  {
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = *off_1E70EC918;
    v27[0] = v4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v15 = [v13 initWithString:self attributes:v14];

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

  v9 = 2 * _graphemeCount;
  MEMORY[0x1EEE9AC00](_graphemeCount);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  _fastCharacterContents = [self _fastCharacterContents];
  if (_fastCharacterContents)
  {
    CTFontGetGlyphsForCharacters(v4, _fastCharacterContents, (&v23 - v10), v8);
  }

  else
  {
    [self getCharacters:&v23 - v10 range:{0, v8, MEMORY[0x1EEE9AC00](0)}];
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