@interface RKSentenceClassifier
+ (Class)subclassForLanguageIdentifier:(id)identifier;
+ (Class)subclassForLocale:(id)locale;
+ (id)alternativeInversionsForLanguage:(id)language;
+ (id)appreciationKeywordsForLanguage:(id)language;
+ (id)categoryKeywordMapForLanguage:(id)language;
+ (id)languageIdentifierFromClassName;
+ (id)polarTagRegularExpressionForLanguage:(id)language;
+ (id)preProcessTextMessageForLinguisticTagger:(id)tagger withLocale:(id)locale;
+ (id)sensitiveSubjectRegularExpressionForLanguage:(id)language;
+ (id)sentenceClassification:(id)classification withLanguageIdentifier:(id)identifier options:(unint64_t)options;
+ (id)stringFromLexicalEntities:(id)entities;
- (RKSentenceClassifier)init;
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (id)lexicalEntitiesFromString:(id)string;
- (id)sentenceClassification:(id)classification options:(unint64_t)options;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier

void __46__RKSentenceClassifier_ko_KO_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __45__RKSentenceClassifier_fr_FR_analyzeSentence__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 partOfSpeech];
  LODWORD(v6) = [v6 containsObject:v7];

  if (!v6)
  {
    goto LABEL_22;
  }

  v34 = a3;
  v8 = a3 - 1;
  if (a3 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) sentenceEntities];
    v10 = [v9 objectAtIndexedSubscript:a3 - 1];
  }

  v11 = *MEMORY[0x277CCA328];
  v12 = *MEMORY[0x277CCA358];
  v13 = *MEMORY[0x277CCA350];
  while (1)
  {
    v36[0] = v11;
    v36[1] = v12;
    v36[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    v15 = [v10 partOfSpeech];
    if (![v14 containsObject:v15])
    {
      break;
    }

    if (v8-- < 1)
    {
      goto LABEL_11;
    }

    v17 = [*(a1 + 40) sentenceEntities];
    v18 = [v17 objectAtIndexedSubscript:v8];

    v10 = v18;
  }

  if (v8 >= 1)
  {
    v19 = [*(a1 + 40) sentenceEntities];
    v20 = [v19 objectAtIndexedSubscript:v8 - 1];

    goto LABEL_12;
  }

LABEL_11:
  v20 = 0;
LABEL_12:
  v35[0] = v11;
  v35[1] = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v22 = [v10 partOfSpeech];
  if ([v21 containsObject:v22])
  {

    if (v8 < 2)
    {
      goto LABEL_16;
    }

    v21 = [*(a1 + 40) sentenceEntities];
    [v21 objectAtIndexedSubscript:v8 - 2];
    v20 = v22 = v20;
  }

LABEL_16:
  v23 = [v10 partOfSpeech];
  v24 = *MEMORY[0x277CCA418];
  v25 = [v23 isEqualToString:*MEMORY[0x277CCA418]];

  if (v25)
  {
    if (!v20 || (v26 = *(a1 + 32), [v20 partOfSpeech], v27 = objc_claimAutoreleasedReturnValue(), LOBYTE(v26) = objc_msgSend(v26, "containsObject:", v27), v27, (v26 & 1) == 0))
    {
      v28 = [v20 partOfSpeech];
      v29 = [v28 isEqualToString:v24];

      if ((v29 & 1) == 0)
      {
        v30 = [*(a1 + 40) inversions];
        v31 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v34 - v8 + 1}];
        v32 = [v30 arrayByAddingObject:v31];
        [*(a1 + 40) setInversions:v32];
      }
    }
  }

LABEL_22:
  v33 = *MEMORY[0x277D85DE8];
}

void __46__RKSentenceClassifier_fr_FR_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 objectForKeyedSubscript:@"range"];
  v7 = [v6 rangeValue];

  v8 = [*(a1 + 32) inversions];
  if ([v8 count])
  {
    v9 = [*(a1 + 32) inversions];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 rangeValue];
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 < v11 + v13)
  {
    v14 = [v16 objectForKeyedSubscript:@"category"];
    [*(a1 + 40) setSentenceType:{objc_msgSend(v14, "unsignedIntegerValue")}];

    v15 = [v16 objectForKeyedSubscript:@"gender"];
    [*(a1 + 40) setGender:{objc_msgSend(v15, "unsignedIntegerValue")}];
  }

  *a4 = 1;
}

uint64_t __46__RKSentenceClassifier_fr_FR_classifySentence__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) setSentenceType:2];
  *a4 = 1;
  return result;
}

void __46__RKSentenceClassifier_tr_TR_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_el_GR_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_ar_AE_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_th_TH_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

+ (id)languageIdentifierFromClassName
{
  v3 = NSStringFromClass(self);
  v4 = NSStringFromClass([self superclass]);
  v5 = [v3 substringFromIndex:{objc_msgSend(v4, "length") + 1}];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v6;
}

- (RKSentenceClassifier)init
{
  v11.receiver = self;
  v11.super_class = RKSentenceClassifier;
  v2 = [(RKSentenceClassifier *)&v11 init];
  if (v2)
  {
    languageIdentifierFromClassName = [objc_opt_class() languageIdentifierFromClassName];
    languageIdentifier = v2->_languageIdentifier;
    v2->_languageIdentifier = languageIdentifierFromClassName;

    v5 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v2->_languageIdentifier];
    if (init_onceToken != -1)
    {
      [RKSentenceClassifier init];
    }

    v6 = [partofSpeechAvailabilityByLanguage objectForKeyedSubscript:v5];
    if (!v6)
    {
      v7 = [lemmaAvailabilityByLanguage objectForKeyedSubscript:v5];

      if (v7)
      {
        goto LABEL_7;
      }

      v6 = [MEMORY[0x277CCAAE8] availableTagSchemesForLanguage:v5];
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsObject:", *MEMORY[0x277CCA3E8])}];
      [partofSpeechAvailabilityByLanguage setObject:v9 forKeyedSubscript:v5];

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsObject:", *MEMORY[0x277CCA3E0])}];
      [lemmaAvailabilityByLanguage setObject:v10 forKeyedSubscript:v5];
    }

LABEL_7:
  }

  return v2;
}

uint64_t __28__RKSentenceClassifier_init__block_invoke()
{
  v0 = objc_opt_new();
  v1 = partofSpeechAvailabilityByLanguage;
  partofSpeechAvailabilityByLanguage = v0;

  lemmaAvailabilityByLanguage = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (Class)subclassForLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy && ([identifierCopy isEqualToString:@"und"] & 1) == 0)
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    v6 = [@"RKSentenceClassifier_" stringByAppendingString:v5];
    v7 = NSClassFromString(v6);

    if (objc_opt_class())
    {
      goto LABEL_10;
    }
  }

  if (subclassForLanguageIdentifier__onceToken == -1)
  {
    if (!v4)
    {
LABEL_8:
      v8 = MEMORY[0x277CBEAF8];
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];
      v11 = [v8 canonicalLanguageIdentifierFromString:localeIdentifier];

      v4 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    +[RKSentenceClassifier subclassForLanguageIdentifier:];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v4 isEqualToString:@"und"])
  {
    goto LABEL_8;
  }

LABEL_9:
  v5 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v4];
  v7 = [sSubclasses objectForKeyedSubscript:v5];
LABEL_10:

  return v7;
}

void __54__RKSentenceClassifier_subclassForLanguageIdentifier___block_invoke()
{
  v4[33] = *MEMORY[0x277D85DE8];
  v3[0] = @"ar";
  v4[0] = NSClassFromString(&cfstr_Rksentenceclas_0.isa);
  v3[1] = @"ca";
  v4[1] = NSClassFromString(&cfstr_Rksentenceclas_1.isa);
  v3[2] = @"cs";
  v4[2] = NSClassFromString(&cfstr_Rksentenceclas_2.isa);
  v3[3] = @"da";
  v4[3] = NSClassFromString(&cfstr_Rksentenceclas_3.isa);
  v3[4] = @"de";
  v4[4] = NSClassFromString(&cfstr_Rksentenceclas_4.isa);
  v3[5] = @"el";
  v4[5] = NSClassFromString(&cfstr_Rksentenceclas_5.isa);
  v3[6] = @"en";
  v4[6] = NSClassFromString(&cfstr_Rksentenceclas_6.isa);
  v3[7] = @"es";
  v4[7] = NSClassFromString(&cfstr_Rksentenceclas_7.isa);
  v3[8] = @"fr";
  v4[8] = NSClassFromString(&cfstr_Rksentenceclas_8.isa);
  v3[9] = @"fi";
  v4[9] = NSClassFromString(&cfstr_Rksentenceclas_9.isa);
  v3[10] = @"he";
  v4[10] = NSClassFromString(&cfstr_Rksentenceclas_10.isa);
  v3[11] = @"hi";
  v4[11] = NSClassFromString(&cfstr_Rksentenceclas_11.isa);
  v3[12] = @"hr";
  v4[12] = NSClassFromString(&cfstr_Rksentenceclas_12.isa);
  v3[13] = @"hu";
  v4[13] = NSClassFromString(&cfstr_Rksentenceclas_13.isa);
  v3[14] = @"id";
  v4[14] = NSClassFromString(&cfstr_Rksentenceclas_14.isa);
  v3[15] = @"it";
  v4[15] = NSClassFromString(&cfstr_Rksentenceclas_15.isa);
  v3[16] = @"ja";
  v4[16] = NSClassFromString(&cfstr_Rksentenceclas_16.isa);
  v3[17] = @"ko-Kore";
  v4[17] = NSClassFromString(&cfstr_Rksentenceclas_17.isa);
  v3[18] = @"ms";
  v4[18] = NSClassFromString(&cfstr_Rksentenceclas_18.isa);
  v3[19] = @"nl";
  v4[19] = NSClassFromString(&cfstr_Rksentenceclas_19.isa);
  v3[20] = @"nb";
  v4[20] = NSClassFromString(&cfstr_Rksentenceclas_20.isa);
  v3[21] = @"pl";
  v4[21] = NSClassFromString(&cfstr_Rksentenceclas_21.isa);
  v3[22] = @"pt";
  v4[22] = NSClassFromString(&cfstr_Rksentenceclas_22.isa);
  v3[23] = @"ro";
  v4[23] = NSClassFromString(&cfstr_Rksentenceclas_23.isa);
  v3[24] = @"ru";
  v4[24] = NSClassFromString(&cfstr_Rksentenceclas_24.isa);
  v3[25] = @"sk";
  v4[25] = NSClassFromString(&cfstr_Rksentenceclas_25.isa);
  v3[26] = @"sv";
  v4[26] = NSClassFromString(&cfstr_Rksentenceclas_26.isa);
  v3[27] = @"th";
  v4[27] = NSClassFromString(&cfstr_Rksentenceclas_27.isa);
  v3[28] = @"tr";
  v4[28] = NSClassFromString(&cfstr_Rksentenceclas_28.isa);
  v3[29] = @"vi";
  v4[29] = NSClassFromString(&cfstr_Rksentenceclas_29.isa);
  v3[30] = @"uk";
  v4[30] = NSClassFromString(&cfstr_Rksentenceclas_30.isa);
  v3[31] = @"zh-Hans";
  v4[31] = NSClassFromString(&cfstr_Rksentenceclas_31.isa);
  v3[32] = @"zh-Hant";
  v4[32] = NSClassFromString(&cfstr_Rksentenceclas_32.isa);
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:33];
  v1 = sSubclasses;
  sSubclasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (Class)subclassForLocale:(id)locale
{
  if (locale)
  {
    v4 = MEMORY[0x277CBEAF8];
    localeIdentifier = [locale localeIdentifier];
    v6 = [v4 canonicalLanguageIdentifierFromString:localeIdentifier];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self subclassForLanguageIdentifier:v6];

  return v7;
}

