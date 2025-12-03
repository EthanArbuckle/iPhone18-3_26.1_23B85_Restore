@interface NSString(TSWPAdditions)
+ (__CFString)stringForValue:()TSWPAdditions withListNumberFormat:includeFormatting:;
+ (unint64_t)numberForString:()TSWPAdditions withListNumberFormat:;
+ (unint64_t)numberForString:()TSWPAdditions withPageNumberFormat:;
+ (void)stringForValue:()TSWPAdditions withPageNumberFormat:;
- (BOOL)isAllWhitespaceInRange:()TSWPAdditions;
- (CFIndex)rangeOfWordAtCharacterIndex:()TSWPAdditions range:includePreviousWord:;
- (__CFString)replaceOccurrencesOfCharactersInSet:()TSWPAdditions minimumConsecutiveLength:replaceString:;
- (__CFString)stringByNormalizingParagraphBreaks;
- (uint64_t)contentsScript;
- (uint64_t)contentsScriptInRange:()TSWPAdditions;
- (uint64_t)findIndexOfCharacter:()TSWPAdditions range:;
- (uint64_t)rangeOfCharactersFromSet:()TSWPAdditions index:;
- (uint64_t)utf32CharacterAtIndex:()TSWPAdditions;
@end

@implementation NSString(TSWPAdditions)

- (__CFString)stringByNormalizingParagraphBreaks
{
  selfCopy = self;
  v2 = [(__CFString *)self length];
  v32 = selfCopy;
  v35 = 0;
  v36 = v2;
  CharactersPtr = CFStringGetCharactersPtr(selfCopy);
  CStringPtr = 0;
  v33 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(selfCopy, 0x600u);
  }

  v34 = CStringPtr;
  v37 = 0;
  v38 = 0;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 64;
    while (1)
    {
      if (v9 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v9;
      }

      if (v9 >= 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = v9;
      }

      v13 = v36;
      if (v36 <= v9)
      {
        goto LABEL_29;
      }

      if (v33)
      {
        break;
      }

      if (!v34)
      {
        if (v38 <= v9 || v6 > v9)
        {
          v23 = -v11;
          v24 = v11 + v5;
          v25 = v10 - v11;
          v26 = v9 + v23;
          v27 = v26 + 64;
          if (v26 + 64 >= v36)
          {
            v27 = v36;
          }

          v37 = v26;
          v38 = v27;
          if (v36 >= v25)
          {
            v13 = v25;
          }

          v39.location = v26 + v35;
          v39.length = v13 + v24;
          CFStringGetCharacters(v32, v39, buffer);
          v6 = v37;
        }

        v14 = &buffer[-v6];
        goto LABEL_14;
      }

      v15 = v34[v35 + v9];
LABEL_17:
      if (v15 == 8233)
      {
        goto LABEL_24;
      }

      if (v15 == 13)
      {
        v16 = v9 + 1;
        if (v9 + 1 >= v2 || (v17 = v36, v36 <= v16))
        {
LABEL_24:
          v20 = 1;
          if (!v8)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v33)
          {
            v18 = &v33[v35];
            goto LABEL_23;
          }

          if (v34)
          {
            v19 = v34[v35 + 1 + v9];
          }

          else
          {
            if (v38 <= v16 || v6 > v16)
            {
              v28 = v9 - v12 + 64;
              if (v28 >= v36)
              {
                v28 = v36;
              }

              v37 = v9 - v12;
              v38 = v28;
              if (v36 >= v10 - v12)
              {
                v17 = v10 - v12;
              }

              v40.location = v9 - v12 + v35;
              v40.length = v17 + v12 + v5;
              CFStringGetCharacters(v32, v40, buffer);
              v6 = v37;
            }

            v18 = &buffer[-v6];
LABEL_23:
            v19 = v18[v9 + 1];
          }

          if (v19 == 10)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          if (!v8)
          {
LABEL_45:
            v8 = [(__CFString *)selfCopy mutableCopyWithZone:0];
            selfCopy = v8;
            if (!v7)
            {
LABEL_46:
              v30 = 10;
              v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&v30 length:1 freeWhenDone:0];
            }

LABEL_26:
            [(__CFString *)v8 replaceCharactersInRange:v9 withString:v20, v7];
            v2 = [(__CFString *)selfCopy length];
            v32 = selfCopy;
            v35 = 0;
            v36 = v2;
            v21 = CFStringGetCharactersPtr(selfCopy);
            v22 = 0;
            v33 = v21;
            if (!v21)
            {
              v22 = CFStringGetCStringPtr(selfCopy, 0x600u);
            }

            v6 = 0;
            v34 = v22;
            v37 = 0;
            v38 = 0;
            goto LABEL_29;
          }
        }

        if (!v7)
        {
          goto LABEL_46;
        }

        goto LABEL_26;
      }

