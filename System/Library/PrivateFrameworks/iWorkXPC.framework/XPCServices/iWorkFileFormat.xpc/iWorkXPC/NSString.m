@interface NSString
+ (id)tsu_JSONStringFromString:(id)a3;
+ (id)tsu_fogFilenameFromShareToken:(id)a3;
+ (id)tsu_fogShareTokenFromFileURL:(id)a3;
+ (id)tsu_localizedDisplayNameWithPersonNameComponents:(id)a3;
+ (id)tsu_redactedStringWithFormat:(id)a3 arguments:(char *)a4;
+ (id)tsu_stringByBase64EncodingBytes:(const char *)a3 length:(unint64_t)a4 breakLines:(BOOL)a5;
+ (id)tsu_stringByHexEncodingData:(id)a3;
+ (id)tsu_stringByIndentingString:(id)a3 times:(unint64_t)a4;
+ (id)tsu_stringWithFormat:(id)a3 arguments:(char *)a4;
+ (id)tsu_stringWithHexFromBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)tsu_stringWithUUID;
+ (id)tsu_unRedactedStringWithFormat:(id)a3 arguments:(char *)a4;
- (BOOL)tsu_bindToSqlStatement:(sqlite3_stmt *)a3 index:(int)a4 error:(id *)a5;
- (BOOL)tsu_conformsToAnyUTI:(id)a3;
- (BOOL)tsu_containsOnlyCharactersFromSet:(id)a3;
- (BOOL)tsu_isCJKString;
- (BOOL)tsu_isChildOfPath:(id)a3;
- (BOOL)tsu_isDescendantOfPath:(id)a3;
- (BOOL)tsu_isEqualToString:(id)a3;
- (BOOL)tsu_isTaggedPointer;
- (BOOL)tsu_pathConformsToUTI:(id)a3;
- (BOOL)tsu_pathExtensionConformsToUTI:(id)a3;
- (NSString)tsu_normalizedFilenameExtension;
- (NSString)tsu_pathUTI;
- (_NSRange)tsu_range;
- (_NSRange)tsu_rangeOfString:(id)a3 options:(unint64_t)a4 updatingSearchRange:(_NSRange *)a5;
- (id)tsu_UTTypeCopyPreferredTagWithClass:(id)a3;
- (id)tsu_allFilenameExtensionIdentifiersForTag;
- (id)tsu_encodeStringBase64;
- (id)tsu_escapeForIcuRegex;
- (id)tsu_escapeXML;
- (id)tsu_firstKey;
- (id)tsu_initRedactedWithFormat:(id)a3 arguments:(char *)a4;
- (id)tsu_initUnRedactedWithFormat:(id)a3 arguments:(char *)a4;
- (id)tsu_initWithSqlStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4;
- (id)tsu_keyPathByAppendingKey:(id)a3;
- (id)tsu_keyPathByPrependingKey:(id)a3;
- (id)tsu_keyPathByRemovingFirstKey;
- (id)tsu_keyPathByRemovingLastKey;
- (id)tsu_lastKey;
- (id)tsu_middleTruncateToLength:(unint64_t)a3;
- (id)tsu_parseBaseTitleWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 outNumber:(unint64_t *)a6;
- (id)tsu_pathExceptPrivate;
- (id)tsu_preferredIdentifierForTagClass:(id)a3 conformingToUTI:(id)a4;
- (id)tsu_setOfContainedWordsIncludingPunctuationAndSymbols:(BOOL)a3;
- (id)tsu_sha256HexHashString;
- (id)tsu_stringByAddingCSVEscapesForLocale:(id)a3;
- (id)tsu_stringByAppendingSeparator:(id)a3 format:(id)a4;
- (id)tsu_stringByApplyingSubstitutions:(id)a3;
- (id)tsu_stringByDeletingPathExtensionIfEqualTo:(id)a3;
- (id)tsu_stringByExpandingTableFormatting;
- (id)tsu_stringByFixingBrokenSurrogatePairs;
- (id)tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 numberFormatter:(id)a6 uniquenessTest:(id)a7;
- (id)tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:(id)a3;
- (id)tsu_stringByMakingFirstCharacterLowercase;
- (id)tsu_stringByMakingFirstCharacterUppercase;
- (id)tsu_stringByRemovingCharactersInSet:(id)a3 options:(unsigned int)a4;
- (id)tsu_stringByReplacingInstancesOfCharactersInSet:(id)a3 withString:(id)a4;
- (id)tsu_stringByTrimmingCharactersInSetFromFront:(id)a3;
- (id)tsu_stringByUniquingPathInsideDirectory:(id)a3 withFormat:(id)a4;
- (id)tsu_stringQuotedIfContainsCharacterSet:(id)a3;
- (id)tsu_stringTrimByLimitingFirstCharacterToSet:(id)a3;
- (id)tsu_stringWithNormalizedHyphens;
- (id)tsu_stringWithNormalizedHyphensAndQuotationMarks;
- (id)tsu_stringWithNormalizedQuotationMarks;
- (id)tsu_stringWithNormalizedSpaces;
- (id)tsu_stringWithPathRelativeTo:(id)a3;
- (id)tsu_stringWithPathRelativeTo:(id)a3 allowBacktracking:(BOOL)a4;
- (id)tsu_stringWithRealpath;
- (id)tsu_stringWithTrimmedWhitespace;
- (id)tsu_stringWithoutAttachmentCharacters;
- (id)tsu_stringWithoutBidiControls;
- (id)tsu_stringWithoutNonbreakingSpaces;
- (id)tsu_substringByTruncatingToSize:(CGSize)a3 forAttributes:(id)a4;
- (id)tsu_substringWithComposedCharacterSequencesToFileSystemLength:(unint64_t)a3;
- (id)tsu_substringWithComposedCharacterSequencesTruncatedToGlyphCount:(unint64_t)a3;
- (id)tsu_substringWithComposedCharacterSequencesTruncatedToLength:(unint64_t)a3;
- (id)tsu_substringWithTrailingQuoteIfNeededByTruncatingToSize:(CGSize)a3 forAttributes:(id)a4;
- (id)tsu_tolerantStringByAppendingPathExtension:(id)a3;
- (id)tsu_uncommentedAddress;
- (id)tsu_uncommentedAddressRespectingGroups;
- (id)tsu_unescapeXML;
- (int64_t)tsu_compareToVersionString:(id)a3;
- (unint64_t)tsu_countInstancesOfString:(id)a3 options:(unint64_t)a4;
- (unint64_t)tsu_numberOfKeysInKeyPath;
- (void)tsu_appendJSONStringToString:(id)a3;
- (void)tsu_enumerateRangesOfCharactersInSet:(id)a3 usingBlock:(id)a4;
@end

@implementation NSString

+ (id)tsu_stringWithUUID
{
  v2 = CFUUIDCreate(0);
  if (v2)
  {
    v3 = v2;
    v4 = CFUUIDCreateString(0, v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tsu_stringWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:v5 arguments:a4];

  return v6;
}

+ (id)tsu_stringByIndentingString:(id)a3 times:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (a4 && v6)
  {
    do
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];

      if ([v7 hasSuffix:@"\n  "])
      {
        v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];

        v7 = v8;
      }

      v5 = [@"  " stringByAppendingString:v7];

      --a4;
    }

    while (a4);
  }

  v9 = v5;

  return v5;
}

- (id)tsu_pathExceptPrivate
{
  if ([(NSString *)self rangeOfString:@"/private"])
  {
    v4 = self;
  }

  else
  {
    v4 = [(NSString *)self substringFromIndex:v3];
  }

  return v4;
}