+ (id)categoryKeywordMapForLanguage:(id)language
{
  languageCopy = language;
  if (categoryKeywordMapForLanguage__onceToken != -1)
  {
    +[RKSentenceClassifier categoryKeywordMapForLanguage:];
  }

  v4 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:languageCopy];
  v5 = [categoryKeywordMapForLanguage__categoryKeywordMap objectForKeyedSubscript:v4];

  if (!v5)
  {
    if ([categoryKeywordMapForLanguage__categoryKeywordMap count] >= 2)
    {
      [categoryKeywordMapForLanguage__categoryKeywordMap removeAllObjects];
    }

    v6 = +[RKAssets categoryKeywordMap];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__RKSentenceClassifier_categoryKeywordMapForLanguage___block_invoke_2;
    v13[3] = &unk_279B10078;
    v14 = v8;
    v9 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v10 = [v9 copy];
    [categoryKeywordMapForLanguage__categoryKeywordMap setObject:v10 forKeyedSubscript:v4];
  }

  v11 = [categoryKeywordMapForLanguage__categoryKeywordMap objectForKeyedSubscript:v4];

  return v11;
}

uint64_t __54__RKSentenceClassifier_categoryKeywordMapForLanguage___block_invoke()
{
  categoryKeywordMapForLanguage__categoryKeywordMap = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void __54__RKSentenceClassifier_categoryKeywordMapForLanguage___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = 0;
  v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a2 options:19 error:&v8];
  v7 = v8;
  if (!v7)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

+ (id)sensitiveSubjectRegularExpressionForLanguage:(id)language
{
  languageCopy = language;
  if (sensitiveSubjectRegularExpressionForLanguage__onceToken != -1)
  {
    +[RKSentenceClassifier sensitiveSubjectRegularExpressionForLanguage:];
  }

  v4 = _languageCodeForIdentifier(languageCopy);
  v5 = [sensitiveSubjectRegularExpressionForLanguage__sensitiveSubjectRegularExpressions objectForKeyedSubscript:v4];

  if (!v5)
  {
    if ([sensitiveSubjectRegularExpressionForLanguage__sensitiveSubjectRegularExpressions count] >= 2)
    {
      [sensitiveSubjectRegularExpressionForLanguage__sensitiveSubjectRegularExpressions removeAllObjects];
    }

    v6 = +[RKAssets sensitiveSubjectRegularExpressionPatterns];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      v12 = 0;
      v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v7 options:19 error:&v12];
      v9 = v12;
      if (!v9)
      {
        [sensitiveSubjectRegularExpressionForLanguage__sensitiveSubjectRegularExpressions setObject:v8 forKeyedSubscript:v4];
      }
    }
  }

  v10 = [sensitiveSubjectRegularExpressionForLanguage__sensitiveSubjectRegularExpressions objectForKeyedSubscript:v4];

  return v10;
}

uint64_t __69__RKSentenceClassifier_sensitiveSubjectRegularExpressionForLanguage___block_invoke()
{
  sensitiveSubjectRegularExpressionForLanguage__sensitiveSubjectRegularExpressions = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

+ (id)polarTagRegularExpressionForLanguage:(id)language
{
  languageCopy = language;
  if (polarTagRegularExpressionForLanguage__onceToken != -1)
  {
    +[RKSentenceClassifier polarTagRegularExpressionForLanguage:];
  }

  v4 = _languageCodeForIdentifier(languageCopy);
  v5 = [polarTagRegularExpressionForLanguage__polarTagRegularExpressions objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = +[RKAssets polarTagKeywords];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      if ([polarTagRegularExpressionForLanguage__polarTagRegularExpressions count] >= 2)
      {
        [polarTagRegularExpressionForLanguage__polarTagRegularExpressions removeAllObjects];
      }

      array = [MEMORY[0x277CBEB18] array];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__RKSentenceClassifier_polarTagRegularExpressionForLanguage___block_invoke_2;
      v18[3] = &unk_279B100A0;
      v9 = array;
      v19 = v9;
      [v7 enumerateObjectsUsingBlock:v18];
      if ([v9 count])
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 componentsJoinedByString:@" | "];
        v12 = [v10 stringWithFormat:@"\\S+ \\s* \\b(%@) \\s* $", v11];

        v17 = 0;
        v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v12 options:19 error:&v17];
        v14 = v17;
        if (!v14)
        {
          [polarTagRegularExpressionForLanguage__polarTagRegularExpressions setObject:v13 forKeyedSubscript:v4];
        }
      }
    }
  }

  v15 = [polarTagRegularExpressionForLanguage__polarTagRegularExpressions objectForKeyedSubscript:v4];

  return v15;
}

uint64_t __61__RKSentenceClassifier_polarTagRegularExpressionForLanguage___block_invoke()
{
  polarTagRegularExpressionForLanguage__polarTagRegularExpressions = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void __61__RKSentenceClassifier_polarTagRegularExpressionForLanguage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = _regExPatternFromKeywords(a2);
  v4 = [v3 stringByReplacingOccurrencesOfString:@" \\s+ \\?" withString:@"\\?"];

  v7 = [v4 stringByReplacingOccurrencesOfString:@"\\?" withString:@" \\s* \\?+"];

  if ([v7 rangeOfString:@"\\?"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ \\s* \\?*", v7];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [*(a1 + 32) addObject:?];
}

+ (id)alternativeInversionsForLanguage:(id)language
{
  v34 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if (alternativeInversionsForLanguage__onceToken != -1)
  {
    +[RKSentenceClassifier alternativeInversionsForLanguage:];
  }

  v4 = [alternativeInversionsForLanguage__alternativeInversions objectForKeyedSubscript:languageCopy];

  if (!v4)
  {
    v5 = +[RKAssets alternativeInversions];
    v6 = [v5 objectForKeyedSubscript:languageCopy];

    if (v6)
    {
      v24 = languageCopy;
      if ([alternativeInversionsForLanguage__alternativeInversions count] >= 2)
      {
        [alternativeInversionsForLanguage__alternativeInversions removeAllObjects];
      }

      allKeys = [v6 allKeys];
      v8 = [allKeys sortedArrayUsingComparator:&__block_literal_global_354];

      array = [MEMORY[0x277CBEB18] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = v8;
      v10 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            v15 = _regExPatternFromKeywords(v14);
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b %@ \\b", v15];

            v26 = 0;
            v17 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v16 options:19 error:&v26];
            v18 = v26;
            v31[0] = @"regex";
            v31[1] = @"original";
            v32[0] = v17;
            v32[1] = v14;
            v31[2] = @"replacement";
            v19 = [v6 objectForKeyedSubscript:v14];
            v32[2] = v19;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
            [array addObject:v20];
          }

          v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v11);
      }

      languageCopy = v24;
      [alternativeInversionsForLanguage__alternativeInversions setObject:array forKeyedSubscript:v24];
    }
  }

  v21 = [alternativeInversionsForLanguage__alternativeInversions objectForKeyedSubscript:languageCopy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __57__RKSentenceClassifier_alternativeInversionsForLanguage___block_invoke()
{
  alternativeInversionsForLanguage__alternativeInversions = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

uint64_t __57__RKSentenceClassifier_alternativeInversionsForLanguage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 componentsSeparatedByString:@" "];
  v6 = [v5 count];

  v7 = [v4 componentsSeparatedByString:@" "];

  v8 = [v7 count];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

+ (id)appreciationKeywordsForLanguage:(id)language
{
  v3 = appreciationKeywordsForLanguage__onceToken;
  languageCopy = language;
  if (v3 != -1)
  {
    +[RKSentenceClassifier appreciationKeywordsForLanguage:];
  }

  v5 = [appreciationKeywordsForLanguage__appreciationKeywords objectForKeyedSubscript:languageCopy];

  return v5;
}

uint64_t __56__RKSentenceClassifier_appreciationKeywordsForLanguage___block_invoke()
{
  appreciationKeywordsForLanguage__appreciationKeywords = +[RKAssets appreciationKeywords];

  return MEMORY[0x2821F96F8]();
}

+ (id)preProcessTextMessageForLinguisticTagger:(id)tagger withLocale:(id)locale
{
  taggerCopy = tagger;
  v7 = [self subclassForLocale:locale];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 preProcessTextMessageForLinguisticTagger:taggerCopy];
  }

  else
  {
    v8 = taggerCopy;
  }

  v9 = v8;

  return v9;
}

