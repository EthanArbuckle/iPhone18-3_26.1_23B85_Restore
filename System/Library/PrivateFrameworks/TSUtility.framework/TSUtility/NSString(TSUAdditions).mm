@interface NSString(TSUAdditions)
+ (__CFString)tsu_stringWithUUID;
+ (id)tsu_stringByIndentingString:()TSUAdditions times:;
+ (id)tsu_stringWithFormat:()TSUAdditions arguments:;
+ (uint64_t)tsu_listSeparator;
+ (void)tsu_stringByBase64EncodingBytes:()TSUAdditions length:breakLines:;
- (BOOL)tsu_isChildOfPath:()TSUAdditions;
- (__CFString)tsu_stringByFixingBrokenSurrogatePairs;
- (__CFString)tsu_stringWithPathRelativeTo:()TSUAdditions;
- (char)tsu_stringWithRealpath;
- (id)tsu_escapeForIcuRegex;
- (id)tsu_escapeXML;
- (id)tsu_stringByExpandingTableFormatting;
- (id)tsu_stringByMakingFirstCharacterUppercase;
- (id)tsu_stringQuotedIfContainsCharacterSet:()TSUAdditions;
- (id)tsu_unescapeXML;
- (uint64_t)tsu_encodeStringBase64;
- (uint64_t)tsu_isDescendantOfPath:()TSUAdditions;
- (uint64_t)tsu_md5Hash;
- (uint64_t)tsu_stringByAddingCSVEscapes;
- (uint64_t)tsu_stringByAppendingSeparator:()TSUAdditions format:;
- (uint64_t)tsu_stringByReplacingInstancesOfCharactersInSet:()TSUAdditions withString:;
- (uint64_t)tsu_stringWithPathRelativeTo:()TSUAdditions allowBacktracking:;
- (uint64_t)tsu_substringWithComposedCharacterSequencesToFileSystemLength:()TSUAdditions;
- (uint64_t)tsu_substringWithComposedCharacterSequencesToIndex:()TSUAdditions;
- (uint64_t)tsu_tolerantStringByAppendingPathExtension:()TSUAdditions;
- (void)tsu_stringByRemovingCharactersInSet:()TSUAdditions options:;
- (void)tsu_stringByReplacingCharactersInSet:()TSUAdditions withCharacter:;
- (void)tsu_stringByUniquingPathInsideDirectory:()TSUAdditions withFormat:;
@end

@implementation NSString(TSUAdditions)

+ (__CFString)tsu_stringWithUUID
{
  v0 = CFUUIDCreate(0);
  if (v0)
  {
    v1 = v0;
    v2 = CFUUIDCreateString(0, v0);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)tsu_stringWithFormat:()TSUAdditions arguments:
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a3 arguments:a4];

  return v4;
}

+ (id)tsu_stringByIndentingString:()TSUAdditions times:
{
  v5 = a3;
  v6 = [a3 length];
  if (a4 && v6)
  {
    do
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];
      if ([v7 hasSuffix:@"\n  "])
      {
        v7 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];
      }

      result = [@"  " stringByAppendingString:v7];
      v5 = result;
      --a4;
    }

    while (a4);
  }

  else
  {
    v9 = v5;

    return v9;
  }

  return result;
}