- (id)tsu_stringByExpandingTableFormatting
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSString *)self componentsSeparatedByString:@"$"];
  v5 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v66;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v65 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        [v5 addObject:v12];
        v13 = [v12 count];
        if (v9 <= v13)
        {
          v9 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = [v5 lastObject];
  if ([v14 count] == 1)
  {
    v15 = [v5 lastObject];
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v16 length];

    if (!v17)
    {
      [v5 removeLastObject];
    }
  }

  else
  {
  }

  if (v9)
  {
    v51 = v6;
    v52 = v3;
    v18 = malloc_type_calloc(8uLL, v9, 0x2B71A530uLL);
    v60 = malloc_type_calloc(8uLL, [v5 count], 0xD35D9DE3uLL);
    v55 = v5;
    if ([v5 count])
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v53 = v20;
        [v5 objectAtIndexedSubscript:v19];
        v58 = v56 = v19;
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = &stru_1001D3878;
          if ([v58 count] > v21)
          {
            v23 = [v58 objectAtIndexedSubscript:v21];
          }

          v24 = [(__CFString *)v23 componentsSeparatedByString:@"\n"];
          v25 = v60[v19];
          v26 = [v24 count];
          if (v25 <= v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          v60[v19] = v27;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v28 = v24;
          v29 = [v28 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v62;
            do
            {
              for (j = 0; j != v30; j = j + 1)
              {
                if (*v62 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = v18[v21];
                v34 = [*(*(&v61 + 1) + 8 * j) length];
                if (v33 <= v34)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v33;
                }

                v18[v21] = v35;
              }

              v30 = [v28 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v30);
          }

          v21 = ++v22;
          v19 = v56;
        }

        while (v9 > v22);

        v19 = (v53 + 1);
        v5 = v55;
        v36 = [v55 count];
        v20 = v53 + 1;
      }

      while (v36 > v19);
    }

    v9 = objc_alloc_init(NSMutableString);
    if ([v5 count])
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v54 = v38;
        v39 = [v5 objectAtIndexedSubscript:v37];
        if (v60[v37])
        {
          v40 = 0;
          v41 = 0;
          v57 = v37;
          do
          {
            v59 = v41;
            if ([v39 count])
            {
              v42 = 0;
              v43 = 1;
              do
              {
                v44 = &stru_1001D3878;
                if ([v39 count] > v42)
                {
                  v44 = [v39 objectAtIndexedSubscript:v42];
                }

                v45 = [(__CFString *)v44 componentsSeparatedByString:@"\n"];
                v46 = &stru_1001D3878;
                if ([v45 count] > v40)
                {
                  v46 = [v45 objectAtIndexedSubscript:v40];
                }

                v47 = [(__CFString *)v46 stringByPaddingToLength:v18[v42] + 1 withString:@" " startingAtIndex:0];
                [v9 appendString:v47];

                v42 = v43;
              }

              while ([v39 count] > v43++);
            }

            [v9 appendString:@"\n"];
            v40 = (v59 + 1);
            v41 = v59 + 1;
          }

          while (v60[v57] > v40);
        }

        v37 = (v54 + 1);
        v5 = v55;
        v49 = [v55 count];
        v38 = v54 + 1;
      }

      while (v49 > v37);
    }

    free(v60);
    free(v18);
    v6 = v51;
    v3 = v52;
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)tsu_stringQuotedIfContainsCharacterSet:(id)a3
{
  v4 = self;
  if ([(NSString *)v4 rangeOfCharacterFromSet:a3]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSString *)v4 mutableCopy];
    [v5 replaceOccurrencesOfString:@" withString:@" options:0 range:{0, -[NSString length](v4, "length")}];
    [v5 appendString:@""];
    [v5 insertString:@"" atIndex:0];

    v4 = v5;
  }

  return v4;
}

- (id)tsu_stringByAppendingSeparator:(id)a3 format:(id)a4
{
  v6 = a3;
  v7 = [NSString tsu_stringWithFormat:a4 arguments:&v11];
  if ([(NSString *)self length])
  {
    v8 = [(NSString *)self stringByAppendingFormat:@"%@%@", v6, v7];

    v7 = v8;
  }

  return v7;
}

- (id)tsu_stringByAddingCSVEscapesForLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 localeSpecificStorageForKey:@"stringByAddingCSVEscapes"];
  if (!v5)
  {
    v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v7 = [v6 mutableCopy];

    v8 = +[NSCharacterSet whitespaceCharacterSet];
    v9 = [v8 invertedSet];
    [v7 formIntersectionWithCharacterSet:v9];

    [v7 addCharactersInString:@""];
    v10 = [v4 listSeparator];
    if ([v10 length] != 1)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100159A24();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100159A38();
      }

      v11 = [NSString stringWithUTF8String:"[NSString(TSUAdditions) tsu_stringByAddingCSVEscapesForLocale:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSString_TSUAdditions.m"];
      [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:199 isFatal:0 description:"The list separator is not a 1-char string"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    [v7 addCharactersInString:v10];
    v5 = [v7 copy];
    [v4 setLocaleSpecificStorage:v5 forKey:@"stringByAddingCSVEscapes"];
  }

  v13 = [(NSString *)self tsu_stringQuotedIfContainsCharacterSet:v5];

  return v13;
}

- (id)tsu_stringByUniquingPathInsideDirectory:(id)a3 withFormat:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100159AC8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100159ADC();
    }

    v8 = [NSString stringWithUTF8String:"[NSString(TSUAdditions) tsu_stringByUniquingPathInsideDirectory:withFormat:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:213 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryPath"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v10 = self;
  v11 = +[NSFileManager defaultManager];
  v12 = [v6 stringByAppendingPathComponent:v10];
  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = [(NSString *)v10 pathExtension];
    if (v14)
    {
      v15 = v14;
      if ([(__CFString *)v14 length])
      {
        v16 = [@"." stringByAppendingString:v15];

        v15 = v16;
      }
    }

    else
    {
      v15 = &stru_1001D3878;
    }

    v17 = [(NSString *)v10 stringByDeletingPathExtension];
    v18 = 2;
    do
    {
      v19 = v10;
      v20 = (v18 + 1);
      v10 = [NSString stringWithFormat:v7, v17, v18, v15];

      v21 = [v6 stringByAppendingPathComponent:v10];
      v22 = [v11 fileExistsAtPath:v21];

      v18 = v20;
    }

    while ((v22 & 1) != 0);

    objc_autoreleasePoolPop(context);
  }

  return v10;
}

- (id)tsu_stringByFixingBrokenSurrogatePairs
{
  v2 = self;
  v3 = [(__CFString *)v2 length];
  theString = v2;
  v31 = 0;
  v32 = v3;
  CharactersPtr = CFStringGetCharactersPtr(v2);
  CStringPtr = 0;
  v29 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v2, 0x600u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v33 = 0;
  v34 = 0;
  v30 = CStringPtr;
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = v32;
        if (v32 > v8)
        {
          if (v29)
          {
            v10 = v29[v31 + v8];
          }

          else if (v30)
          {
            v10 = v30[v31 + v8];
          }

          else
          {
            if (v34 <= v8 || v6 > v8)
            {
              v11 = v8 - 4;
              if (v8 < 4)
              {
                v11 = 0;
              }

              if (v11 + 64 < v32)
              {
                v9 = v11 + 64;
              }

              v33 = v11;
              v34 = v9;
              v36.length = v9 - v11;
              v36.location = v31 + v11;
              CFStringGetCharacters(theString, v36, &v20);
              v6 = v33;
            }

            v10 = *(&v20 + v8 - v6);
          }

          v12 = v10 & 0xFC00;
          if (v12 == 56320)
          {
LABEL_37:
            if (!v7)
            {
              v7 = [(__CFString *)v2 mutableCopyWithZone:0, v20, v21, v22, v23, v24, v25, v26, v27];

              v2 = v7;
            }

            [(__CFString *)v7 replaceCharactersInRange:v8 withString:1, @"\uFFFD", v20, v21, v22, v23, v24, v25, v26, v27];
            v3 = [(__CFString *)v2 length];
            theString = v2;
            v31 = 0;
            v32 = v3;
            v17 = CFStringGetCharactersPtr(v2);
            v18 = 0;
            v29 = v17;
            if (!v17)
            {
              v18 = CFStringGetCStringPtr(v2, 0x600u);
            }

            v6 = 0;
            v30 = v18;
            v33 = 0;
            v34 = 0;
            goto LABEL_42;
          }

          if (v12 == 55296)
          {
            v13 = v8 + 1;
            if (v8 + 1 >= v3)
            {
              goto LABEL_37;
            }

            v14 = v32;
            if (v32 <= v13)
            {
              goto LABEL_37;
            }

            if (v29)
            {
              v15 = v29[v31 + v13];
            }

            else if (v30)
            {
              v15 = v30[v31 + v13];
            }

            else
            {
              if (v34 <= v13 || v6 > v13)
              {
                v16 = v8 - 3;
                if (v8 < 3)
                {
                  v16 = 0;
                }

                if (v16 + 64 < v32)
                {
                  v14 = v16 + 64;
                }

                v33 = v16;
                v34 = v14;
                v37.length = v14 - v16;
                v37.location = v31 + v16;
                CFStringGetCharacters(theString, v37, &v20);
                v6 = v33;
              }

              v15 = *(&v20 + v13 - v6);
            }

            if (v15 >> 10 != 55)
            {
              goto LABEL_37;
            }

            ++v8;
          }
        }
      }

