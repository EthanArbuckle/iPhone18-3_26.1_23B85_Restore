@interface NSString(VSSpeechService)
+ (__CFString)vs_markerStringForContext:()VSSpeechService;
+ (uint64_t)_vs_countPhoneticSyllables_lhp:()VSSpeechService;
+ (uint64_t)_vs_countPhoneticSyllables_xsampa:()VSSpeechService;
+ (uint64_t)vs_isCJKCharacter:()VSSpeechService;
- (double)vs_measurePauses;
- (id)vs_convertToSSML;
- (id)vs_insertContextInfo:()VSSpeechService;
- (id)vs_removePhonetics;
- (id)vs_removeSpeechTags;
- (id)vs_substituteAudioWithLocalPath;
- (uint64_t)vs_countPhoneticSyllables;
- (uint64_t)vs_hasCJKCharacter;
- (void)vs_textifyEmojiWithLanguage:()VSSpeechService;
@end

@implementation NSString(VSSpeechService)

- (id)vs_convertToSSML
{
  if ([a1 hasPrefix:@"<speak>"])
  {
    v2 = a1;
    goto LABEL_34;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"<speak>"];
  [v3 addObject:@"speak"];
  if ([a1 length])
  {
    v4 = 0;
    v5 = @"\x1B\\tn=";
    do
    {
      v6 = v5;
      v7 = [a1 rangeOfString:@"\x1B" options:0 range:{v4, objc_msgSend(a1, "length") - v4}];
      v8 = v7;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [a1 length];
      }

      v9 = [a1 substringWithRange:{v4, v8 - v4}];
      [v2 appendString:v9];

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v5 = v6;
      v10 = [a1 substringWithRange:{v7, objc_msgSend(a1, "length") - v7}];
      if ([v10 hasPrefix:@"\x1B\\toi=lhp\\""])
      {
        [v2 appendString:@"<phoneme alphabet=lhp ph="];
        v8 += [@"\x1B\\toi=lhp\\"" length];
        [v3 addObject:@"phoneme"];
      }

      else
      {
        if ([v10 hasPrefix:@"\x1B\\toi=orth\\""])
        {
          v11 = [v3 lastObject];
          v12 = [v11 isEqualToString:@"phoneme"];

          if (v12)
          {
            [v2 appendString:@"></phoneme>"];
            v8 += [@"\x1B\\toi=orth\\"" length];
            [v3 removeLastObject];
LABEL_24:
            v5 = v6;
            goto LABEL_25;
          }

          v15 = MEMORY[0x277CBEAD8];
          v16 = @"unbalanced phoneme tag";
          goto LABEL_23;
        }

        if ([v10 hasPrefix:@"\x1B\\tn=normal\\""])
        {
          v13 = [v3 lastObject];
          v14 = [v13 isEqualToString:@"say-as"];

          if (v14)
          {
            [v2 appendString:@"</say-as>"];
            [v3 removeLastObject];
            v8 += [@"\x1B\\tn=normal\\"" length];
            goto LABEL_24;
          }

          v15 = MEMORY[0x277CBEAD8];
          v16 = @"unbalanced say-as tag";
LABEL_23:
          [v15 raise:@"SSML error" format:v16];
          goto LABEL_24;
        }

        if ([v10 hasPrefix:v6])
        {
          v17 = [v3 lastObject];
          v18 = [v17 isEqualToString:@"say-as"];

          if (v18)
          {
            [v2 appendString:@"</say-as>"];
            [v3 removeLastObject];
          }

          v19 = [v10 rangeOfString:@"\\" options:0 range:{-[__CFString length](v6, "length"), objc_msgSend(v10, "length") - -[__CFString length](v6, "length"")}];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            NSLog(&cfstr_ErrorInTnOverr.isa);
          }

          else
          {
            v21 = v20;
            v22 = [v10 substringWithRange:{-[__CFString length](v6, "length"), v19 - -[__CFString length](v6, "length")}];
            [v2 appendFormat:@"<say-as interpret-as=%@>", v22];
            v23 = [(__CFString *)v6 length];
            v8 += v21 + v23 + [v22 length];
            [v3 addObject:@"say-as"];
          }

          goto LABEL_24;
        }
      }

LABEL_25:

      v4 = v8;
    }

    while (v8 < [a1 length]);
  }

  while ([v3 count])
  {
    v24 = [v3 lastObject];
    v25 = [v24 isEqualToString:@"phoneme"];

    if (v25)
    {
      [v2 appendString:@"></phoneme>"];
    }

    else
    {
      v26 = [v3 lastObject];
      [v2 appendFormat:@"</%@>", v26];
    }

    [v3 removeLastObject];
  }

LABEL_34:

  return v2;
}

- (uint64_t)vs_hasCJKCharacter
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = [MEMORY[0x277CCACA8] vs_isCJKCharacter:{objc_msgSend(a1, "characterAtIndex:", v2)}];
    if (v3)
    {
      break;
    }

    ++v2;
  }

  while (v2 < [a1 length]);
  return v3;
}

- (id)vs_removeSpeechTags
{
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\x1B\\\\\\w+=.+?\\\\"" options:0 error:0];
  v3 = [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{objc_msgSend(a1, "length"), &stru_2881D71A8}];
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"</?.*?>" options:0 error:0];
  v5 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), &stru_2881D71A8}];

  return v5;
}

- (id)vs_removePhonetics
{
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\x1B\\\\toi=\\w+\\\\.*?\x1B\\\\toi=orth\\\\"" options:0 error:0];
  v3 = [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{objc_msgSend(a1, "length"), &stru_2881D71A8}];
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\x1B\\\\toi=\\w+\\\\.*" options:0 error:0];
  v5 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), &stru_2881D71A8}];

  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<phoneme.*?/>" options:0 error:0];
  v7 = [v6 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), &stru_2881D71A8}];

  return v7;
}