- (id)tsu_stringByExpandingTableFormatting
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v3 = [self componentsSeparatedByString:@"$"];
  array = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v60;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v59 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        [array addObject:v10];
        if (v7 <= [v10 count])
        {
          v7 = [v10 count];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([objc_msgSend(array "lastObject")] == 1 && !objc_msgSend(objc_msgSend(objc_msgSend(array, "lastObject"), "objectAtIndex:", 0), "length"))
  {
    [array removeLastObject];
  }

  if (v7)
  {
    v46 = v2;
    v11 = malloc_type_calloc(8uLL, v7, 0x80F0E073uLL);
    v12 = malloc_type_calloc(8uLL, [array count], 0x4A921DD7uLL);
    v49 = array;
    v54 = v12;
    if ([array count])
    {
      v13 = 0;
      v14 = 0;
      v50 = v7;
      do
      {
        v47 = v14;
        v52 = [array objectAtIndex:{v13, v46}];
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = [v52 count];
          v18 = &stru_287DDF830;
          if (v17 > v15)
          {
            v18 = [v52 objectAtIndex:v15];
          }

          v19 = [(__CFString *)v18 componentsSeparatedByString:@"\n"];
          v20 = v12[v13];
          if (v20 <= [v19 count])
          {
            v21 = [v19 count];
          }

          else
          {
            v21 = v12[v13];
          }

          v12[v13] = v21;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v22 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v56;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v56 != v24)
                {
                  objc_enumerationMutation(v19);
                }

                v26 = *(*(&v55 + 1) + 8 * j);
                v27 = v11[v15];
                if (v27 <= [v26 length])
                {
                  v28 = [v26 length];
                }

                else
                {
                  v28 = v11[v15];
                }

                v11[v15] = v28;
              }

              v23 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
            }

            while (v23);
          }

          v15 = ++v16;
          v12 = v54;
        }

        while (v50 > v16);
        v13 = (v47 + 1);
        array = v49;
        v29 = [v49 count];
        v14 = v47 + 1;
      }

      while (v29 > v13);
    }

    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([array count])
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v48 = v31;
        v32 = [array objectAtIndex:{v30, v46}];
        if (v12[v30])
        {
          v33 = v32;
          v34 = 0;
          v35 = 0;
          v51 = v30;
          do
          {
            v53 = v35;
            if ([v33 count])
            {
              v36 = 0;
              v37 = 1;
              do
              {
                v38 = [v33 count];
                v39 = &stru_287DDF830;
                if (v38 > v36)
                {
                  v39 = [v33 objectAtIndex:v36];
                }

                v40 = [(__CFString *)v39 componentsSeparatedByString:@"\n"];
                v41 = [v40 count];
                v42 = &stru_287DDF830;
                if (v41 > v34)
                {
                  v42 = [v40 objectAtIndex:v34];
                }

                [v7 appendString:{-[__CFString stringByPaddingToLength:withString:startingAtIndex:](v42, "stringByPaddingToLength:withString:startingAtIndex:", v11[v36] + 1, @" ", 0)}];
                v36 = v37;
              }

              while ([v33 count] > v37++);
            }

            [v7 appendString:@"\n"];
            v34 = (v53 + 1);
            v12 = v54;
            v35 = v53 + 1;
          }

          while (v54[v51] > v34);
        }

        v30 = (v48 + 1);
        array = v49;
        v44 = [v49 count];
        v31 = v48 + 1;
      }

      while (v44 > v30);
    }

    free(v12);
    free(v11);
    v2 = v46;
  }

  [v2 drain];
  return v7;
}

- (id)tsu_stringQuotedIfContainsCharacterSet:()TSUAdditions
{
  selfCopy = self;
  if ([self rangeOfCharacterFromSet:?] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [selfCopy mutableCopy];
    [v2 replaceOccurrencesOfString:@" withString:@" options:0 range:{0, objc_msgSend(selfCopy, "length")}];
    [v2 appendString:@""];
    [v2 insertString:@"" atIndex:0];
    return v2;
  }

  return selfCopy;
}

+ (uint64_t)tsu_listSeparator
{
  result = tsu_listSeparator_listSeparator;
  if (!tsu_listSeparator_listSeparator)
  {
    v1 = CFLocaleCopyCurrent();
    Value = CFLocaleGetValue(v1, *MEMORY[0x277CBEEB8]);
    v3 = @";";
    if (([Value isEqualToString:{@", "}] & 1) == 0 && !objc_msgSend(Value, "isEqualToString:", @"٫"))
    {
      v3 = @",";
    }

    tsu_listSeparator_listSeparator = v3;
    CFRelease(v1);
    return tsu_listSeparator_listSeparator;
  }

  return result;
}

