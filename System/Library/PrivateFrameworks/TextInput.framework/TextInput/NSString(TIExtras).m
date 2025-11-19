@interface NSString(TIExtras)
+ (__CFString)_stringFromCharacterSet:()TIExtras;
+ (id)_stringWithUnichar:()TIExtras;
+ (uint64_t)_bopomofoSet;
+ (uint64_t)_bopomofoToneSet;
+ (uint64_t)_bopomofoWithoutToneSet;
+ (uint64_t)_characterSetWithPattern:()TIExtras;
+ (uint64_t)_fullwidthLettersAndNumbersSet;
+ (uint64_t)_fullwidthLettersAndSymbolsSet;
+ (uint64_t)_hiraganaSet;
+ (uint64_t)_ideographSet;
+ (uint64_t)_japaneseLetterSet;
+ (uint64_t)_nonFullwidthLettersAndNumbersSet;
+ (uint64_t)_nonHiraganaKatakanaOrBopomofoSet;
+ (uint64_t)_nonHiraganaOrKatakanaSet;
+ (uint64_t)_nonIdeographicCharacterSet;
+ (uint64_t)_nonJapaneseLetterSet;
+ (uint64_t)_nonKatakanaOrKanjiSet;
+ (uint64_t)_nonKoreanCharacterSet;
+ (uint64_t)_string:()TIExtras matchesString:;
+ (uint64_t)_ti_string:()TIExtras matchesStringIgnoringNullity:;
- (BOOL)_beginsWithPrimaryScriptForLanguage:()TIExtras;
- (BOOL)_containsCJScripts;
- (BOOL)_containsEmoji;
- (BOOL)_containsEmojiOnly;
- (BOOL)_contentsExclusivelyInCharacterSet:()TIExtras;
- (BOOL)_isDelete;
- (BOOL)_isNaturallyRTL;
- (BOOL)_isNewlineOrReturn;
- (BOOL)_isSpace;
- (BOOL)_isSpaceOrReturn;
- (BOOL)_looksLikeNumberInput;
- (BOOL)_looksLikeURL;
- (BOOL)_ti_isKeyEquivalentMirroringCandidate;
- (__CFString)_stringByConvertingFromFullWidthToHalfWidth;
- (__CFString)_stringByConvertingFromHalfWidthToFullWidth;
- (__CFString)_stringWithLongestWhitespaceDelimitedSuffixOfMaxLength:()TIExtras;
- (__CFString)_trimmedOfLeadingNeutralCharacters;
- (id)_firstGrapheme;
- (id)_graphemeAtIndex:()TIExtras;
- (id)_lastGrapheme;
- (id)_stringByApplyingTransform:()TIExtras;
- (id)_stringByComposingDiacriticsLogicalOrder:()TIExtras allowedCharacters:;
- (id)_stringByReplacingCharacter:()TIExtras withCharacter:;
- (id)_stringByReplacingCharactersInSet:()TIExtras withCharacter:;
- (id)_stringByReplacingCharactersInSet:()TIExtras withString:;
- (id)_stringByTranscribingFromLanguage:()TIExtras;
- (id)_stringByTranscribingUsingTokenizer:()TIExtras;
- (id)_stringByTransliteratingToPinyin:()TIExtras;
- (id)_stringByTransliteratingToZhuyin:()TIExtras;
- (id)_stringByTrimmingCharactersInCFCharacterSet:()TIExtras;
- (id)_stringByTrimmingLastCharacter;
- (id)_ti_keyEquivalentMirroring;
- (id)normalizeSmartQuotedStringForLocale:()TIExtras;
- (id)normalizeSmartQuotedStringOnlySingleQuote;
- (uint64_t)_UTF8SizeOfRange:()TIExtras;
- (uint64_t)_containsBopomofoOnly;
- (uint64_t)_containsBopomofoToneOnly;
- (uint64_t)_containsBopomofoWithoutToneOnly;
- (uint64_t)_containsCJKScriptsOnly;
- (uint64_t)_containsCJKSymbolsAndPunctuation;
- (uint64_t)_containsCJScriptsOnly;
- (uint64_t)_containsFullwidthLettersAndNumbersOnly;
- (uint64_t)_containsFullwidthLettersAndSymbolsOnly;
- (uint64_t)_containsHiraganaOnly;
- (uint64_t)_containsIdeographsOrBopomofoOnly;
- (uint64_t)_containsJapaneseOnly;
- (uint64_t)_containsSymbolsAndPunctuationOnly;
- (uint64_t)_contentsExclusivelyInScript:()TIExtras;
- (uint64_t)_editDistanceFrom:()TIExtras;
- (uint64_t)_endsSentence;
- (uint64_t)_firstChar;
- (uint64_t)_firstLongCharacter;
- (uint64_t)_graphemeCount;
- (uint64_t)_indexByTrimmingWordsAfterIndex:()TIExtras;
- (uint64_t)_indexByTrimmingWordsBeforeIndex:()TIExtras;
- (uint64_t)_indexFromStartingIndex:()TIExtras byIncrementingComposedCharacterSequenceCount:;
- (uint64_t)_isBasicLatin;
- (uint64_t)_isIdeographicGlyphs;
- (uint64_t)_isLeftAssociative;
- (uint64_t)_isLowercaseStringWithLocale:()TIExtras;
- (uint64_t)_isModifierSymbol;
- (uint64_t)_isOnlyIdeographs;
- (uint64_t)_isTripledPunctuation;
- (uint64_t)_lastLongCharacter;
- (uint64_t)_rangeOfCharacterClusterAtIndex:()TIExtras withClusterOffset:;
- (uint64_t)_rangeOfLongCharacterAtIndex:()TIExtras;
- (uint64_t)_rangeOfString:()TIExtras fromLocation:;
- (uint64_t)_ti_supplementalPrefixOfLastToken:()TIExtras;
- (uint64_t)smartQuoteInsensitiveStringEquivalent:()TIExtras forLocale:;
- (void)_enumerateLongCharactersInRange:()TIExtras usingBlock:;
- (void)_reverseEnumerateLongCharactersInRange:()TIExtras usingBlock:;
@end