- (id)lexicalEntitiesFromString:(id)string
{
  v36[3] = *MEMORY[0x277D85DE8];
  v4 = [string stringByReplacingOccurrencesOfString:@"？" withString:@"?"];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"。" withString:@"."];

  array = [MEMORY[0x277CBEB18] array];
  lowercaseFirstWordString = [v5 lowercaseFirstWordString];

  v8 = MEMORY[0x277CBEAF8];
  languageIdentifier = [(RKSentenceClassifier *)self languageIdentifier];
  v10 = [v8 localeWithLocaleIdentifier:languageIdentifier];
  v11 = [v10 objectForKey:*MEMORY[0x277CBE6C8]];

  v12 = *MEMORY[0x277CCA3E8];
  v36[0] = *MEMORY[0x277CCA408];
  v36[1] = v12;
  v36[2] = *MEMORY[0x277CCA3D8];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v14 = [lemmaAvailabilityByLanguage objectForKeyedSubscript:v11];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v16 = [v13 arrayByAddingObject:*MEMORY[0x277CCA3E0]];

    v13 = v16;
  }

  if (([v11 isEqualToString:@"zh"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"zh-Hans"))
  {
    v17 = [v13 arrayByAddingObject:*MEMORY[0x277CCA3F0]];

    v13 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x277CCAAE8]) initWithTagSchemes:v13 options:4];
  [v18 setString:lowercaseFirstWordString];
  v19 = MEMORY[0x277CCABF8];
  languageIdentifier2 = [(RKSentenceClassifier *)self languageIdentifier];
  v21 = [v19 defaultOrthographyForLanguage:languageIdentifier2];

  string = [v18 string];
  [v18 setOrthography:v21 range:{0, objc_msgSend(string, "length")}];

  string2 = [v18 string];
  v24 = [string2 length];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__RKSentenceClassifier_lexicalEntitiesFromString___block_invoke;
  v32[3] = &unk_279B100E8;
  v33 = v18;
  v34 = v11;
  v25 = array;
  v35 = v25;
  v26 = v11;
  v27 = v18;
  [v27 enumerateTagsInRange:0 scheme:v24 options:v12 usingBlock:{4, v32}];

  v28 = v35;
  v29 = v25;

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

void __50__RKSentenceClassifier_lexicalEntitiesFromString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v14 = objc_opt_new();
  v8 = [*(a1 + 32) string];
  v9 = [v8 substringWithRange:{a3, a4}];
  [v14 setString:v9];

  [v14 setPartOfSpeech:v7];
  v10 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA408] tokenRange:0 sentenceRange:0];
  [v14 setTokenType:v10];

  v11 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA3D8] tokenRange:0 sentenceRange:0];
  [v14 setLanguage:v11];

  [v14 setTokenRange:{a3, a4}];
  v12 = [lemmaAvailabilityByLanguage objectForKeyedSubscript:*(a1 + 40)];
  LODWORD(v11) = [v12 BOOLValue];

  if (v11)
  {
    v13 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA3E0] tokenRange:0 sentenceRange:0];
    [v14 setLemma:v13];
  }

  [*(a1 + 48) addObject:v14];
}

+ (id)stringFromLexicalEntities:(id)entities
{
  v19 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = entitiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        string = [*(*(&v14 + 1) + 8 * i) string];
        [array addObject:string];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [array componentsJoinedByString:@" "];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)sentenceClassification:(id)classification withLanguageIdentifier:(id)identifier options:(unint64_t)options
{
  classificationCopy = classification;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  [self subclassForLanguageIdentifier:identifierCopy];

  v11 = objc_opt_new();
  v12 = v11;
  if (v11)
  {
    v13 = [v11 sentenceClassification:classificationCopy options:options];

    v10 = v13;
  }

  else
  {
    [v10 setLanguage:@"und"];
  }

  return v10;
}

- (id)sentenceClassification:(id)classification options:(unint64_t)options
{
  optionsCopy = options;
  classificationCopy = classification;
  [(RKSentenceClassifier *)self setSentenceString:classificationCopy];
  [(RKSentenceClassifier *)self setSentenceStringOriginal:classificationCopy];

  sentenceString = [(RKSentenceClassifier *)self sentenceString];
  v8 = [(RKSentenceClassifier *)self lexicalEntitiesFromString:sentenceString];
  [(RKSentenceClassifier *)self setSentenceEntities:v8];

  sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@", *MEMORY[0x277CCA410]];
  v11 = [sentenceEntities filteredArrayUsingPredicate:v10];

  -[RKSentenceClassifier setSentenceIsTerminated:](self, "setSentenceIsTerminated:", [v11 count] != 0);
  [(RKSentenceClassifier *)self setSentenceHasQuestionTerminator:0];
  v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"¿?"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__RKSentenceClassifier_sentenceClassification_options___block_invoke;
  v41[3] = &unk_279B0FDC0;
  v38 = v12;
  v42 = v38;
  selfCopy = self;
  [v11 enumerateObjectsUsingBlock:v41];
  sentenceIsTerminated = [(RKSentenceClassifier *)self sentenceIsTerminated];
  if ((optionsCopy & 1) != 0 && !sentenceIsTerminated)
  {
    sentenceString2 = [(RKSentenceClassifier *)self sentenceString];
    v15 = [(RKSentenceClassifier *)self addSentenceTerminatorQuestion:sentenceString2];
    [(RKSentenceClassifier *)self setSentenceString:v15];

    sentenceString3 = [(RKSentenceClassifier *)self sentenceString];
    v17 = [(RKSentenceClassifier *)self lexicalEntitiesFromString:sentenceString3];
    [(RKSentenceClassifier *)self setSentenceEntities:v17];
  }

  [(RKSentenceClassifier *)self analyzeSentence];
  classifySentence = [(RKSentenceClassifier *)self classifySentence];
  languageIdentifier = [(RKSentenceClassifier *)self languageIdentifier];
  v20 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:languageIdentifier];

  sentenceString4 = [(RKSentenceClassifier *)self sentenceString];
  v22 = [RKResponseCollection responsesForFixedPhrase:sentenceString4 withLanguage:v20];

  if (v22)
  {
    [classifySentence setSentenceType:36];
    [classifySentence setCustomResponses:v22];
  }

  v23 = objc_opt_class();
  languageIdentifier2 = [(RKSentenceClassifier *)self languageIdentifier];
  v25 = [v23 sensitiveSubjectRegularExpressionForLanguage:languageIdentifier2];

  sentenceString5 = [(RKSentenceClassifier *)self sentenceString];
  sentenceString6 = [(RKSentenceClassifier *)self sentenceString];
  v28 = [v25 matchesInString:sentenceString5 options:0 range:{0, objc_msgSend(sentenceString6, "length")}];

  [classifySentence setSensitive:{objc_msgSend(v28, "count") != 0}];
  languageIdentifier3 = [(RKSentenceClassifier *)self languageIdentifier];
  v30 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:languageIdentifier3];
  [classifySentence setLanguage:v30];

  array = [MEMORY[0x277CBEB18] array];
  sentenceEntities2 = [(RKSentenceClassifier *)self sentenceEntities];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__RKSentenceClassifier_sentenceClassification_options___block_invoke_2;
  v39[3] = &unk_279B10110;
  v40 = array;
  v33 = array;
  [sentenceEntities2 enumerateObjectsUsingBlock:v39];

  v34 = [v33 componentsJoinedByString:@" "];
  [classifySentence setTaggedText:v34];

  sentenceEntities3 = [(RKSentenceClassifier *)self sentenceEntities];
  [classifySentence setSentenceEntities:sentenceEntities3];

  matchedRanges = [(RKSentenceClassifier *)self matchedRanges];
  [classifySentence setMatchedRanges:matchedRanges];

  return classifySentence;
}

void __55__RKSentenceClassifier_sentenceClassification_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 string];
  v7 = [v6 rangeOfCharacterFromSet:*(a1 + 32) options:128];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) setSentenceHasQuestionTerminator:1];
    *a4 = 1;
  }
}

void __55__RKSentenceClassifier_sentenceClassification_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v7 = [v4 word];
  v5 = [v4 partOfSpeech];

  v6 = [v3 stringWithFormat:@"%@{%@}", v7, v5];
  [v2 addObject:v6];
}

