@interface NSString(SCRCStringExtras)
- (BOOL)containsAttachmentCharSet;
- (id)contentsOfEmbeddedCommand:()SCRCStringExtras;
- (id)scrStringByReplacingCharactersInSet:()SCRCStringExtras withString:;
- (id)scrStringByTrimmingLeadingCharactersInSet:()SCRCStringExtras;
- (id)scrStringByTrimmingTrailingCharactersInSet:()SCRCStringExtras;
- (id)scrStringByTrimmingTrailingNewlines;
- (id)stringByTrimmingEmptySpaceEdges;
- (id)stringByTruncatingToWordAtIndex:()SCRCStringExtras addElipses:;
- (uint64_t)character32AtIndex:()SCRCStringExtras returningNumberOfComposedChars:;
- (uint64_t)enclosingSentenceRangeForRange:()SCRCStringExtras;
- (uint64_t)fourCharCodeValue;
- (uint64_t)hasMultipleWordsWithLocaleName:()SCRCStringExtras ignorePunctuation:;
- (uint64_t)nextWordFromPosition:()SCRCStringExtras;
- (uint64_t)previousWordFromPosition:()SCRCStringExtras;
- (unint64_t)sentenceBreakInDirection:()SCRCStringExtras fromIndex:skipCurrent:;
- (void)enumerateCharacter32sInRange:()SCRCStringExtras block:;
@end

@implementation NSString(SCRCStringExtras)

- (uint64_t)character32AtIndex:()SCRCStringExtras returningNumberOfComposedChars:
{
  v7 = [self characterAtIndex:?];
  v8 = [self rangeOfComposedCharacterSequenceAtIndex:a3];
  v9 = v8;
  v11 = v10;
  v12 = v7 & 0xFC00;
  if (v10 == 2 && v8 == a3 && v12 == 55296 && ([self characterAtIndex:a3 + 1] & 0xFC00) == 0xDC00)
  {
    v13 = [self characterAtIndex:a3 + 1] + (v7 << 10);
LABEL_12:
    v7 = (v13 - 56613888);
    goto LABEL_19;
  }

  if (a3 && v11 == 2)
  {
    if (v9 == a3 - 1 && ([self characterAtIndex:v9] & 0xFC00) == 0xD800 && v12 == 56320)
    {
      v13 = v7 + ([self characterAtIndex:v9] << 10);
      goto LABEL_12;
    }
  }

  else if (v11 != 2)
  {
    goto LABEL_19;
  }

  if (v9 == a3)
  {
    v7 = [self characterAtIndex:a3 + 1] | (v7 << 16);
  }

  else if (a3 && v9 == a3 - 1)
  {
    v7 = v7 | ([self characterAtIndex:v9] << 16);
  }

LABEL_19:
  if (a4)
  {
    *a4 = v11;
  }

  return v7;
}

- (id)stringByTruncatingToWordAtIndex:()SCRCStringExtras addElipses:
{
  if ([self length] <= (a3 + 1))
  {
    selfCopy = self;
  }

  else
  {
    v7 = [self substringToIndex:a3 + 2];
    v8 = [v7 rangeOfString:@" " options:4];
    if (v9)
    {
      v10 = [v7 substringToIndex:v8];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v12 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v12 length])
      {
        v13 = v12;

        v7 = v13;
      }
    }

    if (a4)
    {
      8230 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%C", v7, 8230];
    }

    else
    {
      8230 = v7;
    }

    selfCopy = 8230;
  }

  return selfCopy;
}