@implementation NSString(TIExtras)

- (BOOL)_containsEmoji
{
  if (__TIEmojiCharacterSet___onceToken != -1)
  {
    dispatch_once(&__TIEmojiCharacterSet___onceToken, &__block_literal_global_393);
  }

  return __TIEmojiCharacterSet___emojiCharacterSet && [a1 rangeOfCharacterFromSet:?] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_isNaturallyRTL
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [(__CFString *)a1 length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (_os_feature_enabled_impl())
  {
    v4 = [(__CFString *)a1 _trimmedOfLeadingNeutralCharacters];
    v5 = [v4 length];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
      v7 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
      memset(v7, 255, v5);
      v8 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
      memset(v8, 255, v5);
      CFAttributedStringGetStatisticalWritingDirections();
      v5 = *v8 == 1;
      free(v8);
      free(v7);
    }
  }

  else
  {
    if (CFStringGetCharactersPtr(a1))
    {
      BaseDirection = ubidi_getBaseDirection();
    }

    else
    {
      if (v3 < 0x81)
      {
        v10 = &v12;
      }

      else
      {
        v10 = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
      }

      [(__CFString *)a1 getCharacters:v10];
      BaseDirection = ubidi_getBaseDirection();
      if (v3 >= 0x81)
      {
        free(v10);
      }
    }

    return BaseDirection == 1;
  }

  return v5;
}

