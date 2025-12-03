@interface RKUtilities
+ (BOOL)RKRepairStringNeeded:(id)needed;
+ (BOOL)isDeviceSupportedForLSTMBasedLanguageIdentification:(id)identification;
+ (BOOL)isLanguageSupportedByNSLinguisticTaggerForLanguageIdentification:(id)identification;
+ (BOOL)isLanguageSupportedBySmartPunctuation:(id)punctuation;
+ (BOOL)isLanguageSupportedForLemmatization:(id)lemmatization;
+ (BOOL)isLanguageSupportedForPartOfSpeech:(id)speech;
+ (BOOL)prefixInArray:(id)array withArray:(id)withArray;
+ (BOOL)suffixInArray:(id)array withArray:(id)withArray;
+ (BOOL)tokenInArray:(id)array withArray:(id)withArray;
+ (id)addLikelySubtagsForLocaleIdentifier:(id)identifier;
+ (id)canonicalLanguageAndScriptCodeIdentifierForIdentifier:(id)identifier;
+ (id)getDeviceModel;
+ (id)normalizeForPersonalization:(id)personalization;
+ (id)removeEmoji:(id)emoji;
+ (id)removeMultipleWhitespaces:(id)whitespaces;
+ (id)stripDiacritics:(id)diacritics;
+ (id)stripEmojiSkinTones:(id)tones;
+ (id)stripPunctuations:(id)punctuations;
@end

@implementation RKUtilities

+ (id)stripPunctuations:(id)punctuations
{
  v3 = MEMORY[0x277CCA900];
  punctuationsCopy = punctuations;
  punctuationCharacterSet = [v3 punctuationCharacterSet];
  v6 = [punctuationCharacterSet mutableCopy];

  v7 = [punctuationsCopy mutableCopy];
  [v6 addCharactersInString:@"‚„…‘’“”•–—˜›«¬¯±·»"];
  stripCharacterSet(v7, v6);
  symbolCharacterSet = [MEMORY[0x277CCA900] symbolCharacterSet];
  stripCharacterSet(v7, symbolCharacterSet);

  return v7;
}

+ (id)removeMultipleWhitespaces:(id)whitespaces
{
  whitespacesCopy = whitespaces;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__6;
  v7[4] = __Block_byref_object_dispose__6;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RKUtilities_removeMultipleWhitespaces___block_invoke;
  block[3] = &unk_279B10020;
  block[4] = v7;
  if (removeMultipleWhitespaces__onceRegexToken != -1)
  {
    dispatch_once(&removeMultipleWhitespaces__onceRegexToken, block);
  }

  v4 = [removeMultipleWhitespaces__regexMultipleWhitespaces stringByReplacingMatchesInString:whitespacesCopy options:0 range:0 withTemplate:{objc_msgSend(whitespacesCopy, "length"), @" "}];
  _Block_object_dispose(v7, 8);

  return v4;
}

void __41__RKUtilities_removeMultipleWhitespaces___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\s+" options:1 error:&obj];
  objc_storeStrong((v1 + 40), obj);
  v3 = removeMultipleWhitespaces__regexMultipleWhitespaces;
  removeMultipleWhitespaces__regexMultipleWhitespaces = v2;
}

+ (id)stripEmojiSkinTones:(id)tones
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:tones];
  stripEmojiSkinTones(v3);

  return v3;
}