LABEL_42:
      if (++v8 >= v3)
      {

        break;
      }
    }
  }

  return v2;
}

- (id)tsu_stringByRemovingCharactersInSet:(id)a3 options:(unsigned int)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = self;
    if ([(NSString *)v7 rangeOfCharacterFromSet:v6]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
    }

    else
    {
      v8 = +[NSMutableString string];
      v11 = [(NSString *)v7 length];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = a4 & 0xFFFFFFFB;
        v15 = v11;
        do
        {
          v16 = [(NSString *)v7 rangeOfCharacterFromSet:v6 options:v14 range:v13, v15];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = 0;
          }

          else
          {
            v18 = v17;
          }

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v12;
          }

          else
          {
            v19 = v16;
          }

          v20 = [(NSString *)v7 substringWithRange:v13, v19 - v13];
          [(NSString *)v8 appendString:v20];

          v13 = &v19[v18];
          v15 = v12 - &v19[v18];
        }

        while (v12 != &v19[v18]);
      }
    }
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100159B80();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100159B94();
    }

    v9 = [NSString stringWithUTF8String:"[NSString(TSUAdditions) tsu_stringByRemovingCharactersInSet:options:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSString_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:309 isFatal:0 description:"invalid nil value for '%{public}s'", "charSet"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = self;
  }

  return v8;
}

- (id)tsu_stringByReplacingInstancesOfCharactersInSet:(id)a3 withString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSString *)self rangeOfCharacterFromSet:v6 options:2]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = self;
  }

  else
  {
    v9 = [NSMutableString stringWithCapacity:[(NSString *)self length]];
    v10 = [NSScanner scannerWithString:self];
    [v10 setCharactersToBeSkipped:0];
    if (([v10 isAtEnd] & 1) == 0)
    {
      v11 = 0;
      while (1)
      {
        v17 = v11;
        v12 = [v10 scanUpToCharactersFromSet:v6 intoString:&v17];
        v13 = v17;

        if (v12)
        {
          [v9 appendString:v13];
        }

        if ([v10 isAtEnd])
        {
          break;
        }

        v16 = v13;
        [v10 scanCharactersFromSet:v6 intoString:&v16];
        v11 = v16;

        for (i = [v11 length]; i; --i)
        {
          [v9 appendString:v7];
        }

        if ([v10 isAtEnd])
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
    }

    v8 = [NSString stringWithString:v9];
  }

  return v8;
}

- (unint64_t)tsu_countInstancesOfString:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NSString *)self length];
  v8 = [v6 length];
  v9 = [(NSString *)self rangeOfString:v6 options:a4 range:0, v7];
  v10 = 0;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v10 = 0;
    do
    {
      ++v10;
      v12 = &v8[v9];
      v7 = &v11[v7 - &v8[v9]];
      v9 = [(NSString *)self rangeOfString:v6 options:a4 range:&v8[v9], v7];
      v11 = v12;
    }

    while (v9 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v10;
}

- (id)tsu_escapeForIcuRegex
{
  if (qword_1001EAF90 != -1)
  {
    sub_100159C38();
  }

  v3 = self;
  v4 = [(NSString *)v3 length];
  *&v13 = [(NSString *)v3 rangeOfCharacterFromSet:qword_1001EAF88];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = [NSMutableString alloc];
    v7 = [(NSString *)v3 substringToIndex:v13];
    v5 = [v6 initWithString:v7];

    if (v4 != v13)
    {
      do
      {
        [(NSString *)v5 appendFormat:@"\\%C", [(NSString *)v3 characterAtIndex:v13]];
        *&v13 = v13 + 1;
        *(&v13 + 1) = &v4[-v13];
        v8 = v13;
        if (v4 != v13)
        {
          *&v12 = [(NSString *)v3 rangeOfCharacterFromSet:qword_1001EAF88 options:0 range:v13];
          *(&v12 + 1) = v9;
          v13 = v12;
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v4;
          }

          if (v13 != v8)
          {
            v10 = [(NSString *)v3 substringWithRange:v8, v13 - v8];
            [(NSString *)v5 appendString:v10];
          }
        }
      }

      while (*(&v13 + 1));
    }
  }

  return v5;
}

- (BOOL)tsu_isDescendantOfPath:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathComponents];
  v6 = [v4 pathComponents];
  v7 = [v6 count];
  if (v7)
  {
    do
    {
      v8 = v7 - 1;
      v9 = [v6 objectAtIndexedSubscript:v7 - 1];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      --v7;
    }

    while (v8);
  }

  v11 = [v5 count];
  v12 = v7 <= v11;
  if (v7 - 1 < v11)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v5 objectAtIndexedSubscript:v13];
      v16 = [v6 objectAtIndexedSubscript:v13];
      v12 = [v15 isEqualToString:v16];

      if (v7 <= v14)
      {
        break;
      }

      v13 = v14++;
    }

    while ((v12 & 1) != 0);
  }

  return v12;
}

- (BOOL)tsu_isChildOfPath:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathComponents];
  v6 = [v5 mutableCopy];

  v7 = [v4 pathComponents];
  v8 = [v7 mutableCopy];

  if ([v6 count] >= 2)
  {
    do
    {
      v9 = [v6 lastObject];
      v10 = [v9 isEqualToString:@"/"];

      if (!v10)
      {
        break;
      }

      [v6 removeObjectAtIndex:{objc_msgSend(v6, "count") - 1}];
    }

    while ([v6 count] > 1);
  }

  if ([v8 count] >= 2)
  {
    do
    {
      v11 = [v8 lastObject];
      v12 = [v11 isEqualToString:@"/"];

      if (!v12)
      {
        break;
      }

      [v8 removeObjectAtIndex:{objc_msgSend(v8, "count") - 1}];
    }

    while ([v8 count] > 1);
  }

  v13 = [v8 count] + 1;
  v14 = [v6 count];
  v15 = v13 == v14;
  v16 = [v8 count];
  if (v16 && v13 == v14)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = [v6 objectAtIndexedSubscript:v18];
      v21 = [v8 objectAtIndexedSubscript:v18];
      v15 = [v20 isEqualToString:v21];

      if (v17 <= v19)
      {
        break;
      }

      v18 = v19++;
    }

    while ((v15 & 1) != 0);
  }

  return v15;
}

- (id)tsu_stringWithRealpath
{
  v2 = realpath_DARWIN_EXTSN([(NSString *)self fileSystemRepresentation], 0);
  if (v2)
  {
    v3 = v2;
    v4 = [NSString stringWithCString:v2 encoding:4];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tsu_stringWithTrimmedWhitespace
{
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)self componentsSeparatedByCharactersInSet:v3];
  v5 = [v4 componentsJoinedByString:@" "];

  v6 = [v5 stringByTrimmingCharactersInSet:v3];

  return v6;
}

- (id)tsu_substringWithComposedCharacterSequencesTruncatedToLength:(unint64_t)a3
{
  if ([(NSString *)self length]<= a3)
  {
    v5 = self;
  }

  else
  {
    v5 = [(NSString *)self substringToIndex:[(NSString *)self rangeOfComposedCharacterSequenceAtIndex:a3]];
  }

  return v5;
}

