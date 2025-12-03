@interface NSLinguisticTagger(RKPrivate)
- (BOOL)containsAsianCharacters;
- (__CFString)languageOfRange:()RKPrivate withAdditionalContext:withPreferredLanguages:;
@end

@implementation NSLinguisticTagger(RKPrivate)

- (BOOL)containsAsianCharacters
{
  string = [self string];
  v3 = [string length];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[⺀-鿿]" options:1 error:0];
  string2 = [self string];
  string3 = [self string];
  v7 = [v4 matchesInString:string2 options:0 range:{0, objc_msgSend(string3, "length")}];
  v8 = [v7 count] != 0;

  return v8;
}

- (__CFString)languageOfRange:()RKPrivate withAdditionalContext:withPreferredLanguages:
{
  v10 = a5;
  v52 = a6;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__5;
  v71 = __Block_byref_object_dispose__5;
  v72 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke;
  block[3] = &unk_279B10020;
  block[4] = &v67;
  if (languageOfRange_withAdditionalContext_withPreferredLanguages__onceDataDetectorToken != -1)
  {
    dispatch_once(&languageOfRange_withAdditionalContext_withPreferredLanguages__onceDataDetectorToken, block);
  }

  if (!languageOfRange_withAdditionalContext_withPreferredLanguages__dataDetector)
  {
    goto LABEL_6;
  }

  if (v68[5])
  {
    goto LABEL_6;
  }

  string = [self string];
  v12 = [string length];

  v13 = languageOfRange_withAdditionalContext_withPreferredLanguages__dataDetector;
  string2 = [self string];
  v15 = [v13 rangeOfFirstMatchInString:string2 options:0 range:{0, v12}];
  v17 = v16;

  if (v15 || v12 != v17)
  {
LABEL_6:
    v18 = +[RKUtilities getDeviceModel];
    if ([RKUtilities isDeviceSupportedForLSTMBasedLanguageIdentification:v18])
    {
      v19 = 15;
    }

    else
    {
      v19 = 25;
    }

    string3 = [self string];
    v21 = [string3 length];

    if (v21 > 0x18)
    {
      goto LABEL_13;
    }

    string4 = [self string];
    v23 = [@" " stringByAppendingString:v10];
    v24 = [string4 stringByAppendingString:v23];

    [self setString:v24];
    if ([self containsAsianCharacters])
    {
      string5 = [self string];
      v26 = [string5 length];

      if (v26 >= 5)
      {
LABEL_12:

LABEL_13:
        v27 = [self tagsInRange:a3 scheme:a4 options:*MEMORY[0x277CCA3D8] tokenRanges:{6, 0}];
        v28 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v27];
        allObjects = [v28 allObjects];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke_2;
        v64[3] = &unk_279B10B70;
        v30 = v28;
        v65 = v30;
        v31 = [allObjects sortedArrayUsingComparator:v64];
        v32 = [v31 mutableCopy];

        if ([v32 count] >= 2)
        {
          [v32 removeObject:&stru_2874A9C90];
        }

        if ([v32 count] >= 2)
        {
          [v32 removeObject:@"und"];
        }

        v51 = v10;
        if ([v32 count] && (objc_msgSend(v32, "objectAtIndexedSubscript:", 0), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEqualToString:", &stru_2874A9C90), v33, (v34 & 1) == 0))
        {
          v24 = [v32 objectAtIndexedSubscript:0];
        }

        else
        {
          v24 = 0;
        }

        v50 = v18;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v63[0] = 0;
        v63[1] = v63;
        v63[2] = 0x2020000000;
        v63[3] = 0;
        string6 = [self string];
        v40 = [string6 length];
        v41 = *MEMORY[0x277CCA3E8];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke_3;
        v60[3] = &unk_279B10B98;
        v60[4] = self;
        v42 = dictionary;
        v61 = v42;
        v62 = v63;
        [self enumerateTagsInRange:0 scheme:v40 options:v41 usingBlock:{4, v60}];

        [v42 removeObjectForKey:@"und"];
        v54 = 0;
        v55 = &v54;
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy__5;
        v58 = __Block_byref_object_dispose__5;
        v59 = 0;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __94__NSLinguisticTagger_RKPrivate__languageOfRange_withAdditionalContext_withPreferredLanguages___block_invoke_4;
        v53[3] = &unk_279B10BC0;
        v53[4] = v63;
        v53[5] = &v54;
        [v42 enumerateKeysAndObjectsUsingBlock:v53];
        v43 = v55[5];
        if (v43)
        {
          v44 = v43;

          v24 = v44;
        }

        string7 = [self string];
        v46 = [RKUtilities removeEmoji:string7];

        v47 = [RKUtilities stripPunctuations:v46];

        v48 = [RKUtilities removeMultipleWhitespaces:v47];

        if ([v52 indexOfObject:v24] == 0x7FFFFFFFFFFFFFFFLL || ((objc_msgSend(v24, "isEqualToString:", @"zh-Hans") & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", @"zh-Hant") & 1) != 0 || objc_msgSend(v24, "isEqualToString:", @"ja")) && objc_msgSend(v48, "length") < 5)
        {
          v37 = @"und";
        }

        else
        {
          v37 = v24;
        }

        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(v63, 8);

        v18 = v50;
        v10 = v51;
        goto LABEL_33;
      }
    }

    else
    {
      string8 = [self string];
      v36 = [string8 length];

      if (v36 >= v19)
      {
        goto LABEL_12;
      }
    }

    v37 = @"und";
LABEL_33:

    goto LABEL_34;
  }

  v37 = @"und";
LABEL_34:
  _Block_object_dispose(&v67, 8);

  return v37;
}

@end