LABEL_29:
      ++v9;
      --v5;
      ++v10;
      if (v9 >= v2)
      {
        goto LABEL_56;
      }
    }

    v14 = &v33[v35];
LABEL_14:
    v15 = v14[v9];
    goto LABEL_17;
  }

  v7 = 0;
LABEL_56:

  return selfCopy;
}

- (uint64_t)findIndexOfCharacter:()TSWPAdditions range:
{
  v36.length = [(__CFString *)self length];
  v34.location = a4;
  v34.length = a5;
  v36.location = 0;
  v9 = NSIntersectionRange(v34, v36);
  if (v9.length)
  {
    location = v9.location;
    theString = self;
    v31 = v9;
    CharactersPtr = CFStringGetCharactersPtr(self);
    v11 = CharactersPtr ? 0 : CFStringGetCStringPtr(self, 0x600u);
    v32 = 0;
    v33 = 0;
    v30 = v11;
    if (v9.length >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 64;
      do
      {
        if (v14 >= 4)
        {
          v16 = 4;
        }

        else
        {
          v16 = v14;
        }

        length = v31.length;
        if (v31.length <= v14)
        {
          v19 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v18 = &CharactersPtr[v31.location];
          }

          else
          {
            if (v30)
            {
              v19 = v30[v31.location + v14];
              goto LABEL_15;
            }

            if (v33 <= v14 || v13 > v14)
            {
              v21 = -v16;
              v22 = v16 + v12;
              v23 = v15 - v16;
              v24 = v14 + v21;
              v25 = v24 + 64;
              if (v24 + 64 >= v31.length)
              {
                v25 = v31.length;
              }

              v32 = v24;
              v33 = v25;
              if (v31.length >= v23)
              {
                length = v23;
              }

              v35.location = v24 + v31.location;
              v35.length = length + v22;
              CFStringGetCharacters(theString, v35, buffer);
              v13 = v32;
            }

            v18 = &buffer[-v13];
          }

          v19 = v18[v14];
        }

LABEL_15:
        if (a3 == v19)
        {
          return location;
        }

        ++v14;
        ++location;
        --v12;
        ++v15;
      }

      while (v9.length != v14);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)rangeOfCharactersFromSet:()TSWPAdditions index:
{
  v7 = [self length];
  v8 = [self rangeOfCharacterFromSet:a3 options:0 range:{a4, v7 - a4}];
  v10 = v9;
  if (v9)
  {
    v11 = a4 + 1;
    if (a4 + 1 < v7)
    {
      do
      {
        if (![a3 characterIsMember:{objc_msgSend(self, "characterAtIndex:", v11)}])
        {
          break;
        }

        ++v10;
        ++v11;
      }

      while (v7 != v11);
    }
  }

  return v8;
}

- (CFIndex)rangeOfWordAtCharacterIndex:()TSWPAdditions range:includePreviousWord:
{
  v11 = *MEMORY[0x277D6C268];
  v12 = [(__CFString *)self length];
  v13 = a4 + a5;
  if (a3 < a4 || a3 - a4 >= a5)
  {
    if (v12 >= v13)
    {
      if (v13 == a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) rangeOfWordAtCharacterIndex:range:includePreviousWord:]"];
      [currentHandler handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 1067, @"Specified range is out of range of string"}];
      if (v13 == a3)
      {
        return v11;
      }
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) rangeOfWordAtCharacterIndex:range:includePreviousWord:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"];
    v17 = @"Character index out of range";
    v18 = currentHandler2;
    v19 = v26;
    v20 = 1068;
    goto LABEL_14;
  }

  if (v12 < v13)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) rangeOfWordAtCharacterIndex:range:includePreviousWord:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"];
    v17 = @"Specified range is out of range of string";
    v18 = currentHandler3;
    v19 = v15;
    v20 = 1067;