- (id)tsu_substringWithComposedCharacterSequencesToFileSystemLength:(unint64_t)a3
{
  v5 = [(NSString *)self length];
  v6 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [(NSString *)self rangeOfComposedCharacterSequenceAtIndex:v6];
      v10 = v9;
      v11 = [(NSString *)self substringWithRange:v8, v9];
      v12 = [v11 fileSystemRepresentation];

      v7 += strlen(v12);
      if (v7 > a3)
      {
        break;
      }

      v6 += v10;
    }

    while (v6 < v5);
  }

  if (v6 == v5)
  {
    v13 = self;
  }

  else
  {
    v13 = [(NSString *)self substringToIndex:v6];
  }

  return v13;
}

- (id)tsu_substringWithComposedCharacterSequencesTruncatedToGlyphCount:(unint64_t)a3
{
  v4 = self;
  if ([(NSString *)v4 length]> a3)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3010000000;
    v12 = 0;
    v13 = 0;
    v11 = &unk_10018361A;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007615C;
    v7[3] = &unk_1001CC0F8;
    v7[4] = &v8;
    v7[5] = v14;
    v7[6] = a3;
    [(NSString *)v4 enumerateSubstringsInRange:0 options:[(NSString *)v4 length] usingBlock:2, v7];
    v5 = [(NSString *)v4 substringWithRange:v9[4], v9[5]];

    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(v14, 8);
    v4 = v5;
  }

  return v4;
}

- (id)tsu_substringByTruncatingToSize:(CGSize)a3 forAttributes:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = self;
  [(NSString *)v8 sizeWithAttributes:v7];
  if (width <= v9)
  {
    v11 = SFUMainBundle();
    v12 = [v11 localizedStringForKey:@"…" value:&stru_1001D3878 table:@"TSUtility"];

    v13 = [(NSString *)v8 length];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3010000000;
    v35 = &unk_10018361A;
    v36 = 0;
    v37 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10007640C;
    v25 = &unk_1001CC120;
    v29 = &v32;
    v14 = v8;
    v26 = v14;
    v15 = v12;
    v27 = v15;
    v28 = v7;
    v30 = width;
    v31 = height;
    v16 = objc_retainBlock(&v22);
    [(NSString *)v14 enumerateSubstringsInRange:0 options:v13 usingBlock:3, v16, v22, v23, v24, v25];
    v17 = v33;
    v18 = v33[5];
    if (!v18)
    {
      [(NSString *)v14 enumerateSubstringsInRange:0 options:v13 usingBlock:2, v16];
      v17 = v33;
      v18 = v33[5];
    }

    v19 = [(NSString *)v14 substringWithRange:v17[4], v18];

    if (([v19 isEqualToString:v14] & 1) == 0)
    {
      v20 = [v19 stringByAppendingString:v15];

      v19 = v20;
    }

    v10 = v19;

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (id)tsu_substringWithTrailingQuoteIfNeededByTruncatingToSize:(CGSize)a3 forAttributes:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = a4;
  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"”" value:&stru_1001D3878 table:@"TSUtility"];

  v11 = [(NSString *)v7 substringFromIndex:[(NSString *)v7 length]- 1];
  v12 = [v11 isEqualToString:v10];
  v13 = [(NSString *)v7 tsu_substringByTruncatingToSize:v8 forAttributes:width, height];

  if (([v13 isEqualToString:v7] & 1) == 0 && v12)
  {
    v14 = [v13 stringByAppendingString:v10];

    v13 = v14;
  }

  return v13;
}

- (id)tsu_stringWithPathRelativeTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(NSString *)self stringByStandardizingPath];
    v7 = [v6 pathComponents];

    v8 = [v4 stringByStandardizingPath];
    v9 = [v8 pathComponents];

    v10 = [v7 count];
    v11 = [v9 count];
    if (v10 < v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    v22 = v5;
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v9 objectAtIndexedSubscript:v13];
      v16 = [v7 objectAtIndexedSubscript:v13];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        break;
      }

      v13 = v14;
    }

    while (v12 > v14++);
    v5 = v22;
    if (v12 != v13)
    {
LABEL_10:
      v19 = 0;
    }

    else
    {
LABEL_8:
      if (v10 == v12)
      {
        v19 = &stru_1001D3878;
      }

      else
      {
        v20 = [v7 subarrayWithRange:{v12, &v10[-v12]}];
        v19 = [NSString pathWithComponents:v20];
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)tsu_stringWithPathRelativeTo:(id)a3 allowBacktracking:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(NSString *)self stringByStandardizingPath];
    v8 = [v7 pathComponents];

    v9 = [v6 stringByStandardizingPath];
    v10 = [v9 pathComponents];

    v11 = [v8 count];
    v12 = [v10 count];
    v13 = v12;
    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [v10 objectAtIndexedSubscript:v15];
        v18 = [v8 objectAtIndexedSubscript:v15];
        v19 = [v17 isEqualToString:v18];

        if (!v19)
        {
          break;
        }

        v15 = ++v16;
      }

      while (v14 > v16);
    }

    else
    {
      v16 = 0;
    }

    v21 = v13 - v16;
    if (v13 <= v16)
    {
      v23 = &stru_1001D3878;
    }

    else
    {
      v22 = &stru_1001D3878;
      do
      {
        v23 = [(__CFString *)v22 stringByAppendingPathComponent:@".."];

        v22 = v23;
        --v21;
      }

      while (v21);
    }

    if (v16 >= v11)
    {
      v20 = v23;
    }

    else
    {
      do
      {
        v24 = [v8 objectAtIndexedSubscript:v16];
        v20 = [(__CFString *)v23 stringByAppendingPathComponent:v24];

        ++v16;
        v23 = v20;
      }

      while (v11 != v16);
    }
  }

  else
  {
    v20 = [(NSString *)self tsu_stringWithPathRelativeTo:v6];
  }

  return v20;
}

- (id)tsu_stringByTrimmingCharactersInSetFromFront:(id)a3
{
  p_isa = self;
  v5 = [(NSString *)p_isa rangeOfCharacterFromSet:a3 options:8];
  v7 = v6;
  if (v6 == [(NSString *)p_isa length])
  {
    v8 = &stru_1001D3878;
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v8 = [(NSString *)p_isa substringFromIndex:v7];
  }

  p_isa = &v8->isa;
LABEL_6:

  return p_isa;
}

+ (id)tsu_stringWithHexFromBytes:(const char *)a3 length:(unint64_t)a4
{
  v4 = a4;
  v6 = 2 * a4;
  v7 = malloc_type_malloc(2 * a4, 0x100004077774924uLL);
  if (v4)
  {
    v8 = v7;
    do
    {
      v9 = *a3++;
      *v8 = a0123456789abcd[v9 >> 4];
      v8[1] = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v10 = [[NSString alloc] initWithBytesNoCopy:v7 length:v6 encoding:1 freeWhenDone:1];

  return v10;
}

- (BOOL)tsu_isTaggedPointer
{
  if (qword_1001EAFA0 != -1)
  {
    sub_100159D04();
  }

  return objc_opt_class() == qword_1001EAF98;
}

- (id)tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:(id)a3
{
  v4 = a3;
  v5 = SFUMainBundle();
  v6 = [v5 localizedStringForKey:@"copy" value:&stru_1001D3878 table:@"TSUtility"];

  v7 = SFUMainBundle();
  v8 = [v7 localizedStringForKey:@"%1$@ %2$@" value:&stru_1001D3878 table:@"TSUtility"];

  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"%1$@ %2$@ %3$@" value:&stru_1001D3878 table:@"TSUtility"];

  v11 = objc_alloc_init(NSNumberFormatter);
  v12 = [(NSString *)self tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:v6 firstCopyFormatString:v8 generalCopyFormatString:v10 numberFormatter:v11 uniquenessTest:v4];

  return v12;
}

- (id)tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 numberFormatter:(id)a6 uniquenessTest:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v33 = 0;
  v17 = v13;
  v18 = [(NSString *)self tsu_parseBaseTitleWithLocalizedCopyString:v12 firstCopyFormatString:v13 generalCopyFormatString:v14 outNumber:&v33];
  v19 = v18;
  if (v18)
  {
    v34[0] = @"%1$@";
    v34[1] = @"%2$@";
    v31 = v18;
    v32 = v12;
    v35[0] = v18;
    v35[1] = v12;
    v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v21 = [v20 mutableCopy];

    for (i = [(NSString *)self copy]; [(NSString *)self isEqualToString:i]|| (v16[2](v16, i) & 1) == 0; i = v29)
    {
      v23 = v33;
      v24 = ++v33;
      if (v23)
      {
        v25 = v14;
      }

      else
      {
        v25 = v17;
      }

      v26 = v25;
      v27 = [NSNumber numberWithUnsignedInteger:v24];
      v28 = [v15 stringFromNumber:v27];
      [v21 setObject:v28 forKeyedSubscript:@"%3$@"];

      v29 = [v26 tsu_stringByApplyingSubstitutions:v21];
    }

    v19 = v31;
    v12 = v32;
  }

  else
  {
    i = [(NSString *)self copy];
  }

  return i;
}

