@interface UIDictationWordsSeeker
+ (BOOL)_isSubstringArray:(id)a3 equalToSubstringArray:(id)a4;
+ (id)_prepareAllWordsWithString:(id)a3 reverse:(BOOL)a4;
- (BOOL)validateWordBoundariesInRange:(_NSRange)a3;
- (UIDictationWordsSeeker)initWithString:(id)a3 substring:(id)a4 reverse:(BOOL)a5;
- (_NSRange)_search;
- (_NSRange)rangeOfSubstring:(id)a3 fullString:(id)a4 reverse:(BOOL)a5;
@end

@implementation UIDictationWordsSeeker

- (UIDictationWordsSeeker)initWithString:(id)a3 substring:(id)a4 reverse:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = UIDictationWordsSeeker;
  v10 = [(UIDictationWordsSeeker *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(UIDictationWordsSeeker *)v10 setReverse:v5];
    v12 = [objc_opt_class() _prepareAllWordsWithString:v8 reverse:v5];
    [(UIDictationWordsSeeker *)v11 setTargetStringWords:v12];

    [(UIDictationWordsSeeker *)v11 setTargetString:v8];
    v13 = [objc_opt_class() _prepareAllWordsWithString:v9 reverse:v5];
    [(UIDictationWordsSeeker *)v11 setTargetSubstringWords:v13];

    [(UIDictationWordsSeeker *)v11 setTargetSubstring:v9];
  }

  return v11;
}

+ (id)_prepareAllWordsWithString:(id)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [v6 length];
  if (v4)
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
  v14 = v7;
  v10 = v7;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{v9, v13}];

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

+ (BOOL)_isSubstringArray:(id)a3 equalToSubstringArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = [v5 count];
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
        v11 = [v5 objectAtIndex:v10];
        v12 = [v11 string];
        v13 = [v6 objectAtIndex:v10];
        v14 = [v13 string];
        v15 = [v12 compare:v14 options:129];
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

- (BOOL)validateWordBoundariesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(UIDictationWordsSeeker *)self targetString];
  v8 = [v7 length];
  v9 = [(UIDictationWordsSeeker *)self reverse];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__UIDictationWordsSeeker_validateWordBoundariesInRange___block_invoke;
  v15[3] = &unk_1E7115968;
  v17 = location;
  v18 = length;
  if (v9)
  {
    v10 = 259;
  }

  else
  {
    v10 = 3;
  }

  v16 = v6;
  v11 = v6;
  [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{v10, v15}];
  v12 = objc_opt_class();
  v13 = [(UIDictationWordsSeeker *)self targetSubstringWords];
  LOBYTE(v12) = [v12 _isSubstringArray:v11 equalToSubstringArray:v13];

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
  v3 = [(UIDictationWordsSeeker *)self targetStringWords];
  v4 = [v3 count];

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
      v6 = [(UIDictationWordsSeeker *)self targetSubstringWords];
      v7 = [v6 count];

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
        v12 = [(UIDictationWordsSeeker *)self targetStringWords];
        v13 = [v12 objectAtIndex:v11];
        v14 = [v13 string];

        v15 = [(UIDictationWordsSeeker *)self targetSubstringWords];
        v16 = [v15 objectAtIndex:v8];
        v17 = [v16 string];

        if ([v14 compare:v17 options:129])
        {
          break;
        }

        if (!v9)
        {
          v18 = [(UIDictationWordsSeeker *)self targetStringWords];
          v9 = [v18 objectAtIndex:v11];
        }

        v19 = [(UIDictationWordsSeeker *)self targetStringWords];
        v20 = [v19 objectAtIndex:v11];

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
    v24 = [v9 range];
    v26 = v25;
    v33.location = [v20 range];
    v33.length = v27;
    v31.location = v24;
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

- (_NSRange)rangeOfSubstring:(id)a3 fullString:(id)a4 reverse:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _prepareAllWordsWithString:v8 reverse:v5];
  [(UIDictationWordsSeeker *)self setTargetStringWords:v10];

  [(UIDictationWordsSeeker *)self setTargetString:v8];
  v11 = [objc_opt_class() _prepareAllWordsWithString:v9 reverse:v5];
  [(UIDictationWordsSeeker *)self setTargetSubstringWords:v11];

  [(UIDictationWordsSeeker *)self setTargetSubstring:v9];

  v12 = [(UIDictationWordsSeeker *)self _search];
  result.length = v13;
  result.location = v12;
  return result;
}

@end