- (uint64_t)_isIdeographicGlyphs
{
  v2 = [a1 length];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = v2 - 1;
  while (1)
  {
    v7 = [a1 characterAtIndex:v4];
    v8 = v7;
    if (v6 > v4 && (v7 & 0xFC00) == 0xD800)
    {
      v8 = [a1 characterAtIndex:++v5] + (v7 << 10) - 56613888;
    }

    if (!u_hasBinaryProperty(v8, UCHAR_IDEOGRAPHIC) && u_getIntPropertyValue(v8, UCHAR_EAST_ASIAN_WIDTH) != 3 && !uscript_hasScript())
    {
      result = uscript_hasScript();
      if (!result)
      {
        break;
      }
    }

    v4 = ++v5;
    if (v3 <= v5)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)_containsEmojiOnly
{
  if (![a1 length])
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [a1 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__NSString_TIExtras___containsEmojiOnly__block_invoke;
  v6[3] = &unk_1E6F4B9A0;
  v6[4] = &v7;
  [a1 _enumerateEmojiTokensInRange:0 block:{v2, v6}];
  v3 = v8[3];
  v4 = v3 == [a1 length];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (uint64_t)_isLowercaseStringWithLocale:()TIExtras
{
  v2 = [a1 lowercaseStringWithLocale:?];
  v3 = [a1 isEqualToString:v2];

  return v3;
}

- (BOOL)_beginsWithPrimaryScriptForLanguage:()TIExtras
{
  v4 = a3;
  if ([a1 length])
  {
    [a1 _firstChar];
    Script = uscript_getScript();
    [v4 cStringUsingEncoding:4];
    Code = uscript_getCode();
    v7 = 0;
    if (Code)
    {
      v7 = Script == v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_indexByTrimmingWordsAfterIndex:()TIExtras
{
  v3 = a3;
  if ([a1 length] > a3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = [a1 length];
    v5 = [a1 length];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__NSString_TIExtras___indexByTrimmingWordsAfterIndex___block_invoke;
    v8[3] = &unk_1E6F4BA18;
    v8[4] = &v9;
    v8[5] = v3;
    [a1 enumerateSubstringsInRange:0 options:v5 usingBlock:{3, v8}];
    v6 = v10[3];
    if (v6 >= [a1 length])
    {
      v3 = [a1 rangeOfComposedCharacterSequenceAtIndex:v3];
    }

    else
    {
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
  }

  return v3;
}

- (uint64_t)_indexByTrimmingWordsBeforeIndex:()TIExtras
{
  if (!a3)
  {
    return 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [a1 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__NSString_TIExtras___indexByTrimmingWordsBeforeIndex___block_invoke;
  v10[3] = &unk_1E6F4BA18;
  v10[4] = &v11;
  v10[5] = a3;
  [a1 enumerateSubstringsInRange:0 options:v5 usingBlock:{259, v10}];
  v6 = v12[3];
  if (!v6)
  {
    v7 = [a1 rangeOfComposedCharacterSequenceAtIndex:a3 - 1];
    v6 = v7 + v8;
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (uint64_t)smartQuoteInsensitiveStringEquivalent:()TIExtras forLocale:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 normalizeSmartQuotedStringForLocale:v6];
  v9 = [v7 normalizeSmartQuotedStringForLocale:v6];

  v10 = [v8 isEqualToString:v9];
  return v10;
}

- (id)normalizeSmartQuotedStringOnlySingleQuote
{
  v2 = [a1 mutableCopy];
  if ([&unk_1EF7CB1D0 count])
  {
    v3 = 0;
    do
    {
      v4 = [&unk_1EF7CB1D0 objectAtIndex:v3];
      [v2 replaceOccurrencesOfString:v4 withString:@"'" options:2 range:{0, objc_msgSend(a1, "length")}];

      ++v3;
    }

    while ([&unk_1EF7CB1D0 count] > v3);
  }

  return v2;
}

- (id)normalizeSmartQuotedStringForLocale:()TIExtras
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = [TISmartPunctuationOptions smartPunctuationOptionsForLocale:?];
  v3 = [v2 leftSingleQuote];
  v18[0] = v3;
  v19[0] = @"'";
  v4 = [v2 rightSingleQuote];
  v18[1] = v4;
  v19[1] = @"'";
  v5 = [v2 apostrophe];
  v18[2] = v5;
  v19[2] = @"'";
  v6 = [v2 leftDoubleQuote];
  v18[3] = v6;
  v19[3] = @"";
  v7 = [v2 rightDoubleQuote];
  v18[4] = v7;
  v19[4] = @"";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = a1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__NSString_TIExtras__normalizeSmartQuotedStringForLocale___block_invoke;
  v11[3] = &unk_1E6F4B9F0;
  v11[4] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (uint64_t)_indexFromStartingIndex:()TIExtras byIncrementingComposedCharacterSequenceCount:
{
  if ([a1 length] && objc_msgSend(a1, "length") > a3)
  {
    if (a4)
    {
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v14[3] = 0;
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = [a1 length];
      v7 = [a1 length];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __91__NSString_TIExtras___indexFromStartingIndex_byIncrementingComposedCharacterSequenceCount___block_invoke;
      v9[3] = &unk_1E6F4B978;
      v9[5] = &v10;
      v9[6] = a4;
      v9[4] = v14;
      [a1 enumerateSubstringsInRange:a3 options:v7 - a3 usingBlock:{514, v9}];
      a3 = v11[3];
      _Block_object_dispose(&v10, 8);
      _Block_object_dispose(v14, 8);
    }

    return a3;
  }

  else
  {

    return [a1 length];
  }
}

- (id)_stringByComposingDiacriticsLogicalOrder:()TIExtras allowedCharacters:
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(a1, "length")}];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v8 = [a1 length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__NSString_TIExtras___stringByComposingDiacriticsLogicalOrder_allowedCharacters___block_invoke;
  v14[3] = &unk_1E6F4B9C8;
  v18 = a3;
  v16 = v6;
  v17 = v19;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  [a1 _enumerateLongCharactersInRange:0 usingBlock:{v8, v14}];
  v11 = v15;
  v12 = v9;

  _Block_object_dispose(v19, 8);

  return v12;
}

- (uint64_t)_editDistanceFrom:()TIExtras
{
  v4 = a3;
  v5 = [a1 length];
  v6 = v5;
  v7 = 65534;
  if (v5 >= 0xFFFE)
  {
    v8 = 65534;
  }

  else
  {
    v8 = v5;
  }

  v9 = [v4 length];
  if (v9 < 0xFFFE)
  {
    v7 = v9;
  }

  if (v6)
  {
    if (v9)
    {
      v10 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
      v11 = malloc_type_malloc(2 * v7, 0x1000040BDFB0063uLL);
      [a1 getCharacters:v10 range:{0, v8}];
      [v4 getCharacters:v11 range:{0, v7}];
      v12 = malloc_type_malloc((2 * v8 + 2) & 0xFFFE, 0x723CDF9uLL);
      v13 = malloc_type_malloc((2 * v8 + 2) & 0xFFFE, 0x6B8C47AEuLL);
      v14 = malloc_type_malloc((2 * v8 + 2) & 0xFFFE, 0xC012466EuLL);
      v15 = 0;
      v16 = vdupq_n_s64(v8);
      v17 = v14 + 4;
      v18 = xmmword_186483E60;
      v19 = xmmword_186483E70;
      v20 = xmmword_186483E80;
      v21 = xmmword_186483E90;
      v22 = vdupq_n_s64(8uLL);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v16, v21));
        if (vuzp1_s8(vuzp1_s16(v23, *v16.i8), *v16.i8).u8[0])
        {
          *(v17 - 4) = v15;
        }

        if (vuzp1_s8(vuzp1_s16(v23, *&v16), *&v16).i8[1])
        {
          *(v17 - 3) = v15 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v20))), *&v16).i8[2])
        {
          *(v17 - 2) = v15 | 2;
          *(v17 - 1) = v15 | 3;
        }

        v24 = vmovn_s64(vcgeq_u64(v16, v19));
        if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i32[1])
        {
          *v17 = v15 | 4;
        }

        if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i8[5])
        {
          v17[1] = v15 | 5;
        }

        if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v18)))).i8[6])
        {
          v17[2] = v15 | 6;
          v17[3] = v15 | 7;
        }

        v15 += 8;
        v19 = vaddq_s64(v19, v22);
        v20 = vaddq_s64(v20, v22);
        v21 = vaddq_s64(v21, v22);
        v18 = vaddq_s64(v18, v22);
        v17 += 8;
      }

      while (((v8 + 8) & 0x1FFF8) != v15);
      v25 = 0;
      do
      {
        v26 = 0;
        v27 = v14;
        v28 = v13;
        v14 = v12;
        v29 = v13 - 2;
        *v12 = *v27 + 1;
        v30 = v12 + 1;
        v31 = &v11[2 * v25];
        do
        {
          v32 = (*&v27[v26 + 2] + 1);
          LOWORD(v33) = *&v27[v26];
          if (*&v10[v26] != *v31)
          {
            LOWORD(v33) = v33 + 1;
          }

          v33 = v33;
          if (v32 >= (v12[v26 / 2] + 1))
          {
            v32 = (v12[v26 / 2] + 1);
          }

          if (v33 >= v32)
          {
            v33 = v32;
          }

          v30[v26 / 2] = v33;
          if (v25)
          {
            if (v26)
            {
              v34 = *&v10[v26];
              if (v34 == *(v31 - 1))
              {
                v35 = *v31;
                if (*&v10[v26 - 2] == v35 && v34 != v35)
                {
                  if (v33 >= (*&v29[v26] + 1))
                  {
                    LOWORD(v33) = *&v29[v26] + 1;
                  }

                  v30[v26 / 2] = v33;
                }
              }
            }
          }

          v26 += 2;
        }

        while (2 * v8 != v26);
        ++v25;
        v12 = v13;
        v13 = v27;
      }

      while (v25 != v7);
      v7 = v14[v8];
      free(v28);
      free(v27);
      free(v14);
      free(v10);
      free(v11);
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

