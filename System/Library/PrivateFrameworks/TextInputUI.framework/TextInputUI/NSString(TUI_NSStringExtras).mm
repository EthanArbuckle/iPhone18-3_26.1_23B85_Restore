@interface NSString(TUI_NSStringExtras)
+ (id)tui_excessiveLineHeightCharacterSet;
- (double)tui_languageAwareOutsetsForFont:()TUI_NSStringExtras;
- (double)tui_optimizedSizeWithFont:()TUI_NSStringExtras;
- (id)tui_centerTruncatedStringWithAttributes:()TUI_NSStringExtras fittingWidth:;
@end

@implementation NSString(TUI_NSStringExtras)

- (id)tui_centerTruncatedStringWithAttributes:()TUI_NSStringExtras fittingWidth:
{
  v6 = a4;
  if (a2 >= 0.00000011920929 && [self length] >= 3 && (objc_msgSend(self, "sizeWithAttributes:", v6), v7 >= a2))
  {
    v10 = -1;
    v11 = 2;
    for (i = 2; ; ++i)
    {
      v13 = [self length] >> 1;
      v14 = [self stringByReplacingCharactersInRange:v10 + v13 withString:{v11, @"…"}];
      [v14 sizeWithAttributes:v6];
      if (v15 < a2 || i >= v13)
      {
        break;
      }

      v11 += 2;
      --v10;
    }

    selfCopy = v14;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (double)tui_optimizedSizeWithFont:()TUI_NSStringExtras
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![self length])
  {
    v7 = *MEMORY[0x1E695F060];
    goto LABEL_19;
  }

  if (![self _isOnlyIdeographs])
  {
LABEL_18:
    [self _legacy_sizeWithFont:v4];
    v7 = v25;
    goto LABEL_19;
  }

  _graphemeCount = [self _graphemeCount];
  if (_graphemeCount == 1)
  {
    [v4 pointSize];
    v7 = ceil(v6 * 1.05);
    goto LABEL_19;
  }

  v8 = _graphemeCount;
  if (_graphemeCount > 0x14)
  {
    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = *MEMORY[0x1E69DB648];
    v31[0] = v4;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v19 initWithString:self attributes:v20];

    v22 = CTLineCreateWithAttributedString(v21);
    if (v22)
    {
      v23 = v22;
      descent = 0.0;
      ascent = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(v22, &ascent, &descent, 0);
      CFRelease(v23);
      v7 = ceil(TypographicBounds);

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = MEMORY[0x1EEE9AC00](_graphemeCount);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - v13);
  _fastCharacterContents = [self _fastCharacterContents];
  if (!_fastCharacterContents)
  {
    [self getCharacters:v14 range:{0, v8}];
    _fastCharacterContents = v14;
  }

  if (tui_optimizedSizeWithFont__onceToken != -1)
  {
    dispatch_once(&tui_optimizedSizeWithFont__onceToken, &__block_literal_global_2);
  }

  v16 = [tui_optimizedSizeWithFont__cache objectForKey:v4];
  if (!v16)
  {
    v16 = CTFontCreateForCharactersWithLanguage();
    if (v16)
    {
      [tui_optimizedSizeWithFont__cache setObject:v16 forKey:v4];
    }
  }

  CTFontGetGlyphsForCharacters(v16, _fastCharacterContents, v11, v8);
  AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(v16, kCTFontOrientationHorizontal, v11, &v27 - v8, v8);
  v18 = CTFontGetAscent(v16);
  v7 = ceil(AdvancesForGlyphs);
  ceil(v18 + CTFontGetDescent(v16));

LABEL_19:
  return v7;
}

- (double)tui_languageAwareOutsetsForFont:()TUI_NSStringExtras
{
  v4 = a3;
  v8 = *MEMORY[0x1E69DDCE0];
  tui_excessiveLineHeightCharacterSet = [objc_opt_class() tui_excessiveLineHeightCharacterSet];
  v6 = [self rangeOfCharacterFromSet:tui_excessiveLineHeightCharacterSet];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CTFontGetLanguageAwareOutsets();
  }

  return *&v8;
}

+ (id)tui_excessiveLineHeightCharacterSet
{
  if (tui_excessiveLineHeightCharacterSet_onceToken != -1)
  {
    dispatch_once(&tui_excessiveLineHeightCharacterSet_onceToken, &__block_literal_global_7324);
  }

  v1 = tui_excessiveLineHeightCharacterSet___tui_excessiveLineCharacterSet;

  return v1;
}

@end