- (id)addSentenceTerminatorQuestion:(id)question
{
  v3 = MEMORY[0x277CCA900];
  questionCopy = question;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [questionCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (void)analyzeSentence
{
  v252 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAF8];
  languageIdentifier = [(RKSentenceClassifier *)self languageIdentifier];
  v4 = [v2 localeWithLocaleIdentifier:languageIdentifier];
  v183 = [v4 objectForKey:*MEMORY[0x277CBE6C8]];

  if (analyzeSentence_onceToken != -1)
  {
    [RKSentenceClassifier analyzeSentence];
  }

  sentenceStringOriginal = [(RKSentenceClassifier *)self sentenceStringOriginal];
  -[RKSentenceClassifier setSentenceIsAllSymbols:](self, "setSentenceIsAllSymbols:", [sentenceStringOriginal rangeOfCharacterFromSet:analyzeSentence_notSymbols] == 0x7FFFFFFFFFFFFFFFLL);

  v6 = objc_opt_class();
  languageIdentifier2 = [(RKSentenceClassifier *)self languageIdentifier];
  v186 = [v6 polarTagRegularExpressionForLanguage:languageIdentifier2];

  sentenceStringOriginal2 = [(RKSentenceClassifier *)self sentenceStringOriginal];
  sentenceStringOriginal3 = [(RKSentenceClassifier *)self sentenceStringOriginal];
  v187 = [v186 matchesInString:sentenceStringOriginal2 options:0 range:{0, objc_msgSend(sentenceStringOriginal3, "length")}];

  if ([v187 count] == 1)
  {
    v10 = [v187 objectAtIndexedSubscript:0];
    v11 = [v10 rangeAtIndex:1];
    v13 = v12;

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v13}];
      [(RKSentenceClassifier *)self setSentenceTag:v14];
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
  v17 = [sentenceEntities valueForKey:@"word"];
  v18 = [v17 componentsJoinedByString:@" "];

  v19 = [RKUtilities stripDiacritics:v18];

  v20 = objc_opt_class();
  languageIdentifier3 = [(RKSentenceClassifier *)self languageIdentifier];
  v185 = [v20 categoryKeywordMapForLanguage:languageIdentifier3];

  v223 = 0;
  v224 = &v223;
  v225 = 0x3032000000;
  v226 = __Block_byref_object_copy_;
  v227 = __Block_byref_object_dispose_;
  v228 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v219[0] = MEMORY[0x277D85DD0];
  v219[1] = 3221225472;
  v219[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_414;
  v219[3] = &unk_279B10160;
  v182 = v19;
  v220 = v182;
  v22 = array;
  v221 = v22;
  v222 = &v223;
  [v185 enumerateKeysAndObjectsUsingBlock:v219];
  [(RKSentenceClassifier *)self setMatchedRanges:v224[5]];
  v217[0] = MEMORY[0x277D85DD0];
  v217[1] = 3221225472;
  v217[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_3;
  v217[3] = &unk_279B0FD90;
  v218 = v22;
  v188 = v218;
  [v218 enumerateObjectsWithOptions:2 usingBlock:v217];
  [v188 sortUsingComparator:&__block_literal_global_426];
  v23 = [v188 copy];
  [(RKSentenceClassifier *)self setInterrogatives:v23];

  array2 = [MEMORY[0x277CBEB18] array];
  v215[0] = 0;
  v215[1] = v215;
  v215[2] = 0x3032000000;
  v215[3] = __Block_byref_object_copy_;
  v215[4] = __Block_byref_object_dispose_;
  v216 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_5;
  block[3] = &unk_279B10020;
  block[4] = v215;
  if (analyzeSentence_onceDataDetectorToken != -1)
  {
    dispatch_once(&analyzeSentence_onceDataDetectorToken, block);
  }

  v25 = analyzeSentence_dataDetector;
  sentenceString = [(RKSentenceClassifier *)self sentenceString];
  sentenceString2 = [(RKSentenceClassifier *)self sentenceString];
  v28 = [sentenceString2 length];
  v212[0] = MEMORY[0x277D85DD0];
  v212[1] = 3221225472;
  v212[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_6;
  v212[3] = &unk_279B101D0;
  v212[4] = self;
  v184 = array2;
  v213 = v184;
  [v25 enumerateMatchesInString:sentenceString options:0 range:0 usingBlock:{v28, v212}];

  [(RKSentenceClassifier *)self setDataDetected:v184];
  [(RKSentenceClassifier *)self setChoiceDelimiters:MEMORY[0x277CBEBF8]];
  [(RKSentenceClassifier *)self setSentenceHasAlternativeConjunction:0];
  v29 = 0;
  v30 = 0;
  v191 = *MEMORY[0x277CCA3D0];
  v189 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    sentenceEntities2 = [(RKSentenceClassifier *)self sentenceEntities];
    v32 = v30 < [sentenceEntities2 count];

    if (!v32)
    {
      break;
    }

    sentenceEntities3 = [(RKSentenceClassifier *)self sentenceEntities];
    v198 = [sentenceEntities3 objectAtIndexedSubscript:v30];

    if (v30 < 1)
    {
      v196 = 0;
    }

    else
    {
      sentenceEntities4 = [(RKSentenceClassifier *)self sentenceEntities];
      v196 = [sentenceEntities4 objectAtIndexedSubscript:v30 - 1];
    }

    sentenceEntities5 = [(RKSentenceClassifier *)self sentenceEntities];
    v36 = v30 + 1;
    v37 = v30 + 1 < [sentenceEntities5 count];

    if (v37)
    {
      sentenceEntities6 = [(RKSentenceClassifier *)self sentenceEntities];
      v194 = [sentenceEntities6 objectAtIndexedSubscript:v30 + 1];
    }

    else
    {
      v194 = 0;
    }

    word = [v198 word];
    if (![word isEqualToString:{@", "}])
    {

LABEL_20:
      alternativeConjunctions = [(RKSentenceClassifier *)self alternativeConjunctions];
      word2 = [v198 word];
      if ([alternativeConjunctions containsObject:word2])
      {
        partOfSpeech = [v196 partOfSpeech];
        v46 = partOfSpeech == v191;

        if (!v46)
        {
          v42 = 1;
LABEL_28:
          v41 = 1;
          v189 = v30;
          goto LABEL_31;
        }
      }

      else
      {
      }

      sentenceEntities7 = [(RKSentenceClassifier *)self sentenceEntities];
      v48 = v29 + [sentenceEntities7 count];
      if (v48 < multiWordOrLength)
      {

        v42 = 0;
        v41 = 0;
LABEL_30:
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_31;
      }

      alternativeConjunctions2 = [(RKSentenceClassifier *)self alternativeConjunctions];
      word3 = [v198 word];
      v51 = [word3 stringByAppendingString:@" "];
      word4 = [v194 word];
      v53 = [v51 stringByAppendingString:word4];
      v41 = [alternativeConjunctions2 containsObject:v53];

      if (!v41)
      {
        v42 = 0;
        goto LABEL_30;
      }

      v42 = multiWordOrLength;
      goto LABEL_28;
    }

    sentenceHasAlternativeConjunction = [(RKSentenceClassifier *)self sentenceHasAlternativeConjunction];

    if (sentenceHasAlternativeConjunction)
    {
      goto LABEL_20;
    }

    v41 = 0;
    v42 = 1;
LABEL_31:
    v208 = 0;
    v209 = &v208;
    v210 = 0x2020000000;
    v211 = 0;
    dataDetected = [(RKSentenceClassifier *)self dataDetected];
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_8;
    v207[3] = &unk_279B101F8;
    v207[5] = v30;
    v207[6] = v42;
    v207[4] = &v208;
    [dataDetected enumerateObjectsUsingBlock:v207];

    if (v42 && v42 < RK_QUERY_ALTERNATIVE_MAX_PHRASAL_LENGTH && (v209[3] & 1) == 0)
    {
      choiceDelimiters = [(RKSentenceClassifier *)self choiceDelimiters];
      v56 = [MEMORY[0x277CCAE60] valueWithRange:{v30, v42}];
      v57 = [choiceDelimiters arrayByAddingObject:v56];
      [(RKSentenceClassifier *)self setChoiceDelimiters:v57];

      [(RKSentenceClassifier *)self setSentenceHasAlternativeConjunction:v41 | [(RKSentenceClassifier *)self sentenceHasAlternativeConjunction]];
    }

    _Block_object_dispose(&v208, 8);

    --v29;
    v30 = v36;
  }

  if ([(RKSentenceClassifier *)self sentenceHasAlternativeConjunction])
  {
    choiceDelimiters2 = [(RKSentenceClassifier *)self choiceDelimiters];
    v59 = [choiceDelimiters2 count] == 0;

    if (!v59)
    {
      array3 = [MEMORY[0x277CBEB18] array];
      v61 = 0;
      v62 = *MEMORY[0x277CCA410];
      while (1)
      {
        choiceDelimiters3 = [(RKSentenceClassifier *)self choiceDelimiters];
        v64 = v61 > [choiceDelimiters3 count];

        if (v64)
        {
          break;
        }

        if (v61)
        {
          choiceDelimiters4 = [(RKSentenceClassifier *)self choiceDelimiters];
          v66 = v61 < [choiceDelimiters4 count];

          if (v66)
          {
            choiceDelimiters5 = [(RKSentenceClassifier *)self choiceDelimiters];
            v68 = [choiceDelimiters5 objectAtIndexedSubscript:v61 - 1];
            rangeValue = [v68 rangeValue];
            v71 = v70;

            choiceDelimiters6 = [(RKSentenceClassifier *)self choiceDelimiters];
            v73 = [choiceDelimiters6 objectAtIndexedSubscript:v61];
            rangeValue2 = [v73 rangeValue];

            v75 = [MEMORY[0x277CCAE60] valueWithRange:{rangeValue + v71, rangeValue2 - (rangeValue + v71)}];
            [array3 addObject:v75];
          }

          else
          {
            choiceDelimiters7 = [(RKSentenceClassifier *)self choiceDelimiters];
            v86 = [choiceDelimiters7 objectAtIndexedSubscript:v61 - 1];
            rangeValue3 = [v86 rangeValue];
            v89 = v88;

            sentenceEntities8 = [(RKSentenceClassifier *)self sentenceEntities];
            v91 = [sentenceEntities8 count];

            v92 = rangeValue3 + v89;
            if (v91 == rangeValue3 + v89)
            {
LABEL_53:
              v100 = 0;
            }

            else
            {
              v93 = rangeValue3 + v89 - v91;
              v94 = v91 - 1;
              while (1)
              {
                sentenceEntities9 = [(RKSentenceClassifier *)self sentenceEntities];
                v96 = [sentenceEntities9 objectAtIndexedSubscript:v94];
                partOfSpeech2 = [v96 partOfSpeech];
                v98 = [partOfSpeech2 isEqualToString:v62];

                if ((v98 & 1) == 0)
                {
                  break;
                }

                --v94;
                if (__CFADD__(v93++, 1))
                {
                  goto LABEL_53;
                }
              }

              v100 = -v93;
              do
              {
                sentenceEntities10 = [(RKSentenceClassifier *)self sentenceEntities];
                v102 = [sentenceEntities10 objectAtIndexedSubscript:v94];
                partOfSpeech3 = [v102 partOfSpeech];
                v104 = [partOfSpeech3 isEqualToString:v191];

                if (!v104)
                {
                  break;
                }

                --v94;
                --v100;
              }

              while (v100);
            }

            v75 = [MEMORY[0x277CCAE60] valueWithRange:{v92, v100}];
            [array3 addObject:v75];
          }
        }

        else
        {
          choiceDelimiters8 = [(RKSentenceClassifier *)self choiceDelimiters];
          v77 = [choiceDelimiters8 objectAtIndexedSubscript:0];
          rangeValue4 = [v77 rangeValue];

          if (rangeValue4)
          {
            v79 = 0;
            v80 = rangeValue4;
            while (1)
            {
              sentenceEntities11 = [(RKSentenceClassifier *)self sentenceEntities];
              v82 = [sentenceEntities11 objectAtIndexedSubscript:v79];
              partOfSpeech4 = [v82 partOfSpeech];
              v84 = [partOfSpeech4 isEqualToString:v62];

              if (!v84)
              {
                break;
              }

              ++v79;
              if (!--v80)
              {
                goto LABEL_57;
              }
            }

            rangeValue4 = v79;
          }

          else
          {
            v80 = 0;
          }

LABEL_57:
          v75 = [MEMORY[0x277CCAE60] valueWithRange:{rangeValue4, v80}];
          [array3 addObject:v75];
        }

        ++v61;
      }

      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v105 = array3;
      v106 = 0;
      v107 = [v105 countByEnumeratingWithState:&v203 objects:v251 count:16];
      if (v107)
      {
        v108 = *v204;
        do
        {
          for (i = 0; i != v107; ++i)
          {
            if (*v204 != v108)
            {
              objc_enumerationMutation(v105);
            }

            [*(*(&v203 + 1) + 8 * i) rangeValue];
            if (v110 == 1)
            {
              ++v106;
            }
          }

          v107 = [v105 countByEnumeratingWithState:&v203 objects:v251 count:16];
        }

        while (v107);
      }

      if (v106 == [v105 count])
      {
        [(RKSentenceClassifier *)self setAlternatives:v105];
        goto LABEL_78;
      }

      v111 = [partofSpeechAvailabilityByLanguage objectForKeyedSubscript:v183];
      bOOLValue = [v111 BOOLValue];

      if (bOOLValue)
      {
        v113 = MEMORY[0x277CBEB98];
        v249 = *MEMORY[0x277CCA360];
        v199 = v249;
        v195 = [MEMORY[0x277CBEA60] arrayWithObjects:&v249 count:1];
        v193 = [v113 setWithArray:v195];
        v250[0] = v193;
        v114 = MEMORY[0x277CBEB98];
        v248 = *MEMORY[0x277CCA3C0];
        v173 = v248;
        v192 = [MEMORY[0x277CBEA60] arrayWithObjects:&v248 count:1];
        v190 = [v114 setWithArray:v192];
        v250[1] = v190;
        v115 = MEMORY[0x277CBEB98];
        v247 = *MEMORY[0x277CCA320];
        v197 = v247;
        v181 = [MEMORY[0x277CBEA60] arrayWithObjects:&v247 count:1];
        v180 = [v115 setWithArray:v181];
        v250[2] = v180;
        v116 = MEMORY[0x277CBEB98];
        v117 = *MEMORY[0x277CCA328];
        v246[0] = *MEMORY[0x277CCA418];
        v172 = v117;
        v246[1] = v117;
        v179 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:2];
        v178 = [v116 setWithArray:v179];
        v250[3] = v178;
        v118 = MEMORY[0x277CBEB98];
        v245 = @"RKLinguisticTagDataDetected";
        v177 = [MEMORY[0x277CBEA60] arrayWithObjects:&v245 count:1];
        v176 = [v118 setWithArray:v177];
        v250[4] = v176;
        v119 = MEMORY[0x277CBEB98];
        v230[0] = *MEMORY[0x277CCA368];
        v171 = v230[0];
        v230[1] = v197;
        v169 = *MEMORY[0x277CCA358];
        v231 = *MEMORY[0x277CCA3C8];
        v170 = v231;
        v232 = v169;
        v167 = *MEMORY[0x277CCA370];
        v233 = *MEMORY[0x277CCA3A8];
        v168 = v233;
        v234 = v167;
        v120 = *MEMORY[0x277CCA330];
        v235 = v199;
        v236 = v120;
        v122 = *MEMORY[0x277CCA380];
        v237 = *MEMORY[0x277CCA3A0];
        v121 = v237;
        v238 = v122;
        v124 = *MEMORY[0x277CCA3B0];
        v239 = *MEMORY[0x277CCA340];
        v123 = v239;
        v240 = v124;
        v126 = *MEMORY[0x277CCA388];
        v241 = *MEMORY[0x277CCA3B8];
        v125 = v241;
        v242 = v126;
        v243 = *MEMORY[0x277CCA350];
        v127 = v243;
        v244 = @"RKLinguisticTagDataDetected";
        v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:16];
        v174 = [v119 setWithArray:v175];
        v250[5] = v174;
        v128 = MEMORY[0x277CBEB98];
        v229[0] = v171;
        v229[1] = v197;
        v229[2] = v170;
        v229[3] = v169;
        v229[4] = v168;
        v229[5] = v173;
        v229[6] = v167;
        v229[7] = v199;
        v229[8] = v120;
        v229[9] = v121;
        v229[10] = v122;
        v229[11] = v123;
        v229[12] = v124;
        v229[13] = v125;
        v229[14] = v126;
        v229[15] = v172;
        v229[16] = v127;
        v229[17] = @"RKLinguisticTagDataDetected";
        v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:18];
        v130 = [v128 setWithArray:v129];
        v250[6] = v130;
        partOfSpeech5 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:7];

        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_9;
        v201[3] = &unk_279B10248;
        v201[4] = self;
        v202 = v105;
        [partOfSpeech5 enumerateObjectsUsingBlock:v201];

        goto LABEL_77;
      }

      partOfSpeech5 = [partofSpeechAvailabilityByLanguage objectForKeyedSubscript:v183];
      if ([partOfSpeech5 BOOLValue])
      {
LABEL_77:
      }

      else
      {
        sentenceEntities12 = [v183 isEqualToString:@"nl"];

        v160 = v189;
        if ((sentenceEntities12 & 1) == 0)
        {
          v161 = 0;
          if (v189 && v189 != 0x7FFFFFFFFFFFFFFFLL)
          {
            sentenceEntities12 = [(RKSentenceClassifier *)self sentenceEntities];
            v161 = v189 + 1 < [sentenceEntities12 count];
          }

          if (v189 && v189 != 0x7FFFFFFFFFFFFFFFLL)
          {

            v160 = v189;
          }

          if (v161)
          {
            sentenceEntities13 = [(RKSentenceClassifier *)self sentenceEntities];
            v163 = [sentenceEntities13 objectAtIndexedSubscript:v160 + 1];
            partOfSpeech5 = [v163 partOfSpeech];

            if (([partOfSpeech5 isEqualToString:@"SentenceTerminator"] & 1) == 0 && (objc_msgSend(partOfSpeech5, "isEqualToString:", @"Punctuation") & 1) == 0)
            {
              v164 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v165 = [MEMORY[0x277CCAE60] valueWithRange:{v189 - 1, 1}];
              [v164 addObject:v165];

              v166 = [MEMORY[0x277CCAE60] valueWithRange:{v189 + 1, 1}];
              [v164 addObject:v166];

              [(RKSentenceClassifier *)self setAlternatives:v164];
            }

            goto LABEL_77;
          }
        }
      }

LABEL_78:
    }
  }

  array4 = [MEMORY[0x277CBEA60] array];
  [(RKSentenceClassifier *)self setAppreciations:array4];

  v133 = MEMORY[0x277CBEB98];
  v134 = objc_opt_class();
  languageIdentifier4 = [(RKSentenceClassifier *)self languageIdentifier];
  v136 = _languageCodeForIdentifier(languageIdentifier4);
  v137 = [v134 appreciationKeywordsForLanguage:v136];
  v138 = [v133 setWithArray:v137];

  for (j = 0; ; ++j)
  {
    sentenceEntities14 = [(RKSentenceClassifier *)self sentenceEntities];
    v141 = j < [sentenceEntities14 count];

    if (!v141)
    {
      break;
    }

    sentenceEntities15 = [(RKSentenceClassifier *)self sentenceEntities];
    v143 = [sentenceEntities15 count];

    v144 = v143 - j;
    if (v143 != j)
    {
      if (v144 >= 3)
      {
        v144 = 3;
      }

      v145 = v144 - 1;
      do
      {
        sentenceEntities16 = [(RKSentenceClassifier *)self sentenceEntities];
        v147 = [sentenceEntities16 subarrayWithRange:{j, v145 + 1}];
        v148 = [v147 valueForKeyPath:@"@unionOfObjects.string"];
        v149 = [v148 componentsJoinedByString:@"+"];

        v150 = [RKUtilities stripDiacritics:v149];

        v151 = objc_autoreleasePoolPush();
        lowercaseString = [v150 lowercaseString];
        v153 = [v138 containsObject:lowercaseString];

        if (v153)
        {
          appreciations = [(RKSentenceClassifier *)self appreciations];
          v155 = [MEMORY[0x277CCAE60] valueWithRange:{j, v145 + 1}];
          v156 = [appreciations arrayByAddingObject:v155];
          [(RKSentenceClassifier *)self setAppreciations:v156];

          j += v145;
        }

        objc_autoreleasePoolPop(v151);

        if (v145)
        {
          v157 = v153;
        }

        else
        {
          v157 = 1;
        }

        --v145;
      }

      while (v157 != 1);
    }
  }

  _Block_object_dispose(v215, 8);
  _Block_object_dispose(&v223, 8);

  v158 = *MEMORY[0x277D85DE8];
}

