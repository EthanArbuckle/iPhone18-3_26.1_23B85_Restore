@interface RKMessageClassifier
+ (BOOL)questionClassification:(id)a3 withLanguageIdentifier:(id)a4;
+ (id)messageClassification:(id)a3 withLanguageIdentifier:(id)a4 conversationTurns:(id)a5;
@end

@implementation RKMessageClassifier

+ (id)messageClassification:(id)a3 withLanguageIdentifier:(id)a4 conversationTurns:(id)a5
{
  v80[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v55 = a4;
  v54 = a5;
  v59 = v7;
  if ([v7 length])
  {
    v56 = objc_opt_new();
    v8 = [MEMORY[0x277CBEB18] array];
    context = objc_autoreleasePoolPush();
    v9 = +[RKUtilities getDeviceModel];
    v10 = [RKUtilities isDeviceSupportedForLSTMBasedLanguageIdentification:v9];
    v11 = objc_alloc(MEMORY[0x277CCAAE8]);
    v12 = *MEMORY[0x277CCA3E8];
    if (v10)
    {
      v80[0] = *MEMORY[0x277CCA3E8];
      v13 = v80;
      v14 = 536870916;
    }

    else
    {
      v79 = *MEMORY[0x277CCA3E8];
      v13 = &v79;
      v14 = 4;
    }

    v13[1] = *MEMORY[0x277CCA3D8];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v16 = [v11 initWithTagSchemes:v15 options:v14];

    [v16 setString:v7];
    v17 = [v16 string];
    v18 = [v17 length];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __86__RKMessageClassifier_messageClassification_withLanguageIdentifier_conversationTurns___block_invoke;
    v70[3] = &unk_279B10BE8;
    v19 = v8;
    v71 = v19;
    [v16 enumerateTagsInRange:0 scheme:v18 options:v12 usingBlock:{4, v70}];

    if ([RKUtilities isLanguageSupportedByNSLinguisticTaggerForLanguageIdentification:v55])
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [v21 addObject:v7];
      *buf = 0;
      v74 = buf;
      v75 = 0x3032000000;
      v76 = __Block_byref_object_copy__5;
      v77 = __Block_byref_object_dispose__5;
      v78 = 0;
      if ([v54 count])
      {
        v22 = [v54 objectAtIndexedSubscript:0];
        v23 = [v22 timestamp];
        v24 = *(v74 + 5);
        *(v74 + 5) = v23;
      }

      else
      {
        v26 = [MEMORY[0x277CBEAA8] date];
        v22 = *(v74 + 5);
        *(v74 + 5) = v26;
      }

      v69[0] = 0;
      v69[1] = v69;
      v69[2] = 0x2020000000;
      v69[3] = 0;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __86__RKMessageClassifier_messageClassification_withLanguageIdentifier_conversationTurns___block_invoke_2;
      v64[3] = &unk_279B10C10;
      v67 = buf;
      v68 = v69;
      v27 = v21;
      v65 = v27;
      v28 = v20;
      v66 = v28;
      [v54 enumerateObjectsWithOptions:0 usingBlock:v64];
      v29 = [v28 componentsJoinedByString:@" "];
      v30 = [v7 length];
      if ([v7 isEqualToString:&stru_2874A9C90])
      {
        v25 = @"und";
      }

      else
      {
        v25 = [v16 languageOfRange:0 withAdditionalContext:v30 withPreferredLanguages:{v29, preferredLanguages}];
      }

      _Block_object_dispose(v69, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = @"und";
    }

    objc_autoreleasePoolPop(context);
    v31 = v25;
    v52 = v31;
    if (v31)
    {
      if (([(__CFString *)v31 isEqualToString:@"und"]& 1) != 0 || ([RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v55], v32 = objc_claimAutoreleasedReturnValue(), v33 = [(__CFString *)v52 isEqualToString:v32], v32, v34 = v52, v33))
      {
        v34 = v55;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = [MEMORY[0x277CBEB18] array];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    contexta = v19;
    v36 = [contexta countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v36)
    {
      v37 = *v61;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(contexta);
          }

          v39 = [*(*(&v60 + 1) + 8 * i) rangeValue];
          v41 = [v59 substringWithRange:{v39, v40}];
          if (v41)
          {
            v42 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v34];
            v43 = [RKSentenceClassifier preProcessTextMessageForLinguisticTagger:v41 withLocale:v42];
            v44 = [RKSentenceClassifier sentenceClassification:v43 withLanguageIdentifier:v34 options:1];
            [v35 addObject:v44];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            [RKMessageClassifier messageClassification:buf withLanguageIdentifier:v59 conversationTurns:&buf[4]];
          }
        }

        v36 = [contexta countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v36);
    }

    v45 = [v35 sortedArrayUsingComparator:&__block_literal_global_10];
    if ([v45 count])
    {
      v46 = [v45 objectAtIndexedSubscript:0];

      v56 = v46;
    }

    v47 = [v35 valueForKeyPath:@"@unionOfObjects.taggedText"];
    v48 = [v47 componentsJoinedByString:@" "];
    [v56 setTaggedText:v48];

    v49 = [v35 valueForKeyPath:@"@max.isSensitive"];
    [v56 setSensitive:{objc_msgSend(v49, "BOOLValue")}];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[RKMessageClassifier messageClassification:withLanguageIdentifier:conversationTurns:];
    }

    v56 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];

  return v56;
}

