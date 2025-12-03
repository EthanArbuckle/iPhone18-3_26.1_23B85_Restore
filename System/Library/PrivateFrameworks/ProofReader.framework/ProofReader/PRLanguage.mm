@interface PRLanguage
+ (id)dataBundle;
+ (id)englishLocalizationAdditionForLanguage:(id)language;
+ (id)fallbackLocalizationForLanguage:(id)language;
+ (id)languageModelFallbackLocalizationForLanguage:(id)language;
+ (id)languageModelLocalizationForLanguage:(id)language;
+ (id)languageObjectWithIdentifier:(id)identifier;
+ (id)localizationForLanguage:(id)language;
+ (id)localizationsForLanguage:(id)language;
+ (id)spellingFallbackLocalizationForLanguage:(id)language;
+ (id)textInputModeForLanguage:(id)language;
+ (id)transliterationLocalizationForLanguage:(id)language;
+ (unint64_t)orthographyIndexForLanguageCode:(unsigned __int8)code;
+ (unint64_t)orthographyIndexForOtherLanguage:(id)language;
+ (unsigned)encodingForOrthographyIndex:(unint64_t)index;
+ (void)getCodesForLanguage:(id)language languageCode:(char *)code languageDialect:(char *)dialect languageMode:(char *)mode orthographyIndex:(unint64_t *)index encoding:(unsigned int *)encoding;
- (BOOL)isBicameral;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupportedAssetLexiconLanguage;
- (BOOL)isSupportedCompletionLanguage;
- (BOOL)isSupportedLatinLanguage;
- (BOOL)isSupportedSingleCompletionLanguage;
- (BOOL)usesArabicScript;
- (BOOL)usesCyrillicScript;
- (BOOL)usesDevanagariScript;
- (BOOL)usesOrdinalPeriod;
- (BOOL)usesSentencePieceModel;
- (BOOL)usesUnigramProbabilities;
- (PRLanguage)initWithCoder:(id)coder;
- (PRLanguage)initWithIdentifier:(id)identifier;
- (const)accents;
- (const)oneLetterWords;
- (const)twoLetterWords;
- (id)description;
- (id)languageModelFallbackLocalization;
- (id)languageModelLocalization;
- (id)spellingFallbackLocalization;
- (id)transliterationLocalization;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRLanguage

+ (id)dataBundle
{
  v2 = _dataBundle;
  if (!_dataBundle)
  {
    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    _dataBundle = v2;
  }

  return v2;
}