- (uint64_t)vs_countPhoneticSyllables
{
  v48 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\x1B\\\\toi=lhp\\\\([^\x1B]*)" options:0 error:0];
  v2 = [v33 matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v43;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v42 + 1) + 8 * i) rangeAtIndex:1];
        v10 = [a1 substringWithRange:{v8, v9}];
        v5 += [MEMORY[0x277CCACA8] _vs_countPhoneticSyllables_lhp:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v37 = v5;
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(?:%@|%@)", @"'(?:[^'\\\\]|\\\\.)*'", @"(?:[^\\\\]|\\\\.)*"];
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\w+=%@", v32];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"<phoneme\\s+(%@)\\s+(%@)\\s*/>", v31, v31];
  v29 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:? options:? error:?];
  v11 = [v29 matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    v15 = @"lhp";
    v34 = *v39;
    do
    {
      v16 = 0;
      v35 = v13;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        v18 = &stru_2881D71A8;
        if ([v17 numberOfRanges] >= 2)
        {
          v19 = 0;
          v18 = &stru_2881D71A8;
          v20 = 1;
          do
          {
            v21 = [v17 rangeAtIndex:v20];
            v23 = [a1 substringWithRange:{v21, v22}];
            if ([v23 hasPrefix:@"alphabet="])
            {
              v19 = [v23 containsString:v15];
            }

            else if ([v23 hasPrefix:@"ph="])
            {
              [v23 substringWithRange:{4, objc_msgSend(v23, "length") - 5}];
              v25 = v24 = v15;

              v18 = v25;
              v15 = v24;
            }

            ++v20;
          }

          while (v20 < [v17 numberOfRanges]);
          if (v19)
          {
            v26 = [MEMORY[0x277CCACA8] _vs_countPhoneticSyllables_lhp:v18];
            v14 = v34;
            v13 = v35;
            goto LABEL_26;
          }

          v14 = v34;
          v13 = v35;
        }

        v26 = [MEMORY[0x277CCACA8] _vs_countPhoneticSyllables_xsampa:v18];
LABEL_26:
        v37 += v26;

        ++v16;
      }

      while (v16 != v13);
      v13 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v13);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v37;
}

- (double)vs_measurePauses
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\x1B\\\\pause=['\"]?([0-9]+)['\"]?\\\\"" options:0 error:0];
  v3 = [a1 length];
  v39 = v2;
  v4 = [v2 matchesInString:a1 options:0 range:{0, v3}];
  if ([v4 count] && v3 != 1)
  {
    v5 = [a1 characterAtIndex:v3 - 1];
    v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    if ([v6 characterIsMember:v5])
    {
    }

    else
    {
      v7 = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v8 = [v7 characterIsMember:v5];

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    --v3;
  }

LABEL_7:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = [v14 rangeAtIndex:1];
        v17 = [a1 substringWithRange:{v15, v16}];
        v18 = [v17 integerValue];
        if (v18 <= 10)
        {
          v19 = 10;
        }

        else
        {
          v19 = v18;
        }

        v20 = [v14 rangeAtIndex:0];
        if (v19 >= 100)
        {
          v22 = 100;
        }

        else
        {
          v22 = v19;
        }

        if (v20 + v21 >= v3 || v20 == 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = v19;
        }

        v11 += v24;
      }

      v10 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v25 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"<break time=[']([0-9]+)ms[']\\s*/>" options:0 error:0];
  v26 = [v25 matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v41 + 1) + 8 * j) rangeAtIndex:1];
        v34 = [a1 substringWithRange:{v32, v33}];
        v35 = [v34 integerValue];
        if (v35 <= 10)
        {
          v36 = 10;
        }

        else
        {
          v36 = v35;
        }

        v11 += v36;
      }

      v29 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v29);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v11 * 0.001;
}

