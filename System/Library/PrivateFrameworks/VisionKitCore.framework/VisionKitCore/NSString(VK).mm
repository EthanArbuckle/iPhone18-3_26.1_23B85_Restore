@interface NSString(VK)
- (BOOL)vk_containsAlphanumericCharacters;
- (BOOL)vk_containsNonWhitespaceAndAttachmentCharacters;
- (BOOL)vk_containsNonWhitespaceCharacters;
- (BOOL)vk_isLastCharacterInRangeANewlineForRange:()VK;
- (NSUInteger)vk_safeCharacterRangeForRange:()VK;
- (__CFString)vk_checkedSubstringWithRange:()VK;
- (__CFString)vk_checkedSubstringWithVKRange:()VK;
- (__CFString)vk_stringByTrimmingLeadingCharactersInSet:()VK;
- (__CFString)vk_substringWithRange:()VK;
- (__CFString)vk_substringWithVKRange:()VK;
- (__CFString)vk_trailingTrimmedString;
- (id)vk_hexCodes;
- (id)vk_htmlStringEscapingQuotesAndLineBreaks;
- (id)vk_leadingTrimmedString;
- (id)vk_md5;
- (id)vk_rangesOfMatchesForString:()VK;
- (id)vk_sanitizedFilenameString;
- (id)vk_stringByRemovingAttachmentCharacters;
- (id)vk_stringByReplacingCharactersInSet:()VK withString:;
- (id)vk_stringByReplacingCharactersInStringMap:()VK;
- (id)vk_stringByReplacingNewlineCharactersWithWhiteSpace;
- (id)vk_substringToIndex:()VK;
- (id)vk_trimmedString;
- (id)vk_truncatedStringWithMaxLength:()VK truncated:;
- (id)vk_uniqueWordsWithMinLength:()VK;
- (uint64_t)vk_countOfCharactersInSet:()VK;
- (uint64_t)vk_isLastCharacterANewline;
- (uint64_t)vk_lengthOfLongestLine;
- (uint64_t)vk_lineRangeIgnoringLineBreakCharactersForIndex:()VK;
- (uint64_t)vk_numberOfLines;
- (uint64_t)vk_paragraphRangeForRange:()VK contentEnd:;
- (uint64_t)vk_substringFromIndex:()VK;
- (uint64_t)vk_whitespaceAndNewlineCoalescedString;
- (uint64_t)vk_wordCount;
- (void)vk_enumerateContentLineRangesInRange:()VK usingBlock:;
- (void)vk_enumerateParagraphsInRange:()VK usingBlock:;
@end

@implementation NSString(VK)

- (id)vk_hexCodes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([self length])
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695DA58];
    do
    {
      v5 = [self characterAtIndex:v3];
      v6 = [self vk_substringWithRange:{v3, 1}];
      v7 = [v6 stringByApplyingTransform:v4 reverse:0];
      [v2 appendFormat:@"%lu: U+%04x %@\n", v3, v5, v7];

      ++v3;
    }

    while (v3 < [self length]);
  }

  v8 = [v2 copy];

  return v8;
}

- (id)vk_md5
{
  v1 = [self dataUsingEncoding:4];
  vk_md5 = [v1 vk_md5];

  return vk_md5;
}

- (id)vk_htmlStringEscapingQuotesAndLineBreaks
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&unk_1F2C39258 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      v6 = selfCopy;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_1F2C39258);
        }

        v7 = *(*(&v11 + 1) + 8 * v5);
        v8 = [v7 objectAtIndexedSubscript:0];
        v9 = [v7 objectAtIndexedSubscript:1];
        selfCopy = [v6 stringByReplacingOccurrencesOfString:v8 withString:v9];

        ++v5;
        v6 = selfCopy;
      }

      while (v3 != v5);
      v3 = [&unk_1F2C39258 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return selfCopy;
}

