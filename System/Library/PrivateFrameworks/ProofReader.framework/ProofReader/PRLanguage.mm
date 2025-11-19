@interface PRLanguage
+ (id)dataBundle;
+ (id)englishLocalizationAdditionForLanguage:(id)a3;
+ (id)fallbackLocalizationForLanguage:(id)a3;
+ (id)languageModelFallbackLocalizationForLanguage:(id)a3;
+ (id)languageModelLocalizationForLanguage:(id)a3;
+ (id)languageObjectWithIdentifier:(id)a3;
+ (id)localizationForLanguage:(id)a3;
+ (id)localizationsForLanguage:(id)a3;
+ (id)spellingFallbackLocalizationForLanguage:(id)a3;
+ (id)textInputModeForLanguage:(id)a3;
+ (id)transliterationLocalizationForLanguage:(id)a3;
+ (unint64_t)orthographyIndexForLanguageCode:(unsigned __int8)a3;
+ (unint64_t)orthographyIndexForOtherLanguage:(id)a3;
+ (unsigned)encodingForOrthographyIndex:(unint64_t)a3;
+ (void)getCodesForLanguage:(id)a3 languageCode:(char *)a4 languageDialect:(char *)a5 languageMode:(char *)a6 orthographyIndex:(unint64_t *)a7 encoding:(unsigned int *)a8;
- (BOOL)isBicameral;
- (BOOL)isEqual:(id)a3;
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
- (PRLanguage)initWithCoder:(id)a3;
- (PRLanguage)initWithIdentifier:(id)a3;
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
- (void)encodeWithCoder:(id)a3;
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