uint64_t __39__RKSentenceClassifier_analyzeSentence__block_invoke()
{
  v0 = objc_opt_new();
  v1 = analyzeSentence_notSymbols;
  analyzeSentence_notSymbols = v0;

  v2 = analyzeSentence_notSymbols;
  v3 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = analyzeSentence_notSymbols;
  v5 = [MEMORY[0x277CCA900] symbolCharacterSet];
  [v4 formUnionWithCharacterSet:v5];

  v6 = analyzeSentence_notSymbols;
  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v6 formUnionWithCharacterSet:v7];

  v8 = analyzeSentence_notSymbols;
  v9 = [MEMORY[0x277CCA900] characterSetWithRange:{65024, 16}];
  [v8 formUnionWithCharacterSet:v9];

  v10 = analyzeSentence_notSymbols;

  return [v10 invert];
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_414(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_2;
  v12[3] = &unk_279B10138;
  v13 = *(a1 + 32);
  v14 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v11 = v5;
  [v8 enumerateObjectsUsingBlock:v12];
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 substringToIndex:{objc_msgSend(v4, "range")}];
  v6 = [v5 componentsSeparatedByString:@" "];
  v7 = [v6 count] - 1;
  v8 = *(a1 + 32);
  v9 = [v4 range];
  v11 = [v8 substringWithRange:{v9, v10}];
  v12 = [v11 componentsSeparatedByString:@" "];
  v13 = [v12 count];

  v19 = [*(a1 + 40) mutableCopy];
  v14 = [MEMORY[0x277CCAE60] valueWithRange:{v7, v13}];
  [v19 setObject:v14 forKeyedSubscript:@"range"];

  v15 = *(a1 + 32);
  v16 = [v4 range];
  v18 = [v15 substringWithRange:{v16, v17}];
  [v19 setObject:v18 forKeyedSubscript:@"string"];

  [*(a1 + 48) addObject:v19];
  [*(*(*(a1 + 56) + 8) + 40) addObject:v4];
}