- (id)tsu_parseBaseTitleWithLocalizedCopyString:(id)a3 firstCopyFormatString:(id)a4 generalCopyFormatString:(id)a5 outNumber:(unint64_t *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 tsu_regexForTitleParsingWithLocalizedCopyString:v10 isFirstCopyFormatString:0];
  if (!v13)
  {
    v21 = self;
    goto LABEL_23;
  }

  v14 = [v13 firstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];
  if (v14)
  {
    v15 = [v12 rangeOfString:@"%1$@"];
    v16 = [v12 rangeOfString:@"%3$@"];
    if (v15 < v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v15 >= v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = [v14 rangeAtIndex:v17];
    v21 = [(NSString *)self substringWithRange:v19, v20];
    v22 = [v14 rangeAtIndex:v18];
    v24 = [(NSString *)self substringWithRange:v22, v23];
    v25 = [v24 integerValue];
    goto LABEL_20;
  }

  v26 = [v11 tsu_regexForTitleParsingWithLocalizedCopyString:v10 isFirstCopyFormatString:1];
  if (v26)
  {
    v24 = v26;
    v32 = [v26 firstMatchInString:self options:0 range:{0, -[NSString length](self, "length")}];
    if (v32)
    {
      v27 = [v11 rangeOfString:@"%1$@"];
      v25 = 1;
      if (v27 < [v11 rangeOfString:@"%3$@"])
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v29 = [v32 rangeAtIndex:v28];
      v21 = [(NSString *)self substringWithRange:v29, v30];
    }

    else
    {
      v21 = [(NSString *)self copy];
      v25 = 0;
    }

LABEL_20:
    if (a6)
    {
      *a6 = v25;
    }

    goto LABEL_22;
  }

  v21 = self;
LABEL_22:

LABEL_23:

  return v21;
}

- (id)tsu_stringByApplyingSubstitutions:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self mutableCopy];
  v6 = objc_opt_new();
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100077428;
  v25[3] = &unk_1001CC188;
  v25[4] = v5;
  v25[5] = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v25];
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingComparator:&stru_1001CC1C8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:{v14, v21}];
        v16 = [v14 rangeValue];
        if (v15)
        {
          v18 = v16 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          [v5 replaceCharactersInRange:v16 withString:{v17, v15}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [v5 copy];

  return v19;
}

+ (id)tsu_stringByBase64EncodingBytes:(const char *)a3 length:(unint64_t)a4 breakLines:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [NSMutableString stringWithCapacity:4 * a4 / 3];
  if (v6 < 3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 + 2;
    v16 = 3 * ((v6 - 3) / 3) + 3;
    v10 = -4;
    v11 = 4;
    do
    {
      [v8 appendFormat:@"%c%c%c%c", aAbcdefghijklmn[*(v9 - 2) >> 2], aAbcdefghijklmn[(((*(v9 - 1) << 8) | (*(v9 - 2) << 16)) >> 12) & 0x3F], aAbcdefghijklmn[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F], aAbcdefghijklmn[*v9 & 0x3F]];
      if (v5 && !(v10 + 76 * (v11 / 0x4C)))
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
    [v8 appendFormat:@"%c%c==", aAbcdefghijklmn[a3[v12] >> 2], aAbcdefghijklmn[16 * (a3[v12] & 3)], v15];
  }

  else if (v6 == 2)
  {
    v13 = &a3[v12];
    [v8 appendFormat:@"%c%c%c=", aAbcdefghijklmn[*v13 >> 2], aAbcdefghijklmn[((((v13[1] & 0xF0) << 8) | (*v13 << 16)) >> 12) & 0x3F], aAbcdefghijklmn[4 * (v13[1] & 0xF)]];
  }

  return v8;
}

- (id)tsu_encodeStringBase64
{
  v2 = [(NSString *)self UTF8String];
  v3 = strlen(v2);

  return [NSString tsu_stringByBase64EncodingBytes:v2 length:v3];
}

- (id)tsu_stringByMakingFirstCharacterLowercase
{
  v2 = self;
  if ([(NSString *)v2 length])
  {
    v3 = [(NSString *)v2 substringToIndex:1];
    v4 = [v3 lowercaseString];
    if (([v3 isEqualToString:v4] & 1) == 0)
    {
      v5 = [(NSString *)v2 substringFromIndex:1];
      v6 = [v4 stringByAppendingString:v5];

      v2 = v6;
    }
  }

  return v2;
}

- (id)tsu_stringByMakingFirstCharacterUppercase
{
  v3 = [(NSString *)self mutableCopy];
  if ([v3 length])
  {
    v4 = [(NSString *)self substringToIndex:1];
    v5 = [v4 uppercaseString];
    [v3 replaceCharactersInRange:0 withString:{1, v5}];
  }

  return v3;
}

- (id)tsu_stringTrimByLimitingFirstCharacterToSet:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([(NSString *)v5 length])
  {
    v6 = [(NSString *)v5 characterAtIndex:0];
    if ([(NSString *)v5 length])
    {
      while (([v4 characterIsMember:v6] & 1) == 0)
      {
        v7 = [(NSString *)v5 substringFromIndex:1];

        if ([v7 length])
        {
          v6 = [v7 characterAtIndex:0];
        }

        v5 = v7;
        if (![v7 length])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v7 = v5;
LABEL_9:

  return v7;
}

- (id)tsu_escapeXML
{
  v2 = [(NSString *)self mutableCopy];
  [v2 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)tsu_unescapeXML
{
  v2 = [(NSString *)self mutableCopy];
  [v2 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (BOOL)tsu_containsOnlyCharactersFromSet:(id)a3
{
  v4 = [a3 invertedSet];
  v5 = [(NSString *)self rangeOfCharacterFromSet:v4];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)tsu_stringByDeletingPathExtensionIfEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathExtension];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = [(NSString *)self stringByDeletingPathExtension];
  }

  else
  {
    v7 = self;
  }

  v8 = v7;

  return v8;
}

- (id)tsu_tolerantStringByAppendingPathExtension:(id)a3
{
  v4 = a3;
  if (-[NSString isEqualToString:](self, "isEqualToString:", &stru_1001D3878) || [v4 isEqualToString:&stru_1001D3878])
  {
    v5 = self;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  if ([(NSString *)self isEqualToString:@"\\\\""])
  {
    v8 = [@"\\"" stringByAppendingPathExtension:v4];
    v9 = [@"\\"" stringByAppendingString:v8];
  }

  else
  {
    if (![(NSString *)self length]|| [(NSString *)self characterAtIndex:0]!= 126)
    {
      v5 = [(NSString *)self stringByAppendingPathExtension:v4];
      goto LABEL_4;
    }

    v10 = [@"X" stringByAppendingString:self];
    v8 = [v10 stringByAppendingPathExtension:v4];

    v9 = [v8 substringFromIndex:1];
  }

  v6 = v9;

LABEL_5:

  return v6;
}

+ (id)tsu_stringByHexEncodingData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 bytes];
  v6 = [v3 length];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *v5++;
      [v4 appendFormat:@"%02x", v8];
      --v7;
    }

    while (v7);
  }

  v9 = [v4 copy];

  return v9;
}

- (_NSRange)tsu_rangeOfString:(id)a3 options:(unint64_t)a4 updatingSearchRange:(_NSRange *)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    location = a5->location;
    length = a5->length;
    v12 = [(NSString *)self rangeOfString:v8 options:a4 range:a5->location, length];
    v14 = v12;
    v15 = v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = TSUInvalidRange;
    }

    else if ((a4 & 4) != 0)
    {
      a5->location = location;
      a5->length = v12 - location;
    }

    else
    {
      a5->location = v12 + v13;
      a5->length = length + location - (v12 + v13);
    }
  }

  else
  {
    v14 = -[NSString rangeOfString:options:range:](self, "rangeOfString:options:range:", v8, a4, 0, [v8 length]);
    v15 = v16;
  }

  v17 = v14;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)tsu_range
{
  v2 = [(NSString *)self length];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (void)tsu_enumerateRangesOfCharactersInSet:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSScanner alloc] initWithString:self];
  [v8 setCaseSensitive:1];
  [v8 setCharactersToBeSkipped:0];
  if (([v8 isAtEnd] & 1) == 0)
  {
    do
    {
      v9 = [v8 scanLocation];
      if ([v8 scanCharactersFromSet:v6 intoString:0])
      {
        v10 = [v8 scanLocation];
        v11 = 0;
        v7[2](v7, v9, v10 - v9, &v11);
        if (v11)
        {
          break;
        }
      }

      if (([v8 isAtEnd] & 1) == 0)
      {
        [v8 scanUpToCharactersFromSet:v6 intoString:0];
      }
    }

    while (![v8 isAtEnd]);
  }
}