- (id)vk_trimmedString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (__CFString)vk_trailingTrimmedString
{
  if ([self length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [self length] + 1;
    v4 = &stru_1F2C04538;
    while (v3 - 2 >= 1)
    {
      --v3;
      if (([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:")}] & 1) == 0)
      {
        v4 = [self substringToIndex:v3];
        break;
      }
    }
  }

  else
  {
    v4 = &stru_1F2C04538;
  }

  return v4;
}

- (id)vk_leadingTrimmedString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self vk_stringByTrimmingLeadingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (uint64_t)vk_whitespaceAndNewlineCoalescedString
{
  if (vk_whitespaceAndNewlineCoalescedString_onceToken != -1)
  {
    [NSString(VK) vk_whitespaceAndNewlineCoalescedString];
  }

  v2 = vk_whitespaceAndNewlineCoalescedString_regex;
  v3 = [self length];

  return [v2 stringByReplacingMatchesInString:self options:0 range:0 withTemplate:{v3, @" "}];
}

- (id)vk_sanitizedFilenameString
{
  selfCopy = self;
  if ([selfCopy length])
  {
    if ([selfCopy length] >= 0x81)
    {
      v2 = [selfCopy vk_substringToIndex:128];

      selfCopy = v2;
    }

    v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"///\\?%*|<>:"];
    v4 = [selfCopy vk_stringByReplacingCharactersInSet:v3 withString:&stru_1F2C04538];

    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
    v6 = [v5 mutableCopy];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v6 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

    selfCopy = [v4 stringByTrimmingCharactersInSet:v6];
  }

  lastPathComponent = [selfCopy lastPathComponent];

  return lastPathComponent;
}

- (uint64_t)vk_lineRangeIgnoringLineBreakCharactersForIndex:()VK
{
  location = [self lineRangeForRange:{a3, 0}];
  length = v5;
  v7 = [@"\u2028" characterAtIndex:0];
  v8 = location - 1;
  if (location - 1 >= 1)
  {
    do
    {
      if ([self characterAtIndex:v8] != v7)
      {
        break;
      }

      v16.location = [self lineRangeForRange:{v8, 0}];
      v16.length = v9;
      v14.location = location;
      v14.length = length;
      v10 = NSUnionRange(v14, v16);
      location = v10.location;
      length = v10.length;
      v8 = v10.location - 1;
    }

    while ((v10.location - 1) > 0);
  }

  for (i = location + length; (i - 1) >= 0 && i < [self length] && objc_msgSend(self, "characterAtIndex:", i - 1) == v7; i = v12.location + v12.length)
  {
    v15.location = [self lineRangeForRange:{i, 0}];
    v17.location = location;
    v17.length = length;
    v12 = NSUnionRange(v15, v17);
    location = v12.location;
    length = v12.length;
  }

  return location;
}

- (id)vk_stringByRemovingAttachmentCharacters
{
  vk_NSAttachmentCharacterString = [objc_opt_class() vk_NSAttachmentCharacterString];
  v3 = [self stringByReplacingOccurrencesOfString:vk_NSAttachmentCharacterString withString:&stru_1F2C04538];

  return v3;
}

- (uint64_t)vk_isLastCharacterANewline
{
  v2 = [self length];

  return [self vk_isLastCharacterInRangeANewlineForRange:{0, v2}];
}

- (uint64_t)vk_numberOfLines
{
  v2 = [self length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [self lineRangeForRange:{v5, 0}];
    v5 = v6 + v7;
    ++v4;
  }

  while (v6 + v7 < v3);
  return v4;
}

- (uint64_t)vk_wordCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  vk_range = [self vk_range];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__NSString_VK__vk_wordCount__block_invoke;
  v6[3] = &unk_1E7BE6A10;
  v6[4] = &v7;
  [self enumerateSubstringsInRange:vk_range options:v3 usingBlock:{1539, v6}];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)vk_uniqueWordsWithMinLength:()VK
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc(MEMORY[0x1E696AD00]);
  v25[0] = *MEMORY[0x1E696A550];
  v7 = v25[0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v9 = [v6 initWithTagSchemes:v8 options:0];

  [v9 setString:self];
  v10 = [self length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__NSString_VK__vk_uniqueWordsWithMinLength___block_invoke;
  v21[3] = &unk_1E7BE6A38;
  v24 = a3;
  v11 = v5;
  v22 = v11;
  selfCopy = self;
  [v9 enumerateTagsInRange:0 scheme:v10 options:v7 usingBlock:{6, v21}];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__NSString_VK__vk_uniqueWordsWithMinLength___block_invoke_249;
  v14[3] = &unk_1E7BE6A60;
  v14[4] = &v15;
  [v11 enumerateObjectsUsingBlock:v14];
  v12 = [v16[5] copy];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)vk_containsNonWhitespaceCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];

  v4 = [self rangeOfCharacterFromSet:invertedSet] != 0x7FFFFFFFFFFFFFFFLL;
  return v4;
}

- (BOOL)vk_containsNonWhitespaceAndAttachmentCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [whitespaceAndNewlineCharacterSet mutableCopy];

  vk_NSAttachmentCharacterString = [objc_opt_class() vk_NSAttachmentCharacterString];
  [v3 addCharactersInString:vk_NSAttachmentCharacterString];

  invertedSet = [v3 invertedSet];
  v6 = [self rangeOfCharacterFromSet:invertedSet] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (BOOL)vk_containsAlphanumericCharacters
{
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v3 = [self rangeOfCharacterFromSet:alphanumericCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (void)vk_enumerateParagraphsInRange:()VK usingBlock:
{
  v8 = a5;
  v9 = a3 + a4;
  v10 = [self length];
  if (v9 >= v10)
  {
    v9 = v10;
  }

  v14 = 0;
  do
  {
    if (a3 >= v9)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v11 = 0;
    [self getParagraphStart:&v13 end:&v12 contentsEnd:&v11 forRange:{a3, 0}];
    v8[2](v8, v13, v12, v11, &v14);
    a3 = v12;
  }

  while (v14 != 1);
}

- (void)vk_enumerateContentLineRangesInRange:()VK usingBlock:
{
  v8 = a5;
  v9 = a3 + a4;
  v10 = [self length];
  v13 = 0;
  v14 = a3;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  v12 = 0;
  v11 = 0;
  do
  {
    [self getLineStart:&v14 end:&v13 contentsEnd:&v12 forRange:{a3, 0}];
    v8[2](v8, v14, v12 - v14, &v11);
    a3 = v13;
    v14 = v13;
  }

  while (v13 < v9 && (v11 & 1) == 0);
}

- (uint64_t)vk_substringFromIndex:()VK
{
  v2 = [self rangeOfComposedCharacterSequenceAtIndex:?];

  return [self substringFromIndex:v2];
}

- (id)vk_substringToIndex:()VK
{
  if ([self length])
  {
    v5 = [self length];
    if (v5 - 1 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5 - 1;
    }

    v7 = [self rangeOfComposedCharacterSequenceAtIndex:v6];
    v9 = [self substringToIndex:v7 + v8];
  }

  else
  {
    v9 = [self copy];
  }

  return v9;
}

- (__CFString)vk_substringWithRange:()VK
{
  vk_range = [self vk_range];
  v9 = VKMClampRange(a3, a4, vk_range, v8);
  if (v10)
  {
    v11 = [self rangeOfComposedCharacterSequencesForRange:{v9, v10}];
    v13 = [self substringWithRange:{v11, v12}];
  }

  else
  {
    v13 = &stru_1F2C04538;
  }

  return v13;
}

- (__CFString)vk_substringWithVKRange:()VK
{
  v4 = a3;
  if ([v4 isEmpty])
  {
    v5 = &stru_1F2C04538;
  }

  else if ([v4 containsMultipleRanges])
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    rangeArray = [v4 rangeArray];
    v8 = [rangeArray count];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__NSString_VK__vk_substringWithVKRange___block_invoke;
    v13[3] = &unk_1E7BE6A88;
    v14 = v6;
    selfCopy = self;
    v16 = v8;
    v9 = v6;
    [rangeArray enumerateObjectsUsingBlock:v13];
    v5 = [v9 copy];
  }

  else
  {
    nsRange = [v4 nsRange];
    v5 = [self vk_substringWithRange:{nsRange, v11}];
  }

  return v5;
}

- (__CFString)vk_checkedSubstringWithRange:()VK
{
  if ([self vk_rangeIsValid:?])
  {
    v7 = [self vk_substringWithRange:{a3, a4}];
  }

  else
  {
    v7 = &stru_1F2C04538;
  }

  return v7;
}

- (__CFString)vk_checkedSubstringWithVKRange:()VK
{
  v4 = a3;
  nsRange = [v4 nsRange];
  if ([self vk_rangeIsValid:{nsRange, v6}])
  {
    v7 = [self vk_substringWithVKRange:v4];
  }

  else
  {
    v7 = &stru_1F2C04538;
  }

  return v7;
}

- (id)vk_stringByReplacingNewlineCharactersWithWhiteSpace
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self vk_stringByReplacingCharactersInSet:newlineCharacterSet withString:@" "];

  return v3;
}