- (id)vs_insertContextInfo:()VSSpeechService
{
  v2 = [MEMORY[0x277CCACA8] vs_markerStringForContext:?];
  v3 = [v2 stringByAppendingString:a1];

  return v3;
}

- (id)vs_substituteAudioWithLocalPath
{
  v2 = [a1 length];
  v3 = [MEMORY[0x277CCAB68] stringWithString:a1];
  v4 = [v3 rangeOfString:@"\x1B\\audio=" options:0 range:{0, v2}];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
    v8 = v5;
    v9 = 0;
    while (1)
    {
      v10 = [v3 rangeOfString:@"\\"" options:0 range:{v7 + v8, v9 + v2 - (v7 + v8)}];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }

      v11 = v10;
      v12 = v10 - v7;
      v13 = [v3 substringWithRange:{v7 + v8, v10 - v7 - v8}];
      if ([v13 hasPrefix:@"] && objc_msgSend(v13, "hasSuffix:", @") && objc_msgSend(v13, "length") >= 2)
      {
        v14 = [v13 substringWithRange:{1, objc_msgSend(v13, "length") - 2}];

        v13 = v14;
      }

      if ([v13 hasPrefix:@"/"])
      {
        break;
      }

      v15 = [MEMORY[0x277CCAB68] stringWithString:v13];
      [v15 insertString:@"/System/Library/PrivateFrameworks/VoiceServices.framework/TTSResources/Tones/" atIndex:0];
      if (([v13 hasSuffix:@".wav"] & 1) == 0)
      {
        [v15 appendString:@".wav"];
      }

      v16 = [v15 lastPathComponent];
      v17 = [v16 isEqualToString:@"AssistantEtiquette.wav"];

      if ((v17 & 1) == 0)
      {
        v23 = v3;

        goto LABEL_17;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"\x1B\\audio=\"%@\"\\"", v15];
      [v3 replaceCharactersInRange:v7 withString:{v12 + 1, v18}];

      v19 = [v15 length];
      v9 = v19 - [v13 length] + v11;

      v20 = [v3 length];
      v2 = v20 - v9;
      v7 = [v3 rangeOfString:@"\x1B\\audio=" options:0 range:{v9, v20 - v9}];
      v8 = v21;
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }
    }

    v22 = v3;
LABEL_17:

    goto LABEL_18;
  }

LABEL_2:
  v6 = v3;
LABEL_18:

  return v3;
}

- (void)vs_textifyEmojiWithLanguage:()VSSpeechService
{
  v4 = a3;
  v5 = a1;
  v6 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = getTTSSpeechTransformTextWithLanguageSymbolLoc_ptr;
  v16 = getTTSSpeechTransformTextWithLanguageSymbolLoc_ptr;
  if (!getTTSSpeechTransformTextWithLanguageSymbolLoc_ptr)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getTTSSpeechTransformTextWithLanguageSymbolLoc_block_invoke;
    v12[3] = &unk_279E4F748;
    v12[4] = &v13;
    __getTTSSpeechTransformTextWithLanguageSymbolLoc_block_invoke(v12);
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v7)
  {
    v8 = v7(v5, 3, v6, 0);

    v9 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *soft_TTSSpeechTransformTextWithLanguage(NSString *__strong, TTSSpeechTransformOptions, NSString * _Nullable __strong, NSMutableArray * _Nullable __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSString+VSSpeechService.m" lineNumber:18 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

+ (uint64_t)vs_isCJKCharacter:()VSSpeechService
{
  if (vs_isCJKCharacter__onceToken != -1)
  {
    dispatch_once(&vs_isCJKCharacter__onceToken, &__block_literal_global_873);
  }

  v4 = vs_isCJKCharacter____CJKCharacterSet;

  return [v4 characterIsMember:a3];
}

+ (uint64_t)_vs_countPhoneticSyllables_xsampa:()VSSpeechService
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [v3 characterAtIndex:v6];
      if (v8 == 46 || v8 == 35)
      {
        ++v7;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (uint64_t)_vs_countPhoneticSyllables_lhp:()VSSpeechService
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [v3 characterAtIndex:v6];
      if (v8 == 95 || v8 == 46)
      {
        ++v7;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (__CFString)vs_markerStringForContext:()VSSpeechService
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [MEMORY[0x277CCAB68] string];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = MEMORY[0x277CCACA8];
          v13 = [v6 objectForKeyedSubscript:v11];
          v14 = [v12 stringWithFormat:@"\x1B\\mrk=%@=%@\\"", v11, v13];
          [(__CFString *)v5 appendString:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v4 = v17;
  }

  else
  {
    v5 = &stru_2881D71A8;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

@end