- (uint64_t)tsu_stringByAppendingSeparator:()TSUAdditions format:
{
  v11 = [MEMORY[0x277CCACA8] tsu_stringWithFormat:a4 arguments:&a9];
  if ([self length])
  {
    return [self stringByAppendingFormat:@"%@%@", a3, v11];
  }

  return v11;
}

- (uint64_t)tsu_stringByAddingCSVEscapes
{
  if (!tsu_stringByAddingCSVEscapes_characterSet)
  {
    v2 = [objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")];
    [v2 formIntersectionWithCharacterSet:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet"), "invertedSet")}];
    [v2 addCharactersInString:@""];
    tsu_listSeparator = [objc_opt_class() tsu_listSeparator];
    if ([tsu_listSeparator length] != 1)
    {
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByAddingCSVEscapes]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSString_TSUAdditions.m"), 225, @"The list separator is not a 1-char string"}];
    }

    [v2 addCharactersInString:tsu_listSeparator];
    tsu_stringByAddingCSVEscapes_characterSet = [v2 copy];
  }

  return [self tsu_stringQuotedIfContainsCharacterSet:?];
}

- (void)tsu_stringByUniquingPathInsideDirectory:()TSUAdditions withFormat:
{
  if (!a3)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByUniquingPathInsideDirectory:withFormat:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSString_TSUAdditions.m"), 240, @"invalid nil value for '%s'", "directoryPath"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:{objc_msgSend(a3, "stringByAppendingPathComponent:", self)}])
  {
    v10 = objc_opt_new();
    pathExtension = [self pathExtension];
    if (pathExtension)
    {
      v12 = pathExtension;
      if ([(__CFString *)pathExtension length])
      {
        v12 = [@"." stringByAppendingString:v12];
      }
    }

    else
    {
      v12 = &stru_287DDF830;
    }

    stringByDeletingPathExtension = [self stringByDeletingPathExtension];
    v14 = 2;
    do
    {
      v15 = (v14 + 1);
      self = [MEMORY[0x277CCACA8] stringWithFormat:a4, stringByDeletingPathExtension, v14, v12];
      v16 = [defaultManager fileExistsAtPath:{objc_msgSend(a3, "stringByAppendingPathComponent:", self)}];
      v14 = v15;
    }

    while ((v16 & 1) != 0);
    selfCopy = self;
    [v10 drain];
    selfCopy2 = self;
  }

  return self;
}

- (__CFString)tsu_stringByFixingBrokenSurrogatePairs
{
  selfCopy = self;
  v2 = [(__CFString *)self length];
  theString = selfCopy;
  v30 = 0;
  v31 = v2;
  CharactersPtr = CFStringGetCharactersPtr(selfCopy);
  CStringPtr = 0;
  v28 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(selfCopy, 0x600u);
  }

  v32 = 0;
  v33 = 0;
  v29 = CStringPtr;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    do
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = v31;
        if (v31 > v7)
        {
          if (v28)
          {
            v9 = v28[v30 + v7];
          }

          else if (v29)
          {
            v9 = v29[v30 + v7];
          }

          else
          {
            if (v33 <= v7 || v5 > v7)
            {
              v10 = v7 - 4;
              if (v7 < 4)
              {
                v10 = 0;
              }

              if (v10 + 64 < v31)
              {
                v8 = v10 + 64;
              }

              v32 = v10;
              v33 = v8;
              v34.length = v8 - v10;
              v34.location = v30 + v10;
              CFStringGetCharacters(theString, v34, &v19);
              v5 = v32;
            }

            v9 = *(&v19 + v7 - v5);
          }

          v11 = v9 & 0xFC00;
          if (v11 == 56320)
          {
LABEL_37:
            if (!v6)
            {
              v6 = [(__CFString *)selfCopy mutableCopyWithZone:0, v19, v20, v21, v22, v23, v24, v25, v26];
              selfCopy = v6;
            }

            [(__CFString *)v6 replaceCharactersInRange:v7 withString:1, @"\uFFFD", v19, v20, v21, v22, v23, v24, v25, v26];
            v2 = [(__CFString *)selfCopy length];
            theString = selfCopy;
            v30 = 0;
            v31 = v2;
            v16 = CFStringGetCharactersPtr(selfCopy);
            v17 = 0;
            v28 = v16;
            if (!v16)
            {
              v17 = CFStringGetCStringPtr(selfCopy, 0x600u);
            }

            v5 = 0;
            v29 = v17;
            v32 = 0;
            v33 = 0;
            goto LABEL_42;
          }

          if (v11 == 55296)
          {
            v12 = v7 + 1;
            if (v7 + 1 >= v2)
            {
              goto LABEL_37;
            }

            v13 = v31;
            if (v31 <= v12)
            {
              goto LABEL_37;
            }

            if (v28)
            {
              v14 = v28[v30 + v12];
            }

            else if (v29)
            {
              v14 = v29[v30 + v12];
            }

            else
            {
              if (v33 <= v12 || v5 > v12)
              {
                v15 = v7 - 3;
                if (v7 < 3)
                {
                  v15 = 0;
                }

                if (v15 + 64 < v31)
                {
                  v13 = v15 + 64;
                }

                v32 = v15;
                v33 = v13;
                v35.length = v13 - v15;
                v35.location = v30 + v15;
                CFStringGetCharacters(theString, v35, &v19);
                v5 = v32;
              }

              v14 = *(&v19 + v12 - v5);
            }

            if (v14 >> 10 != 55)
            {
              goto LABEL_37;
            }

            ++v7;
          }
        }
      }

