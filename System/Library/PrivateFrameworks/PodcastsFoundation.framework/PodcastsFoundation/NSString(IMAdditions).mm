@interface NSString(IMAdditions)
+ (double)durationWithHMSString:()IMAdditions;
+ (id)UUID;
+ (id)durationFormatter;
+ (id)stringWithDuration:()IMAdditions;
- (BOOL)isWhitespace;
- (__CFString)im_stringByMemoryEfficientTrimmingCharactersInSet:()IMAdditions;
- (__CFString)im_uppercaseStringWithLocale:()IMAdditions;
- (__CFString)pf_stringWithPercentEscape;
- (__CFString)stringByRemovingPercentEscapes;
- (id)URLFragmentString;
- (id)dictionaryByDecomposingQueryStringWithURLDecode:()IMAdditions;
- (id)iTunesSortString;
- (id)stringByConvertingControlCharactersToSpace;
- (id)stringByConvertingNewlineCharacterSetToSpace;
- (id)stringByEnclosingInQuotes;
- (id)stringByRemovingEnclosingQuotations;
- (id)stringByRemovingURLFragment;
- (id)stringByStrippingHTML;
- (id)stringByTruncatingToLength:()IMAdditions options:truncationString:;
- (uint64_t)hasHTML;
- (uint64_t)imIsDefaultWritingMode;
- (uint64_t)rangeOfSignificantSubstring;
- (uint64_t)stringByRemovingInsignificantPrefix;
- (uint64_t)tokenCountWithEnumerationOptions:()IMAdditions maxTokenCount:outLimitLength:;
- (unint64_t)unsignedLongLongValue;
@end

@implementation NSString(IMAdditions)

- (uint64_t)hasHTML
{
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = hasHTML_htmlPatterns;
  if (!hasHTML_htmlPatterns)
  {
    v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(<[^>\\n]+>)" options:0 error:0];
    v21[0] = v3;
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(&#\\d+)" options:0 error:0];;
    v21[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v6 = [v5 copy];
    v7 = hasHTML_htmlPatterns;
    hasHTML_htmlPatterns = v6;

    v2 = hasHTML_htmlPatterns;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) firstMatchInString:self options:0 range:{0, objc_msgSend(self, "length", v16)}];

        if (v13)
        {

          result = 1;
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (hasHTML_onceToken != -1)
  {
    [NSString(IMAdditions) hasHTML];
  }

  result = [self containsMatchIn:{hasHTML_trie, v16}];
LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)stringByStrippingHTML
{
  if ([self length])
  {
    Memory = htmlReadMemory([self UTF8String], objc_msgSend(self, "lengthOfBytesUsingEncoding:", 4), 0, "utf8", 2401);
    string = [MEMORY[0x1E696AD60] string];
    appendTextFromNodeRecursively(Memory, string);
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    selfCopy = [string stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    xmlFreeDoc(Memory);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (__CFString)im_stringByMemoryEfficientTrimmingCharactersInSet:()IMAdditions
{
  v4 = a3;
  v5 = [self length];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v8 = -v5;
  v9 = &stru_1F548B930;
  while ([v4 characterIsMember:{objc_msgSend(self, "characterAtIndex:", v7)}])
  {
    ++v7;
    if (__CFADD__(v8++, 1))
    {
      goto LABEL_20;
    }
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v11 = v6 - 1;
  if (v6 - 1 <= v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    while ([v4 characterIsMember:{objc_msgSend(self, "characterAtIndex:", v11)}])
    {
      ++v12;
      --v11;
      if (~v8 == v12)
      {
        v12 = ~v8;
        break;
      }
    }
  }

  if (!(v8 + v12))
  {
LABEL_15:
    v9 = &stru_1F548B930;
    goto LABEL_20;
  }

  if (v7 | v12)
  {
    selfCopy = [self substringWithRange:{v7, -(v12 + v8)}];
  }

  else
  {
LABEL_18:
    selfCopy = self;
  }

  v9 = selfCopy;
LABEL_20:

  return v9;
}

+ (id)durationFormatter
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v2 = [threadDictionary objectForKey:@"kIMDurationNumberFormatterKey"];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v2 setLocale:currentLocale];

    [threadDictionary setObject:v2 forKey:@"kIMDurationNumberFormatterKey"];
  }

  return v2;
}

+ (id)UUID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)URLFragmentString
{
  v2 = [self rangeOfString:@"#"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self substringFromIndex:v2 + 1];
  }

  return v3;
}

- (id)stringByRemovingURLFragment
{
  selfCopy = self;
  v2 = [selfCopy rangeOfString:@"#"];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [selfCopy substringToIndex:v2];

    selfCopy = v3;
  }

  return selfCopy;
}

