@interface UIFont(Bridge)
+ (id)ts_preferredFontForTextStyle:()Bridge;
- (double)ts_boundingBoxForString:()Bridge;
- (uint64_t)ts_tightenedLineSpacingForString:()Bridge minimumLineSpacingMultiple:;
@end

@implementation UIFont(Bridge)

+ (id)ts_preferredFontForTextStyle:()Bridge
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_11;
      }

      v4 = MEMORY[0x1E69DDD68];
    }

    else
    {
      v4 = MEMORY[0x1E69DDD60];
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v4 = MEMORY[0x1E69DDD70];
LABEL_10:
    v3 = [self preferredFontForTextStyle:*v4];
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8] addingSymbolicTraits:64 options:0];
    v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  }

LABEL_11:

  return v3;
}

- (double)ts_boundingBoxForString:()Bridge
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 length];
  v6 = (2 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  [v4 getCharacters:v9 - v6 range:{0, v5, MEMORY[0x1EEE9AC00](v5)}];

  MEMORY[0x1EEE9AC00](v7);
  if (!CTFontGetGlyphsForCharacters(self, (v9 - v6), (v9 - v6), v5))
  {
    return *MEMORY[0x1E695F058];
  }

  *&result = CTFontGetBoundingRectsForGlyphs(self, kCTFontOrientationDefault, (v9 - v6), 0, v5);
  return result;
}

- (uint64_t)ts_tightenedLineSpacingForString:()Bridge minimumLineSpacingMultiple:
{
  [self ts_boundingBoxForString:?];
  [self lineHeight];
  return [self lineHeight];
}

@end