LABEL_14:
    [v18 handleFailureInFunction:v19 file:v16 lineNumber:v20 description:v17];
    return v11;
  }

LABEL_9:
  if (CFStringGetLength(self) <= a3)
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(self, a3);
    LOBYTE(v24) = 0;
    if (CharacterAtIndex && v13 > a3)
    {
      v24 = IsWhitespaceCharacter(CharacterAtIndex) ^ 1;
    }
  }

  if (a6)
  {
    if (a3 > a4)
    {
      v28 = CFStringGetCharacterAtIndex(self, a3 - 1);
      v29 = IsWhitespaceCharacter(v28);
      LOBYTE(v24) = v29 ^ 1 | v24;
      if (!v29)
      {
        --a3;
      }
    }
  }

  if (v24)
  {
    if (a5)
    {
      v36.location = a4;
      v36.length = a5;
      v30 = CFStringTokenizerCreate(0, self, v36, 4uLL, 0);
      if (v30)
      {
        v31 = v30;
        v32 = CFStringTokenizerGoToTokenAtIndex(v30, a3);
        length = 0;
        location = -1;
        if (v32 && (v32 & 0x10) == 0)
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v31);
          length = CurrentTokenRange.length;
          location = CurrentTokenRange.location;
        }

        if (location != -1 && length != 0)
        {
          v11 = location;
        }

        CFRelease(v31);
      }
    }
  }

  return v11;
}