unint64_t __39__RKSentenceClassifier_analyzeSentence__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKeyedSubscript:@"range"];
  v6 = [v5 rangeValue];
  v8 = v7;

  result = [*(a1 + 32) count];
  if (result)
  {
    v10 = 0;
    while (1)
    {
      if (a3 != v10)
      {
        v11 = [*(a1 + 32) objectAtIndexedSubscript:v10];
        v12 = [v11 objectForKeyedSubscript:@"range"];
        v13 = [v12 rangeValue];
        v15 = v14;

        v20.location = v6;
        v20.length = v8;
        v21.location = v13;
        v21.length = v15;
        v16 = NSIntersectionRange(v20, v21);
        if (v16.location == v6 && v16.length == v8)
        {
          break;
        }
      }

      ++v10;
      result = [*(a1 + 32) count];
      if (v10 >= result)
      {
        return result;
      }
    }

    v18 = *(a1 + 32);

    return [v18 removeObjectAtIndex:a3];
  }

  return result;
}

uint64_t __39__RKSentenceClassifier_analyzeSentence__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"range"];
  v6 = [v5 rangeValue];

  v7 = [v4 objectForKeyedSubscript:@"range"];

  v8 = [v7 rangeValue];
  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = [MEMORY[0x277CCA948] dataDetectorWithTypes:6200 error:&obj];
  objc_storeStrong((v1 + 40), obj);
  v3 = analyzeSentence_dataDetector;
  analyzeSentence_dataDetector = v2;
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = "";
  v17 = xmmword_2620D4710;
  v4 = [*(a1 + 32) sentenceEntities];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__RKSentenceClassifier_analyzeSentence__block_invoke_7;
  v10 = &unk_279B101A8;
  v5 = v3;
  v11 = v5;
  v12 = &v13;
  [v4 enumerateObjectsUsingBlock:&v7];

  v6 = [MEMORY[0x277CCAE60] valueWithRange:{v14[4], v14[5], v7, v8, v9, v10}];
  [*(a1 + 40) addObject:v6];

  _Block_object_dispose(&v13, 8);
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_7(uint64_t a1, void *a2, NSUInteger location)
{
  v11 = a2;
  v5 = [*(a1 + 32) range];
  v7 = v6;
  v14.location = [v11 tokenRange];
  v14.length = v8;
  v13.location = v5;
  v13.length = v7;
  if (NSIntersectionRange(v13, v14).length)
  {
    v9 = *(*(a1 + 40) + 8);
    v10.location = *(v9 + 32);
    v10.length = 1;
    if (v10.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10.length = *(v9 + 40);
      v15.location = location;
      v15.length = 1;
      v10 = NSUnionRange(v10, v15);
      location = v10.location;
      v9 = *(*(a1 + 40) + 8);
    }

    *(v9 + 32) = location;
    *(v9 + 40) = v10.length;
    [v11 setPartOfSpeech:@"RKLinguisticTagDataDetected"];
  }
}

NSUInteger __39__RKSentenceClassifier_analyzeSentence__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9.location = [a2 rangeValue];
  v9.length = v6;
  v8 = NSIntersectionRange(*(a1 + 40), v9);
  result = v8.location;
  if (v8.length)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v54 = a2;
  v53 = [MEMORY[0x277CBEB18] array];
  v5 = [*(a1 + 32) choiceDelimiters];
  [v5 count];

  v6 = 0;
  do
  {
    v7 = [*(a1 + 32) choiceDelimiters];
    v8 = v7;
    if (!v6)
    {
      v25 = [v7 objectAtIndexedSubscript:0];
      v20 = [v25 rangeValue];

      if (!v20)
      {
        goto LABEL_24;
      }

      v26 = 0;
      v14 = v20;
      while (1)
      {
        v27 = [*(a1 + 32) sentenceEntities];
        v28 = v14 - 1;
        v29 = [v27 objectAtIndexedSubscript:v14 - 1];
        v30 = [v29 partOfSpeech];
        v31 = [v54 containsObject:v30];

        if (!v31)
        {
          break;
        }

        ++v26;
        --v14;
        if (!v28)
        {
          goto LABEL_22;
        }
      }

      v20 = v26;
LABEL_22:
      if (!v20)
      {
        goto LABEL_24;
      }

LABEL_23:
      v37 = [MEMORY[0x277CCAE60] valueWithRange:{v14, v20}];
      [v53 addObject:v37];

      goto LABEL_24;
    }

    v9 = [v7 count];

    v10 = [*(a1 + 32) choiceDelimiters];
    v11 = [v10 objectAtIndexedSubscript:v6 - 1];
    v12 = [v11 rangeValue];
    v14 = v12 + v13;

    v15 = *(a1 + 32);
    if (v6 >= v9)
    {
      v32 = [v15 sentenceEntities];
      if (v14 >= [v32 count])
      {
        v20 = 0;
LABEL_20:
      }

      else
      {
        v20 = 0;
        while (1)
        {
          v33 = [*(a1 + 32) sentenceEntities];
          v34 = [v33 objectAtIndexedSubscript:v14 + v20];
          v35 = [v34 partOfSpeech];
          v36 = [v54 containsObject:v35];

          if (!v36)
          {
            break;
          }

          ++v20;
          v32 = [*(a1 + 32) sentenceEntities];
          if (v14 + v20 >= [v32 count])
          {
            goto LABEL_20;
          }
        }
      }

      goto LABEL_22;
    }

    v16 = [v15 choiceDelimiters];
    v17 = [v16 objectAtIndexedSubscript:v6];
    v18 = [v17 rangeValue];

    v19 = v14;
    v20 = v18 - v14;
    if (v18 <= v14)
    {
LABEL_7:
      if (v18 != v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      while (1)
      {
        v21 = [*(a1 + 32) sentenceEntities];
        v22 = [v21 objectAtIndexedSubscript:v19];
        v23 = [v22 partOfSpeech];
        v24 = [v54 containsObject:v23];

        if ((v24 & 1) == 0)
        {
          break;
        }

        if (++v19 >= v18)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_24:
    ++v6;
    v38 = [*(a1 + 32) choiceDelimiters];
    v39 = [v38 count];
  }

  while (v6 <= v39);
  v40 = v53;
  v41 = [v53 count];
  if (v41 == [*(a1 + 40) count])
  {
    v42 = analyzeSentence_dataDetector;
    v43 = [*(a1 + 32) sentenceString];
    v44 = [*(a1 + 32) sentenceString];
    v45 = [v44 length];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_10;
    v55[3] = &unk_279B101D0;
    v55[4] = *(a1 + 32);
    v46 = v53;
    v56 = v46;
    [v42 enumerateMatchesInString:v43 options:0 range:0 usingBlock:{v45, v55}];

    if ([v46 count])
    {
      v47 = 0;
      while (1)
      {
        v48 = [v46 objectAtIndexedSubscript:v47];
        [v48 rangeValue];
        v50 = v49;
        v51 = RK_QUERY_ALTERNATIVE_MAX_PHRASAL_LENGTH;

        if (v50 > v51)
        {
          break;
        }

        if ([v46 count] <= ++v47)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      [*(a1 + 32) setAlternatives:v46];
    }

    *a4 = 1;

    v40 = v53;
  }
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3010000000;
  v13[3] = "";
  v14 = xmmword_2620D4710;
  v4 = [*(a1 + 32) sentenceEntities];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_11;
  v10[3] = &unk_279B101A8;
  v5 = v3;
  v11 = v5;
  v12 = v13;
  [v4 enumerateObjectsUsingBlock:v10];

  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__RKSentenceClassifier_analyzeSentence__block_invoke_12;
  v7[3] = &unk_279B10220;
  v9 = v13;
  v8 = v6;
  [v8 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v13, 8);
}

NSUInteger __39__RKSentenceClassifier_analyzeSentence__block_invoke_11(uint64_t a1, void *a2, NSUInteger location)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 range];
  v9 = v8;
  v10 = [v6 tokenRange];
  v12 = v11;

  v16.location = v7;
  v16.length = v9;
  v17.location = v10;
  v17.length = v12;
  v13 = NSIntersectionRange(v16, v17);
  if (v13.length)
  {
    v14 = *(*(a1 + 40) + 8);
    v13.location = *(v14 + 32);
    v13.length = 1;
    if (v13.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13.length = *(v14 + 40);
      v18.location = location;
      v18.length = 1;
      v13 = NSUnionRange(v13, v18);
      location = v13.location;
      v14 = *(*(a1 + 40) + 8);
    }

    *(v14 + 32) = location;
    *(v14 + 40) = v13.length;
  }

  return v13.location;
}

void __39__RKSentenceClassifier_analyzeSentence__block_invoke_12(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  v14 = v7;
  v16.location = [v7 rangeValue];
  v16.length = v9;
  if (NSIntersectionRange(v8[32], v16).length)
  {
    v10 = *(*(a1 + 40) + 8);
    v17.location = [v14 rangeValue];
    v17.length = v11;
    v12 = NSUnionRange(v10[2], v17);
    v13 = [MEMORY[0x277CCAE60] valueWithRange:{v12.location, v12.length}];
    [*(a1 + 32) setObject:v13 atIndexedSubscript:a3];

    *a4 = 1;
  }
}

- (id)classifySentence
{
  v23[9] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceIsAllSymbols](self, "sentenceIsAllSymbols") && !-[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:36];
  }

  if (![v3 sentenceType])
  {
    sentenceTag = [(RKSentenceClassifier *)self sentenceTag];

    if (sentenceTag)
    {
      [v3 setSentenceType:5];
    }
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceIsTerminated](self, "sentenceIsTerminated") && !-[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:31];
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceHasAlternativeConjunction](self, "sentenceHasAlternativeConjunction"))
  {
    [v3 setSentenceType:6];
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCA380];
  v23[0] = *MEMORY[0x277CCA410];
  v23[1] = v6;
  v7 = *MEMORY[0x277CCA378];
  v23[2] = *MEMORY[0x277CCA340];
  v23[3] = v7;
  v8 = *MEMORY[0x277CCA430];
  v23[4] = *MEMORY[0x277CCA338];
  v23[5] = v8;
  v9 = *MEMORY[0x277CCA398];
  v23[6] = *MEMORY[0x277CCA350];
  v23[7] = v9;
  v23[8] = *MEMORY[0x277CCA360];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:9];
  v11 = [v5 setWithArray:v10];

  if (![v3 sentenceType] || objc_msgSend(v3, "sentenceType") == 31)
  {
    appreciations = [(RKSentenceClassifier *)self appreciations];
    v13 = [appreciations count];

    if (v13)
    {
      appreciations2 = [(RKSentenceClassifier *)self appreciations];
      v15 = [appreciations2 objectAtIndexedSubscript:0];
      rangeValue = [v15 rangeValue];

      if (!rangeValue)
      {
        goto LABEL_20;
      }

      sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
      v18 = [sentenceEntities objectAtIndexedSubscript:rangeValue - 1];
      partOfSpeech = [v18 partOfSpeech];
      v20 = [v11 containsObject:partOfSpeech];

      if (v20)
      {
LABEL_20:
        [v3 setSentenceType:34];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

void __46__RKSentenceClassifier_nb_NO_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_uk_UA_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_es_ES_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_hi_IN_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_fi_FI_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_he_IL_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __71__RKSentenceClassifier_en_US_preProcessTextMessageForLinguisticTagger___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a1 + 32) tagAtIndex:a3 scheme:*MEMORY[0x277CCA3E0] tokenRange:0 sentenceRange:0];
  v7 = [&unk_2874EA788 objectForKey:?];
  if (v7)
  {
    [*(a1 + 40) replaceCharactersInRange:a3 withString:{a4, v7}];
  }
}