- (id)tsu_setOfContainedWordsIncludingPunctuationAndSymbols:(BOOL)a3
{
  v3 = a3;
  v30 = +[NSMutableSet set];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100078628;
  v37[3] = &unk_1001CC208;
  v35 = v3;
  v38 = v3;
  v5 = objc_retainBlock(v37);
  v36 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [(NSString *)self length];
  v7 = CFLocaleCopyCurrent();
  v40.location = 0;
  v31 = v6;
  v40.length = v6;
  v8 = CFStringTokenizerCreate(kCFAllocatorDefault, self, v40, 4uLL, v7);
  CFRelease(v7);
  v9 = CFStringTokenizerGoToTokenAtIndex(v8, 0);
  LODWORD(v10) = v9;
  if (!v9)
  {
    (v5[2])(v5, v8);
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
  if (CurrentTokenRange.location != -1)
  {
    location = CurrentTokenRange.location;
    length = CurrentTokenRange.length;
    v14 = 0;
    v15 = CurrentTokenRange.length;
    v34 = self;
    do
    {
      if (location >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = location;
      }

      v32 = v16;
      v33 = length;
      v17 = (v5[2])(v5, v8);
      v18 = CFStringTokenizerGetCurrentTokenRange(v8);
      v19 = v18.location;
      length = v18.length;
      if (v35)
      {
        while (1)
        {
          v20 = v10;
          v10 = v17;
          if (((v20 | v17) & 0x20) != 0)
          {
            if ((v17 & 0x10) == 0)
            {
              goto LABEL_20;
            }
          }

          else if ((v17 & 0x10) != 0 && length == 1)
          {
            if ([v36 characterIsMember:{-[NSString characterAtIndex:](self, "characterAtIndex:", v19)}])
            {
              v28 = 1;
              goto LABEL_21;
            }
          }

          else if (!v17 || (v17 & 0x10) != 0)
          {
            goto LABEL_20;
          }

          v17 = (v5[2])(v5, v8);
          v21 = CFStringTokenizerGetCurrentTokenRange(v8);
          v19 = v21.location;
          length = v21.length;
        }
      }

      v10 = v17;
LABEL_20:
      v28 = length;
LABEL_21:
      v22 = location + v15;
      if (location + v15 <= v31)
      {
        v22 = v31;
      }

      if (v19 > v31 || v10 == 0)
      {
        v14 = v22;
      }

      else
      {
        v14 = v19;
      }

      if (v35)
      {
        v24 = v32;
      }

      else
      {
        v24 = location;
      }

      if (v35)
      {
        v25 = v14 - v32;
      }

      else
      {
        v25 = v33;
      }

      v26 = [(NSString *)v34 substringWithRange:v24, v25, v30];
      v27 = [v26 stringByTrimmingCharactersInSet:v36];

      if ([v27 length])
      {
        [v30 addObject:v27];
      }

      location = v19;
      v15 = v28;
      self = v34;
    }

    while (v19 != -1);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v30;
}

- (id)tsu_stringWithoutAttachmentCharacters
{
  if (qword_1001EAFB0 != -1)
  {
    sub_100159DD0();
  }

  v3 = qword_1001EAFA8;

  return [(NSString *)self stringByReplacingOccurrencesOfString:v3 withString:&stru_1001D3878];
}

- (id)tsu_middleTruncateToLength:(unint64_t)a3
{
  v4 = self;
  if ([(NSString *)v4 length]> a3)
  {
    v5 = (a3 >> 1) - 1;
    v6 = [(NSString *)v4 rangeOfComposedCharacterSequencesForRange:0, v5];
    v8 = [(NSString *)v4 substringWithRange:v6, v7];
    v9 = [(NSString *)v4 rangeOfComposedCharacterSequencesForRange:[(NSString *)v4 length]- v5, v5];
    v11 = [(NSString *)v4 substringWithRange:v9, v10];
    v12 = SFUMainBundle();
    v13 = [v12 localizedStringForKey:@"%1$@…%2$@" value:&stru_1001D3878 table:@"TSUtility"];

    v14 = [NSString localizedStringWithFormat:v13, v8, v11];

    v4 = v14;
  }

  return v4;
}

- (BOOL)tsu_isEqualToString:(id)a3
{
  if (a3)
  {
    return [(NSString *)self isEqualToString:?];
  }

  else
  {
    return 0;
  }
}

- (id)tsu_stringWithNormalizedHyphensAndQuotationMarks
{
  v2 = [(NSString *)self tsu_stringWithNormalizedHyphens];
  v3 = [v2 tsu_stringWithNormalizedQuotationMarks];

  return v3;
}

- (id)tsu_stringWithNormalizedHyphens
{
  if (qword_1001EAFB8 != -1)
  {
    sub_100159DE4();
  }

  v3 = qword_1001EAFC0;

  return [(NSString *)self tsu_stringByReplacingInstancesOfCharactersInSet:v3 withString:@"-"];
}

- (id)tsu_stringWithNormalizedQuotationMarks
{
  if (qword_1001EAFC8 != -1)
  {
    sub_100159DF8();
  }

  v3 = qword_1001EAFD0;

  return [(NSString *)self tsu_stringByReplacingInstancesOfCharactersInSet:v3 withString:@"'"];
}

- (id)tsu_stringWithoutBidiControls
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"\u200E\u200F\u202A\u202B\u202C\u202D\u202E⁦⁧⁨⁩"];
  v4 = [(NSString *)self tsu_stringByReplacingInstancesOfCharactersInSet:v3 withString:&stru_1001D3878];

  return v4;
}

+ (id)tsu_JSONStringFromString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSMutableString string];
    [v3 tsu_appendJSONStringToString:v4];
  }

  else
  {
    v4 = @"null";
  }

  return v4;
}