void __86__RKMessageClassifier_messageClassification_withLanguageIdentifier_conversationTurns___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [MEMORY[0x277CCAE60] valueWithRange:{a5, a6}];
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __86__RKMessageClassifier_messageClassification_withLanguageIdentifier_conversationTurns___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = a2;
  v6 = *(*(a1[6] + 8) + 40);
  v7 = [v20 timestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [v20 timestamp];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v9 > 0x12C || *(*(a1[7] + 8) + 24) >= 0x33uLL)
  {
    *a4 = 1;
    goto LABEL_4;
  }

  v13 = [v20 text];
  if ([v13 length])
  {
    v14 = a1[4];
    v15 = [v20 text];
    LOBYTE(v14) = [v14 containsObject:v15];

    if (v14)
    {
      goto LABEL_4;
    }

    v16 = a1[5];
    v17 = [v20 text];
    [v16 addObject:v17];

    v18 = a1[4];
    v19 = [v20 text];
    [v18 addObject:v19];

    v13 = [v20 text];
    *(*(a1[7] + 8) + 24) += [v13 length];
  }

LABEL_4:
}

uint64_t __86__RKMessageClassifier_messageClassification_withLanguageIdentifier_conversationTurns___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sentenceType];
  if (v5 > 31)
  {
    if ((v5 - 32) < 3 || v5 == 36)
    {
      v6 = 2;
      goto LABEL_5;
    }

LABEL_22:
    v6 = 1;
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = 4;
    goto LABEL_5;
  }

  if (v5 != 6)
  {
    if (v5 == 31)
    {
      v6 = 3;
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v6 = 0;
LABEL_5:
  v7 = [v4 sentenceType];

  if (v7 > 31)
  {
    if ((v7 - 32) < 3 || v7 == 36)
    {
      v8 = 2;
      goto LABEL_9;
    }

LABEL_23:
    v8 = 1;
    goto LABEL_9;
  }

  if (!v7)
  {
    v8 = 4;
    goto LABEL_9;
  }

  if (v7 != 6)
  {
    if (v7 == 31)
    {
      v8 = 3;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v8 = 0;
LABEL_9:
  v9 = v6 >= v8;
  v10 = v6 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

+ (BOOL)questionClassification:(id)a3 withLanguageIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [RKMessageClassifier messageClassification:v5 withLanguageIdentifier:v6];
  v9 = [v8 language];
  v10 = [RKUtilities isLanguageSupportedBySmartPunctuation:v9];

  if (v10 && ((v11 = [v8 sentenceType], (v11 - 7) < 0x18) || (v11 - 2) <= 2))
  {
    v12 = [v8 matchedRanges];
    v13 = [v12 count];

    if (v13)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = [v8 matchedRanges];
      v13 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v15 = *v20;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v14);
            }

            if (![*(*(&v19 + 1) + 8 * i) range])
            {
              LOBYTE(v13) = 1;
              goto LABEL_14;
            }
          }

          v13 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x277D85DE8];
  return v10 & v13;
}

+ (void)messageClassification:(uint8_t *)buf withLanguageIdentifier:(uint64_t)a2 conversationTurns:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Sentence Ranges cannot be invalid: %@", buf, 0xCu);
}

@end