+ (id)normalizeForPersonalization:(id)personalization
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:personalization];
  CFStringLowercase(v3, 0);
  v4 = v3;
  if (normalizeWhitespace_onceToken != -1)
  {
    +[RKUtilities normalizeForPersonalization:];
  }

  CFStringTrimWhitespace(v4);
  v5 = [(__CFString *)v4 length];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [(__CFString *)v4 rangeOfCharacterFromSet:normalizeWhitespace_sWhitespaceCharacterSet options:4 range:0, v6];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0)
      {
        break;
      }

      v10 = v7;
      v11 = v8;
      v12 = [(__CFString *)v4 rangeOfCharacterFromSet:normalizeWhitespace_sNonWhitespaceCharacterSet options:4 range:0, v7];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0)
      {
        break;
      }

      v6 = v12;
      [(__CFString *)v4 replaceCharactersInRange:v12 + v13 withString:v10 + v11 - (v12 + v13), @" "];
    }

    while (v6);
  }

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  stripCharacterSet(v4, punctuationCharacterSet);

  v16 = v4;
  v17 = [(__CFString *)v16 length];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *MEMORY[0x277CBED00];
    do
    {
      v21 = [(__CFString *)v16 characterAtIndex:v19];
      if ((v21 + 255) <= 0x5Du)
      {
        chars = v21 + 288;
        v22 = CFStringCreateWithCharactersNoCopy(0, &chars, 1, v20);
        [(__CFString *)v16 replaceCharactersInRange:v19 withString:1, v22];
        CFRelease(v22);
      }

      ++v19;
    }

    while (v18 != v19);
  }

  stripDiacritics(v16);
  stripEmojiSkinTones(v16);

  return v16;
}

+ (id)stripDiacritics:(id)diacritics
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:diacritics];
  stripDiacritics(v3);

  return v3;
}

+ (BOOL)isLanguageSupportedByNSLinguisticTaggerForLanguageIdentification:(id)identification
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identification];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"ms", @"ca", @"id", @"vi", 0}];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

+ (BOOL)isLanguageSupportedForLemmatization:(id)lemmatization
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:lemmatization];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"en", @"es", @"pt", @"de", @"it", @"ru", @"tr", @"fr", @"ar", @"he", 0}];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)isLanguageSupportedForPartOfSpeech:(id)speech
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:speech];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"en", @"es", @"pt", @"de", @"it", @"ru", @"tr", @"fr", 0}];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)isLanguageSupportedBySmartPunctuation:(id)punctuation
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:punctuation];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"en", 0}];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)removeEmoji:(id)emoji
{
  emojiCopy = emoji;
  if (CEMStringContainsEmoji())
  {
    CFStringGetLength(emojiCopy);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9 = emojiCopy;
    CEMEnumerateEmojiTokensInStringWithBlock();
    v4 = v11[3];
    v5 = [(__CFString *)v9 length];
    v6 = [(__CFString *)v9 substringWithRange:v4, v5 - v11[3]];
    [v15[5] appendString:v6];
    v7 = v15[5];

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = emojiCopy;
  }

  return v7;
}

void __27__RKUtilities_removeEmoji___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = *(*(*(a1 + 48) + 8) + 24);
  v9 = [*(a1 + 32) substringWithRange:{v8, a3 - v8}];
  [v7 appendString:v9];

  *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
}