- (BOOL)isAllWhitespaceInRange:()TSWPAdditions
{
  v34.length = [(__CFString *)self length];
  v32.location = a3;
  v32.length = a4;
  v34.location = 0;
  v7 = NSIntersectionRange(v32, v34);
  if (v7.length)
  {
    theString = self;
    v29 = v7;
    CharactersPtr = CFStringGetCharactersPtr(self);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(self, 0x600u);
    }

    v30 = 0;
    v31 = 0;
    v28 = CStringPtr;
    if (v7.length >= 1)
    {
      v10 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 64;
      while (1)
      {
        if (v11 >= 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = v11;
        }

        length = v29.length;
        if (v29.length <= v11)
        {
          v16 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v15 = &CharactersPtr[v29.location];
LABEL_14:
            v16 = v15[v11];
            goto LABEL_16;
          }

          if (!v28)
          {
            v17 = v30;
            if (v31 <= v11 || v30 > v11)
            {
              v19 = -v13;
              v20 = v13 + v10;
              v21 = v12 - v13;
              v22 = v11 + v19;
              v23 = v22 + 64;
              if (v22 + 64 >= v29.length)
              {
                v23 = v29.length;
              }

              v30 = v22;
              v31 = v23;
              if (v29.length >= v21)
              {
                length = v21;
              }

              v33.location = v22 + v29.location;
              v33.length = length + v20;
              CFStringGetCharacters(theString, v33, buffer);
              v17 = v30;
            }

            v15 = &buffer[-v17];
            goto LABEL_14;
          }

          v16 = v28[v29.location + v11];
        }

LABEL_16:
        if (IsWhitespaceCharacter(v16))
        {
          v9 = ++v11 >= v7.length;
          --v10;
          ++v12;
          if (v7.length != v11)
          {
            continue;
          }
        }

        return v9;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

- (__CFString)replaceOccurrencesOfCharactersInSet:()TSWPAdditions minimumConsecutiveLength:replaceString:
{
  if (!a5)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) replaceOccurrencesOfCharactersInSet:minimumConsecutiveLength:replaceString:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 1152, @"invalid nil value for '%s'", "replaceString"}];
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v10 = [(__CFString *)self length];
  theString = self;
  range.location = 0;
  range.length = v10;
  CharactersPtr = CFStringGetCharactersPtr(self);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v59 = 0;
  length = 0;
  v57 = CStringPtr;
  selfCopy = self;
  if (v10 && range.length >= 1)
  {
    if (CharactersPtr)
    {
      v12 = CharactersPtr[range.location];
    }

    else if (CStringPtr)
    {
      v12 = CStringPtr[range.location];
    }

    else
    {
      if (range.length >= 0x40uLL)
      {
        v48.length = 64;
      }

      else
      {
        v48.length = range.length;
      }

      length = v48.length;
      v48.location = range.location;
      CFStringGetCharacters(theString, v48, buffer);
      v12 = buffer[-v59];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = CFCharacterSetIsCharacterMember(a3, v12) != 0;
  v14 = v10 - 2;
  if (v10 < 2 || range.length < 2)
  {
    v15 = 0;
  }

  else if (CharactersPtr)
  {
    v15 = CharactersPtr[range.location + 1];
  }

  else if (v57)
  {
    v15 = v57[range.location + 1];
  }

  else
  {
    if (length < 2 || (v49 = v59, v59 >= 2))
    {
      if (range.length >= 0x40uLL)
      {
        v50.length = 64;
      }

      else
      {
        v50.length = range.length;
      }

      v59 = 0;
      length = v50.length;
      v50.location = range.location;
      CFStringGetCharacters(theString, v50, buffer);
      v49 = v59;
    }

    v15 = buffer[1 - v49];
  }

  IsCharacterMember = CFCharacterSetIsCharacterMember(a3, v15);
  if (v10)
  {
    v17 = 0;
    v18 = IsCharacterMember != 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 2;
    v51 = a4;
    while (1)
    {
      v21 = v20 - 2;
      if (v13)
      {
        if (v21 < v19)
        {
          v19 = v20 - 2;
        }

        ++v17;
        if (!v18)
        {
          if (v17 >= a4)
          {
            v22 = v62;
            if (v62 >= v63)
            {
              v24 = v61;
              v25 = v62 - v61;
              v26 = (v62 - v61) >> 4;
              v27 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v28 = v63 - v61;
              if ((v63 - v61) >> 3 > v27)
              {
                v27 = v28 >> 3;
              }

              v29 = v28 >= 0x7FFFFFFFFFFFFFF0;
              v30 = 0xFFFFFFFFFFFFFFFLL;
              if (!v29)
              {
                v30 = v27;
              }

              if (v30)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(&v61, v30);
              }

              v31 = (v62 - v61) >> 4;
              v32 = (16 * v26);
              *v32 = v19;
              v32[1] = v17;
              v23 = 16 * v26 + 16;
              v33 = &v32[-2 * v31];
              memcpy(v33, v24, v25);
              v34 = v61;
              v61 = v33;
              v62 = v23;
              v63 = 0;
              if (v34)
              {
                operator delete(v34);
              }

              a4 = v51;
            }

            else
            {
              *v62 = v19;
              *(v22 + 1) = v17;
              v23 = (v22 + 16);
            }

            v17 = 0;
            v62 = v23;
          }

          else
          {
            v17 = 0;
          }

          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (v21 < v14)
      {
        break;
      }

      v38 = 0;
LABEL_47:
      ++v20;
      v13 = v18;
      v18 = v38;
      if (!--v10)
      {
        goto LABEL_59;
      }
    }

    if (v20 < 0 || (v35 = range.length, range.length <= v20))
    {
      v37 = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v36 = &CharactersPtr[range.location];
      }

      else
      {
        if (v57)
        {
          v37 = v57[range.location + v20];
          goto LABEL_46;
        }

        if (length <= v20 || (v39 = v59, v59 > v20))
        {
          v40 = v20 - 4;
          if (v20 < 4)
          {
            v40 = 0;
          }

          if ((v40 + 64) < range.length)
          {
            v35 = v40 + 64;
          }

          v59 = v40;
          length = v35;
          v64.length = v35 - v40;
          v64.location = range.location + v40;
          CFStringGetCharacters(theString, v64, buffer);
          v39 = v59;
        }

        v36 = &buffer[-v39];
      }

      v37 = v36[v20];
    }

LABEL_46:
    v38 = CFCharacterSetIsCharacterMember(a3, v37) != 0;
    goto LABEL_47;
  }

LABEL_59:
  if (v62 == v61)
  {
    v45 = selfCopy;
  }

  else
  {
    v41 = [(__CFString *)selfCopy mutableCopy];
    for (i = v62; i != v61; i -= 16)
    {
      v43 = *(i - 2);
      v44 = *(i - 1);
      [v41 replaceCharactersInRange:v43 withString:{v44, a5}];
    }

    v45 = v41;
  }

  v46 = v45;
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return v46;
}

+ (unint64_t)numberForString:()TSWPAdditions withListNumberFormat:
{
  if (![a3 length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [a3 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  v7 = +[NSString(TSWPAdditions) numberForString:withListNumberFormat:]::sformattingCharacterSet;
  if (!+[NSString(TSWPAdditions) numberForString:withListNumberFormat:]::sformattingCharacterSet)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB50]);
    [v7 addCharactersInString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCharacters:length:", +[NSString(TSWPAdditions) numberForString:withListNumberFormat:]::sFormattingChars, 3)}];
    +[NSString(TSWPAdditions) numberForString:withListNumberFormat:]::sformattingCharacterSet = v7;
  }

  if (a4 >= 3)
  {
    v6 = [v6 tsu_stringByRemovingCharactersInSet:v7];
  }

  if ([v6 length] >= 0x65)
  {
    v6 = [v6 substringWithRange:{0, 100}];
  }

  if (a4 <= 0xE)
  {
    if (((1 << a4) & 0x1C0) != 0)
    {
      uppercaseString = [v6 uppercaseString];
      goto LABEL_20;
    }

    if (((1 << a4) & 0xE00) != 0)
    {
      uppercaseString2 = v6;
      goto LABEL_24;
    }

    if (((1 << a4) & 0x7000) != 0)
    {
      uppercaseString2 = [v6 uppercaseString];
LABEL_24:
    }
  }

  if ((a4 - 3) >= 3)
  {
    if (a4 <= 2)
    {
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSWPAdditions) numberForString:withListNumberFormat:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 1288, @"Label format (%d) not recognized.", a4}];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  uppercaseString = v6;
LABEL_20:
}

+ (unint64_t)numberForString:()TSWPAdditions withPageNumberFormat:
{
  if (![a3 length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [a3 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  if ([v6 length] >= 0x65)
  {
    v6 = [v6 substringWithRange:{0, 100}];
  }

  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        uppercaseString = v6;
        goto LABEL_17;
      }

      if (a4 == 4)
      {
        uppercaseString = [v6 uppercaseString];
LABEL_17:
      }

      goto LABEL_23;
    }

    uppercaseString2 = [v6 uppercaseString];
LABEL_13:
  }

  if (a4)
  {
    if (a4 != 1)
    {
LABEL_23:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSWPAdditions) numberForString:withPageNumberFormat:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 1332, @"Number format (%d) not recognized.", a4}];
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    uppercaseString2 = v6;
    goto LABEL_13;
  }
}