- (id)scrStringByReplacingCharactersInSet:()SCRCStringExtras withString:
{
  v6 = a3;
  v7 = a4;
  if ([self rangeOfCharacterFromSet:v6 options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
    if (([v10 isAtEnd] & 1) == 0)
    {
      v11 = 0;
      if (v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = &stru_287632E30;
      }

      while (1)
      {
        v13 = v11;
        v16 = v11;
        v14 = [v10 scanUpToCharactersFromSet:v6 intoString:&v16];
        v11 = v16;

        if (v14)
        {
          [v9 appendString:v11];
        }

        if ([v10 isAtEnd])
        {
          break;
        }

        [v10 scanCharactersFromSet:v6 intoString:0];
        if ([v10 isAtEnd])
        {
          break;
        }

        [v9 appendString:v12];
      }
    }

    selfCopy = [v9 copy];
  }

  return selfCopy;
}

- (id)scrStringByTrimmingTrailingNewlines
{
  v1 = [self mutableCopy];
  v2 = [v1 length];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  if (v2 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [v1 rangeOfCharacterFromSet:newlineCharacterSet options:4];
      v7 = v5 == v2 - 1 && v6 == 1;
      v8 = v7;
      if (v7)
      {
        [v1 replaceCharactersInRange:v5 withString:{v6, &stru_287632E30}];
      }

      v9 = [v1 length];
      if (v9 > 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (v10 != 1)
      {
        break;
      }

      v2 = v9;
    }

    while (v4++ < 0x64);
  }

  v12 = [v1 copy];

  return v12;
}

- (id)stringByTrimmingEmptySpaceEdges
{
  if ([self length])
  {
    v2 = [self mutableCopy];
    CFStringTrimWhitespace(v2);
    selfCopy = [(__CFString *)v2 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)hasMultipleWordsWithLocaleName:()SCRCStringExtras ignorePunctuation:
{
  if ([self length] > 0x18)
  {
    return 1;
  }

  stringByTrimmingEmptySpaceEdges = [self stringByTrimmingEmptySpaceEdges];
  uTF8String = [stringByTrimmingEmptySpaceEdges UTF8String];

  if (!uTF8String)
  {
    return 0;
  }

  v8 = strlen(uTF8String);
  v9 = malloc_type_malloc(2 * v8 + 2, 0x1000040BDFB0063uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  u_uastrcpy(v9, uTF8String);
  u_strlen(v10);
  v11 = 0;
  if (ubrk_open())
  {
    ubrk_first();
    if (ubrk_next() == -1)
    {
      v11 = 0;
    }

    else
    {
      v12 = ubrk_next();
      v13 = v12;
      v14 = 1;
      if (a4 && v12 >= 1)
      {
        punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
        v16 = [punctuationCharacterSet characterIsMember:uTF8String[v13 - 1]];

        v14 = v16 ^ 1;
      }

      if (v13 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = a4;
      }

      v11 = v17 & v14;
    }

    ubrk_close();
  }

  free(v10);
  return v11;
}

- (uint64_t)enclosingSentenceRangeForRange:()SCRCStringExtras
{
  v7 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:1];
  [v7 UTF8String];

  v8 = [self length];
  if (SCRCIsInt32BitSafe(v8))
  {
    [MEMORY[0x277CBEAD8] raise:@"ScreenReaderCore" format:@"64-bit percision error"];
    return 0;
  }

  v10 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
  if (!v10)
  {
    if (SCRCLogMaskError == 1)
    {
      NSLog(&cfstr_MallocFailed.isa);
    }

    return 0;
  }

  v11 = v10;
  [self getCharacters:v10];
  if (ubrk_open())
  {
    v12 = ubrk_first();
    v13 = ubrk_next();
    v14 = a3 + a4;
    if (v14 > v13)
    {
      v15 = v13;
      do
      {
        if (a3 > v15)
        {
          v12 = v13;
        }

        v13 = ubrk_next();
        v15 = v13;
      }

      while (v14 > v13);
    }

    v9 = v12;
    ubrk_close();
  }

  else
  {
    if (SCRCLogMaskError == 1)
    {
      NSLog(&cfstr_NoSentenceBoun.isa);
    }

    v9 = 0;
  }

  free(v11);
  return v9;
}

- (unint64_t)sentenceBreakInDirection:()SCRCStringExtras fromIndex:skipCurrent:
{
  v27 = 0;
  v9 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:4];
  [v9 UTF8String];

  v10 = [self length];
  if (SCRCIsInt32BitSafe(v10))
  {
    [MEMORY[0x277CBEAD8] raise:@"ScreenReaderCore" format:@"64-bit percision error"];
  }

  else if (v10 > a4)
  {
    v26 = v10 - a4;
    v11 = SCRCCopyStringToUniCharArray([self substringFromIndex:a4], &v26);
    if (v11)
    {
      v12 = v11;
      if (ubrk_open() && v27 <= 0)
      {
        if (a3)
        {
          v13 = ubrk_first();
          v14 = ubrk_next();
          if (v14 == -1)
          {
            v18 = 0;
          }

          else
          {
            v15 = v14;
            if (a5)
            {
              v16 = ubrk_next();
              v17 = v15;
              if (v26 < v16)
              {
                v17 = a4;
              }

              if (v16 == -1)
              {
                v18 = v15;
              }

              else
              {
                v18 = v17;
              }
            }

            else
            {
              v18 = v13;
            }
          }
        }

        else
        {
          v20 = ubrk_last();
          v21 = ubrk_previous();
          v22 = v21;
          if (a5)
          {
            v23 = v20 - v21;
            if (v26 != v20 - v21)
            {
              if (v23 < 0)
              {
                v23 = v21 - v20;
              }

              if (v23 <= 3)
              {
                ubrk_previous();
              }

              v24 = ubrk_previous();
              if (v24 == -1)
              {
                v25 = 0;
              }

              else
              {
                v25 = v24;
              }

              v22 = v25;
            }
          }

          v18 = v22;
        }

        ubrk_close();
      }

      else
      {
        if (SCRCLogMaskError == 1)
        {
          NSLog(&cfstr_NoSentenceBoun.isa);
        }

        v18 = a4;
      }

      a4 += v18;
      free(v12);
    }
  }

  return a4;
}

- (uint64_t)fourCharCodeValue
{
  if ([self length] != 4)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  v4 = 24;
  do
  {
    v3 = ([self characterAtIndex:v2++] << v4) + v3;
    v4 -= 8;
  }

  while (v2 != 4);
  return v3;
}

- (id)contentsOfEmbeddedCommand:()SCRCStringExtras
{
  v21 = a3;
  v4 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithFormat:", @"@%@("), v21;
  Length = CFStringGetLength(v4);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = CFStringGetLength(self);
  result.location = 0;
  result.length = 0;
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v25.length = v8 - v9;
      v25.location = v9;
      if (CFStringFindWithOptions(self, v4, v25, 1uLL, &result) != 1)
      {
        break;
      }

      location = result.location;
      if (result.location && (v26.location = result.location - 1, v26.length = 1, v11 = CFStringFindWithOptions(self, @"\\"", v26, 1uLL, 0), location = result.location, v11))
      {
        v9 = result.length + result.location;
      }

      else
      {
        v12 = result.length + location;
        MatchingParen = _findMatchingParen(self, 1, result.length + location, v8);
        if (MatchingParen == -1)
        {
          break;
        }

        v14 = MatchingParen;
        v15 = MatchingParen - v12;
        v27.location = v12;
        v27.length = MatchingParen - v12;
        v16 = CFStringCreateWithSubstring(0, self, v27);
        if (v16)
        {
          v17 = v16;
          [v5 addObject:v16];
          v18 = [MEMORY[0x277CBEA90] dataWithRange:{v12 - Length, Length + 1 + v15}];
          [v6 addObject:v18];

          v9 = v14 + 1;
          CFRelease(v17);
        }
      }
    }

    while (v9 < v8);
  }

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v5, @"commands", v6, @"ranges", 0}];

  return v19;
}

- (BOOL)containsAttachmentCharSet
{
  if (!containsAttachmentCharSet_ReservedCharSet)
  {
    v2 = [MEMORY[0x277CCA900] characterSetWithRange:{65532, 2}];
    v3 = containsAttachmentCharSet_ReservedCharSet;
    containsAttachmentCharSet_ReservedCharSet = v2;
  }

  [self rangeOfCharacterFromSet:?];
  return v4 != 0;
}

- (uint64_t)nextWordFromPosition:()SCRCStringExtras
{
  v5 = [self length];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
  {
    if (v5 - 1 != a3)
    {
      wordBreakCharacterSet = [MEMORY[0x277CCA900] wordBreakCharacterSet];
      while ([wordBreakCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", a3)}])
      {
        if (v5 == ++a3)
        {
          a3 = v5;
          goto LABEL_11;
        }
      }

      v8 = a3;
      if (a3 < v5)
      {
        do
        {
          if ([wordBreakCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", v8)}])
          {
            break;
          }

          ++v8;
        }

        while (v5 != v8);
      }

LABEL_11:
    }

    return a3;
  }

  return result;
}

- (uint64_t)previousWordFromPosition:()SCRCStringExtras
{
  v5 = [self length];
  if (a3 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 <= a3)
  {
    a3 = v5 - 1;
LABEL_7:
    wordBreakCharacterSet = [MEMORY[0x277CCA900] wordBreakCharacterSet];
    if (a3 < 1)
    {
      v9 = a3;
      if (a3 < 0)
      {
LABEL_19:
        v6 = v9 + 1;

        return v6;
      }

LABEL_13:
      a3 = 0;
    }

    else
    {
      while ([wordBreakCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", a3)}])
      {
        v8 = a3-- <= 1;
        if (v8)
        {
          goto LABEL_13;
        }
      }
    }

    v9 = a3;
    while (([wordBreakCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", v9)}] & 1) == 0)
    {
      v8 = v9-- <= 0;
      if (v8)
      {
        v9 = -1;
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  return 0;
}

- (id)scrStringByTrimmingLeadingCharactersInSet:()SCRCStringExtras
{
  v4 = a3;
  for (i = 0; i < [self length]; ++i)
  {
    if (![v4 longCharacterIsMember:{objc_msgSend(self, "character32AtIndex:returningNumberOfComposedChars:", i, 0)}])
    {
      break;
    }
  }

  v6 = [self substringFromIndex:i];

  return v6;
}

- (id)scrStringByTrimmingTrailingCharactersInSet:()SCRCStringExtras
{
  v4 = a3;
  v5 = [self length];
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (([v4 longCharacterIsMember:{objc_msgSend(self, "character32AtIndex:returningNumberOfComposedChars:", v6 - 1, 0)}] & 1) != 0);
  v7 = [self substringToIndex:v6];

  return v7;
}

- (void)enumerateCharacter32sInRange:()SCRCStringExtras block:
{
  v8 = a5;
  if (a3 >= [self length] || (v9 = a3 + a4, a3 + a4 > objc_msgSend(self, "length")))
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = MEMORY[0x277CCACA8];
    v19.location = a3;
    v19.length = a4;
    v13 = NSStringFromRange(v19);
    v14 = [v12 stringWithFormat:@"The range, %@, extends beyond the bounds of the receiver: %lu", v13, objc_msgSend(self, "length")];
    v15 = [v11 exceptionWithName:@"SCRCInvalidRangeException" reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  for (i = 0; a3 < v9; a3 += v17)
  {
    v17 = 1;
    v10 = [self character32AtIndex:a3 returningNumberOfComposedChars:&v17];
    v8[2](v8, v10, a3, v17, &i);
    if (i)
    {
      break;
    }
  }
}

@end