+ (BOOL)tokenInArray:(id)array withArray:(id)withArray
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  withArrayCopy = withArray;
  v7 = [withArrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(withArrayCopy);
        }

        if ([arrayCopy containsString:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [withArrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)prefixInArray:(id)array withArray:(id)withArray
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  withArrayCopy = withArray;
  v7 = [withArrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(withArrayCopy);
        }

        if ([arrayCopy hasPrefix:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [withArrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)suffixInArray:(id)array withArray:(id)withArray
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  withArrayCopy = withArray;
  v7 = [withArrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(withArrayCopy);
        }

        if ([arrayCopy hasSuffix:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [withArrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)getDeviceModel
{
  if (getDeviceModel_onceToken != -1)
  {
    +[RKUtilities getDeviceModel];
  }

  v3 = getDeviceModel_deviceModelName;

  return v3;
}

void __29__RKUtilities_getDeviceModel__block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = v1;
  }

  else
  {
    v0 = &stru_2874A9C90;
  }

  objc_storeStrong(&getDeviceModel_deviceModelName, v0);
}

+ (BOOL)isDeviceSupportedForLSTMBasedLanguageIdentification:(id)identification
{
  v17 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  if (isDeviceSupportedForLSTMBasedLanguageIdentification__onceToken != -1)
  {
    +[RKUtilities isDeviceSupportedForLSTMBasedLanguageIdentification:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = isDeviceSupportedForLSTMBasedLanguageIdentification__preH8;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([identificationCopy hasPrefix:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __67__RKUtilities_isDeviceSupportedForLSTMBasedLanguageIdentification___block_invoke()
{
  isDeviceSupportedForLSTMBasedLanguageIdentification__preH8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_2874E71B0];

  return MEMORY[0x2821F96F8]();
}

+ (id)addLikelySubtagsForLocaleIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [identifierCopy UTF8String];
  uloc_addLikelySubtags();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)canonicalLanguageAndScriptCodeIdentifierForIdentifier:(id)identifier
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [RKUtilities addLikelySubtagsForLocaleIdentifier:identifier];
  v4 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v3];
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v7 = *MEMORY[0x277CBE6F8];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
  v9 = v8;
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v23[0] = v5;
    v23[1] = v7;
    v24[0] = v6;
    v24[1] = v8;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v24;
    v13 = v23;
    v14 = 2;
LABEL_8:
    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
    goto LABEL_9;
  }

  if (v6)
  {
    v21 = v5;
    v22 = v6;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v22;
    v13 = &v21;
    v14 = 1;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:
  v16 = MEMORY[0x277CBEAF8];
  v17 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v15];
  v18 = [v16 canonicalLanguageIdentifierFromString:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)RKRepairStringNeeded:(id)needed
{
  neededCopy = needed;
  if (![(__CFString *)neededCopy length])
  {
    goto LABEL_5;
  }

  fastestEncoding = [(__CFString *)neededCopy fastestEncoding];
  v5 = 0;
  if (fastestEncoding != 1 && fastestEncoding != 4)
  {
    if (CFStringGetCStringPtr(neededCopy, 4u))
    {
LABEL_5:
      v5 = 0;
      goto LABEL_6;
    }

    v7 = neededCopy;
    v8 = v7;
    if (v7)
    {
      memset(v27, 0, sizeof(v27));
      Length = CFStringGetLength(v7);
      theString = v8;
      v31 = 0;
      v32 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v8);
      CStringPtr = 0;
      v29 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
      }

      v33 = 0;
      v34 = 0;
      v30 = CStringPtr;
      if (Length >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v5 = 1;
        v16 = 64;
        while (1)
        {
          v17 = v14 >= 4 ? 4 : v14;
          v18 = v32;
          v19 = v15 >> 10;
          if (v32 > v14)
          {
            break;
          }

          if (v19 == 54)
          {
            goto LABEL_37;
          }

          v15 = 0;
LABEL_24:
          v5 = ++v14 < Length;
          --v12;
          ++v16;
          if (Length == v14)
          {
            goto LABEL_37;
          }
        }

        if (v29)
        {
          v20 = &v29[v31];
        }

        else
        {
          if (v30)
          {
            v15 = v30[v31 + v14];
LABEL_23:
            if ((v19 == 54) != (v15 >> 10 == 55))
            {
              goto LABEL_37;
            }

            goto LABEL_24;
          }

          if (v34 <= v14 || v13 > v14)
          {
            v22 = -v17;
            v23 = v17 + v12;
            v24 = v16 - v17;
            v25 = v14 + v22;
            v26 = v25 + 64;
            if (v25 + 64 >= v32)
            {
              v26 = v32;
            }

            v33 = v25;
            v34 = v26;
            if (v32 >= v24)
            {
              v18 = v24;
            }

            v35.location = v25 + v31;
            v35.length = v18 + v23;
            CFStringGetCharacters(theString, v35, v27);
            v13 = v33;
          }

          v20 = v27 - v13;
        }

        v15 = v20[v14];
        goto LABEL_23;
      }
    }

    v5 = 0;
LABEL_37:
  }

LABEL_6:

  return v5;
}

@end