+ (__CFString)stringForValue:()TSWPAdditions withListNumberFormat:includeFormatting:
{
  switch(a4)
  {
    case 0:
      v7 = MEMORY[0x277CCACA8];
      goto LABEL_72;
    case 1:
      v9 = MEMORY[0x277CCACA8];
      goto LABEL_87;
    case 2:
      v18 = MEMORY[0x277CCACA8];
      goto LABEL_82;
    case 3:
      v7 = MEMORY[0x277CCACA8];
      goto LABEL_72;
    case 4:
      v9 = MEMORY[0x277CCACA8];
      goto LABEL_87;
    case 5:
      v18 = MEMORY[0x277CCACA8];
      goto LABEL_82;
    case 6:
      v7 = MEMORY[0x277CCACA8];
      goto LABEL_35;
    case 7:
      v9 = MEMORY[0x277CCACA8];
      goto LABEL_37;
    case 8:
      v18 = MEMORY[0x277CCACA8];
      goto LABEL_53;
    case 9:
      v7 = MEMORY[0x277CCACA8];
      v43 = this;
      v44 = 26;
      goto LABEL_71;
    case 10:
      v9 = MEMORY[0x277CCACA8];
      v14 = this;
      v15 = 26;
      goto LABEL_86;
    case 11:
      v18 = MEMORY[0x277CCACA8];
      v36 = this;
      v37 = 26;
      goto LABEL_80;
    case 12:
      v7 = MEMORY[0x277CCACA8];
LABEL_35:
      lowercaseString = [v32 lowercaseString];
      goto LABEL_72;
    case 13:
      v9 = MEMORY[0x277CCACA8];
LABEL_37:
      lowercaseString2 = [v24 lowercaseString];
      goto LABEL_87;
    case 14:
      v18 = MEMORY[0x277CCACA8];
LABEL_53:
      lowercaseString3 = [v39 lowercaseString];
      goto LABEL_82;
    case 15:
      v7 = MEMORY[0x277CCACA8];
      v16 = this;
      v17 = 0;
      goto LABEL_60;
    case 16:
      v9 = MEMORY[0x277CCACA8];
      v10 = this;
      v11 = 0;
      goto LABEL_57;
    case 17:
      v18 = MEMORY[0x277CCACA8];
      v19 = this;
      v20 = 0;
      goto LABEL_75;
    case 18:
      v7 = MEMORY[0x277CCACA8];
      v22 = this;
      v23 = 46;
      goto LABEL_39;
    case 19:
      v9 = MEMORY[0x277CCACA8];
      v26 = this;
      v27 = 46;
      goto LABEL_46;
    case 20:
      v18 = MEMORY[0x277CCACA8];
      v29 = this;
      v30 = 46;
      goto LABEL_77;
    case 21:
      v7 = MEMORY[0x277CCACA8];
      v22 = this;
      v23 = 46;
      goto LABEL_67;
    case 22:
      v9 = MEMORY[0x277CCACA8];
      v26 = this;
      v27 = 46;
      goto LABEL_22;
    case 23:
      v18 = MEMORY[0x277CCACA8];
      v29 = this;
      v30 = 46;
      goto LABEL_27;
    case 24:
      v7 = MEMORY[0x277CCACA8];
      v22 = this;
      v23 = 47;
      goto LABEL_39;
    case 25:
      v9 = MEMORY[0x277CCACA8];
      v26 = this;
      v27 = 47;
      goto LABEL_46;
    case 26:
      v18 = MEMORY[0x277CCACA8];
      v29 = this;
      v30 = 47;
      goto LABEL_77;
    case 27:
      v7 = MEMORY[0x277CCACA8];
      v22 = this;
      v23 = 47;
LABEL_67:
      v38 = 1;
      goto LABEL_68;
    case 28:
      v9 = MEMORY[0x277CCACA8];
      v26 = this;
      v27 = 47;
LABEL_22:
      v31 = 1;
      goto LABEL_47;
    case 29:
      v18 = MEMORY[0x277CCACA8];
      v29 = this;
      v30 = 47;
LABEL_27:
      v34 = 1;
      goto LABEL_78;
    case 30:
      v7 = MEMORY[0x277CCACA8];
      v16 = this;
      v17 = 1;
      goto LABEL_60;
    case 31:
      v9 = MEMORY[0x277CCACA8];
      v10 = this;
      v11 = 1;
      goto LABEL_57;
    case 32:
      v18 = MEMORY[0x277CCACA8];
      v19 = this;
      v20 = 1;
      goto LABEL_75;
    case 33:
      v7 = MEMORY[0x277CCACA8];
      v16 = this;
      v17 = 2;
      goto LABEL_60;
    case 34:
      v9 = MEMORY[0x277CCACA8];
      v10 = this;
      v11 = 2;
      goto LABEL_57;
    case 35:
      v18 = MEMORY[0x277CCACA8];
      v19 = this;
      v20 = 2;
      goto LABEL_75;
    case 36:
      v7 = MEMORY[0x277CCACA8];
      v16 = this;
      v17 = 3;
      goto LABEL_60;
    case 37:
      v9 = MEMORY[0x277CCACA8];
      v10 = this;
      v11 = 3;
      goto LABEL_57;
    case 38:
      v18 = MEMORY[0x277CCACA8];
      v19 = this;
      v20 = 3;
      goto LABEL_75;
    case 39:
      v7 = MEMORY[0x277CCACA8];
      v16 = this;
      v17 = 4;
      goto LABEL_60;
    case 40:
      v9 = MEMORY[0x277CCACA8];
      v10 = this;
      v11 = 4;
      goto LABEL_57;
    case 41:
      v18 = MEMORY[0x277CCACA8];
      v19 = this;
      v20 = 4;
      goto LABEL_75;
    case 42:
      v7 = MEMORY[0x277CCACA8];
      v16 = this;
      v17 = 5;
LABEL_60:
      goto LABEL_72;
    case 43:
      v9 = MEMORY[0x277CCACA8];
      v10 = this;
      v11 = 5;
LABEL_57:
      goto LABEL_87;
    case 44:
      v18 = MEMORY[0x277CCACA8];
      v19 = this;
      v20 = 5;
LABEL_75:
      goto LABEL_82;
    case 45:
      v7 = MEMORY[0x277CCACA8];
      v22 = this;
      v23 = 14;
LABEL_39:
      v38 = 0;
LABEL_68:
      goto LABEL_72;
    case 46:
      v9 = MEMORY[0x277CCACA8];
      v26 = this;
      v27 = 14;
LABEL_46:
      v31 = 0;
LABEL_47:
      goto LABEL_87;
    case 47:
      v18 = MEMORY[0x277CCACA8];
      v29 = this;
      v30 = 14;
LABEL_77:
      v34 = 0;
LABEL_78:
      goto LABEL_82;
    case 48:
      v40 = MEMORY[0x277CCACA8];
      goto LABEL_84;
    case 49:
      v7 = MEMORY[0x277CCACA8];
      goto LABEL_72;
    case 50:
      v9 = MEMORY[0x277CCACA8];
      goto LABEL_87;
    case 51:
      v18 = MEMORY[0x277CCACA8];
      goto LABEL_82;
    case 52:
      v7 = MEMORY[0x277CCACA8];
      v43 = this;
      v44 = 29;
      goto LABEL_71;
    case 53:
      v9 = MEMORY[0x277CCACA8];
      v14 = this;
      v15 = 29;
      goto LABEL_86;
    case 54:
      v18 = MEMORY[0x277CCACA8];
      v36 = this;
      v37 = 29;
      goto LABEL_80;
    case 55:
      v7 = MEMORY[0x277CCACA8];
      goto LABEL_72;
    case 56:
      v9 = MEMORY[0x277CCACA8];
      goto LABEL_87;
    case 57:
      v18 = MEMORY[0x277CCACA8];
      goto LABEL_82;
    case 58:
      v7 = MEMORY[0x277CCACA8];
      v43 = this;
      v44 = 22;
LABEL_71:
LABEL_72:
      v45 = [v7 stringWithFormat:@"%@.", lowercaseString];
      goto LABEL_88;
    case 59:
      v9 = MEMORY[0x277CCACA8];
      v14 = this;
      v15 = 22;
LABEL_86:
LABEL_87:
      v45 = [v9 stringWithFormat:@"(%@)", lowercaseString2];
      goto LABEL_88;
    case 60:
      v18 = MEMORY[0x277CCACA8];
      v36 = this;
      v37 = 22;
LABEL_80:
LABEL_82:
      v45 = [v18 stringWithFormat:@"%@"], lowercaseString3);
      goto LABEL_88;
    case 61:
      v40 = MEMORY[0x277CCACA8];
LABEL_84:
      v45 = [v40 stringWithFormat:@"%@", v41];
      goto LABEL_88;
    case 63:
      goto LABEL_88;
    case 64:
LABEL_88:
      v46 = v45;
      if (a5)
      {
        return v46;
      }

      goto LABEL_91;
    default:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSWPAdditions) stringForValue:withListNumberFormat:includeFormatting:]"];
      [currentHandler handleFailureInFunction:v49 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 1543, @"Label format (%d) invalid for numeric list.", a4}];
      v46 = &stru_287D36338;
      if (a5)
      {
        return v46;
      }