LABEL_42:
      ++v7;
    }

    while (v7 < v2);
  }

  return selfCopy;
}

- (uint64_t)tsu_md5Hash
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [self dataUsingEncoding:2483028224];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  v2 = [v1 length];
  bytes = [v1 bytes];
  if (v2)
  {
    v4 = bytes;
    do
    {
      if (v2 >= 0xFFFFFFFF)
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = v2;
      }

      CC_MD5_Update(&c, v4, v5);
      v4 += v5;
      v2 -= v5;
    }

    while (v2);
  }

  CC_MD5_Final(md, &c);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], md[8], md[9], md[10], md[11], md[12], md[13], md[14], md[15]];
}

- (void)tsu_stringByRemovingCharactersInSet:()TSUAdditions options:
{
  selfCopy = self;
  if (a3)
  {
    if ([self rangeOfCharacterFromSet:?] != 0x7FFFFFFFFFFFFFFFLL)
    {
      string = [MEMORY[0x277CCAB68] string];
      v8 = [selfCopy length];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = a4 & 0xFFFFFFFB;
        v12 = v8;
        do
        {
          v13 = [selfCopy rangeOfCharacterFromSet:a3 options:v11 range:{v10, v12}];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = 0;
          }

          else
          {
            v15 = v14;
          }

          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v9;
          }

          else
          {
            v16 = v13;
          }

          [string appendString:{objc_msgSend(selfCopy, "substringWithRange:", v10, v16 - v10)}];
          v10 = v15 + v16;
          v12 = v9 - (v15 + v16);
        }

        while (v9 != v15 + v16);
      }

      return string;
    }
  }

  else
  {
    v17 = +[TSUAssertionHandler currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_stringByRemovingCharactersInSet:options:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSString_TSUAdditions.m"), 369, @"invalid nil value for '%s'", "charSet"}];
  }

  return selfCopy;
}

- (void)tsu_stringByReplacingCharactersInSet:()TSUAdditions withCharacter:
{
  v14 = a4;
  if (a3)
  {
    v6 = [self rangeOfCharacterFromSet:a3 options:4 range:{0, objc_msgSend(self, "length")}];
    v8 = 0;
    v9 = 0;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:

      goto LABEL_5;
    }

    v11 = v6;
    v12 = v7;
    v9 = 0;
    v8 = 0;
    while (1)
    {
      if (v9)
      {
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = [MEMORY[0x277CCAB68] stringWithString:self];
        if (!v8)
        {
LABEL_14:
          v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v14 length:1];
        }
      }

      [v9 replaceCharactersInRange:v11 withString:{v12, v8}];
      v11 = [self rangeOfCharacterFromSet:a3 options:4 range:{0, v11}];
      v12 = v13;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = 0;
LABEL_5:
  if (v9)
  {
    return v9;
  }

  else
  {
    return self;
  }
}