- (id)stringByConvertingControlCharactersToSpace
{
  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
  v3 = [self rangeOfCharacterFromSet:controlCharacterSet];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    selfCopy = [MEMORY[0x1E696AD60] stringWithString:self];
    v8 = v6 + v7;
    v9 = [selfCopy length] - (v6 + v7);
    do
    {
      [selfCopy replaceCharactersInRange:v6 withString:{v7, @" "}];
      v10 = [selfCopy rangeOfCharacterFromSet:controlCharacterSet options:0 range:{v8, v9}];
      v12 = v11 - (v6 + v7) + v10;
      v8 += v12;
      v9 -= v12;
      v7 = v11;
      v6 = v10;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return selfCopy;
}

- (id)stringByConvertingNewlineCharacterSetToSpace
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self rangeOfCharacterFromSet:newlineCharacterSet];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    selfCopy = [MEMORY[0x1E696AD60] stringWithString:self];
    v8 = v6 + v7;
    v9 = [selfCopy length] - (v6 + v7);
    do
    {
      [selfCopy replaceCharactersInRange:v6 withString:{v7, @" "}];
      v10 = [selfCopy rangeOfCharacterFromSet:newlineCharacterSet options:0 range:{v8, v9}];
      v12 = v11 - (v6 + v7) + v10;
      v8 += v12;
      v9 -= v12;
      v7 = v11;
      v6 = v10;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return selfCopy;
}

- (__CFString)pf_stringWithPercentEscape
{
  v1 = CFURLCreateStringByAddingPercentEscapes(0, originalString, 0, @"\uFFFC!$&'()+,/:;=?@", 0x8000100u);

  return v1;
}

- (__CFString)stringByRemovingPercentEscapes
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x1E695E480], originalString, &stru_1F548B930);

  return v1;
}

- (BOOL)isWhitespace
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v4 = [v3 length] == 0;

  return v4;
}

- (id)iTunesSortString
{
  copyWithoutInsignificantPrefixAndCharacters = [self copyWithoutInsignificantPrefixAndCharacters];

  return copyWithoutInsignificantPrefixAndCharacters;
}

+ (id)stringWithDuration:()IMAdditions
{
  v2 = a2;
  v3 = (a2 / 60 % 60);
  durationFormatter = [self durationFormatter];
  [durationFormatter setMinimumIntegerDigits:1];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:(v2 / 3600)];
  v6 = [durationFormatter stringFromNumber:v5];

  if (v2 < 3600)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v8 = [durationFormatter stringFromNumber:v13];

    [durationFormatter setMaximumIntegerDigits:2];
    [durationFormatter setMinimumIntegerDigits:2];
    v14 = [MEMORY[0x1E696AD98] numberWithInt:(v2 % 60)];
    v10 = [durationFormatter stringFromNumber:v14];

    podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v12 = [podcastsFoundationBundle localizedStringForKey:@"DURATION_FORMAT_MINUTES" value:&stru_1F548B930 table:0];

    [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@ %@" error:0, v8, v10, v18];
  }

  else
  {
    [durationFormatter setMaximumIntegerDigits:2];
    [durationFormatter setMinimumIntegerDigits:2];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v8 = [durationFormatter stringFromNumber:v7];

    v9 = [MEMORY[0x1E696AD98] numberWithInt:(v2 % 60)];
    v10 = [durationFormatter stringFromNumber:v9];

    podcastsFoundationBundle2 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v12 = [podcastsFoundationBundle2 localizedStringForKey:@"DURATION_FORMAT_HOURS" value:&stru_1F548B930 table:0];

    [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@ %@ %@" error:0, v6, v8, v10];
  }
  v16 = ;

  return v16;
}

+ (double)durationWithHMSString:()IMAdditions
{
  v3 = [a3 componentsSeparatedByString:@":"];
  v4 = 0.0;
  if ([v3 count])
  {
    v5 = [v3 objectAtIndex:{objc_msgSend(v3, "count") - 1}];
    intValue = [v5 intValue];

    if ([v3 count] < 2)
    {
      intValue2 = 0;
    }

    else
    {
      v7 = [v3 objectAtIndex:{objc_msgSend(v3, "count") - 2}];
      intValue2 = [v7 intValue];

      if ([v3 count] >= 3)
      {
        v9 = [v3 objectAtIndex:{objc_msgSend(v3, "count") - 3}];
        intValue3 = [v9 intValue];

        v4 = intValue3 * 60.0;
      }
    }
  }

  else
  {
    intValue2 = 0;
    intValue = 0;
  }

  return (60 * intValue2) + v4 * 60.0 + intValue;
}