void __45__RKSentenceClassifier_en_US_analyzeSentence__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 lemma];
  if ([v2 isEqualToString:@"oregon"])
  {
    v3 = [v6 string];
    v4 = [v3 lowercaseString];
    v5 = [v4 isEqualToString:@"or"];

    if (v5)
    {
      [v6 setLemma:@"or"];
    }
  }

  else
  {
  }
}

void __45__RKSentenceClassifier_en_US_analyzeSentence__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v36 = v5;
  v7 = [v5 partOfSpeech];
  LODWORD(v6) = [v6 containsObject:v7];

  if (!v6)
  {
    goto LABEL_33;
  }

  v8 = a3 - 1;
  if (a3 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) sentenceEntities];
    v10 = [v9 objectAtIndexedSubscript:a3 - 1];
  }

  v11 = *MEMORY[0x277CCA328];
  v12 = *MEMORY[0x277CCA358];
  while (1)
  {
    v13 = [v10 partOfSpeech];
    if ([v13 isEqualToString:v11])
    {

      v14 = v8 - 1;
      if (v8 < 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v15 = [v10 partOfSpeech];
    if (![v15 isEqualToString:v12])
    {
      break;
    }

    v14 = v8 - 1;

    if (v8 <= 0)
    {
LABEL_12:
      v18 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v16 = [*(a1 + 40) sentenceEntities];
    v17 = [v16 objectAtIndexedSubscript:v14];

    v8 = v14;
    v10 = v17;
  }

  if (v8 < 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = [*(a1 + 40) sentenceEntities];
    v18 = [v19 objectAtIndexedSubscript:v8 - 1];
  }

  v14 = v8;
LABEL_17:
  v20 = [v18 partOfSpeech];
  if ([v20 isEqualToString:v11])
  {

    if (v14 >= 2)
    {
      v20 = [*(a1 + 40) sentenceEntities];
      v21 = [v20 objectAtIndexedSubscript:v14 - 2];

      v18 = v21;
      goto LABEL_20;
    }
  }

  else
  {
LABEL_20:
  }

  v22 = [v10 partOfSpeech];
  v23 = *MEMORY[0x277CCA418];
  if (![v22 isEqualToString:*MEMORY[0x277CCA418]])
  {
    goto LABEL_31;
  }

  v24 = *(a1 + 48);
  v25 = [v10 lemma];
  LODWORD(v24) = [v24 containsObject:v25];

  if (v24)
  {
    if (!v18 || (v26 = *(a1 + 32), [v18 partOfSpeech], v27 = objc_claimAutoreleasedReturnValue(), LOBYTE(v26) = objc_msgSend(v26, "containsObject:", v27), v27, (v26 & 1) == 0))
    {
      v28 = [v18 partOfSpeech];
      v29 = [v28 isEqualToString:v23];

      if ((v29 & 1) == 0)
      {
        v30 = [v10 string];
        v31 = [v30 lowercaseString];
        if ([v31 isEqualToString:@"do"])
        {
          v32 = [v36 lemma];
          v33 = [v32 isEqualToString:@"it"];

          if (v33)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }

        v22 = [*(a1 + 40) inversions];
        v34 = [MEMORY[0x277CCAE60] valueWithRange:{v14, a3 - v14 + 1}];
        v35 = [v22 arrayByAddingObject:v34];
        [*(a1 + 40) setInversions:v35];

LABEL_31:
      }
    }
  }

LABEL_32:

LABEL_33:
}

void __46__RKSentenceClassifier_en_US_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v72 = a2;
  v5 = [v72 partOfSpeech];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCA348]];

  if (v6)
  {
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v7 = [*(a1 + 32) choiceDelimiters];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __46__RKSentenceClassifier_en_US_classifySentence__block_invoke_2;
    v73[3] = &unk_279B10320;
    v73[4] = &v74;
    v73[5] = a3;
    [v7 enumerateObjectsUsingBlock:v73];

    if ((v75[3] & 1) == 0)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      goto LABEL_43;
    }

    v68 = [*(a1 + 32) dataDetected];
    if (![v68 count])
    {
      v8 = [*(a1 + 40) customResponses];
      v9 = [v8 count];

      if (v9 < 2)
      {
LABEL_43:
        _Block_object_dispose(&v74, 8);
        goto LABEL_44;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) customResponses];
      v12 = [v11 objectAtIndexedSubscript:0];
      v68 = [v10 lexicalEntitiesFromString:v12];

      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) customResponses];
      v15 = [v14 objectAtIndexedSubscript:1];
      v56 = [v13 lexicalEntitiesFromString:v15];

      v16 = [v68 count];
      if (v16 <= [v56 count])
      {
        v17 = v68;
      }

      else
      {
        v17 = v56;
      }

      v55 = [v17 count];
      v18 = *(*(*(a1 + 64) + 8) + 24);
      v19 = [v68 count];
      if (v55)
      {
        v20 = 0;
        v54 = 0;
        v21 = *(*(*(a1 + 64) + 8) + 24);
        v70 = v18 - v19;
        v61 = *MEMORY[0x277CCA3A8];
        v59 = *MEMORY[0x277CCA358];
        v60 = *MEMORY[0x277CCA3C0];
        v58 = *MEMORY[0x277CCA350];
        v57 = 1;
        v71 = a1;
LABEL_12:
        v22 = v21 + 1;
        v53 = v20;
        while (1)
        {
          if (v70 >= *(*(*(a1 + 64) + 8) + 24))
          {
            goto LABEL_38;
          }

          v69 = v22;
          v23 = [*(a1 + 32) sentenceEntities];
          v24 = [v23 count];

          if (v22 >= v24)
          {
            a1 = v71;
            goto LABEL_38;
          }

          v66 = [*(v71 + 32) sentenceEntities];
          v64 = [v66 objectAtIndexedSubscript:v70];
          v62 = [v64 partOfSpeech];
          a1 = v71;
          if ([v62 isEqualToString:v61])
          {
            goto LABEL_32;
          }

          v25 = [*(v71 + 32) sentenceEntities];
          v26 = [v25 objectAtIndexedSubscript:v70];
          v27 = [v26 partOfSpeech];
          a1 = v71;
          if ([v27 isEqualToString:v60])
          {
            goto LABEL_31;
          }

          v28 = [*(v71 + 32) sentenceEntities];
          v29 = [v28 objectAtIndexedSubscript:v70];
          v30 = [v29 partOfSpeech];
          if ([v30 isEqualToString:v59])
          {

            a1 = v71;
LABEL_31:

LABEL_32:
LABEL_33:
            v22 = v69;
            ++v70;
            goto LABEL_26;
          }

          v31 = [*(v71 + 32) sentenceEntities];
          v32 = [v31 objectAtIndexedSubscript:v70];
          v33 = [v32 partOfSpeech];
          v34 = [v33 isEqualToString:v58];

          a1 = v71;
          if (v34)
          {
            goto LABEL_33;
          }

          v35 = [*(v71 + 32) sentenceEntities];
          v36 = [v35 objectAtIndexedSubscript:v69];
          v37 = [v36 partOfSpeech];
          if (([v37 isEqualToString:v61] & 1) == 0)
          {
            v38 = [*(v71 + 32) sentenceEntities];
            v39 = [v38 objectAtIndexedSubscript:v69];
            v40 = [v39 partOfSpeech];
            if (([v40 isEqualToString:v60] & 1) == 0)
            {
              v67 = [*(v71 + 32) sentenceEntities];
              v41 = [v67 objectAtIndexedSubscript:v69];
              v42 = [v41 partOfSpeech];
              if (([v42 isEqualToString:v59] & 1) == 0)
              {
                v65 = [*(v71 + 32) sentenceEntities];
                v43 = [v65 objectAtIndexedSubscript:v69];
                v44 = [v43 partOfSpeech];
                v63 = [v44 isEqualToString:v58];

                if ((v63 & 1) == 0)
                {
                  a1 = v71;
                  [*(v71 + 32) sentenceEntities];
                  v45 = v21 = v69;
                  v46 = [v45 objectAtIndexedSubscript:v70];
                  v47 = [v46 partOfSpeech];
                  v48 = [*(v71 + 32) sentenceEntities];
                  v49 = [v48 objectAtIndexedSubscript:v69];
                  v50 = [v49 partOfSpeech];
                  v51 = [v47 isEqualToString:v50];

                  v54 += v51 ^ 1u;
                  ++v70;
                  v20 = v53 + 1;
                  v57 = v53 + 1 < v55;
                  if (v20 != v55)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_38;
                }

                goto LABEL_25;
              }
            }
          }

LABEL_25:
          v22 = v69 + 1;
          a1 = v71;
LABEL_26:
          if (!v57)
          {
            goto LABEL_38;
          }
        }
      }

      v54 = 0;
