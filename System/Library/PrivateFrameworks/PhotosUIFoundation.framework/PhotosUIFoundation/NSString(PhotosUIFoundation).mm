@interface NSString(PhotosUIFoundation)
+ (id)_excessiveLineHeightCharacterSet;
- (BOOL)px_hasExcessiveLineHeightCharacters;
- (id)px_integerValues;
- (id)px_stringByAppendingDescriptionDetails:()PhotosUIFoundation;
- (id)px_stringByAppendingDescriptionDetailsWithFormat:()PhotosUIFoundation;
- (id)px_stringByApplyingCapitalization:()PhotosUIFoundation;
- (id)px_stringByDeletingCharactersInSet:()PhotosUIFoundation;
- (id)px_stringByIndentingNewLines;
- (id)px_stringByRepeating:()PhotosUIFoundation;
- (id)px_stringByTruncatingToLength:()PhotosUIFoundation addEllipsis:;
- (uint64_t)px_endsWithFullStopOrEquivalentPunctuationMark;
- (uint64_t)px_firstLetterRange;
- (uint64_t)px_platformAgnosticHash;
@end

@implementation NSString(PhotosUIFoundation)

- (uint64_t)px_firstLetterRange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3010000000;
  v9 = "";
  v10 = xmmword_1B4074ED0;
  v2 = [self length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__NSString_PhotosUIFoundation__px_firstLetterRange__block_invoke;
  v5[3] = &unk_1E7BB6220;
  v5[4] = self;
  v5[5] = &v6;
  [self enumerateSubstringsInRange:0 options:v2 usingBlock:{1027, v5}];
  v3 = v7[4];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)px_hasExcessiveLineHeightCharacters
{
  _excessiveLineHeightCharacterSet = [MEMORY[0x1E696AEC0] _excessiveLineHeightCharacterSet];
  v3 = [self rangeOfCharacterFromSet:_excessiveLineHeightCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (id)px_stringByAppendingDescriptionDetails:()PhotosUIFoundation
{
  v4 = a3;
  v5 = [self mutableCopy];
  v6 = [self rangeOfString:@">" options:12];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v5 length];
  }

  [v5 insertString:v4 atIndex:v6];

  return v5;
}

- (id)px_stringByAppendingDescriptionDetailsWithFormat:()PhotosUIFoundation
{
  v10 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, &a9);
  v11 = [self px_stringByAppendingDescriptionDetails:v10];

  return v11;
}

- (uint64_t)px_endsWithFullStopOrEquivalentPunctuationMark
{
  if (px_endsWithFullStopOrEquivalentPunctuationMark_onceToken != -1)
  {
    dispatch_once(&px_endsWithFullStopOrEquivalentPunctuationMark_onceToken, &__block_literal_global_41);
  }

  result = [self length];
  if (result)
  {
    v3 = px_endsWithFullStopOrEquivalentPunctuationMark_fullStopPunctuationCharacterSet;
    v4 = [self characterAtIndex:{objc_msgSend(self, "length") - 1}];

    return [v3 characterIsMember:v4];
  }

  return result;
}

- (id)px_integerValues
{
  v1 = [self componentsSeparatedByString:{@", "}];
  v2 = PXMap(v1, &__block_literal_global_6881);

  return v2;
}

- (id)px_stringByIndentingNewLines
{
  v2 = [self mutableCopy];
  [v2 replaceOccurrencesOfString:@"\n" withString:@"\n\t" options:2 range:{0, objc_msgSend(self, "length")}];

  return v2;
}

- (uint64_t)px_platformAgnosticHash
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [self length];
  v3 = v2;
  v4 = v9;
  if (v2 >= 97)
  {
    [self getCharacters:v9 range:{0, 32}];
    [self getCharacters:&v10 range:{(v2 >> 1) - 16, 32}];
    [self getCharacters:&v11 range:{v2 - 32, 32}];
    v5 = &v12;
    v6 = &v12;
LABEL_5:
    v4 = v9;
    do
    {
      v3 = 67503105 * v3 + 16974593 * *v4 + 66049 * v4[1] + 257 * v4[2] + v4[3];
      v4 += 4;
    }

    while (v4 < v6);
    goto LABEL_9;
  }

  [self getCharacters:v9 range:{0, v2}];
  v5 = &v9[v2];
  if ((v2 & 0xFFFFFFFFFFFFFFFCLL) >= 1)
  {
    v6 = &v9[v2 & 0xFFFFFFFFFFFFFFFCLL];
    goto LABEL_5;
  }

LABEL_9:
  while (v4 < v5)
  {
    v7 = *v4++;
    v3 = 257 * v3 + v7;
  }

  return (v3 << (v2 & 0x1F)) + v3;
}

- (id)px_stringByRepeating:()PhotosUIFoundation
{
  string = [MEMORY[0x1E696AD60] string];
  if (a3 >= 1)
  {
    do
    {
      [string appendString:self];
      --a3;
    }

    while (a3);
  }

  return string;
}

- (id)px_stringByDeletingCharactersInSet:()PhotosUIFoundation
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSString+PhotosUIFoundation.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"characterSet"}];
  }

  v6 = [self mutableCopy];
  v7 = [v6 rangeOfCharacterFromSet:v5];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v7; i != 0x7FFFFFFFFFFFFFFFLL; i = [v6 rangeOfCharacterFromSet:v5])
    {
      [v6 deleteCharactersInRange:{i, v8}];
    }
  }

  v10 = [v6 copy];

  return v10;
}

- (id)px_stringByApplyingCapitalization:()PhotosUIFoundation
{
  selfCopy = self;
  v5 = selfCopy;
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      localizedCapitalizedString = [selfCopy localizedCapitalizedString];
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_8;
      }

      localizedCapitalizedString = [selfCopy localizedUppercaseString];
    }

    v7 = localizedCapitalizedString;
    goto LABEL_7;
  }

  px_firstLetterRange = [selfCopy px_firstLetterRange];
  if (px_firstLetterRange != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = px_firstLetterRange;
    v12 = v10;
    v7 = [v5 mutableCopy];
    v13 = [v7 substringWithRange:{v11, v12}];
    localizedCapitalizedString2 = [v13 localizedCapitalizedString];
    [v7 replaceCharactersInRange:v11 withString:{v12, localizedCapitalizedString2}];

LABEL_7:
    v5 = v7;
  }

LABEL_8:

  return v5;
}

- (id)px_stringByTruncatingToLength:()PhotosUIFoundation addEllipsis:
{
  selfCopy = self;
  if ([selfCopy length] > a3)
  {
    v7 = [selfCopy substringToIndex:a3];
    v8 = [v7 mutableCopy];

    if (a4)
    {
      [v8 replaceCharactersInRange:a3 - 1 withString:{1, @"…"}];
    }

    v9 = [v8 copy];

    selfCopy = v9;
  }

  return selfCopy;
}

+ (id)_excessiveLineHeightCharacterSet
{
  if (_excessiveLineHeightCharacterSet_onceToken != -1)
  {
    dispatch_once(&_excessiveLineHeightCharacterSet_onceToken, &__block_literal_global_49);
  }

  v1 = _excessiveLineHeightCharacterSet_excessiveLineHeightCharacterSet;

  return v1;
}

@end