- (id)dictionaryByDecomposingQueryStringWithURLDecode:()IMAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [self componentsSeparatedByString:@"&"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = @"=";
    do
    {
      v11 = 0;
      v23 = v8;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v24 + 1) + 8 * v11) componentsSeparatedByString:v10];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:0];
          v14 = [v12 objectAtIndex:1];
          if (a3)
          {
            [v13 stringByRemovingPercentEncoding];
            v15 = v9;
            v16 = v10;
            v17 = v6;
            v18 = a3;
            v20 = v19 = dictionary;

            v13 = v20;
            dictionary = v19;
            a3 = v18;
            v6 = v17;
            v10 = v16;
            v9 = v15;
            v8 = v23;
          }

          [dictionary setObject:v14 forKey:v13];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (uint64_t)rangeOfSignificantSubstring
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"an", @"a", @"the", 0}];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v3 = [self length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__NSString_IMAdditions__rangeOfSignificantSubstring__block_invoke;
  v9[3] = &unk_1E8569C18;
  v11 = &v15;
  v12 = v13;
  v4 = v2;
  v10 = v4;
  [self enumerateSubstringsInRange:0 options:v3 usingBlock:{3, v9}];
  v5 = v16[3];
  v6 = [self length];
  v7 = v6 - v16[3];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

- (uint64_t)stringByRemovingInsignificantPrefix
{
  rangeOfSignificantSubstring = [self rangeOfSignificantSubstring];

  return [self substringWithRange:{rangeOfSignificantSubstring, v2}];
}

- (uint64_t)tokenCountWithEnumerationOptions:()IMAdditions maxTokenCount:outLimitLength:
{
  if (a5)
  {
    *a5 = [self length];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = [self length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__NSString_IMAdditions__tokenCountWithEnumerationOptions_maxTokenCount_outLimitLength___block_invoke;
  v12[3] = &unk_1E8569C40;
  v12[4] = &v13;
  v12[5] = a4;
  v12[6] = a5;
  [self enumerateSubstringsInRange:0 options:v9 usingBlock:{a3, v12}];
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)stringByTruncatingToLength:()IMAdditions options:truncationString:
{
  v8 = a5;
  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v9 = [self length];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__NSString_IMAdditions__stringByTruncatingToLength_options_truncationString___block_invoke;
    v16[3] = &unk_1E8569C68;
    v19 = a3;
    v10 = v8;
    v17 = v10;
    v18 = &v20;
    [self enumerateSubstringsInRange:0 options:v9 usingBlock:{a4, v16}];
    v11 = v21[3];
    if (!v11)
    {
      v21[3] = a3;
      v11 = a3;
    }

    v12 = [self substringToIndex:v11];
    selfCopy = v12;
    if (v10)
    {
      v14 = [v12 stringByAppendingString:v10];

      selfCopy = v14;
    }

    _Block_object_dispose(&v20, 8);
  }

  return selfCopy;
}

- (id)stringByEnclosingInQuotes
{
  stringByRemovingEnclosingQuotations = [self stringByRemovingEnclosingQuotations];
  v2 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Quoted_Text_Format" value:@"“%@”" table:0];
  v5 = [v2 stringWithFormat:v4, stringByRemovingEnclosingQuotations];

  return v5;
}

- (__CFString)im_uppercaseStringWithLocale:()IMAdditions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self uppercaseStringWithLocale:v4];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:self];
    CFStringUppercase(v5, v4);
  }

  return v5;
}

- (id)stringByRemovingEnclosingQuotations
{
  selfCopy = self;
  v2 = MEMORY[0x1E696AB08];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Quotes_Character_Set" value:@"“'‘’”" table:0];
  v5 = [v2 characterSetWithCharactersInString:v4];

  v6 = [selfCopy rangeOfCharacterFromSet:v5 options:0 range:{0, 1}];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [selfCopy stringByReplacingCharactersInRange:v6 withString:{v7, &stru_1F548B930}];

    selfCopy = v8;
  }

  if ([selfCopy length] >= 2)
  {
    v9 = [selfCopy rangeOfCharacterFromSet:v5 options:0 range:{objc_msgSend(selfCopy, "length") - 1, 1}];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [selfCopy stringByReplacingCharactersInRange:v9 withString:{v10, &stru_1F548B930}];

      selfCopy = v11;
    }
  }

  return selfCopy;
}

- (unint64_t)unsignedLongLongValue
{
  uTF8String = [self UTF8String];

  return strtoull(uTF8String, 0, 0);
}

- (uint64_t)imIsDefaultWritingMode
{
  if ([self imIsVerticalWritingMode])
  {
    return 0;
  }

  else
  {
    return [self imIsHorizontalWritingMode] ^ 1;
  }
}

@end