- (uint64_t)tsu_stringByReplacingInstancesOfCharactersInSet:()TSUAdditions withString:
{
  selfCopy = self;
  if ([self rangeOfCharacterFromSet:a3 options:2] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(selfCopy, "length")}];
    v8 = [MEMORY[0x277CCAC80] scannerWithString:selfCopy];
    [v8 setCharactersToBeSkipped:0];
    v11 = 0;
    while (([v8 isAtEnd] & 1) == 0)
    {
      if ([v8 scanUpToCharactersFromSet:a3 intoString:&v11])
      {
        [v7 appendString:v11];
      }

      if ([v8 isAtEnd])
      {
        break;
      }

      [v8 scanCharactersFromSet:a3 intoString:&v11];
      for (i = [v11 length]; i; --i)
      {
        [v7 appendString:a4];
      }
    }

    return [MEMORY[0x277CCACA8] stringWithString:v7];
  }

  return selfCopy;
}

- (id)tsu_escapeForIcuRegex
{
  if (!tsu_escapeForIcuRegex_icuRegexCharSet)
  {
    objc_sync_enter(obj);
    if (!tsu_escapeForIcuRegex_icuRegexCharSet)
    {
      v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"*?+[(){}^$|\\./"];
      __dmb(0xBu);
      tsu_escapeForIcuRegex_icuRegexCharSet = v2;
      if (!v2)
      {
        v3 = +[TSUAssertionHandler currentHandler];
        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_escapeForIcuRegex]"];
        [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSString_TSUAdditions.m"), 483, @"Couldn't initialize lazy variable %s", "icuRegexCharSet"}];
      }
    }

    objc_sync_exit(obj);
  }

  v5 = [obj length];
  *&v11 = [obj rangeOfCharacterFromSet:tsu_escapeForIcuRegex_icuRegexCharSet];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return obj;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{objc_msgSend(obj, "substringToIndex:", v11)}];
  if (v5 != v11)
  {
    do
    {
      [v7 appendFormat:@"\\%C", objc_msgSend(obj, "characterAtIndex:", v11)];
      *&v11 = v11 + 1;
      *(&v11 + 1) = v5 - v11;
      v8 = v11;
      if (v5 != v11)
      {
        *&v10 = [obj rangeOfCharacterFromSet:tsu_escapeForIcuRegex_icuRegexCharSet options:0 range:v11];
        *(&v10 + 1) = v9;
        v11 = v10;
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v5;
        }

        if (v11 != v8)
        {
          [v7 appendString:{objc_msgSend(obj, "substringWithRange:", v8, v11 - v8)}];
        }
      }
    }

    while (*(&v11 + 1));
  }

  return v7;
}

- (uint64_t)tsu_isDescendantOfPath:()TSUAdditions
{
  pathComponents = [self pathComponents];
  pathComponents2 = [a3 pathComponents];
  v6 = [pathComponents2 count];
  do
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
  }

  while (([objc_msgSend(pathComponents2 objectAtIndex:{v7 - 1), "isEqualToString:", @"/"}] & 1) != 0);
  v8 = [pathComponents count];
  result = v7 <= v8;
  if (v7 - 1 < v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      result = [objc_msgSend(pathComponents objectAtIndex:{v10), "isEqualToString:", objc_msgSend(pathComponents2, "objectAtIndex:", v10)}];
      if (v7 <= v11)
      {
        break;
      }

      v10 = v11++;
    }

    while ((result & 1) != 0);
  }

  return result;
}