LABEL_38:
      v52 = [v68 count];
      if (v52 != [v56 count] && v54)
      {
        [*(a1 + 40) setCustomResponses:0];
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    goto LABEL_43;
  }

LABEL_44:
  ++*(*(*(a1 + 64) + 8) + 24);
}

unint64_t __46__RKSentenceClassifier_en_US_classifySentence__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  result = [a2 rangeValue];
  if (v6 >= result && v6 - result < v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __46__RKSentenceClassifier_en_US_classifySentence__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = a2;
  v6 = [v28 objectForKeyedSubscript:@"range"];
  v7 = [v6 rangeValue];

  v8 = [*(a1 + 32) inversions];
  if (![v8 count])
  {

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v9 = [*(a1 + 32) inversions];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 rangeValue];
  v13 = v12;

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v14 = [*(a1 + 32) sentenceEntities];
  if (v11 + 3 <= [v14 count])
  {
    v15 = [*(a1 + 32) sentenceEntities];
    v16 = [v15 objectAtIndexedSubscript:v11];
    v17 = [v16 lemma];
    if ([v17 isEqualToString:@"do"])
    {
      v27 = [*(a1 + 32) sentenceEntities];
      v26 = [v27 objectAtIndexedSubscript:v11 + 1];
      v18 = [v26 lemma];
      if ([v18 isEqualToString:@"you"])
      {
        v23 = [*(a1 + 32) sentenceEntities];
        v22 = [v23 objectAtIndexedSubscript:v11 + 2];
        [v22 lemma];
        v19 = v24 = v15;
        v25 = [v19 isEqualToString:@"know"];

        if (!v25)
        {
          goto LABEL_14;
        }

        [*(a1 + 40) setCustomResponses:&unk_2874E6EF8];
        goto LABEL_9;
      }
    }
  }

LABEL_14:
  if (v7 < v13 + v11)
  {
    v20 = [v28 objectForKeyedSubscript:@"category"];
    [*(a1 + 40) setSentenceType:{objc_msgSend(v20, "unsignedIntegerValue")}];

    v21 = [v28 objectForKeyedSubscript:@"gender"];
    [*(a1 + 40) setGender:{objc_msgSend(v21, "unsignedIntegerValue")}];
  }

  *a4 = 1;
}

void __46__RKSentenceClassifier_en_US_classifySentence__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a2;
  v23 = [v6 setWithArray:&unk_2874E6F28];
  v8 = [*(a1 + 32) sentenceEntities];
  v9 = [v7 rangeValue];
  v11 = v10;

  v12 = [v8 subarrayWithRange:{v9, v11}];

  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
  v15 = [v13 lemma];
  v16 = [v15 isEqualToString:@"can"];

  if (v16)
  {
    v17 = 4;
    goto LABEL_8;
  }

  v18 = [v14 string];
  v19 = [v18 lowercaseString];
  if ([v19 isEqualToString:@"you"])
  {
    v20 = [v13 string];
    v21 = [v20 lowercaseString];
    v22 = [v23 containsObject:v21];

    if (v22)
    {
      v17 = 3;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v17 = 2;
LABEL_8:
  [*(a1 + 40) setSentenceType:v17];
  *a4 = 1;
}

void __46__RKSentenceClassifier_vi_VN_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_nl_NL_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __51__RKSentenceClassifier_zh_Hans_CN_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __51__RKSentenceClassifier_zh_Hant_CN_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_pt_BR_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_ms_MY_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_pl_PL_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_nl_BE_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_ru_RU_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_cs_CZ_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_sk_SK_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_fr_BE_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_ro_RO_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_da_DK_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_ca_ES_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_ja_JP_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_hr_HR_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_it_IT_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_sv_SE_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __45__RKSentenceClassifier_de_DE_analyzeSentence__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB58] set];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [&unk_2874E7168 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v10;
    do
    {
      v4 = 0;
      do
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(&unk_2874E7168);
        }

        v5 = [*(*(&v9 + 1) + 8 * v4) componentsSeparatedByString:@"/"];
        [v0 addObjectsFromArray:v5];

        ++v4;
      }

      while (v2 != v4);
      v2 = [&unk_2874E7168 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v2);
  }

  v6 = [v0 copy];
  v7 = analyzeSentence_kModalVerbs;
  analyzeSentence_kModalVerbs = v6;

  v8 = *MEMORY[0x277D85DE8];
}

void __45__RKSentenceClassifier_de_DE_analyzeSentence__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v34 = v5;
  v7 = [v5 partOfSpeech];
  LODWORD(v6) = [v6 containsObject:v7];

  if (!v6)
  {
    goto LABEL_31;
  }

  v8 = a3 - 1;
  if (a3 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) sentenceEntities];
    v10 = [v9 objectAtIndexedSubscript:a3 - 1];
  }

  v11 = *MEMORY[0x277CCA328];
  v12 = *MEMORY[0x277CCA358];
  while (1)
  {
    v13 = [v10 partOfSpeech];
    if ([v13 isEqualToString:v11])
    {

      v14 = v8 - 1;
      if (v8 < 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v15 = [v10 partOfSpeech];
    if (![v15 isEqualToString:v12])
    {
      break;
    }

    v14 = v8 - 1;

    if (v8 <= 0)
    {
LABEL_12:
      v18 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v16 = [*(a1 + 40) sentenceEntities];
    v17 = [v16 objectAtIndexedSubscript:v14];

    v8 = v14;
    v10 = v17;
  }

  if (v8 < 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = [*(a1 + 40) sentenceEntities];
    v18 = [v19 objectAtIndexedSubscript:v8 - 1];
  }

  v14 = v8;
LABEL_17:
  v20 = [v18 partOfSpeech];
  if ([v20 isEqualToString:v11])
  {

    if (v14 >= 2)
    {
      v20 = [*(a1 + 40) sentenceEntities];
      v21 = [v20 objectAtIndexedSubscript:v14 - 2];

      v18 = v21;
      goto LABEL_20;
    }
  }

  else
  {
LABEL_20:
  }

  v22 = [v10 partOfSpeech];
  v23 = *MEMORY[0x277CCA418];
  if ([v22 isEqualToString:*MEMORY[0x277CCA418]])
  {
    v24 = analyzeSentence_kModalVerbs;
    v25 = [v10 lemma];
    if ([v24 containsObject:v25])
    {

      goto LABEL_25;
    }

    v26 = analyzeSentence_kModalVerbs;
    v27 = [v10 word];
    LODWORD(v26) = [v26 containsObject:v27];

    if (v26)
    {
LABEL_25:
      if (!v18 || (v28 = *(a1 + 32), [v18 partOfSpeech], v29 = objc_claimAutoreleasedReturnValue(), LOBYTE(v28) = objc_msgSend(v28, "containsObject:", v29), v29, (v28 & 1) == 0))
      {
        v30 = [v18 partOfSpeech];
        v31 = [v30 isEqualToString:v23];

        if ((v31 & 1) == 0)
        {
          v22 = [*(a1 + 40) inversions];
          v32 = [MEMORY[0x277CCAE60] valueWithRange:{v14, a3 - v14 + 1}];
          v33 = [v22 arrayByAddingObject:v32];
          [*(a1 + 40) setInversions:v33];

          goto LABEL_29;
        }
      }
    }
  }

  else
  {
LABEL_29:
  }

LABEL_31:
}

void __46__RKSentenceClassifier_de_DE_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 objectForKeyedSubscript:@"range"];
  v7 = [v6 rangeValue];

  v8 = [*(a1 + 32) inversions];
  if ([v8 count])
  {
    v9 = [*(a1 + 32) inversions];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 rangeValue];
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 < v11 + v13)
  {
    v14 = [v16 objectForKeyedSubscript:@"category"];
    [*(a1 + 40) setSentenceType:{objc_msgSend(v14, "unsignedIntegerValue")}];

    v15 = [v16 objectForKeyedSubscript:@"gender"];
    [*(a1 + 40) setGender:{objc_msgSend(v15, "unsignedIntegerValue")}];
  }

  *a4 = 1;
}

void __46__RKSentenceClassifier_de_DE_classifySentence__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a2;
  v28 = [v6 setWithArray:MEMORY[0x277CBEBF8]];
  v8 = [*(a1 + 32) sentenceEntities];
  v9 = [v7 rangeValue];
  v11 = v10;

  v12 = [v8 subarrayWithRange:{v9, v11}];

  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
  v15 = [@"kann/kannst/kann/können/könnt" componentsSeparatedByString:@"/"];
  v16 = MEMORY[0x277CCAC30];
  v17 = [v13 string];
  v18 = [v16 predicateWithFormat:@"%@ LIKE[cd] SELF", v17];
  v19 = [v15 filteredArrayUsingPredicate:v18];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 4;
    goto LABEL_9;
  }

  v27 = a4;
  v22 = [v14 string];
  v23 = [v22 lowercaseString];
  if (([v23 isEqualToString:@"you"] & 1) == 0)
  {

    goto LABEL_7;
  }

  v24 = [v13 string];
  v25 = [v24 lowercaseString];
  v26 = [v28 containsObject:v25];

  if ((v26 & 1) == 0)
  {
LABEL_7:
    v21 = 2;
    goto LABEL_8;
  }

  v21 = 3;
LABEL_8:
  a4 = v27;
LABEL_9:
  [*(a1 + 40) setSentenceType:v21];
  *a4 = 1;
}

void __46__RKSentenceClassifier_id_ID_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

void __46__RKSentenceClassifier_hu_HU_classifySentence__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"category"];
  [*(a1 + 32) setSentenceType:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [v6 objectForKeyedSubscript:@"gender"];

  [*(a1 + 32) setGender:{objc_msgSend(v8, "unsignedIntegerValue")}];
  *a4 = 1;
}

@end