LABEL_91:
      if (+[NSString(TSWPAdditions) stringForValue:withListNumberFormat:includeFormatting:]::s_predicate != -1)
      {
        +[NSString(TSWPAdditions) stringForValue:withListNumberFormat:includeFormatting:];
      }

      v50 = +[NSString(TSWPAdditions) stringForValue:withListNumberFormat:includeFormatting:]::_formattingCharacterSet;

      return [(__CFString *)v46 tsu_stringByRemovingCharactersInSet:v50];
  }
}

- (uint64_t)contentsScript
{
  v2 = [self length];

  return [self contentsScriptInRange:{0, v2}];
}

- (uint64_t)contentsScriptInRange:()TSWPAdditions
{
  if (!a4 || a3 >= [(__CFString *)self length])
  {
    return 0;
  }

  v7 = TSWPScriptForCharacter([(__CFString *)self characterAtIndex:a3]);
  if (v7)
  {
    theString = self;
    v27 = a3 + 1;
    v28 = a4 - 1;
    CharactersPtr = CFStringGetCharactersPtr(self);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(self, 0x600u);
    }

    v10 = 0;
    v11 = 0;
    v29 = 0;
    v30 = 0;
    v12 = 64;
    v26 = CStringPtr;
    while (1)
    {
      if (v11 >= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v11;
      }

      v14 = v28;
      if (v28 <= v11)
      {
        return v7;
      }

      if (CharactersPtr)
      {
        v15 = &CharactersPtr[v27];
      }

      else
      {
        if (v26)
        {
          v16 = v26[v27 + v11];
          goto LABEL_19;
        }

        v17 = v29;
        if (v30 <= v11 || v29 > v11)
        {
          v19 = v11 - v13;
          v20 = v13 + v10;
          v21 = v12 - v13;
          v22 = v19 + 64;
          if (v19 + 64 >= v28)
          {
            v22 = v28;
          }

          v29 = v19;
          v30 = v22;
          if (v28 >= v21)
          {
            v14 = v21;
          }

          v31.location = v27 + v19;
          v31.length = v14 + v20;
          CFStringGetCharacters(theString, v31, buffer);
          v17 = v29;
        }

        v15 = &buffer[-v17];
      }

      v16 = v15[v11];
LABEL_19:
      if (!v16)
      {
        return v7;
      }

      ++v11;
      --v10;
      ++v12;
      if (TSWPScriptForCharacter(v16) != v7)
      {
        return 1;
      }
    }
  }

  return v7;
}