- (id)vk_stringByReplacingCharactersInSet:()VK withString:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  v9 = [selfCopy rangeOfCharacterFromSet:v6];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v11 = 0;
    do
    {
      if (!v11)
      {
        v11 = [selfCopy mutableCopy];
      }

      [v11 replaceCharactersInRange:v12 withString:{v13, v7}];
      v12 = [v11 rangeOfCharacterFromSet:v6 options:2 range:{v12, objc_msgSend(v11, "length") - v12}];
      v13 = v14;
    }

    while (v12 != 0x7FFFFFFFFFFFFFFFLL);
    if (v11)
    {
      v15 = [v11 copy];

      selfCopy = v15;
    }
  }

  return selfCopy;
}

- (id)vk_stringByReplacingCharactersInStringMap:()VK
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"(");
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v4;
  allKeys = [v4 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [MEMORY[0x1E696AE70] escapedPatternForString:*(*(&v38 + 1) + 8 * i)];
        [v5 appendString:v10];

        [v5 appendString:@"|"];
      }

      v7 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  if ([v5 length])
  {
    [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 1, 1, &stru_1F2C04538}];
  }

  [v5 appendString:@""]);
  v24 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v5 options:0 error:0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__14;
  v36 = __Block_byref_object_dispose__14;
  v37 = 0;
  v11 = [selfCopy length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__NSString_VK__vk_stringByReplacingCharactersInStringMap___block_invoke;
  v31[3] = &unk_1E7BE6AB0;
  v31[4] = &v32;
  [v24 enumerateMatchesInString:selfCopy options:0 range:0 usingBlock:{v11, v31}];
  if ([v33[5] count])
  {
    v12 = [selfCopy mutableCopy];
  }

  else
  {
    v12 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  reverseObjectEnumerator = [v33[5] reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        rangeValue = [*(*(&v27 + 1) + 8 * j) rangeValue];
        v19 = v18;
        v20 = [selfCopy substringWithRange:{rangeValue, v18}];
        v21 = [v25 objectForKeyedSubscript:v20];
        if (v21)
        {
          [v12 replaceCharactersInRange:rangeValue withString:{v19, v21}];
        }

        else
        {
          [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[NSString(VK) vk_stringByReplacingCharactersInStringMap:]" simulateCrash:0 showAlert:0 format:@"nil replacement string replacestring map"];
        }
      }

      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v14);
  }

  if (v12)
  {
    v22 = [v12 copy];

    selfCopy = v22;
  }

  _Block_object_dispose(&v32, 8);

  return selfCopy;
}