- (id)_stringByTransliteratingToZhuyin:()TIExtras
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = @"Han-Latin/Names; Latin-Bopomofo";
  }

  else
  {
    v3 = @"Han-Latin; Latin-Bopomofo";
  }

  v4 = [a1 _stringByApplyingTransform:v3];
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 componentsSeparatedByString:@" "];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [v11 substringFromIndex:{objc_msgSend(v11, "length") - 1}];
          v13 = [@"ˉˊˇˋ˙" rangeOfString:v12];

          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [v11 stringByAppendingString:@"ˉ"];

            v11 = v14;
          }

          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 componentsJoinedByString:&stru_1EF56D550];

  return v15;
}

- (id)_stringByTransliteratingToPinyin:()TIExtras
{
  v5 = [a1 _isOnlyIdeographs];
  v6 = @"Han-Latin; [:Space_Separator:] Remove; Any-Title; NFD";
  if (a3)
  {
    v6 = @"Han-Latin/Names; [:Space_Separator:] Remove; Any-Title; NFD";
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Any-Latin; [:Space_Separator:] Remove; Any-Title; NFD";
  }

  v8 = [a1 _stringByApplyingTransform:v7];

  return v8;
}

- (id)_stringByApplyingTransform:()TIExtras
{
  v4 = a1;
  if (a3)
  {
    v5 = MEMORY[0x1E696AD60];
    v6 = a3;
    v7 = [v5 stringWithString:v4];
    LODWORD(v5) = CFStringTransform(v7, 0, v6, 0);

    if (v5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithString:v7];

      v4 = v8;
    }
  }

  return v4;
}

- (id)_stringByTranscribingUsingTokenizer:()TIExtras
{
  if (a3)
  {
    v10.length = [(__CFString *)a1 length];
    v10.location = 0;
    CFStringTokenizerSetString(a3, a1, v10);
    v5 = 0;
    while (CFStringTokenizerAdvanceToNextToken(a3))
    {
      v6 = CFStringTokenizerCopyCurrentTokenAttribute(a3, 0x400000uLL);
      if ([v6 length])
      {
        if (v5)
        {
          v7 = [v5 stringByAppendingString:v6];

          v5 = v7;
        }

        else
        {
          v5 = v6;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_stringByTranscribingFromLanguage:()TIExtras
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF58];
    v5 = a3;
    v6 = [[v4 alloc] initWithLocaleIdentifier:v5];

    v11.location = 0;
    v11.length = 0;
    v7 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], 0, v11, 4uLL, v6);
    v8 = [a1 _stringByTranscribingUsingTokenizer:v7];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__CFString)_stringByConvertingFromFullWidthToHalfWidth
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] stringWithString:a1];
  if (CFStringTransform(v2, 0, *MEMORY[0x1E695E980], 0))
  {
    v1 = v2;
  }

  v3 = v1;

  return v1;
}

- (__CFString)_stringByConvertingFromHalfWidthToFullWidth
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] stringWithString:a1];
  if (CFStringTransform(v2, 0, *MEMORY[0x1E695E980], 1u))
  {
    v1 = v2;
  }

  v3 = v1;

  return v1;
}

- (uint64_t)_containsFullwidthLettersAndSymbolsOnly
{
  v2 = [objc_opt_class() _fullwidthLettersAndSymbolsSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_containsFullwidthLettersAndNumbersOnly
{
  v2 = [objc_opt_class() _fullwidthLettersAndNumbersSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_containsSymbolsAndPunctuationOnly
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NSString_TIExtras___containsSymbolsAndPunctuationOnly__block_invoke;
  block[3] = &unk_1E6F4D860;
  block[4] = a1;
  if (_containsSymbolsAndPunctuationOnly___onceToken != -1)
  {
    dispatch_once(&_containsSymbolsAndPunctuationOnly___onceToken, block);
  }

  return [a1 _contentsExclusivelyInCharacterSet:_containsSymbolsAndPunctuationOnly___SymbolsSet];
}

- (uint64_t)_containsCJKSymbolsAndPunctuation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NSString_TIExtras___containsCJKSymbolsAndPunctuation__block_invoke;
  block[3] = &unk_1E6F4D860;
  block[4] = a1;
  if (_containsCJKSymbolsAndPunctuation___onceToken != -1)
  {
    dispatch_once(&_containsCJKSymbolsAndPunctuation___onceToken, block);
  }

  return [a1 _contentsExclusivelyInCharacterSet:_containsCJKSymbolsAndPunctuation___nonCJKSymbolsSet] ^ 1;
}

- (uint64_t)_containsCJKScriptsOnly
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NSString_TIExtras___containsCJKScriptsOnly__block_invoke;
  block[3] = &unk_1E6F4D860;
  block[4] = a1;
  if (_containsCJKScriptsOnly___onceToken != -1)
  {
    dispatch_once(&_containsCJKScriptsOnly___onceToken, block);
  }

  return [a1 _contentsExclusivelyInCharacterSet:_containsCJKScriptsOnly___CJKSet];
}

- (uint64_t)_containsCJScriptsOnly
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NSString_TIExtras___containsCJScriptsOnly__block_invoke;
  block[3] = &unk_1E6F4D860;
  block[4] = a1;
  if (_containsCJScriptsOnly___onceToken != -1)
  {
    dispatch_once(&_containsCJScriptsOnly___onceToken, block);
  }

  return [a1 _contentsExclusivelyInCharacterSet:_containsCJScriptsOnly___CJSet];
}

- (uint64_t)_containsIdeographsOrBopomofoOnly
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NSString_TIExtras___containsIdeographsOrBopomofoOnly__block_invoke;
  block[3] = &unk_1E6F4D860;
  block[4] = a1;
  if (_containsIdeographsOrBopomofoOnly___onceToken != -1)
  {
    dispatch_once(&_containsIdeographsOrBopomofoOnly___onceToken, block);
  }

  return [a1 _contentsExclusivelyInCharacterSet:_containsIdeographsOrBopomofoOnly___KanijChineseBopomofoSet];
}