+ (void)stringForValue:()TSWPAdditions withPageNumberFormat:
{
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  else
  {
    if (a4 == 2)
    {
      goto LABEL_12;
    }

    if (a4 != 3)
    {
      if (a4 == 4)
      {
LABEL_12:

        return [v4 lowercaseString];
      }

      return 0;
    }
  }
}

- (uint64_t)utf32CharacterAtIndex:()TSWPAdditions
{
  v5 = [self length];
  if (v5 <= a3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) utf32CharacterAtIndex:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"), 1643, @"index out of bounds"}];
    return 0;
  }

  v6 = v5;
  v7 = [self characterAtIndex:a3];
  if ((v7 & 0xFC00) == 0xDC00)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) utf32CharacterAtIndex:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"];
    v11 = @"index inside surrogate pair";
    v12 = currentHandler2;
    v13 = v9;
    v14 = 1648;
LABEL_4:
    [v12 handleFailureInFunction:v13 file:v10 lineNumber:v14 description:v11];
    return v7;
  }

  if (a3 + 1 < v6 && (v7 & 0xFC00) == 0xD800)
  {
    v18 = [self characterAtIndex:?];
    if ((v18 & 0xFC00) == 0xDC00)
    {
      return (v18 + (v7 << 10) - 56613888);
    }

    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSWPAdditions) utf32CharacterAtIndex:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/NSStringAdditions.mm"];
    v11 = @"invalid surrogate pair";
    v12 = currentHandler3;
    v13 = v20;
    v14 = 1653;
    goto LABEL_4;
  }

  return v7;
}

@end