- (void)tsu_appendJSONStringToString:(id)a3
{
  v4 = a3;
  if (qword_1001EAFE0 != -1)
  {
    sub_100159E0C();
  }

  [v4 appendString:@""];
  if ([(NSString *)self rangeOfCharacterFromSet:qword_1001EAFD8]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSString *)self length];
    v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    [(NSString *)self getCharacters:v6];
    if (!v5)
    {
LABEL_35:
      free(v6);
      goto LABEL_36;
    }

    v7 = v6;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v13 = v9;
      if (v9 <= 12)
      {
        if (v8 > 9)
        {
          if (v8 == 10)
          {
            v10 = v4;
            v11 = @"\\n";
          }

          else
          {
            if (v8 != 12)
            {
              goto LABEL_31;
            }

            v10 = v4;
            v11 = @"\\f";
          }
        }

        else if (v8 == 8)
        {
          v10 = v4;
          v11 = @"\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_31;
          }

          v10 = v4;
          v11 = @"\\t";
        }
      }

      else if (v8 <= 91)
      {
        if (v8 == 13)
        {
          v10 = v4;
          v11 = @"\\r";
        }

        else
        {
          if (v8 != 34)
          {
LABEL_31:
            if (v8 < 0x20)
            {
              [NSString stringWithFormat:@"\\u%.4x", v8];
            }

            else
            {
              [NSString stringWithCharacters:&v13 length:1];
            }
            v12 = ;
            [v4 appendString:v12];

            goto LABEL_29;
          }

          v10 = v4;
          v11 = @"\\"";
        }
      }

      else
      {
        switch(v8)
        {
          case 0x5C:
            v10 = v4;
            v11 = @"\\\\"";
            break;
          case 0x2028:
            v10 = v4;
            v11 = @"\\u2028";
            break;
          case 0x2029:
            v10 = v4;
            v11 = @"\\u2029";
            break;
          default:
            goto LABEL_31;
        }
      }

      [v10 appendString:v11];
LABEL_29:
      if (!--v5)
      {
        goto LABEL_35;
      }
    }
  }

  [v4 appendString:self];
LABEL_36:
  [v4 appendString:@""];
}

- (id)tsu_stringWithoutNonbreakingSpaces
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@" "];
  v4 = [(NSString *)self tsu_stringByReplacingInstancesOfCharactersInSet:v3 withString:@" "];

  return v4;
}

- (id)tsu_stringWithNormalizedSpaces
{
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [(NSString *)self tsu_stringWithoutNonbreakingSpaces];
  v5 = [v4 tsu_stringByReplacingInstancesOfCharactersInSet:v3 withString:@" "];

  return v5;
}

- (id)tsu_uncommentedAddress
{
  v3 = [(NSString *)self length];
  v4 = NSZoneMalloc(0, 2 * v3 + 2);
  v5 = v4;
  v6 = v4;
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v19 = 0;
    v20 = 1;
    v6 = v4;
    do
    {
      v10 = [(NSString *)self characterAtIndex:v7];
      v11 = v10;
      if (v10 == 92)
      {
        if (v7 + 1 >= v3)
        {
          if ((v9 & 1) == 0)
          {
            if (v8 < 1)
            {
              goto LABEL_18;
            }

LABEL_15:
            v9 = 0;
            v8 -= v10 == 41;
            goto LABEL_24;
          }

LABEL_10:
          *v6 = v10;
          v6 += 2;
          v9 &= v10 != 34;
          goto LABEL_24;
        }

        *v6 = 92;
        *(v6 + 1) = [(NSString *)self characterAtIndex:v7 + 1];
        v6 += 4;
        ++v7;
      }

      else
      {
        if (v9)
        {
          goto LABEL_10;
        }

        if (v10 == 40)
        {
          v9 = 0;
          ++v8;
        }

        else
        {
          if (v8 > 0)
          {
            goto LABEL_15;
          }

          if (v10 != 60)
          {
            if ((v19 & (v10 == 62)) != 0)
            {
              break;
            }

            if (v10 > 0x7F)
            {
              if (__maskrune(v10, 0x4000uLL))
              {
LABEL_19:
                v9 = 0;
                if ((v20 & 1) == 0)
                {
                  *v6 = 32;
                  v6 += 2;
                }

                v20 = 1;
                goto LABEL_24;
              }
            }

            else
            {
LABEL_18:
              if ((_DefaultRuneLocale.__runetype[v10] & 0x4000) != 0)
              {
                goto LABEL_19;
              }
            }

            v20 = 0;
            *v6 = v11;
            v6 += 2;
            v9 |= v11 == 34;
            goto LABEL_24;
          }

          v9 = 0;
          v19 = 1;
          v6 = v5;
        }
      }

LABEL_24:
      ++v7;
    }

    while (v7 < v3);
  }

  v12 = v6 - v5;
  do
  {
    v13 = v6;
    v14 = v12;
    if (v6 <= v5)
    {
      break;
    }

    v6 -= 2;
    v15 = *(v13 - 1);
    v16 = v15 > 0x7F ? __maskrune(v15, 0x4000uLL) : _DefaultRuneLocale.__runetype[v15] & 0x4000;
    v12 = v14 - 2;
  }

  while (v16);
  *v13 = 0;
  v17 = [[NSString alloc] initWithCharacters:v5 length:v14 >> 1];
  NSZoneFree(0, v5);

  return v17;
}

- (id)tsu_uncommentedAddressRespectingGroups
{
  v3 = [(NSString *)self rangeOfString:@"@"];
  v4 = [(NSString *)self rangeOfString:@"<"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL && v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = self;
  }

  else
  {
    v6 = [(NSString *)self tsu_uncommentedAddress];
  }

  return v6;
}

- (BOOL)tsu_isCJKString
{
  if (![(NSString *)self length])
  {
    return 0;
  }

  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)self stringByTrimmingCharactersInSet:v3];

  v5 = [v4 length];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  __chkstk_darwin();
  v8 = (&v16 - ((v7 + 17) & 0xFFFFFFFFFFFFFFF0));
  [v4 getCharacters:v8 range:{0, v6}];
  v9 = 0;
  v10 = 1;
  v11 = v6;
  do
  {
    v13 = *v8++;
    v12 = v13;
    v14 = vdup_n_s16(v13);
    if ((vmaxv_u16(vorr_s8(vcgt_u16(0x56D019B6015000E0, vadd_s16(v14, 0xB200CC00CFC0D100)), vceq_s16(vand_s8(v14, 0xFFF0FFC0FF80FF00), 0x319030002E801100))) & 1) == 0 && ((v12 + 21504) >> 2) >= 0xAE9u && (v12 + 1792) >= 0x200u && (v12 + 464) >= 0x20u && (v12 & 0xFFE0) != 0x31A0 && (v12 & 0xFE00) != 0x3200)
    {
      break;
    }

    v9 = v10++ >= v6;
    --v11;
  }

  while (v11);

  return v9;
}

+ (id)tsu_localizedDisplayNameWithPersonNameComponents:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_20;
  }

  v4 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v3 style:0 options:0];
  if (v4)
  {
    goto LABEL_20;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_100159E20();
  }

  if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100159E34();
  }

  v5 = [v3 givenName];
  v6 = [v5 length];
  v7 = [v3 familyName];
  v8 = [v7 length];
  if (v6 && v8)
  {
    if (([v5 tsu_isCJKString] & 1) != 0 || objc_msgSend(v7, "tsu_isCJKString"))
    {
      v9 = [v7 stringByAppendingString:v5];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"%@ %@", v5, v7];
    }
  }

  else if (v6)
  {
    v9 = v5;
  }

  else
  {
    if (!v8)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v9 = v7;
  }

  v4 = v9;
LABEL_19:

LABEL_20:

  return v4;
}

- (id)tsu_sha256HexHashString
{
  v2 = [SFUCryptoUtils sha256HashFromString:self];
  [v2 getBytes:v8 length:32];
  v3 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  v4 = 0;
  v5 = v3;
  do
  {
    snprintf(v5, 3uLL, "%02x", v8[v4++]);
    v5 += 2;
  }

  while (v4 != 32);
  v3[64] = 0;
  v6 = [NSString stringWithUTF8String:v3];
  free(v3);

  return v6;
}