- (BOOL)tsu_isChildOfPath:()TSUAdditions
{
  v4 = [objc_msgSend(self "pathComponents")];
  v5 = [objc_msgSend(a3 "pathComponents")];
  if ([v4 count] >= 2)
  {
    do
    {
      if (![objc_msgSend(v4 "lastObject")])
      {
        break;
      }

      [v4 removeObjectAtIndex:{objc_msgSend(v4, "count") - 1}];
    }

    while ([v4 count] > 1);
  }

  if ([v5 count] >= 2)
  {
    do
    {
      if (![objc_msgSend(v5 "lastObject")])
      {
        break;
      }

      [v5 removeObjectAtIndex:{objc_msgSend(v5, "count") - 1}];
    }

    while ([v5 count] > 1);
  }

  v6 = [v5 count] + 1;
  v7 = [v4 count];
  v8 = v6 == v7;
  v9 = [v5 count];
  if (v9 && v6 == v7)
  {
    v10 = v9;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = [objc_msgSend(v4 objectAtIndex:{v11), "isEqualToString:", objc_msgSend(v5, "objectAtIndex:", v11)}];
      v8 = v13;
      if (v10 <= v12)
      {
        break;
      }

      v11 = v12++;
    }

    while ((v13 & 1) != 0);
  }

  return v8;
}

- (char)tsu_stringWithRealpath
{
  result = realpath_DARWIN_EXTSN([self fileSystemRepresentation], 0);
  if (result)
  {
    v2 = result;
    v3 = [MEMORY[0x277CCACA8] stringWithCString:result encoding:4];
    free(v2);
    return v3;
  }

  return result;
}

- (uint64_t)tsu_substringWithComposedCharacterSequencesToIndex:()TSUAdditions
{
  v5 = [self length];
  v6 = 0;
  do
  {
    v7 = v6;
    if (v6 >= v5)
    {
      break;
    }

    [self rangeOfComposedCharacterSequenceAtIndex:v6];
    v6 = v8 + v7;
  }

  while (v8 + v7 <= a3);
  result = self;
  if (v7 != v5)
  {

    return [self substringToIndex:v7];
  }

  return result;
}

- (uint64_t)tsu_substringWithComposedCharacterSequencesToFileSystemLength:()TSUAdditions
{
  v5 = [self length];
  v6 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [self rangeOfComposedCharacterSequenceAtIndex:v6];
      v10 = v9;
      v7 += strlen([objc_msgSend(self substringWithRange:{v8, v9), "fileSystemRepresentation"}]);
      if (v7 > a3)
      {
        break;
      }

      v6 += v10;
    }

    while (v6 < v5);
  }

  result = self;
  if (v6 != v5)
  {

    return [self substringToIndex:v6];
  }

  return result;
}

- (__CFString)tsu_stringWithPathRelativeTo:()TSUAdditions
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v6 = [objc_msgSend(self "stringByStandardizingPath")];
  v7 = [objc_msgSend(a3 "stringByStandardizingPath")];
  v8 = [v6 count];
  v9 = [v7 count];
  if (v8 < v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    if (([objc_msgSend(v7 objectAtIndex:{v11), "isEqualToString:", objc_msgSend(v6, "objectAtIndex:", v11)}] & 1) == 0)
    {
      break;
    }

    v11 = v12;
  }

  while (v10 > v12++);
  if (v10 != v11)
  {
LABEL_10:
    v14 = 0;
  }

  else
  {
LABEL_8:
    if (v8 == v10)
    {
      v14 = &stru_287DDF830;
    }

    else
    {
      v15 = [v6 subarrayWithRange:{v10, v8 - v10}];
      v14 = [MEMORY[0x277CCACA8] pathWithComponents:v15];
    }
  }

  v16 = v14;
  [v5 drain];
  v17 = v14;
  return v14;
}