- (uint64_t)_containsBopomofoWithoutToneOnly
{
  v2 = [objc_opt_class() _bopomofoWithoutToneSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_containsBopomofoToneOnly
{
  v2 = [objc_opt_class() _bopomofoToneSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_containsBopomofoOnly
{
  v2 = [objc_opt_class() _bopomofoSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (id)_ti_keyEquivalentMirroring
{
  v2 = __TIKeyEquivalentMirroringCandidatesMap();
  v3 = [v2 objectForKeyedSubscript:a1];

  return v3;
}

- (BOOL)_ti_isKeyEquivalentMirroringCandidate
{
  v2 = __TIKeyEquivalentMirroringCandidatesMap();
  v3 = [v2 objectForKeyedSubscript:a1];
  v4 = v3 != 0;

  return v4;
}

- (uint64_t)_containsHiraganaOnly
{
  v2 = [objc_opt_class() _hiraganaSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_containsJapaneseOnly
{
  v2 = [objc_opt_class() _japaneseLetterSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (uint64_t)_graphemeCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__NSString_TIExtras___graphemeCount__block_invoke;
  v5[3] = &unk_1E6F4BBD8;
  v5[4] = &v6;
  [a1 enumerateSubstringsInRange:0 options:v2 usingBlock:{514, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_graphemeAtIndex:()TIExtras
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = [a1 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__NSString_TIExtras___graphemeAtIndex___block_invoke;
  v8[3] = &unk_1E6F4B978;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = v15;
  [a1 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v8}];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(v15, 8);

  return v6;
}

- (id)_lastGrapheme
{
  if ([a1 length] > 1)
  {
    v3 = [a1 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(a1, "length") - 1}];
    v2 = [a1 substringWithRange:{v3, v4}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)_firstGrapheme
{
  v2 = [a1 length];
  if (v2 == 1)
  {
    v3 = a1;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy_;
    v11 = __Block_byref_object_dispose_;
    v12 = 0;
    if (v2 >= 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = v2;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__NSString_TIExtras___firstGrapheme__block_invoke;
    v6[3] = &unk_1E6F4BBD8;
    v6[4] = &v7;
    [a1 enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v6}];
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (uint64_t)_isOnlyIdeographs
{
  v2 = [objc_opt_class() _ideographSet];

  return [a1 _contentsExclusivelyInCharacterSet:v2];
}

- (BOOL)_containsCJScripts
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    [a1 characterAtIndex:v2];
    IsCJScript = TICharIsCJScript();
    if (IsCJScript)
    {
      break;
    }

    ++v2;
  }

  while ([a1 length] > v2);
  return IsCJScript;
}

- (__CFString)_trimmedOfLeadingNeutralCharacters
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(__CFString *)a1 length];
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    v4 = CharactersPtr;
    v5 = 0;
  }

  else
  {
    v5 = v2 > 0x80;
    if (v2 < 0x81)
    {
      v4 = &v13;
    }

    else
    {
      v4 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    }

    [(__CFString *)a1 getCharacters:v4];
  }

  v6 = v2 + 1;
  v7 = v4;
  do
  {
    if (!--v6)
    {
      if (v2)
      {
        v11 = 0;
        if (!v5)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v8 = v7;
    BaseDirection = ubidi_getBaseDirection();
    v7 = v8 + 2;
  }

  while (BaseDirection == 3);
  if (v6 != v2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:v8 length:v6];
    goto LABEL_16;
  }

LABEL_15:
  v10 = a1;
LABEL_16:
  v11 = v10;
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_17:
  free(v4);
LABEL_18:

  return v11;
}

- (BOOL)_looksLikeURL
{
  v2 = [a1 lowercaseString];
  v3 = [v2 hasPrefix:@"www"];

  if (v3)
  {
    return 1;
  }

  v5 = [a1 rangeOfString:@"://" options:2];
  return v5 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0;
}

- (BOOL)_looksLikeNumberInput
{
  if (_looksLikeNumberInput_onceToken != -1)
  {
    dispatch_once(&_looksLikeNumberInput_onceToken, &__block_literal_global_75);
  }

  return [a1 rangeOfCharacterFromSet:_looksLikeNumberInput___nonNumberInputSet] == 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)_isBasicLatin
{
  result = [a1 length];
  if (result)
  {
    return ublock_getCode([a1 _firstLongCharacter]) == UBLOCK_BASIC_LATIN;
  }

  return result;
}

- (BOOL)_isNewlineOrReturn
{
  if ([a1 length] != 1)
  {
    return 0;
  }

  v2 = [a1 characterAtIndex:0];
  return v2 == 13 || v2 == 10;
}

- (BOOL)_isDelete
{
  if ([a1 length] != 1)
  {
    return 0;
  }

  v2 = [a1 characterAtIndex:0];
  return v2 == 127 || v2 == 8;
}

- (BOOL)_isSpace
{
  if ([a1 length] != 1)
  {
    return 0;
  }

  v2 = [a1 characterAtIndex:0];
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  return CFCharacterSetIsLongCharacterMember(Predefined, v2) != 0;
}

- (BOOL)_isSpaceOrReturn
{
  if ([a1 length] != 1)
  {
    return 0;
  }

  v2 = [a1 characterAtIndex:0];
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  return CFCharacterSetIsLongCharacterMember(Predefined, v2) != 0;
}

- (uint64_t)_isTripledPunctuation
{
  if ([a1 hasPrefix:@"!!!"] & 1) != 0 || (objc_msgSend(a1, "hasPrefix:", @"..."))
  {
    return 1;
  }

  return [a1 hasPrefix:@"???"];
}

- (uint64_t)_isLeftAssociative
{
  v2 = [a1 length];
  if (v2 < 3)
  {
    if (v2 == 1)
    {
      v4 = [a1 characterAtIndex:0];
      v5 = 0x8000400200000000 >> v4;
      if (v4 > 0x3F)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  else
  {

    return [a1 _isTripledPunctuation];
  }
}

- (uint64_t)_isModifierSymbol
{
  result = [a1 length];
  if (result)
  {
    return u_charType([a1 _firstLongCharacter]) == 26;
  }

  return result;
}

- (uint64_t)_endsSentence
{
  v2 = [a1 length];
  if (v2 < 3)
  {
    if (v2 == 1)
    {
      v4 = [a1 characterAtIndex:0];
      v5 = 0x8800400200000400 >> v4;
      if (v4 > 0x3F)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  else
  {

    return [a1 _isTripledPunctuation];
  }
}

- (uint64_t)_UTF8SizeOfRange:()TIExtras
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 4 * a4;
  if ((4 * a4) < 0x401)
  {
    v8 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(4 * a4, 0x100004077774924uLL);
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &v12;
  }

  v11 = 0;
  [a1 getBytes:v9 maxLength:v7 usedLength:&v11 encoding:4 options:0 range:a3 remainingRange:{a4, 0}];
  free(v8);
  return v11;
}

- (uint64_t)_rangeOfString:()TIExtras fromLocation:
{
  v6 = a3;
  if ([v6 length])
  {
    a4 = [a1 rangeOfString:v6 options:2 range:{a4, objc_msgSend(a1, "length") - a4}];
  }

  return a4;
}

- (uint64_t)_rangeOfCharacterClusterAtIndex:()TIExtras withClusterOffset:
{
  if (!a4)
  {
    return a3;
  }

  v5 = a4;
  if (a4 > 0)
  {
    v7 = [a1 length];
    v8 = 0;
    do
    {
      if (v8 + a3 >= v7)
      {
        break;
      }

      [a1 rangeOfComposedCharacterSequenceAtIndex:?];
      v8 += v9;
      --v5;
    }

    while (v5);
    return a3;
  }

  v12 = 0;
  if (!a3)
  {
    return 0;
  }

  v13 = -1;
  v10 = a3;
  do
  {
    [a1 rangeOfComposedCharacterSequenceAtIndex:~v12 + a3];
    v10 -= v14;
    v12 += v14;
    if (v13 <= v5)
    {
      break;
    }

    --v13;
  }

  while (v12 != a3);
  return v10;
}

- (__CFString)_stringWithLongestWhitespaceDelimitedSuffixOfMaxLength:()TIExtras
{
  if ([a1 length] <= a3)
  {
    v12 = a1;
  }

  else
  {
    v5 = [a1 rangeOfComposedCharacterSequenceAtIndex:{objc_msgSend(a1, "length") + ~a3}];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, v7 = [a1 length] - v5, objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(a1, "rangeOfCharacterFromSet:options:range:", v8, 0, v6, v7), v11 = v10, v8, v9 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v12 = &stru_1EF56D550;
    }

    else
    {
      v12 = [a1 substringWithRange:{v9 + v11, objc_msgSend(a1, "length") - (v9 + v11)}];
    }
  }

  return v12;
}

- (id)_stringByReplacingCharacter:()TIExtras withCharacter:
{
  v6 = [MEMORY[0x1E696AEC0] _stringWithUnichar:?];
  v7 = [MEMORY[0x1E696AEC0] _stringWithUnichar:a4];
  v8 = [a1 stringByReplacingOccurrencesOfString:v6 withString:v7 options:2 range:{0, objc_msgSend(a1, "length")}];

  return v8;
}

- (id)_stringByReplacingCharactersInSet:()TIExtras withCharacter:
{
  v6 = [MEMORY[0x1E696AEC0] _stringWithUnichar:a4];
  v7 = [a1 _stringByReplacingCharactersInSet:a3 withString:v6];

  return v7;
}

- (id)_stringByReplacingCharactersInSet:()TIExtras withString:
{
  v6 = a4;
  if (a3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8 = [a1 length];
    v9 = [a1 rangeOfCharacterFromSet:a3 options:0 range:{0, v8}];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v13 = v9;
      v14 = v10;
      v11 = 0;
      do
      {
        v15 = [a1 substringWithRange:{v11, v13 - v11}];
        [v7 appendString:v15];

        [v7 appendString:v6];
        v11 = v13 + v14;
        v8 = [a1 length] - (v13 + v14);
        v13 = [a1 rangeOfCharacterFromSet:a3 options:0 range:{v13 + v14, v8}];
        v14 = v16;
      }

      while (v13 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v17 = [a1 substringWithRange:{v11, v8}];
    [v7 appendString:v17];

    v12 = [MEMORY[0x1E696AEC0] stringWithString:v7];
  }

  else
  {
    v12 = a1;
  }

  return v12;
}

- (id)_stringByTrimmingLastCharacter
{
  v2 = [a1 length];
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = v2 - 1;
    if (([a1 characterAtIndex:v2 - 1] & 0xFC00) == 0xDC00 && (objc_msgSend(a1, "characterAtIndex:", v3) & 0xFC00) == 0xD800)
    {
      v5 = a1;
      v6 = v3;
LABEL_8:
      v7 = [v5 substringToIndex:v6];
      goto LABEL_9;
    }

LABEL_7:
    v5 = a1;
    v6 = v4;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v7 = a1;
LABEL_9:

  return v7;
}

- (id)_stringByTrimmingCharactersInCFCharacterSet:()TIExtras
{
  if (a3)
  {
    v3 = [a1 stringByTrimmingCharactersInSet:?];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (uint64_t)_contentsExclusivelyInScript:()TIExtras
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = [a1 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__NSString_TIExtras___contentsExclusivelyInScript___block_invoke;
  v8[3] = &unk_1E6F4B950;
  v9 = a3;
  v8[4] = &v10;
  [a1 _enumerateLongCharactersInRange:0 usingBlock:{v5, v8}];
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)_contentsExclusivelyInCharacterSet:()TIExtras
{
  v11[125] = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  if ([a1 _fastCharacterContents])
  {
    return uset_containsAllCodePoints() != 0;
  }

  if (v2 > 0x1F3)
  {
    v5 = v2;
    v6 = 500;
    do
    {
      v7 = v5 - 500;
      if (v5 >= 0x1F4)
      {
        v8 = 500;
      }

      else
      {
        v8 = v5;
      }

      [a1 getCharacters:v11 range:{v6 - 500, v8}];
      v9 = uset_containsAllCodePoints();
      result = v9 != 0;
      if (!v9)
      {
        break;
      }

      v5 = v7;
      v10 = v6 >= v2;
      v6 += 500;
    }

    while (!v10);
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    [a1 getCharacters:v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v2}];
    return uset_containsAllCodePoints() != 0;
  }

  return result;
}

- (void)_reverseEnumerateLongCharactersInRange:()TIExtras usingBlock:
{
  v8 = a5;
  v14 = 0;
  if (a3 + a4 - 1 >= a3)
  {
    v9 = 0;
    v10 = a3 + a4 - 2;
    while (1)
    {
      v11 = [a1 characterAtIndex:v10 + 1];
      v12 = v11;
      if ((v11 & 0xF800) != 0xD800)
      {
        goto LABEL_7;
      }

      if ((~v11 & 0xDC00) == 0)
      {
        goto LABEL_9;
      }

      if (v9)
      {
        break;
      }

LABEL_8:
      LODWORD(v12) = 0;
LABEL_9:
      if ((v14 & 1) == 0)
      {
        v9 = v12;
        if (v10-- >= a3)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v12 = (v9 + (v11 << 10) - 56613888);
LABEL_7:
    v8[2](v8, v12, &v14);
    goto LABEL_8;
  }

LABEL_12:
}

- (void)_enumerateLongCharactersInRange:()TIExtras usingBlock:
{
  v8 = a5;
  v13 = 0;
  v9 = a3 + a4;
  if (a3 < v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [a1 characterAtIndex:a3];
      v12 = v11;
      if ((v11 & 0xF800) != 0xD800)
      {
        goto LABEL_7;
      }

      if ((v11 & 0xDC00) == 0xD800)
      {
        goto LABEL_9;
      }

      if (v10)
      {
        break;
      }

LABEL_8:
      LODWORD(v12) = 0;
LABEL_9:
      if ((v13 & 1) == 0)
      {
        ++a3;
        v10 = v12;
        if (a3 < v9)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v12 = (v11 + (v10 << 10) - 56613888);
LABEL_7:
    v8[2](v8, v12, &v13);
    goto LABEL_8;
  }

LABEL_11:
}

- (uint64_t)_rangeOfLongCharacterAtIndex:()TIExtras
{
  v5 = [a1 characterAtIndex:?];
  if ((v5 & 0xF800) == 0xD800)
  {
    if ((v5 & 0xDC00) == 0xDC00)
    {
      if (a3)
      {
        --a3;
      }

      else
      {
        return 0;
      }
    }

    else if ((v5 & 0xDC00) == 0xD800)
    {
      [a1 length];
    }
  }

  return a3;
}

- (uint64_t)_lastLongCharacter
{
  v2 = [a1 length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [a1 characterAtIndex:v2 - 1];
  if ((v4 & 0xFC00) == 0xDC00 && [a1 length] >= 2)
  {
    v5 = [a1 characterAtIndex:v3 - 2];
    if ((v5 & 0xFC00) == 0xD800)
    {
      return (v4 + (v5 << 10) - 56613888);
    }
  }

  return v4;
}

- (uint64_t)_firstLongCharacter
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [a1 characterAtIndex:0];
  if ((v2 & 0xFC00) == 0xD800 && [a1 length] >= 2)
  {
    v3 = [a1 characterAtIndex:1];
    if ((v3 & 0xFC00) == 0xDC00)
    {
      return (v3 + (v2 << 10) - 56613888);
    }
  }

  return v2;
}

- (uint64_t)_ti_supplementalPrefixOfLastToken:()TIExtras
{
  v4 = a3;
  v5 = [a1 length];
  if (v5)
  {
    v6 = v5 - 1;
    if (v5 != 1)
    {
      while (v6)
      {
        v7 = v6 - 1;
        v8 = [a1 characterAtIndex:?];
        if ([v4 characterIsMember:v8])
        {
          v11 = [a1 characterAtIndex:v7];
          if (([v4 characterIsMember:v11] & 1) == 0)
          {
            if (u_hasBinaryProperty(v11, UCHAR_IDEOGRAPHIC))
            {
              goto LABEL_13;
            }

            if (__56__NSString_TIExtras___ti_supplementalPrefixOfLastToken___block_invoke(v11))
            {
              goto LABEL_13;
            }

            Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
            if (CFCharacterSetIsLongCharacterMember(Predefined, v11))
            {
              goto LABEL_13;
            }
          }

          goto LABEL_12;
        }

        v9 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
        if (!CFCharacterSetIsLongCharacterMember(v9, v8))
        {
          v10 = __56__NSString_TIExtras___ti_supplementalPrefixOfLastToken___block_invoke(v8);
          v6 = v7;
          if (!v10)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    v8 = [a1 characterAtIndex:v6];
    if ([v4 characterIsMember:v8])
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (uint64_t)_firstChar
{
  result = [a1 length];
  if (result)
  {

    return [a1 characterAtIndex:0];
  }

  return result;
}

+ (uint64_t)_ti_string:()TIExtras matchesStringIgnoringNullity:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    if (v6)
    {
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (uint64_t)_string:()TIExtras matchesString:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (uint64_t)_fullwidthLettersAndSymbolsSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NSString_TIExtras___fullwidthLettersAndSymbolsSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_fullwidthLettersAndSymbolsSet___onceToken != -1)
  {
    dispatch_once(&_fullwidthLettersAndSymbolsSet___onceToken, block);
  }

  return _fullwidthLettersAndSymbolsSet___fullwidthLettersAndSymbolsSet;
}

+ (uint64_t)_nonFullwidthLettersAndNumbersSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NSString_TIExtras___nonFullwidthLettersAndNumbersSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonFullwidthLettersAndNumbersSet___oneceToken != -1)
  {
    dispatch_once(&_nonFullwidthLettersAndNumbersSet___oneceToken, block);
  }

  return _nonFullwidthLettersAndNumbersSet___nonFullwidthLettersAndNumbersSet;
}

+ (uint64_t)_fullwidthLettersAndNumbersSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NSString_TIExtras___fullwidthLettersAndNumbersSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_fullwidthLettersAndNumbersSet___onceToken != -1)
  {
    dispatch_once(&_fullwidthLettersAndNumbersSet___onceToken, block);
  }

  return _fullwidthLettersAndNumbersSet___fullwidthLettersAndNumbersSet;
}

+ (uint64_t)_bopomofoWithoutToneSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NSString_TIExtras___bopomofoWithoutToneSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_bopomofoWithoutToneSet___onceToken != -1)
  {
    dispatch_once(&_bopomofoWithoutToneSet___onceToken, block);
  }

  return _bopomofoWithoutToneSet___bopomofoWithoutToneSet;
}

+ (uint64_t)_bopomofoToneSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NSString_TIExtras___bopomofoToneSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_bopomofoToneSet___onceToken != -1)
  {
    dispatch_once(&_bopomofoToneSet___onceToken, block);
  }

  return _bopomofoToneSet___bopomofoToneSet;
}

+ (uint64_t)_bopomofoSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NSString_TIExtras___bopomofoSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_bopomofoSet___onceToken != -1)
  {
    dispatch_once(&_bopomofoSet___onceToken, block);
  }

  return _bopomofoSet___bopomofoSet;
}

+ (uint64_t)_ideographSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NSString_TIExtras___ideographSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_ideographSet___onceToken != -1)
  {
    dispatch_once(&_ideographSet___onceToken, block);
  }

  return _ideographSet___ideographSet;
}

+ (uint64_t)_nonJapaneseLetterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__NSString_TIExtras___nonJapaneseLetterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonJapaneseLetterSet___onceToken != -1)
  {
    dispatch_once(&_nonJapaneseLetterSet___onceToken, block);
  }

  return _nonJapaneseLetterSet___set;
}

+ (uint64_t)_japaneseLetterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NSString_TIExtras___japaneseLetterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_japaneseLetterSet___onceToken != -1)
  {
    dispatch_once(&_japaneseLetterSet___onceToken, block);
  }

  return _japaneseLetterSet___japaneseLetterSet;
}

+ (uint64_t)_hiraganaSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NSString_TIExtras___hiraganaSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_hiraganaSet___onceToken != -1)
  {
    dispatch_once(&_hiraganaSet___onceToken, block);
  }

  return _hiraganaSet___hiraganaSet;
}

+ (uint64_t)_nonHiraganaKatakanaOrBopomofoSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NSString_TIExtras___nonHiraganaKatakanaOrBopomofoSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonHiraganaKatakanaOrBopomofoSet___onceToken != -1)
  {
    dispatch_once(&_nonHiraganaKatakanaOrBopomofoSet___onceToken, block);
  }

  return _nonHiraganaKatakanaOrBopomofoSet___nonHiraganaKatakanaOrBopomofoSet;
}

+ (uint64_t)_nonKatakanaOrKanjiSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NSString_TIExtras___nonKatakanaOrKanjiSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonKatakanaOrKanjiSet___onceToken != -1)
  {
    dispatch_once(&_nonKatakanaOrKanjiSet___onceToken, block);
  }

  return _nonKatakanaOrKanjiSet___nonKatakanaSet;
}