- (int64_t)tsu_compareToVersionString:(id)a3
{
  v4 = a3;
  v5 = sub_100079730(self);
  v6 = sub_100079730(v4);
  v7 = v6;
  if (v5 | v6)
  {
    if (v5 || !v6)
    {
      if (!v5 || v6)
      {
        v10 = 0;
        while (1)
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          v12 = [v7 objectAtIndexedSubscript:v10];
          v8 = [v11 compare:v12];

          if (v8)
          {
            break;
          }

          if (++v10 == 3)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
LABEL_2:
    v8 = 0;
  }

  return v8;
}

- (id)tsu_keyPathByRemovingLastKey
{
  v3 = [(NSString *)self rangeOfString:@"." options:6];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_1001D3878;
  }

  else
  {
    v4 = [(NSString *)self substringToIndex:v3];
  }

  return v4;
}

- (id)tsu_keyPathByRemovingFirstKey
{
  v3 = [(NSString *)self rangeOfString:@"." options:2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = &stru_1001D3878;
  }

  else
  {
    v4 = [(NSString *)self substringFromIndex:v3 + 1];
  }

  return v4;
}

- (id)tsu_keyPathByPrependingKey:(id)a3
{
  v4 = a3;
  if ([(NSString *)self length])
  {
    if ([v4 length])
    {
      v5 = [NSString stringWithFormat:@"%@.%@", v4, self];
      goto LABEL_7;
    }

    v6 = self;
  }

  else
  {
    v6 = v4;
  }

  v5 = [NSString stringWithString:v6];
LABEL_7:
  v7 = v5;

  return v7;
}

- (id)tsu_keyPathByAppendingKey:(id)a3
{
  v4 = a3;
  if ([(NSString *)self length])
  {
    if ([v4 length])
    {
      v5 = [NSString stringWithFormat:@"%@.%@", self, v4];
      goto LABEL_7;
    }

    v6 = self;
  }

  else
  {
    v6 = v4;
  }

  v5 = [NSString stringWithString:v6];
LABEL_7:
  v7 = v5;

  return v7;
}

- (id)tsu_firstKey
{
  v2 = self;
  v3 = [(NSString *)v2 rangeOfString:@"." options:2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)v2 substringToIndex:v3];

    v2 = v4;
  }

  return v2;
}

- (id)tsu_lastKey
{
  v2 = self;
  v3 = [(NSString *)v2 rangeOfString:@"." options:6];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(NSString *)v2 substringFromIndex:v3 + 1];

    v2 = v4;
  }

  return v2;
}

- (unint64_t)tsu_numberOfKeysInKeyPath
{
  v3 = [(NSString *)self length];
  v4 = 0;
  v5 = 0;
  v6 = v3;
  do
  {
    v7 = [(NSString *)self rangeOfString:@"." options:2 range:v4, v6];
    ++v5;
    v4 = &v7[v8];
    v6 = v3 - &v7[v8];
  }

  while (&v7[v8] != 0x7FFFFFFFFFFFFFFFLL);
  return v5;
}

+ (id)tsu_fogShareTokenFromFileURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 lastPathComponent];
    v5 = [v4 dataUsingEncoding:4];
    v6 = [v5 tsu_encodeToHexidecimalString];
    v10[0] = @"fog";
    v10[1] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    v8 = [v7 componentsJoinedByString:@":"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)tsu_fogFilenameFromShareToken:(id)a3
{
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@":"];
    v4 = [v3 firstObject];
    if ([v4 isEqualToString:@"fog"] && objc_msgSend(v3, "count") == 2)
    {
      v5 = [v3 objectAtIndexedSubscript:1];
      v6 = [NSData tsu_decodeFromHexidecimalString:v5];
      v7 = [[NSString alloc] initWithData:v6 encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tsu_initRedactedWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%s" withString:@"<REDACT %s REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%@" withString:@"<REDACT %@ REDACT>" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [[NSString alloc] initWithFormat:v5 arguments:a4];
  if (qword_1001EAFF0 != -1)
  {
    sub_100159E74();
  }

  v7 = [qword_1001EAFE8 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{objc_msgSend(v6, "length"), @"<redacted>"}];

  return v7;
}

- (id)tsu_initUnRedactedWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = [a3 mutableCopy];
  [v5 replaceOccurrencesOfString:@"%{public}" withString:@"%" options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = [(NSString *)self initWithFormat:v5 arguments:a4];

  return v6;
}

+ (id)tsu_redactedStringWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] tsu_initRedactedWithFormat:v5 arguments:a4];

  return v6;
}

+ (id)tsu_unRedactedStringWithFormat:(id)a3 arguments:(char *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] tsu_initUnRedactedWithFormat:v5 arguments:a4];

  return v6;
}

- (id)tsu_initWithSqlStatement:(sqlite3_stmt *)a3 columnIndex:(int)a4
{
  if (sqlite3_column_type(a3, a4) == 5)
  {

    return 0;
  }

  else
  {
    v8 = sqlite3_column_text(a3, a4);

    return [(NSString *)self initWithUTF8String:v8];
  }
}

- (BOOL)tsu_bindToSqlStatement:(sqlite3_stmt *)a3 index:(int)a4 error:(id *)a5
{
  v9 = [(NSString *)self lengthOfBytesUsingEncoding:4];
  if (HIDWORD(v9))
  {
    return 0;
  }

  if (sqlite3_bind_text(a3, a4, [(NSString *)self UTF8String], v9, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015C314();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C328();
      if (!a5)
      {
        return 0;
      }
    }

    else if (!a5)
    {
      return 0;
    }

    if (!*a5)
    {
      v11 = [NSError tsu_errorWithCode:0 userInfo:0];
      result = 0;
      *a5 = v11;
      return result;
    }

    return 0;
  }

  return 1;
}

- (BOOL)tsu_conformsToAnyUTI:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(NSString *)self tsu_conformsToUTI:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (NSString)tsu_pathUTI
{
  v3 = [(NSString *)self pathExtension];
  if (!v3)
  {
    goto LABEL_13;
  }

  if ([(NSString *)self isAbsolutePath])
  {
    v10 = 1;
    v4 = +[NSFileManager defaultManager];
    if ([v4 fileExistsAtPath:self isDirectory:&v10] && v10 != 1)
    {
      v5 = &UTTypeData;
    }

    else
    {
      v5 = &UTTypeDirectory;
    }

    v7 = [*v5 identifier];

    v6 = UTTagClassFilenameExtension;
    v8 = [v3 tsu_preferredIdentifierForTagClass:UTTagClassFilenameExtension conformingToUTI:v7];
    if ([v8 tsu_isDynamic])
    {
    }

    else
    {

      if (v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = UTTagClassFilenameExtension;
  }

  v8 = [v3 tsu_preferredIdentifierForTagClass:v6 conformingToUTI:0];
  if ([v8 tsu_isDynamic])
  {

LABEL_13:
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (NSString)tsu_normalizedFilenameExtension
{
  v2 = [(NSString *)self tsu_pathUTI];
  v3 = [v2 tsu_UTIFilenameExtension];

  return v3;
}

- (BOOL)tsu_pathConformsToUTI:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self pathExtension];
  v6 = [v5 tsu_pathExtensionConformsToUTI:v4];

  return v6;
}

- (BOOL)tsu_pathExtensionConformsToUTI:(id)a3
{
  v4 = a3;
  [(NSString *)self tsu_allFilenameExtensionIdentifiersForTag];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 tsu_isDynamic] & 1) == 0 && (objc_msgSend(v9, "tsu_conformsToUTI:", v4))
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)tsu_preferredIdentifierForTagClass:(id)a3 conformingToUTI:(id)a4
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(a3, self, a4);

  return PreferredIdentifierForTag;
}

- (id)tsu_UTTypeCopyPreferredTagWithClass:(id)a3
{
  v3 = UTTypeCopyPreferredTagWithClass(self, a3);

  return v3;
}

- (id)tsu_allFilenameExtensionIdentifiersForTag
{
  AllIdentifiersForTag = UTTypeCreateAllIdentifiersForTag(UTTagClassFilenameExtension, self, 0);

  return AllIdentifiersForTag;
}

@end