- (uint64_t)tsu_stringWithPathRelativeTo:()TSUAdditions allowBacktracking:
{
  if (a4)
  {
    v5 = [objc_msgSend(self "stringByStandardizingPath")];
    v6 = [objc_msgSend(a3 "stringByStandardizingPath")];
    v7 = [v5 count];
    v8 = [v6 count];
    v9 = v8;
    v10 = 0;
    if (v8 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      while ([objc_msgSend(v6 objectAtIndex:{v10), "isEqualToString:", objc_msgSend(v5, "objectAtIndex:", v10)}])
      {
        if (v11 == ++v10)
        {
          v10 = v11;
          break;
        }
      }
    }

    v12 = v9 - v10;
    if (v9 <= v10)
    {
      v13 = &stru_287DDF830;
    }

    else
    {
      v13 = &stru_287DDF830;
      do
      {
        v13 = [(__CFString *)v13 stringByAppendingPathComponent:@".."];
        --v12;
      }

      while (v12);
    }

    if (v10 < v7)
    {
      do
      {
        v13 = -[__CFString stringByAppendingPathComponent:](v13, "stringByAppendingPathComponent:", [v5 objectAtIndex:v10++]);
      }

      while (v7 != v10);
    }

    return v13;
  }

  else
  {

    return [self tsu_stringWithPathRelativeTo:?];
  }
}

+ (void)tsu_stringByBase64EncodingBytes:()TSUAdditions length:breakLines:
{
  v6 = a4;
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:4 * a4 / 3];
  if (v6 < 3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 + 2);
    v16 = 3 * ((v6 - 3) / 3) + 3;
    v10 = -4;
    v11 = 4;
    do
    {
      [v8 appendFormat:@"%c%c%c%c", Base64Alphabet[*(v9 - 2) >> 2], Base64Alphabet[(((*(v9 - 1) << 8) | (*(v9 - 2) << 16)) >> 12) & 0x3F], Base64Alphabet[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F], Base64Alphabet[*v9 & 0x3F]];
      if (a5 && !(v10 + 76 * (v11 / 0x4C)))
      {
        [v8 appendString:@"\n"];
      }

      v9 += 3;
      v10 -= 4;
      v11 += 4;
      v6 -= 3;
    }

    while (v6 > 2);
    v12 = v16;
  }

  if (v6 == 1)
  {
    [v8 appendFormat:@"%c%c==", Base64Alphabet[*(a3 + v12) >> 2], Base64Alphabet[16 * (*(a3 + v12) & 3)], v15];
  }

  else if (v6 == 2)
  {
    v13 = (a3 + v12);
    [v8 appendFormat:@"%c%c%c=", Base64Alphabet[*v13 >> 2], Base64Alphabet[((((v13[1] & 0xF0) << 8) | (*v13 << 16)) >> 12) & 0x3F], Base64Alphabet[4 * (v13[1] & 0xF)]];
  }

  return v8;
}

- (uint64_t)tsu_encodeStringBase64
{
  uTF8String = [self UTF8String];
  v2 = strlen(uTF8String);
  v3 = MEMORY[0x277CCACA8];

  return [v3 tsu_stringByBase64EncodingBytes:uTF8String length:v2];
}

- (id)tsu_stringByMakingFirstCharacterUppercase
{
  v2 = [self mutableCopy];
  if ([v2 length])
  {
    [v2 replaceCharactersInRange:0 withString:{1, objc_msgSend(objc_msgSend(self, "substringToIndex:", 1), "uppercaseString")}];
  }

  return v2;
}

- (id)tsu_escapeXML
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  return v1;
}

- (id)tsu_unescapeXML
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v1, "length")}];
  return v1;
}

- (uint64_t)tsu_tolerantStringByAppendingPathExtension:()TSUAdditions
{
  if ([self isEqualToString:&stru_287DDF830] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", &stru_287DDF830))
  {
    return self;
  }

  if ([self isEqualToString:@"\\\\""])
  {
    v6 = [@"\\"" stringByAppendingPathExtension:a3];

    return [@"\\"" stringByAppendingString:v6];
  }

  else if ([self length] && objc_msgSend(self, "characterAtIndex:", 0) == 126)
  {
    v7 = [objc_msgSend(@"X" stringByAppendingString:{self), "stringByAppendingPathExtension:", a3}];

    return [v7 substringFromIndex:1];
  }

  else
  {

    return [self stringByAppendingPathExtension:a3];
  }
}

@end