+ (id)localizationsForLanguage:(id)language
{
  v4 = [objc_msgSend(self "dataBundle")];
  if ([language isEqualToString:@"American English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"AmericanEnglish"))
  {
    language = @"en_US";
  }

  else if ([language isEqualToString:@"Australian English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"AustralianEnglish"))
  {
    language = @"en_AU";
  }

  else if ([language isEqualToString:@"Canadian English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"CanadianEnglish"))
  {
    language = @"en_CA";
  }

  else if ([language isEqualToString:@"British English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"BritishEnglish"))
  {
    language = @"en_GB";
  }

  else if ([language isEqualToString:@"Indian English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"IndianEnglish"))
  {
    language = @"en_IN";
  }

  else if ([language isEqualToString:@"Singapore English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"SingaporeEnglish"))
  {
    language = @"en_SG";
  }

  else if ([language isEqualToString:@"Japanese English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"JapaneseEnglish"))
  {
    language = @"en_JP";
  }

  else if ([language isEqualToString:@"Chinese English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"ChineseEnglish"))
  {
    language = @"en_CN";
  }

  else if ([language isEqualToString:@"New Zealand English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"NewZealandEnglish"))
  {
    language = @"en_NZ";
  }

  else if ([language isEqualToString:@"South African English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"SouthAfricanEnglish"))
  {
    language = @"en_ZA";
  }

  else if ([language isEqualToString:@"Swiss German"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"SwissGerman"))
  {
    language = @"de_CH";
  }

  else if ([language isEqualToString:@"Brazilian Portuguese"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"BrazilianPortuguese"))
  {
    language = @"pt_BR";
  }

  else if ([language isEqualToString:@"European Portuguese"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"EuropeanPortuguese"))
  {
    language = @"pt_PT";
  }

  else if ([language isEqualToString:@"Norwegian Bokmål"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"NorwegianBokmål") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Bokmål"))
  {
    language = @"nb";
  }

  else if ([language isEqualToString:@"Norwegian Nynorsk"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"NorwegianNynorsk") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Nynorsk"))
  {
    language = @"nn";
  }

  else if (([language isEqualToString:@"Irish Gaelic"] & 1) != 0 || objc_msgSend(language, "isEqualToString:", @"IrishGaelic"))
  {
    language = @"ga";
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:language];
    v6 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v4 forPreferences:v5];
    if (v6)
    {
      v7 = v6;
      if (![v6 count] || (objc_msgSend(objc_msgSend(v7, "objectAtIndex:", 0), "isEqualToString:", @"English") & 1) == 0 && !objc_msgSend(objc_msgSend(v7, "objectAtIndex:", 0), "isEqualToString:", @"en"))
      {
        return v7;
      }

      if ([language isEqualToString:@"English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"en") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en-"))
      {
        return v7;
      }
    }
  }

  v9 = MEMORY[0x1E695DEC8];

  return [v9 arrayWithObject:language];
}

+ (id)localizationForLanguage:(id)language
{
  if (localizationForLanguage__onceToken != -1)
  {
    +[PRLanguage localizationForLanguage:];
  }

  result = [localizationForLanguage__localizationDict objectForKey:language];
  if (!result)
  {
    result = [self localizationsForLanguage:language];
    if (result)
    {
      v6 = result;
      result = [result count];
      if (result)
      {
        result = [v6 objectAtIndex:0];
      }
    }
  }

  if (!result)
  {
    return language;
  }

  return result;
}

uint64_t __38__PRLanguage_localizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en", @"en", @"en", @"en_US", @"en_GB", @"en_GB", @"en_CA", @"en_CA", @"en_AU", @"en_AU", @"en_IN", @"en_IN", @"en_SG", @"en_SG", @"en_JP", @"en_JP", @"en_CN", @"en_CN", @"en_NZ", @"en_NZ", @"en_ZA", @"en_ZA", @"fr", @"French", @"fr", @"fr", @"fr", @"fr_FR", @"fr", @"fr_CA", @"fr", @"fr_CH", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es", @"Spanish", @"es", @"es", @"es", @"es_ES", @"es_MX", @"es_MX", @"pt_BR", @"Portuguese", @"pt_BR", @"pt"}];
  localizationForLanguage__localizationDict = result;
  return result;
}

+ (id)fallbackLocalizationForLanguage:(id)language
{
  if (fallbackLocalizationForLanguage__onceToken != -1)
  {
    +[PRLanguage fallbackLocalizationForLanguage:];
  }

  result = [fallbackLocalizationForLanguage__localizationDict objectForKey:language];
  if (!result)
  {
    result = [self localizationsForLanguage:language];
    if (result)
    {
      v6 = result;
      if ([result count] < 2)
      {
        result = 0;
      }

      else
      {
        result = [v6 objectAtIndex:1];
      }
    }
  }

  if (!result)
  {
    return language;
  }

  return result;
}

uint64_t __46__PRLanguage_fallbackLocalizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en", @"en", @"en", @"en_US", @"en", @"en_GB", @"en", @"en_CA", @"en", @"en_AU", @"en", @"en_IN", @"en", @"en_SG", @"en", @"en_JP", @"en", @"en_CN", @"en", @"en_NZ", @"en", @"en_ZA", @"fr", @"French", @"fr", @"fr", @"fr", @"fr_FR", @"fr", @"fr_CA", @"fr", @"fr_CH", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es", @"Spanish", @"es", @"es", @"es", @"es_ES", @"es", @"es_MX", @"pt", @"Portuguese", @"pt", @"pt"}];
  fallbackLocalizationForLanguage__localizationDict = result;
  return result;
}

+ (id)languageModelLocalizationForLanguage:(id)language
{
  if (languageModelLocalizationForLanguage__onceToken != -1)
  {
    +[PRLanguage languageModelLocalizationForLanguage:];
  }

  result = [languageModelLocalizationForLanguage__localizationDict objectForKey:language];
  if (!result)
  {
    return language;
  }

  return result;
}

uint64_t __51__PRLanguage_languageModelLocalizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en_US", @"en", @"en_US", @"en_US", @"en_GB", @"en_GB", @"en_CA", @"en_CA", @"en_AU", @"en_AU", @"en_IN", @"en_IN", @"en_SG", @"en_SG", @"en_JP", @"en_JP", @"en_US", @"en_CN", @"en_NZ", @"en_NZ", @"en_ZA", @"en_ZA", @"fr_FR", @"French", @"fr_FR", @"fr", @"fr_FR", @"fr_FR", @"fr_CA", @"fr_CA", @"fr_CH", @"fr_CH", @"fr_BE", @"fr_BE", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es_ES", @"Spanish", @"es_ES", @"es", @"es_ES", @"es_ES", @"es_MX", @"es_MX", @"pt_BR", @"Portuguese"}];
  languageModelLocalizationForLanguage__localizationDict = result;
  return result;
}

+ (id)languageModelFallbackLocalizationForLanguage:(id)language
{
  if (languageModelFallbackLocalizationForLanguage__onceToken != -1)
  {
    +[PRLanguage languageModelFallbackLocalizationForLanguage:];
  }

  result = [languageModelFallbackLocalizationForLanguage__localizationDict objectForKey:language];
  if (!result)
  {
    return language;
  }

  return result;
}

uint64_t __59__PRLanguage_languageModelFallbackLocalizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en", @"en", @"en", @"en_US", @"en", @"en_GB", @"en", @"en_CA", @"en", @"en_AU", @"en", @"en_IN", @"en", @"en_SG", @"en", @"en_JP", @"en", @"en_CN", @"en", @"en_NZ", @"en", @"en_ZA", @"fi", @"Finnish", @"fi", @"fi", @"fi", @"fi_FI", @"fr_FR", @"French", @"fr_FR", @"fr", @"fr_FR", @"fr_FR", @"fr_FR", @"fr_CA", @"fr_FR", @"fr_CH", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es", @"Spanish", @"es", @"es", @"es", @"es_ES"}];
  languageModelFallbackLocalizationForLanguage__localizationDict = result;
  return result;
}

+ (id)textInputModeForLanguage:(id)language
{
  if (textInputModeForLanguage__onceToken != -1)
  {
    +[PRLanguage textInputModeForLanguage:];
  }

  result = [textInputModeForLanguage__textInputModeDict objectForKey:language];
  if (!result)
  {
    return language;
  }

  return result;
}

uint64_t __39__PRLanguage_textInputModeForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en_US", @"en", @"en_US", @"en_US", @"en_GB", @"en_GB", @"en_CA", @"en_CA", @"en_AU", @"en_AU", @"en_IN", @"en_IN", @"en_SG", @"en_SG", @"en_JP", @"en_JP", @"en_US", @"en_CN", @"en_NZ", @"en_NZ", @"en_ZA", @"en_ZA", @"fr_FR", @"French", @"fr_FR", @"fr", @"fr_FR", @"fr_FR", @"fr_CA", @"fr_CA", @"fr_CH", @"fr_CH", @"de_DE", @"German", @"de_DE", @"de", @"de_DE", @"de_DE", @"de_AT", @"de_AT", @"de_CH", @"de_CH", @"it_IT", @"Italian", @"it_IT", @"it", @"it_IT", @"it_IT", @"es_ES", @"Spanish", @"es_ES", @"es", @"es_ES", @"es_ES", @"es_MX", @"es_MX", @"pt_BR", @"Portuguese", @"pt_BR", @"pt"}];
  textInputModeForLanguage__textInputModeDict = result;
  return result;
}

+ (unint64_t)orthographyIndexForLanguageCode:(unsigned __int8)code
{
  if ((code - 1) > 0x24)
  {
    return 0;
  }

  else
  {
    return qword_1D2BFA770[(code - 1)];
  }
}

+ (unint64_t)orthographyIndexForOtherLanguage:(id)language
{
  if ([language isEqualToString:@"Amharic"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"am"))
  {
    return 244;
  }

  if ([language isEqualToString:@"Najdi Arabic"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ars"))
  {
    return 160;
  }

  if ([language isEqualToString:@"Armenian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"hy"))
  {
    return 226;
  }

  if ([language isEqualToString:@"Bengali"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"bn"))
  {
    return 230;
  }

  if ([language isEqualToString:@"Burmese"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Myanmar") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"my"))
  {
    return 242;
  }

  if ([language isEqualToString:@"Cherokee"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"chr"))
  {
    return 245;
  }

  if ([language isEqualToString:@"Croatian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"hr"))
  {
    return 40;
  }

  if ([language isEqualToString:@"Georgian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ka"))
  {
    return 243;
  }

  if ([language isEqualToString:@"Gujarati"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"gu"))
  {
    return 232;
  }

  if ([language isEqualToString:@"Hindi"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"hi"))
  {
    return 192;
  }

  if ([language isEqualToString:@"Icelandic"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"is"))
  {
    return 18;
  }

  if ([language isEqualToString:@"Indonesian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"id"))
  {
    return 74;
  }

  if ([language isEqualToString:@"Inuktitut"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"iu"))
  {
    return 208;
  }

  if ([language isEqualToString:@"Kannada"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"kn"))
  {
    return 236;
  }

  if ([language isEqualToString:@"Kazakh"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"kk"))
  {
    return 138;
  }

  if ([language isEqualToString:@"Khmer"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"kh"))
  {
    return 247;
  }

  if ([language isEqualToString:@"Lao"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"lo"))
  {
    return 240;
  }

  if ([language isEqualToString:@"Malayalam"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ml"))
  {
    return 237;
  }

  if ([language isEqualToString:@"Marathi"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"mr"))
  {
    return 193;
  }

  if ([language isEqualToString:@"Mongolian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"mn"))
  {
    return 248;
  }

  if ([language isEqualToString:@"Norwegian Nynorsk"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"NorwegianNynorsk") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Nynorsk") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"nn"))
  {
    return 16;
  }

  if ([language isEqualToString:@"Oriya"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"or"))
  {
    return 233;
  }

  if ([language isEqualToString:@"Persian"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Farsi") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"fa"))
  {
    return 161;
  }

  if ([language isEqualToString:@"Punjabi"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pa"))
  {
    return 231;
  }

  if ([language isEqualToString:@"Sinhalese"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"si"))
  {
    return 238;
  }

  if ([language isEqualToString:@"Slovak"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"sk"))
  {
    return 46;
  }

  if ([language isEqualToString:@"Tamil"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ta"))
  {
    return 234;
  }

  if ([language isEqualToString:@"Telugu"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"te"))
  {
    return 235;
  }

  if ([language isEqualToString:@"Tibetan"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"bo"))
  {
    return 241;
  }

  if ([language isEqualToString:@"Ukrainian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"uk"))
  {
    return 129;
  }

  if (([language isEqualToString:@"Urdu"] & 1) != 0 || objc_msgSend(language, "hasPrefix:", @"ur"))
  {
    return 162;
  }

  return 0;
}

+ (unsigned)encodingForOrthographyIndex:(unint64_t)index
{
  result = 1280;
  if (index <= 21)
  {
    if (index - 6 < 0xB)
    {
      return result;
    }

    return 134217984;
  }

  if (index > 47)
  {
    if (index <= 73)
    {
      if (index != 48)
      {
        if (index == 55)
        {
          return 1284;
        }

        return 134217984;
      }
    }

    else if (index != 74)
    {
      if (index == 128 || index == 130)
      {
        return 517;
      }

      return 134217984;
    }
  }

  else
  {
    if (index > 40)
    {
      if (index == 41 || index == 42 || index == 43)
      {
        return 514;
      }

      return 134217984;
    }

    if (index != 22 && index != 34)
    {
      return 134217984;
    }
  }

  return result;
}

+ (void)getCodesForLanguage:(id)language languageCode:(char *)code languageDialect:(char *)dialect languageMode:(char *)mode orthographyIndex:(unint64_t *)index encoding:(unsigned int *)encoding
{
  if ([language isEqualToString:@"English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"en") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"American English") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"AmericanEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_US") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en-US"))
  {
    goto LABEL_7;
  }

  if ([language isEqualToString:@"Indian English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"IndianEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_IN") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Singapore English") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"SingaporeEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_SG"))
  {
LABEL_28:
    v16 = 0;
    v15 = 64;
    goto LABEL_8;
  }

  if ([language isEqualToString:@"Japanese English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"JapaneseEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_JP") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Chinese English") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"ChineseEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_CN"))
  {
    goto LABEL_7;
  }

  if ([language isEqualToString:@"Australian English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"AustralianEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_AU") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en-AU"))
  {
    goto LABEL_28;
  }

  if ([language isEqualToString:@"Canadian English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"CanadianEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_CA") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en-CA"))
  {
    v16 = 0;
    v15 = 32;
    goto LABEL_8;
  }

  if ([language isEqualToString:@"New Zealand English"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"NewZealandEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_NZ") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"South African English") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"SouthAfricanEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en_ZA") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"British English") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"BritishEnglish") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"en"))
  {
    goto LABEL_28;
  }

  if ([language hasPrefix:@"en"])
  {
LABEL_7:
    v15 = 0;
    v16 = 0;
LABEL_8:
    v17 = 16;
    goto LABEL_9;
  }

  if ([language isEqualToString:@"Swiss German"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"SwissGerman") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"de_CH"))
  {
    v16 = 0;
    v15 = 64;
LABEL_58:
    v17 = 6;
    goto LABEL_9;
  }

  if ([language isEqualToString:@"German"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"de"))
  {
    v16 = 0;
    v15 = 0x80;
    goto LABEL_58;
  }

  if ([language isEqualToString:@"Brazilian Portuguese"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"BrazilianPortuguese") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pt_BR") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pt-BR"))
  {
    v16 = 0;
    v15 = 64;
LABEL_67:
    v17 = 12;
    goto LABEL_9;
  }

  if ([language isEqualToString:@"European Portuguese"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"EuropeanPortuguese") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pt_PT") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pt-PT") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Portuguese") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pt"))
  {
    v16 = 0;
    v15 = 0x80;
    goto LABEL_67;
  }

  if ([language isEqualToString:@"Arabic"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ar"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 20;
  }

  else if ([language isEqualToString:@"Bulgarian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"bg"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 25;
  }

  else if ([language isEqualToString:@"Catalan"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ca"))
  {
    v15 = 0;
    v16 = 0x80;
    v17 = 3;
  }

  else if ([language isEqualToString:@"Czech"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"cs"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else if ([language isEqualToString:@"Danish"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"da"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 10;
  }

  else if ([language isEqualToString:@"Dutch"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"nl"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 11;
  }

  else if ([language isEqualToString:@"Finnish"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"fi"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 14;
  }

  else if ([language isEqualToString:@"French"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"fr"))
  {
    v15 = 0;
    v16 = 96;
    v17 = 5;
  }

  else if ([language isEqualToString:@"Greek"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"el"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 15;
  }

  else if ([language isEqualToString:@"Hebrew"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"he"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 22;
  }

  else if ([language isEqualToString:@"Hungarian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"hu"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 4;
  }

  else if ([language isEqualToString:@"Italian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"it"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 9;
  }

  else if ([language isEqualToString:@"Korean"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ko"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 29;
  }

  else if ([language isEqualToString:@"Norwegian"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Norwegian Nynorsk") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"NorwegianNynorsk") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Nynorsk") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"nb"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 13;
  }

  else if ([language isEqualToString:@"Polish"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"pl"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 18;
  }

  else if ([language isEqualToString:@"Russian"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ru"))
  {
    v15 = 0;
    v16 = 0x80;
    v17 = 2;
  }

  else if ([language isEqualToString:@"Spanish"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"es"))
  {
    v15 = 0;
    v16 = 64;
    v17 = 8;
  }

  else if ([language isEqualToString:@"Swedish"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"sv"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 7;
  }

  else if ([language isEqualToString:@"Thai"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"th"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 35;
  }

  else if ([language isEqualToString:@"Turkish"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"tr"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 28;
  }

  else if ([language isEqualToString:@"Vietnamese"] & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"vi"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 36;
  }

  else if ([language isEqualToString:@"Irish Gaelic"] & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"IrishGaelic") & 1) != 0 || (objc_msgSend(language, "isEqualToString:", @"Gaelic") & 1) != 0 || (objc_msgSend(language, "hasPrefix:", @"ga"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 21;
  }

  else if (([language isEqualToString:@"Romanian"] & 1) != 0 || objc_msgSend(language, "hasPrefix:", @"ro"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 34;
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v16 = 0;
  }

LABEL_9:
  v18 = [self orthographyIndexForLanguageCode:v17];
  if (!v18)
  {
    v18 = [self orthographyIndexForOtherLanguage:language];
  }

  if (code)
  {
    *code = v17;
  }

  if (dialect)
  {
    *dialect = v15;
  }

  if (mode)
  {
    *mode = v16;
  }

  if (index)
  {
    *index = v18;
  }

  if (encoding)
  {
    *encoding = [self encodingForOrthographyIndex:v18];
  }
}

+ (id)transliterationLocalizationForLanguage:(id)language
{
  v4 = baseLanguageForLanguage(language);
  if (![objc_msgSend(self "supportedTransliterationLanguages")])
  {
    return 0;
  }

  return [v4 stringByAppendingString:@"_Latn"];
}

+ (id)spellingFallbackLocalizationForLanguage:(id)language
{
  v4 = baseLanguageForLanguage(language);
  if (![objc_msgSend(self "supportedSpellingFallbackLanguages")])
  {
    return 0;
  }

  if ([objc_msgSend(self "supportedTransliterationLanguages")])
  {
    return @"en_IN";
  }

  return @"en_US";
}

+ (id)englishLocalizationAdditionForLanguage:(id)language
{
  v4 = baseLanguageForLanguage(language);
  supportedEnglishLocalizationAdditions = [self supportedEnglishLocalizationAdditions];

  return [supportedEnglishLocalizationAdditions objectForKey:v4];
}

+ (id)languageObjectWithIdentifier:(id)identifier
{
  v3 = [[self alloc] initWithIdentifier:identifier];

  return v3;
}

- (PRLanguage)initWithIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PRLanguage;
  v4 = [(PRLanguage *)&v6 init];
  if (v4)
  {
    v4->_identifier = [identifier copy];
    v4->_localization = [objc_msgSend(objc_opt_class() localizationForLanguage:{identifier), "copy"}];
    v4->_fallbackLocalization = [objc_msgSend(objc_opt_class() fallbackLocalizationForLanguage:{identifier), "copy"}];
    [objc_opt_class() getCodesForLanguage:identifier languageCode:&v4->_languageCode languageDialect:&v4->_languageDialect languageMode:&v4->_languageMode orthographyIndex:&v4->_orthoIndex encoding:&v4->_encoding];
  }

  return v4;
}

- (unint64_t)hash
{
  identifier = [(PRLanguage *)self identifier];

  return [identifier hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = [(PRLanguage *)self identifier];
  identifier2 = [equal identifier];

  return [identifier isEqual:identifier2];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = PRLanguage;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>", -[PRLanguage description](&v3, sel_description), -[PRLanguage identifier](self, "identifier")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"PRLanguage requires keyed coding" userInfo:0]);
  }

  identifier = [(PRLanguage *)self identifier];

  [coder encodeObject:identifier forKey:@"PRIdentifier"];
}

- (PRLanguage)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"PRLanguage requires keyed coding" userInfo:0]);
  }

  result = [coder decodeObjectOfClass:objc_opt_class() forKey:@"PRIdentifier"];
  if (result)
  {

    return [(PRLanguage *)self initWithIdentifier:result];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRLanguage;
  [(PRLanguage *)&v3 dealloc];
}

- (id)languageModelLocalization
{
  v3 = objc_opt_class();
  identifier = [(PRLanguage *)self identifier];

  return [v3 languageModelLocalizationForLanguage:identifier];
}

- (id)languageModelFallbackLocalization
{
  v3 = objc_opt_class();
  identifier = [(PRLanguage *)self identifier];

  return [v3 languageModelFallbackLocalizationForLanguage:identifier];
}

- (id)transliterationLocalization
{
  v3 = objc_opt_class();
  identifier = [(PRLanguage *)self identifier];

  return [v3 transliterationLocalizationForLanguage:identifier];
}

- (id)spellingFallbackLocalization
{
  v3 = objc_opt_class();
  identifier = [(PRLanguage *)self identifier];

  return [v3 spellingFallbackLocalizationForLanguage:identifier];
}

- (const)oneLetterWords
{
  result = 0;
  orthoIndex = self->_orthoIndex;
  if (orthoIndex > 8)
  {
    if (orthoIndex == 9)
    {
      return italianOneLetterWords;
    }

    else if (orthoIndex == 10)
    {
      return spanishOneLetterWords;
    }
  }

  else if (orthoIndex == 6)
  {
    return englishOneLetterWords[0];
  }

  else if (orthoIndex == 7)
  {
    return frenchOneLetterWords;
  }

  return result;
}

- (const)twoLetterWords
{
  result = 0;
  orthoIndex = self->_orthoIndex;
  if (orthoIndex <= 11)
  {
    if (orthoIndex > 8)
    {
      if (orthoIndex == 9)
      {
        return italianTwoLetterWords;
      }

      else if (orthoIndex == 10)
      {
        return spanishTwoLetterWords;
      }

      else
      {
        return portugueseTwoLetterWords;
      }
    }

    else
    {
      switch(orthoIndex)
      {
        case 6:
          return englishTwoLetterWords[0];
        case 7:
          return frenchTwoLetterWords;
        case 8:
          return germanTwoLetterWords;
      }
    }
  }

  else if (orthoIndex <= 14)
  {
    if (orthoIndex == 12)
    {
      return dutchTwoLetterWords;
    }

    else if (orthoIndex == 13)
    {
      return danishTwoLetterWords;
    }

    else
    {
      return swedishTwoLetterWords;
    }
  }

  else if (orthoIndex > 47)
  {
    if (orthoIndex == 48)
    {
      return finnishTwoLetterWords;
    }

    else if (orthoIndex == 55)
    {
      return turkishTwoLetterWords;
    }
  }

  else if (orthoIndex == 15)
  {
    return norwegianTwoLetterWords;
  }

  else if (orthoIndex == 16)
  {
    return nynorskTwoLetterWords;
  }

  return result;
}

- (const)accents
{
  result = 0;
  orthoIndex = self->_orthoIndex;
  if (orthoIndex <= 12)
  {
    if (orthoIndex <= 8)
    {
      if (orthoIndex == 7)
      {
        return frenchAccents;
      }

      else if (orthoIndex == 8)
      {
        return germanAccents;
      }
    }

    else
    {
      switch(orthoIndex)
      {
        case 9:
          return italianAccents;
        case 10:
          return spanishAccents;
        case 11:
          return portugueseAccents;
      }
    }
  }

  else if (orthoIndex > 15)
  {
    switch(orthoIndex)
    {
      case 16:
        return nynorskAccents;
      case 48:
        return finnishAccents;
      case 55:
        return turkishAccents;
    }
  }

  else if (orthoIndex == 13)
  {
    return danishAccents;
  }

  else if (orthoIndex == 14)
  {
    return swedishAccents;
  }

  else
  {
    return norwegianAccents;
  }

  return result;
}

- (BOOL)isBicameral
{
  if ([(PRLanguage *)self isArabic]|| [(PRLanguage *)self isHebrew]|| [(PRLanguage *)self isHindi]|| [(PRLanguage *)self isKorean]|| [(PRLanguage *)self isPunjabi]|| [(PRLanguage *)self isTelugu])
  {
    return 0;
  }

  else
  {
    return ![(PRLanguage *)self isThai];
  }
}

- (BOOL)isSupportedAssetLexiconLanguage
{
  supportedAssetLexiconLanguages = [objc_opt_class() supportedAssetLexiconLanguages];
  if ([supportedAssetLexiconLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [supportedAssetLexiconLanguages containsObject:fallbackLocalization];
}

- (BOOL)isSupportedCompletionLanguage
{
  supportedCompletionLanguages = [objc_opt_class() supportedCompletionLanguages];
  if ([supportedCompletionLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [supportedCompletionLanguages containsObject:fallbackLocalization];
}

- (BOOL)isSupportedSingleCompletionLanguage
{
  supportedSingleCompletionLanguages = [objc_opt_class() supportedSingleCompletionLanguages];
  if ([supportedSingleCompletionLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [supportedSingleCompletionLanguages containsObject:fallbackLocalization];
}

- (BOOL)isSupportedLatinLanguage
{
  supportedLatinLanguages = [objc_opt_class() supportedLatinLanguages];
  if ([supportedLatinLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [supportedLatinLanguages containsObject:fallbackLocalization];
}

- (BOOL)usesOrdinalPeriod
{
  languagesUsingOrdinalPeriod = [objc_opt_class() languagesUsingOrdinalPeriod];
  if ([languagesUsingOrdinalPeriod containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [languagesUsingOrdinalPeriod containsObject:fallbackLocalization];
}

- (BOOL)usesSentencePieceModel
{
  languagesUsingSentencePieceModel = [objc_opt_class() languagesUsingSentencePieceModel];
  if ([languagesUsingSentencePieceModel containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [languagesUsingSentencePieceModel containsObject:fallbackLocalization];
}

- (BOOL)usesUnigramProbabilities
{
  languagesUsingUnigramProbabilities = [objc_opt_class() languagesUsingUnigramProbabilities];
  if ([languagesUsingUnigramProbabilities containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [languagesUsingUnigramProbabilities containsObject:fallbackLocalization];
}

- (BOOL)usesArabicScript
{
  arabicLanguages = [objc_opt_class() arabicLanguages];
  if ([arabicLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [arabicLanguages containsObject:fallbackLocalization];
}

- (BOOL)usesCyrillicScript
{
  cyrillicLanguages = [objc_opt_class() cyrillicLanguages];
  if ([cyrillicLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [cyrillicLanguages containsObject:fallbackLocalization];
}

- (BOOL)usesDevanagariScript
{
  devanagariLanguages = [objc_opt_class() devanagariLanguages];
  if ([devanagariLanguages containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  fallbackLocalization = [(PRLanguage *)self fallbackLocalization];

  return [devanagariLanguages containsObject:fallbackLocalization];
}

@end