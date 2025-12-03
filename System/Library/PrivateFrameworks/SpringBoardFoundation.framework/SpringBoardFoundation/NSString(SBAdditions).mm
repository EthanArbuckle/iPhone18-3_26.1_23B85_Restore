@interface NSString(SBAdditions)
+ (id)sb_emojiWithoutVS16Set;
- (BOOL)sb_containsEmoji;
- (id)_adjustedFontForScripts:()SBAdditions forFont:withPointAdjustment:ignoringContent:;
- (uint64_t)_isEntirelyCharactersInScript:()SBAdditions;
- (uint64_t)_isEntirelyCommon;
- (uint64_t)_isInScript:()SBAdditions useLocaleOnly:;
- (uint64_t)sb_isEntirelyCharactersInSet:()SBAdditions;
@end

@implementation NSString(SBAdditions)

- (BOOL)sb_containsEmoji
{
  sb_emojiWithoutVS16Set = [MEMORY[0x1E696AEC0] sb_emojiWithoutVS16Set];
  v3 = [self rangeOfCharacterFromSet:sb_emojiWithoutVS16Set];

  return v3 != 0x7FFFFFFFFFFFFFFFLL || CEMStringContainsEmoji() != 0;
}

+ (id)sb_emojiWithoutVS16Set
{
  if (sb_emojiWithoutVS16Set_onceToken != -1)
  {
    +[NSString(SBAdditions) sb_emojiWithoutVS16Set];
  }

  v1 = sb_emojiWithoutVS16Set___emojiWithoutVS16Set;

  return v1;
}

- (uint64_t)sb_isEntirelyCharactersInSet:()SBAdditions
{
  result = [self length];
  if (result)
  {
    v6 = result;
    v7 = malloc_type_malloc(2 * result, 0x1000040BDFB0063uLL);
    [self getCharacters:v7 range:{0, v6}];
    v8 = MEMORY[0x1BFB4DC90](a3, v7, v6, 1);
    free(v7);
    return v6 == v8;
  }

  return result;
}

- (uint64_t)_isEntirelyCharactersInScript:()SBAdditions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NSString_SBAdditions___isEntirelyCharactersInScript___block_invoke;
  block[3] = &unk_1E807FDF0;
  block[5] = a3;
  block[6] = a2;
  block[4] = self;
  if (_isEntirelyCharactersInScript__onceToken != -1)
  {
    dispatch_once(&_isEntirelyCharactersInScript__onceToken, block);
  }

  result = [self sb_isEntirelyCharactersInSet:_isEntirelyCharactersInScript____set];
  if (result)
  {
    return [self _isEntirelyCommon] ^ 1;
  }

  return result;
}

- (uint64_t)_isEntirelyCommon
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __42__NSString_SBAdditions___isEntirelyCommon__block_invoke;
  v7 = &unk_1E807FAC8;
  selfCopy = self;
  v9 = a2;
  if (_isEntirelyCommon_onceToken != -1)
  {
    dispatch_once(&_isEntirelyCommon_onceToken, &v4);
  }

  return [self sb_isEntirelyCharactersInSet:{_isEntirelyCommon___charSet, v4, v5, v6, v7, selfCopy, v9}];
}

- (uint64_t)_isInScript:()SBAdditions useLocaleOnly:
{
  if (a4)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v7 = localeIdentifier;
    if ((a3 - 1) >= 8)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E807FE50[a3 - 1];
    }

    v10 = [localeIdentifier hasPrefix:v8];

    return v10;
  }

  else
  {

    return [self _isEntirelyCharactersInScript:?];
  }
}

- (id)_adjustedFontForScripts:()SBAdditions forFont:withPointAdjustment:ignoringContent:
{
  v10 = a5;
  v11 = [self _isInScript:1 useLocaleOnly:a6];
  v12 = [self _isInScript:2 useLocaleOnly:a6];
  v13 = [self _isInScript:4 useLocaleOnly:a6];
  v14 = [self _isInScript:8 useLocaleOnly:a6];
  if ((a4 & 3) != 0 && ((((a4 & 2) != 0) & v12) != 0 || (a4 & v11 & 1) != 0 || (((a4 & 4) != 0) & v13) != 0 || (((a4 & 8) != 0) & v14) != 0))
  {
    v16 = 2.0;
    if (v12)
    {
      v16 = 1.0;
    }

    if (a2 >= 0.0)
    {
      v16 = a2;
    }

    v17 = 0.0;
    if (((v13 | v14) & 1) == 0)
    {
      v17 = a2;
    }

    if ((a2 >= 0.0) | (v12 | v11) & 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    [v10 pointSize];
    v15 = [v10 fontWithSize:v18 + v19];
  }

  else
  {
    v15 = v10;
  }

  v20 = v15;

  return v20;
}

@end