- (uint64_t)vk_paragraphRangeForRange:()VK contentEnd:
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  [self getParagraphStart:&v9 end:&v8 contentsEnd:&v7 forRange:{a3, a4}];
  if (a5)
  {
    *a5 = v7;
  }

  return v9;
}

- (uint64_t)vk_lengthOfLongestLine
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__NSString_VK__vk_lengthOfLongestLine__block_invoke;
  v3[3] = &unk_1E7BE6A60;
  v3[4] = &v4;
  [self enumerateLinesUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (BOOL)vk_isLastCharacterInRangeANewlineForRange:()VK
{
  v7 = [self vk_safeCharacterRangeForRange:?];
  v9 = 0;
  if (a3 == v7 && a4 == v8)
  {
    v10 = [self vk_substringWithRange:{v7, v8}];
    if ([v10 length])
    {
      v9 = [v10 characterAtIndex:{objc_msgSend(v10, "length") - 1}] == 10;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSUInteger)vk_safeCharacterRangeForRange:()VK
{
  v6 = [self length];
  if (v6 == a3)
  {
    return a3;
  }

  v7.length = v6;
  if (v6 < a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9.location = a3;
  v9.length = a4;
  v7.location = 0;

  return NSIntersectionRange(v9, v7).location;
}

- (uint64_t)vk_countOfCharactersInSet:()VK
{
  v4 = a3;
  v5 = [self rangeOfCharacterFromSet:v4 options:0 range:{0, objc_msgSend(self, "length")}];
  v6 = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v6 = 0;
    do
    {
      ++v6;
      v7 = [self rangeOfCharacterFromSet:v4 options:0 range:{v7 + 1, objc_msgSend(self, "length") + ~v7}];
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v6;
}

- (__CFString)vk_stringByTrimmingLeadingCharactersInSet:()VK
{
  invertedSet = [a3 invertedSet];
  v5 = [self rangeOfCharacterFromSet:invertedSet];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = &stru_1F2C04538;
  }

  else if (v5)
  {
    selfCopy = [self vk_substringFromIndex:v5];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)vk_truncatedStringWithMaxLength:()VK truncated:
{
  if (a4)
  {
    *a4 = 0;
  }

  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    v7 = [self vk_substringWithRange:{0, a3}];
    v8 = [v7 length];
    if (v8 == [self length])
    {
      selfCopy = v7;
    }

    else
    {
      vk_trailingTrimmedString = [v7 vk_trailingTrimmedString];
      selfCopy = [vk_trailingTrimmedString stringByAppendingString:@"…"];

      if (a4)
      {
        *a4 = 1;
      }
    }
  }

  return selfCopy;
}

- (id)vk_rangesOfMatchesForString:()VK
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 length])
  {
    v42 = v4;
    v6 = v4;
    selfCopy = self;
    v8 = [v6 length];
    v9 = *MEMORY[0x1E696A550];
    v48 = 0;
    v46 = v6;
    v10 = [v6 linguisticTagsInRange:0 scheme:v8 options:v9 orthography:6 tokenRanges:{0, &v48}];
    v11 = v48;
    v47 = 0;
    v45 = selfCopy;
    v12 = [selfCopy linguisticTagsInRange:0 scheme:objc_msgSend(selfCopy options:"length") orthography:v9 tokenRanges:{6, 0, &v47}];
    v13 = v47;
    if ([v13 count])
    {
      v14 = 0;
      v43 = v11;
      v44 = v5;
      do
      {
        if (![v11 count])
        {
          break;
        }

        v15 = [v13 objectAtIndex:v14];
        rangeValue = [v15 rangeValue];
        v18 = v17;

        v19 = 0;
        v20 = 0;
        do
        {
          if (v20 && v20 + v14 < [v13 count])
          {
            v21 = [v13 objectAtIndex:v20 + v14];
            rangeValue = [v21 rangeValue];
            v18 = v22;
          }

          v23 = [v11 objectAtIndex:v19];
          rangeValue2 = [v23 rangeValue];
          v26 = v25;

          if (v26 <= v18)
          {
            v27 = [v46 substringWithRange:{rangeValue2, v26}];
            if ([v45 rangeOfString:v27 options:137 range:{rangeValue, v18}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v20 || (v29 = v28, v28 == v18) || [v11 count] == 1 || v29 >= 2)
              {
                ++v20;
              }

              else
              {
                v20 = 0;
              }
            }
          }

          ++v19;
        }

        while (v19 < [v11 count] && v20 + v14 < objc_msgSend(v13, "count"));
        if (v20)
        {
          v30 = v20;
          v31 = v14;
          v5 = v44;
          if (v14 < v20 + v14)
          {
            do
            {
              v32 = [v13 objectAtIndex:v31];
              rangeValue3 = [v32 rangeValue];
              v34 = v5;
              v36 = v35;

              v37 = [VKTextRange alloc];
              v38 = v36;
              v5 = v34;
              v39 = [(VKTextRange *)v37 initWithRange:rangeValue3, v38];
              [v34 addObject:v39];

              ++v31;
              --v30;
            }

            while (v30);
          }

          v14 = v14 + v20 - 1;
          v11 = v43;
        }

        else
        {
          v5 = v44;
        }

        ++v14;
      }

      while (v14 < [v13 count]);
    }

    v40 = [v5 copy];

    v4 = v42;
  }

  else
  {
    v40 = v5;
  }

  return v40;
}

@end