+ (uint64_t)_nonHiraganaOrKatakanaSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NSString_TIExtras___nonHiraganaOrKatakanaSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonHiraganaOrKatakanaSet___onceToken != -1)
  {
    dispatch_once(&_nonHiraganaOrKatakanaSet___onceToken, block);
  }

  return _nonHiraganaOrKatakanaSet___nonHiraganaOrKatakanaSet;
}

+ (uint64_t)_nonKoreanCharacterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__NSString_TIExtras___nonKoreanCharacterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonKoreanCharacterSet___onceToken != -1)
  {
    dispatch_once(&_nonKoreanCharacterSet___onceToken, block);
  }

  return _nonKoreanCharacterSet___nonKoreanCharacterSet;
}

+ (uint64_t)_nonIdeographicCharacterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__NSString_TIExtras___nonIdeographicCharacterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_nonIdeographicCharacterSet___onceToken != -1)
  {
    dispatch_once(&_nonIdeographicCharacterSet___onceToken, block);
  }

  return _nonIdeographicCharacterSet___nonIdeographicCharacterSet;
}

+ (__CFString)_stringFromCharacterSet:()TIExtras
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD60] string];
    ItemCount = uset_getItemCount();
    if (ItemCount >= 1)
    {
      v6 = ItemCount;
      for (i = 0; i != v6; ++i)
      {
        if (!uset_getItem())
        {
          v8 = 0;
          do
          {
            v9 = [a1 _stringWithUnichar:v8];
            [v4 appendString:v9];

            v10 = v8 < 0;
            v8 = (v8 + 1);
          }

          while (v10);
        }
      }
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = &stru_1EF56D550;
  }

  return v11;
}

+ (uint64_t)_characterSetWithPattern:()TIExtras
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  HIDWORD(v8) = 0;
  v4 = [v3 length];
  if ([v3 _fastCharacterContents])
  {
    v5 = uset_openPattern();
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    [v3 getCharacters:&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v4}];
    v5 = uset_openPattern();
  }

  if (SHIDWORD(v8) >= 1)
  {
    NSLog(&cfstr_CouldnTCreateU.isa, v3);
  }

  return v5;
}

+ (id)_stringWithUnichar:()TIExtras
{
  if ((a3 - 0x10000) >> 20)
  {
    v4 = 1;
    LOWORD(v3) = a3;
  }

  else
  {
    v3 = (a3 >> 10) - 10304;
    v7[1] = a3 & 0x3FF | 0xDC00;
    v4 = 2;
  }

  v7[0] = v3;
  v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:v7 length:v4];

  return v5;
}

@end