+ (id)localizationsForLanguage:(id)a3
{
  v4 = [objc_msgSend(a1 "dataBundle")];
  if ([a3 isEqualToString:@"American English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AmericanEnglish"))
  {
    a3 = @"en_US";
  }

  else if ([a3 isEqualToString:@"Australian English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AustralianEnglish"))
  {
    a3 = @"en_AU";
  }

  else if ([a3 isEqualToString:@"Canadian English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"CanadianEnglish"))
  {
    a3 = @"en_CA";
  }

  else if ([a3 isEqualToString:@"British English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"BritishEnglish"))
  {
    a3 = @"en_GB";
  }

  else if ([a3 isEqualToString:@"Indian English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"IndianEnglish"))
  {
    a3 = @"en_IN";
  }

  else if ([a3 isEqualToString:@"Singapore English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"SingaporeEnglish"))
  {
    a3 = @"en_SG";
  }

  else if ([a3 isEqualToString:@"Japanese English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"JapaneseEnglish"))
  {
    a3 = @"en_JP";
  }

  else if ([a3 isEqualToString:@"Chinese English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"ChineseEnglish"))
  {
    a3 = @"en_CN";
  }

  else if ([a3 isEqualToString:@"New Zealand English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"NewZealandEnglish"))
  {
    a3 = @"en_NZ";
  }

  else if ([a3 isEqualToString:@"South African English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"SouthAfricanEnglish"))
  {
    a3 = @"en_ZA";
  }

  else if ([a3 isEqualToString:@"Swiss German"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"SwissGerman"))
  {
    a3 = @"de_CH";
  }

  else if ([a3 isEqualToString:@"Brazilian Portuguese"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"BrazilianPortuguese"))
  {
    a3 = @"pt_BR";
  }

  else if ([a3 isEqualToString:@"European Portuguese"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"EuropeanPortuguese"))
  {
    a3 = @"pt_PT";
  }

  else if ([a3 isEqualToString:@"Norwegian Bokmål"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"NorwegianBokmål") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Bokmål"))
  {
    a3 = @"nb";
  }

  else if ([a3 isEqualToString:@"Norwegian Nynorsk"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"NorwegianNynorsk") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Nynorsk"))
  {
    a3 = @"nn";
  }

  else if (([a3 isEqualToString:@"Irish Gaelic"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"IrishGaelic"))
  {
    a3 = @"ga";
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
    v6 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v4 forPreferences:v5];
    if (v6)
    {
      v7 = v6;
      if (![v6 count] || (objc_msgSend(objc_msgSend(v7, "objectAtIndex:", 0), "isEqualToString:", @"English") & 1) == 0 && !objc_msgSend(objc_msgSend(v7, "objectAtIndex:", 0), "isEqualToString:", @"en"))
      {
        return v7;
      }

      if ([a3 isEqualToString:@"English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"en") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en-"))
      {
        return v7;
      }
    }
  }

  v9 = MEMORY[0x1E695DEC8];

  return [v9 arrayWithObject:a3];
}

+ (id)localizationForLanguage:(id)a3
{
  if (localizationForLanguage__onceToken != -1)
  {
    +[PRLanguage localizationForLanguage:];
  }

  result = [localizationForLanguage__localizationDict objectForKey:a3];
  if (!result)
  {
    result = [a1 localizationsForLanguage:a3];
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
    return a3;
  }

  return result;
}

uint64_t __38__PRLanguage_localizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en", @"en", @"en", @"en_US", @"en_GB", @"en_GB", @"en_CA", @"en_CA", @"en_AU", @"en_AU", @"en_IN", @"en_IN", @"en_SG", @"en_SG", @"en_JP", @"en_JP", @"en_CN", @"en_CN", @"en_NZ", @"en_NZ", @"en_ZA", @"en_ZA", @"fr", @"French", @"fr", @"fr", @"fr", @"fr_FR", @"fr", @"fr_CA", @"fr", @"fr_CH", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es", @"Spanish", @"es", @"es", @"es", @"es_ES", @"es_MX", @"es_MX", @"pt_BR", @"Portuguese", @"pt_BR", @"pt"}];
  localizationForLanguage__localizationDict = result;
  return result;
}

+ (id)fallbackLocalizationForLanguage:(id)a3
{
  if (fallbackLocalizationForLanguage__onceToken != -1)
  {
    +[PRLanguage fallbackLocalizationForLanguage:];
  }

  result = [fallbackLocalizationForLanguage__localizationDict objectForKey:a3];
  if (!result)
  {
    result = [a1 localizationsForLanguage:a3];
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
    return a3;
  }

  return result;
}

uint64_t __46__PRLanguage_fallbackLocalizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en", @"en", @"en", @"en_US", @"en", @"en_GB", @"en", @"en_CA", @"en", @"en_AU", @"en", @"en_IN", @"en", @"en_SG", @"en", @"en_JP", @"en", @"en_CN", @"en", @"en_NZ", @"en", @"en_ZA", @"fr", @"French", @"fr", @"fr", @"fr", @"fr_FR", @"fr", @"fr_CA", @"fr", @"fr_CH", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es", @"Spanish", @"es", @"es", @"es", @"es_ES", @"es", @"es_MX", @"pt", @"Portuguese", @"pt", @"pt"}];
  fallbackLocalizationForLanguage__localizationDict = result;
  return result;
}

+ (id)languageModelLocalizationForLanguage:(id)a3
{
  if (languageModelLocalizationForLanguage__onceToken != -1)
  {
    +[PRLanguage languageModelLocalizationForLanguage:];
  }

  result = [languageModelLocalizationForLanguage__localizationDict objectForKey:a3];
  if (!result)
  {
    return a3;
  }

  return result;
}

uint64_t __51__PRLanguage_languageModelLocalizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en_US", @"en", @"en_US", @"en_US", @"en_GB", @"en_GB", @"en_CA", @"en_CA", @"en_AU", @"en_AU", @"en_IN", @"en_IN", @"en_SG", @"en_SG", @"en_JP", @"en_JP", @"en_US", @"en_CN", @"en_NZ", @"en_NZ", @"en_ZA", @"en_ZA", @"fr_FR", @"French", @"fr_FR", @"fr", @"fr_FR", @"fr_FR", @"fr_CA", @"fr_CA", @"fr_CH", @"fr_CH", @"fr_BE", @"fr_BE", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es_ES", @"Spanish", @"es_ES", @"es", @"es_ES", @"es_ES", @"es_MX", @"es_MX", @"pt_BR", @"Portuguese"}];
  languageModelLocalizationForLanguage__localizationDict = result;
  return result;
}

+ (id)languageModelFallbackLocalizationForLanguage:(id)a3
{
  if (languageModelFallbackLocalizationForLanguage__onceToken != -1)
  {
    +[PRLanguage languageModelFallbackLocalizationForLanguage:];
  }

  result = [languageModelFallbackLocalizationForLanguage__localizationDict objectForKey:a3];
  if (!result)
  {
    return a3;
  }

  return result;
}

uint64_t __59__PRLanguage_languageModelFallbackLocalizationForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en", @"en", @"en", @"en_US", @"en", @"en_GB", @"en", @"en_CA", @"en", @"en_AU", @"en", @"en_IN", @"en", @"en_SG", @"en", @"en_JP", @"en", @"en_CN", @"en", @"en_NZ", @"en", @"en_ZA", @"fi", @"Finnish", @"fi", @"fi", @"fi", @"fi_FI", @"fr_FR", @"French", @"fr_FR", @"fr", @"fr_FR", @"fr_FR", @"fr_FR", @"fr_CA", @"fr_FR", @"fr_CH", @"de", @"German", @"de", @"de", @"de", @"de_DE", @"de", @"de_AT", @"de", @"de_CH", @"it", @"Italian", @"it", @"it", @"it", @"it_IT", @"es", @"Spanish", @"es", @"es", @"es", @"es_ES"}];
  languageModelFallbackLocalizationForLanguage__localizationDict = result;
  return result;
}

+ (id)textInputModeForLanguage:(id)a3
{
  if (textInputModeForLanguage__onceToken != -1)
  {
    +[PRLanguage textInputModeForLanguage:];
  }

  result = [textInputModeForLanguage__textInputModeDict objectForKey:a3];
  if (!result)
  {
    return a3;
  }

  return result;
}

uint64_t __39__PRLanguage_textInputModeForLanguage___block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"English", @"en_US", @"en", @"en_US", @"en_US", @"en_GB", @"en_GB", @"en_CA", @"en_CA", @"en_AU", @"en_AU", @"en_IN", @"en_IN", @"en_SG", @"en_SG", @"en_JP", @"en_JP", @"en_US", @"en_CN", @"en_NZ", @"en_NZ", @"en_ZA", @"en_ZA", @"fr_FR", @"French", @"fr_FR", @"fr", @"fr_FR", @"fr_FR", @"fr_CA", @"fr_CA", @"fr_CH", @"fr_CH", @"de_DE", @"German", @"de_DE", @"de", @"de_DE", @"de_DE", @"de_AT", @"de_AT", @"de_CH", @"de_CH", @"it_IT", @"Italian", @"it_IT", @"it", @"it_IT", @"it_IT", @"es_ES", @"Spanish", @"es_ES", @"es", @"es_ES", @"es_ES", @"es_MX", @"es_MX", @"pt_BR", @"Portuguese", @"pt_BR", @"pt"}];
  textInputModeForLanguage__textInputModeDict = result;
  return result;
}

+ (unint64_t)orthographyIndexForLanguageCode:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x24)
  {
    return 0;
  }

  else
  {
    return qword_1D2BFA770[(a3 - 1)];
  }
}

+ (unint64_t)orthographyIndexForOtherLanguage:(id)a3
{
  if ([a3 isEqualToString:@"Amharic"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"am"))
  {
    return 244;
  }

  if ([a3 isEqualToString:@"Najdi Arabic"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ars"))
  {
    return 160;
  }

  if ([a3 isEqualToString:@"Armenian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"hy"))
  {
    return 226;
  }

  if ([a3 isEqualToString:@"Bengali"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"bn"))
  {
    return 230;
  }

  if ([a3 isEqualToString:@"Burmese"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Myanmar") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"my"))
  {
    return 242;
  }

  if ([a3 isEqualToString:@"Cherokee"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"chr"))
  {
    return 245;
  }

  if ([a3 isEqualToString:@"Croatian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"hr"))
  {
    return 40;
  }

  if ([a3 isEqualToString:@"Georgian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ka"))
  {
    return 243;
  }

  if ([a3 isEqualToString:@"Gujarati"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"gu"))
  {
    return 232;
  }

  if ([a3 isEqualToString:@"Hindi"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"hi"))
  {
    return 192;
  }

  if ([a3 isEqualToString:@"Icelandic"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"is"))
  {
    return 18;
  }

  if ([a3 isEqualToString:@"Indonesian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"id"))
  {
    return 74;
  }

  if ([a3 isEqualToString:@"Inuktitut"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"iu"))
  {
    return 208;
  }

  if ([a3 isEqualToString:@"Kannada"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"kn"))
  {
    return 236;
  }

  if ([a3 isEqualToString:@"Kazakh"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"kk"))
  {
    return 138;
  }

  if ([a3 isEqualToString:@"Khmer"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"kh"))
  {
    return 247;
  }

  if ([a3 isEqualToString:@"Lao"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"lo"))
  {
    return 240;
  }

  if ([a3 isEqualToString:@"Malayalam"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ml"))
  {
    return 237;
  }

  if ([a3 isEqualToString:@"Marathi"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"mr"))
  {
    return 193;
  }

  if ([a3 isEqualToString:@"Mongolian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"mn"))
  {
    return 248;
  }

  if ([a3 isEqualToString:@"Norwegian Nynorsk"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"NorwegianNynorsk") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Nynorsk") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"nn"))
  {
    return 16;
  }

  if ([a3 isEqualToString:@"Oriya"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"or"))
  {
    return 233;
  }

  if ([a3 isEqualToString:@"Persian"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Farsi") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"fa"))
  {
    return 161;
  }

  if ([a3 isEqualToString:@"Punjabi"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pa"))
  {
    return 231;
  }

  if ([a3 isEqualToString:@"Sinhalese"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"si"))
  {
    return 238;
  }

  if ([a3 isEqualToString:@"Slovak"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"sk"))
  {
    return 46;
  }

  if ([a3 isEqualToString:@"Tamil"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ta"))
  {
    return 234;
  }

  if ([a3 isEqualToString:@"Telugu"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"te"))
  {
    return 235;
  }

  if ([a3 isEqualToString:@"Tibetan"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"bo"))
  {
    return 241;
  }

  if ([a3 isEqualToString:@"Ukrainian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"uk"))
  {
    return 129;
  }

  if (([a3 isEqualToString:@"Urdu"] & 1) != 0 || objc_msgSend(a3, "hasPrefix:", @"ur"))
  {
    return 162;
  }

  return 0;
}

+ (unsigned)encodingForOrthographyIndex:(unint64_t)a3
{
  result = 1280;
  if (a3 <= 21)
  {
    if (a3 - 6 < 0xB)
    {
      return result;
    }

    return 134217984;
  }

  if (a3 > 47)
  {
    if (a3 <= 73)
    {
      if (a3 != 48)
      {
        if (a3 == 55)
        {
          return 1284;
        }

        return 134217984;
      }
    }

    else if (a3 != 74)
    {
      if (a3 == 128 || a3 == 130)
      {
        return 517;
      }

      return 134217984;
    }
  }

  else
  {
    if (a3 > 40)
    {
      if (a3 == 41 || a3 == 42 || a3 == 43)
      {
        return 514;
      }

      return 134217984;
    }

    if (a3 != 22 && a3 != 34)
    {
      return 134217984;
    }
  }

  return result;
}

+ (void)getCodesForLanguage:(id)a3 languageCode:(char *)a4 languageDialect:(char *)a5 languageMode:(char *)a6 orthographyIndex:(unint64_t *)a7 encoding:(unsigned int *)a8
{
  if ([a3 isEqualToString:@"English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"en") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"American English") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AmericanEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_US") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en-US"))
  {
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"Indian English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"IndianEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_IN") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Singapore English") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"SingaporeEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_SG"))
  {
LABEL_28:
    v16 = 0;
    v15 = 64;
    goto LABEL_8;
  }

  if ([a3 isEqualToString:@"Japanese English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"JapaneseEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_JP") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Chinese English") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"ChineseEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_CN"))
  {
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"Australian English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AustralianEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_AU") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en-AU"))
  {
    goto LABEL_28;
  }

  if ([a3 isEqualToString:@"Canadian English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"CanadianEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_CA") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en-CA"))
  {
    v16 = 0;
    v15 = 32;
    goto LABEL_8;
  }

  if ([a3 isEqualToString:@"New Zealand English"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"NewZealandEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_NZ") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"South African English") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"SouthAfricanEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en_ZA") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"British English") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"BritishEnglish") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"en"))
  {
    goto LABEL_28;
  }

  if ([a3 hasPrefix:@"en"])
  {
LABEL_7:
    v15 = 0;
    v16 = 0;
LABEL_8:
    v17 = 16;
    goto LABEL_9;
  }

  if ([a3 isEqualToString:@"Swiss German"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"SwissGerman") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"de_CH"))
  {
    v16 = 0;
    v15 = 64;
LABEL_58:
    v17 = 6;
    goto LABEL_9;
  }

  if ([a3 isEqualToString:@"German"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"de"))
  {
    v16 = 0;
    v15 = 0x80;
    goto LABEL_58;
  }

  if ([a3 isEqualToString:@"Brazilian Portuguese"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"BrazilianPortuguese") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pt_BR") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pt-BR"))
  {
    v16 = 0;
    v15 = 64;
LABEL_67:
    v17 = 12;
    goto LABEL_9;
  }

  if ([a3 isEqualToString:@"European Portuguese"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"EuropeanPortuguese") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pt_PT") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pt-PT") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Portuguese") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pt"))
  {
    v16 = 0;
    v15 = 0x80;
    goto LABEL_67;
  }

  if ([a3 isEqualToString:@"Arabic"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ar"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 20;
  }

  else if ([a3 isEqualToString:@"Bulgarian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"bg"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 25;
  }

  else if ([a3 isEqualToString:@"Catalan"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ca"))
  {
    v15 = 0;
    v16 = 0x80;
    v17 = 3;
  }

  else if ([a3 isEqualToString:@"Czech"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"cs"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else if ([a3 isEqualToString:@"Danish"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"da"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 10;
  }

  else if ([a3 isEqualToString:@"Dutch"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"nl"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 11;
  }

  else if ([a3 isEqualToString:@"Finnish"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"fi"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 14;
  }

  else if ([a3 isEqualToString:@"French"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"fr"))
  {
    v15 = 0;
    v16 = 96;
    v17 = 5;
  }

  else if ([a3 isEqualToString:@"Greek"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"el"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 15;
  }

  else if ([a3 isEqualToString:@"Hebrew"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"he"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 22;
  }

  else if ([a3 isEqualToString:@"Hungarian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"hu"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 4;
  }

  else if ([a3 isEqualToString:@"Italian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"it"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 9;
  }

  else if ([a3 isEqualToString:@"Korean"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ko"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 29;
  }

  else if ([a3 isEqualToString:@"Norwegian"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Norwegian Nynorsk") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"NorwegianNynorsk") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Nynorsk") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"nb"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 13;
  }

  else if ([a3 isEqualToString:@"Polish"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"pl"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 18;
  }

  else if ([a3 isEqualToString:@"Russian"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ru"))
  {
    v15 = 0;
    v16 = 0x80;
    v17 = 2;
  }

  else if ([a3 isEqualToString:@"Spanish"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"es"))
  {
    v15 = 0;
    v16 = 64;
    v17 = 8;
  }

  else if ([a3 isEqualToString:@"Swedish"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"sv"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 7;
  }

  else if ([a3 isEqualToString:@"Thai"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"th"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 35;
  }

  else if ([a3 isEqualToString:@"Turkish"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"tr"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 28;
  }

  else if ([a3 isEqualToString:@"Vietnamese"] & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"vi"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 36;
  }

  else if ([a3 isEqualToString:@"Irish Gaelic"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"IrishGaelic") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Gaelic") & 1) != 0 || (objc_msgSend(a3, "hasPrefix:", @"ga"))
  {
    v15 = 0;
    v16 = 0;
    v17 = 21;
  }

  else if (([a3 isEqualToString:@"Romanian"] & 1) != 0 || objc_msgSend(a3, "hasPrefix:", @"ro"))
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
  v18 = [a1 orthographyIndexForLanguageCode:v17];
  if (!v18)
  {
    v18 = [a1 orthographyIndexForOtherLanguage:a3];
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (a5)
  {
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = v16;
  }

  if (a7)
  {
    *a7 = v18;
  }

  if (a8)
  {
    *a8 = [a1 encodingForOrthographyIndex:v18];
  }
}

+ (id)transliterationLocalizationForLanguage:(id)a3
{
  v4 = baseLanguageForLanguage(a3);
  if (![objc_msgSend(a1 "supportedTransliterationLanguages")])
  {
    return 0;
  }

  return [v4 stringByAppendingString:@"_Latn"];
}

+ (id)spellingFallbackLocalizationForLanguage:(id)a3
{
  v4 = baseLanguageForLanguage(a3);
  if (![objc_msgSend(a1 "supportedSpellingFallbackLanguages")])
  {
    return 0;
  }

  if ([objc_msgSend(a1 "supportedTransliterationLanguages")])
  {
    return @"en_IN";
  }

  return @"en_US";
}

+ (id)englishLocalizationAdditionForLanguage:(id)a3
{
  v4 = baseLanguageForLanguage(a3);
  v5 = [a1 supportedEnglishLocalizationAdditions];

  return [v5 objectForKey:v4];
}

+ (id)languageObjectWithIdentifier:(id)a3
{
  v3 = [[a1 alloc] initWithIdentifier:a3];

  return v3;
}

- (PRLanguage)initWithIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PRLanguage;
  v4 = [(PRLanguage *)&v6 init];
  if (v4)
  {
    v4->_identifier = [a3 copy];
    v4->_localization = [objc_msgSend(objc_opt_class() localizationForLanguage:{a3), "copy"}];
    v4->_fallbackLocalization = [objc_msgSend(objc_opt_class() fallbackLocalizationForLanguage:{a3), "copy"}];
    [objc_opt_class() getCodesForLanguage:a3 languageCode:&v4->_languageCode languageDialect:&v4->_languageDialect languageMode:&v4->_languageMode orthographyIndex:&v4->_orthoIndex encoding:&v4->_encoding];
  }

  return v4;
}

- (unint64_t)hash
{
  v2 = [(PRLanguage *)self identifier];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(PRLanguage *)self identifier];
  v6 = [a3 identifier];

  return [v5 isEqual:v6];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = PRLanguage;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>", -[PRLanguage description](&v3, sel_description), -[PRLanguage identifier](self, "identifier")];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"PRLanguage requires keyed coding" userInfo:0]);
  }

  v5 = [(PRLanguage *)self identifier];

  [a3 encodeObject:v5 forKey:@"PRIdentifier"];
}

- (PRLanguage)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"PRLanguage requires keyed coding" userInfo:0]);
  }

  result = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"PRIdentifier"];
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
  v4 = [(PRLanguage *)self identifier];

  return [v3 languageModelLocalizationForLanguage:v4];
}

- (id)languageModelFallbackLocalization
{
  v3 = objc_opt_class();
  v4 = [(PRLanguage *)self identifier];

  return [v3 languageModelFallbackLocalizationForLanguage:v4];
}

- (id)transliterationLocalization
{
  v3 = objc_opt_class();
  v4 = [(PRLanguage *)self identifier];

  return [v3 transliterationLocalizationForLanguage:v4];
}

- (id)spellingFallbackLocalization
{
  v3 = objc_opt_class();
  v4 = [(PRLanguage *)self identifier];

  return [v3 spellingFallbackLocalizationForLanguage:v4];
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
  v3 = [objc_opt_class() supportedAssetLexiconLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)isSupportedCompletionLanguage
{
  v3 = [objc_opt_class() supportedCompletionLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)isSupportedSingleCompletionLanguage
{
  v3 = [objc_opt_class() supportedSingleCompletionLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)isSupportedLatinLanguage
{
  v3 = [objc_opt_class() supportedLatinLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)usesOrdinalPeriod
{
  v3 = [objc_opt_class() languagesUsingOrdinalPeriod];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)usesSentencePieceModel
{
  v3 = [objc_opt_class() languagesUsingSentencePieceModel];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)usesUnigramProbabilities
{
  v3 = [objc_opt_class() languagesUsingUnigramProbabilities];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)usesArabicScript
{
  v3 = [objc_opt_class() arabicLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)usesCyrillicScript
{
  v3 = [objc_opt_class() cyrillicLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

- (BOOL)usesDevanagariScript
{
  v3 = [objc_opt_class() devanagariLanguages];
  if ([v3 containsObject:{-[PRLanguage localization](self, "localization")}])
  {
    return 1;
  }

  v5 = [(PRLanguage *)self fallbackLocalization];

  return [v3 containsObject:v5];
}

@end