@interface UIDictationWordsSeeker
+ (BOOL)_isSubstringArray:(id)array equalToSubstringArray:(id)substringArray;
+ (id)_prepareAllWordsWithString:(id)string reverse:(BOOL)reverse;
- (BOOL)validateWordBoundariesInRange:(_NSRange)range;
- (UIDictationWordsSeeker)initWithString:(id)string substring:(id)substring reverse:(BOOL)reverse;
- (_NSRange)_search;
- (_NSRange)rangeOfSubstring:(id)substring fullString:(id)string reverse:(BOOL)reverse;
@end

@implementation UIDictationWordsSeeker

- (UIDictationWordsSeeker)initWithString:(id)string substring:(id)substring reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  stringCopy = string;
  substringCopy = substring;
  v15.receiver = self;
  v15.super_class = UIDictationWordsSeeker;
  v10 = [(UIDictationWordsSeeker *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(UIDictationWordsSeeker *)v10 setReverse:reverseCopy];
    v12 = [objc_opt_class() _prepareAllWordsWithString:stringCopy reverse:reverseCopy];
    [(UIDictationWordsSeeker *)v11 setTargetStringWords:v12];

    [(UIDictationWordsSeeker *)v11 setTargetString:stringCopy];
    v13 = [objc_opt_class() _prepareAllWordsWithString:substringCopy reverse:reverseCopy];
    [(UIDictationWordsSeeker *)v11 setTargetSubstringWords:v13];

    [(UIDictationWordsSeeker *)v11 setTargetSubstring:substringCopy];
  }

  return v11;
}

+ (id)_prepareAllWordsWithString:(id)string reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  v5 = MEMORY[0x1E695DF70];
  stringCopy = string;
  array = [v5 array];
  v8 = [stringCopy length];
  if (reverseCopy)
  {
    v9 = 259;
  }

  else
  {
    v9 = 3;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__UIDictationWordsSeeker__prepareAllWordsWithString_reverse___block_invoke;
  v13[3] = &unk_1E7115940;
  v14 = array;
  v10 = array;
  [stringCopy enumerateSubstringsInRange:0 options:v8 usingBlock:{v9, v13}];

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];

  return v11;
}

void __61__UIDictationWordsSeeker__prepareAllWordsWithString_reverse___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v12 = [v16 stringByTrimmingCharactersInSet:v11];
  v13 = [v12 length];

  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = [[UIDictationSubstring alloc] initWithString:v16 range:a3 enclosingRange:a4, a5, a6];
    [v14 insertObject:v15 atIndex:0];
  }
}

+ (BOOL)_isSubstringArray:(id)array equalToSubstringArray:(id)substringArray
{
  arrayCopy = array;
  substringArrayCopy = substringArray;
  v7 = [arrayCopy count];
  if (v7 == [substringArrayCopy count])
  {
    v8 = [arrayCopy count];
    v9 = v8 - 1;
    if (v8 < 1)
    {
      v16 = 1;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = [arrayCopy objectAtIndex:v10];
        string = [v11 string];
        v13 = [substringArrayCopy objectAtIndex:v10];
        string2 = [v13 string];
        v15 = [string compare:string2 options:129];
        v16 = v15 == 0;

        if (v15)
        {
          break;
        }
      }

      while (v9 != v10++);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)validateWordBoundariesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x1E695DF70] array];
  targetString = [(UIDictationWordsSeeker *)self targetString];
  v8 = [targetString length];
  reverse = [(UIDictationWordsSeeker *)self reverse];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__UIDictationWordsSeeker_validateWordBoundariesInRange___block_invoke;
  v15[3] = &unk_1E7115968;
  v17 = location;
  v18 = length;
  if (reverse)
  {
    v10 = 259;
  }

  else
  {
    v10 = 3;
  }

  v16 = array;
  v11 = array;
  [targetString enumerateSubstringsInRange:0 options:v8 usingBlock:{v10, v15}];
  v12 = objc_opt_class();
  targetSubstringWords = [(UIDictationWordsSeeker *)self targetSubstringWords];
  LOBYTE(v12) = [v12 _isSubstringArray:v11 equalToSubstringArray:targetSubstringWords];

  return v12;
}

void __56__UIDictationWordsSeeker_validateWordBoundariesInRange___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v12 = [v16 stringByTrimmingCharactersInSet:v11];
  v13 = [v12 length];

  if (v13)
  {
    v18.location = a3;
    v18.length = a4;
    if (NSIntersectionRange(*(a1 + 40), v18).length)
    {
      v14 = *(a1 + 32);
      v15 = [[UIDictationSubstring alloc] initWithString:v16 range:a3 enclosingRange:a4, a5, a6];
      [v14 insertObject:v15 atIndex:0];
    }
  }
}

- (_NSRange)_search
{
  targetStringWords = [(UIDictationWordsSeeker *)self targetStringWords];
  v4 = [targetStringWords count];

  v5 = v4 - 1;
  if (v4 - 1 < 0)
  {
LABEL_13:
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      targetSubstringWords = [(UIDictationWordsSeeker *)self targetSubstringWords];
      v7 = [targetSubstringWords count];

      v8 = v7 - 1;
      if (v8 < 0)
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = v5;
      while (1)
      {
        targetStringWords2 = [(UIDictationWordsSeeker *)self targetStringWords];
        v13 = [targetStringWords2 objectAtIndex:v11];
        string = [v13 string];

        targetSubstringWords2 = [(UIDictationWordsSeeker *)self targetSubstringWords];
        v16 = [targetSubstringWords2 objectAtIndex:v8];
        string2 = [v16 string];

        if ([string compare:string2 options:129])
        {
          break;
        }

        if (!v9)
        {
          targetStringWords3 = [(UIDictationWordsSeeker *)self targetStringWords];
          v9 = [targetStringWords3 objectAtIndex:v11];
        }

        targetStringWords4 = [(UIDictationWordsSeeker *)self targetStringWords];
        v20 = [targetStringWords4 objectAtIndex:v11];

        v21 = v11-- < 1;
        if (!v21)
        {
          v10 = v20;
          v21 = v8-- <= 0;
          if (!v21)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      v21 = v5-- <= 0;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    v20 = 0;
    v9 = 0;
LABEL_15:
    range = [v9 range];
    v26 = v25;
    v33.location = [v20 range];
    v33.length = v27;
    v31.location = range;
    v31.length = v26;
    v28 = NSUnionRange(v31, v33);
    location = v28.location;
    length = v28.length;
  }

  v29 = location;
  v30 = length;
  result.length = v30;
  result.location = v29;
  return result;
}

- (_NSRange)rangeOfSubstring:(id)substring fullString:(id)string reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  stringCopy = string;
  substringCopy = substring;
  v10 = [objc_opt_class() _prepareAllWordsWithString:stringCopy reverse:reverseCopy];
  [(UIDictationWordsSeeker *)self setTargetStringWords:v10];

  [(UIDictationWordsSeeker *)self setTargetString:stringCopy];
  v11 = [objc_opt_class() _prepareAllWordsWithString:substringCopy reverse:reverseCopy];
  [(UIDictationWordsSeeker *)self setTargetSubstringWords:v11];

  [(UIDictationWordsSeeker *)self setTargetSubstring:substringCopy];

  _search = [(UIDictationWordsSeeker *)self _search];
  result.length = v13;
  result.location = _search;
  return result;
}

@end