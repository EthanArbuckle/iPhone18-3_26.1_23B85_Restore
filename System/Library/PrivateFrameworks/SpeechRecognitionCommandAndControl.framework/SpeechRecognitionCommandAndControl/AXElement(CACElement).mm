@interface AXElement(CACElement)
+ (id)wordsFromString:()CACElement;
+ (uint64_t)_trimMutableString:()CACElement toMaxWordCount:;
+ (uint64_t)doesArrayOfWords:()CACElement containArrayOfArrayWords:;
- (id)_combinationsFromTitle:()CACElement isCarPlayConnected:;
- (id)cacTrailingValue;
- (id)elementForVoiceControlTextEditing;
- (id)englishFunctionWords;
- (id)recognitionStrings;
- (id)textOperationsOperator;
- (uint64_t)cacActivate;
- (uint64_t)isVisuallyEqual:()CACElement;
@end

@implementation AXElement(CACElement)

+ (id)wordsFromString:()CACElement
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = +[CACPreferences sharedPreferences];
  v6 = CFLocaleCreate(0, [v5 bestLocaleIdentifier]);

  v12.length = [(__CFString *)v3 length];
  v12.location = 0;
  v7 = CFStringTokenizerCreate(0, v3, v12, 0, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  while (CFStringTokenizerAdvanceToNextToken(v7))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v7);
    if (CurrentTokenRange.location != -1)
    {
      v9 = [(__CFString *)v3 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
      [v4 addObject:v9];
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

+ (uint64_t)_trimMutableString:()CACElement toMaxWordCount:
{
  v5 = a3;
  v6 = +[CACPreferences sharedPreferences];
  v7 = CFLocaleCreate(0, [v6 bestLocaleIdentifier]);

  v13.length = [(__CFString *)v5 length];
  v13.location = 0;
  v8 = CFStringTokenizerCreate(0, v5, v13, 0, 0);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!CFStringTokenizerAdvanceToNextToken(v8))
  {
LABEL_8:
    v11 = 0;
    if (!v8)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRelease(v8);
    goto LABEL_10;
  }

  v9 = 0;
  while (1)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v8);
    if (CurrentTokenRange.location != -1 && v9 >= a4)
    {
      break;
    }

    ++v9;
    if (!CFStringTokenizerAdvanceToNextToken(v8))
    {
      goto LABEL_8;
    }
  }

  [(__CFString *)v5 deleteCharactersInRange:CurrentTokenRange.location + CurrentTokenRange.length, [(__CFString *)v5 length]- (CurrentTokenRange.location + CurrentTokenRange.length)];
  v11 = 1;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

+ (uint64_t)doesArrayOfWords:()CACElement containArrayOfArrayWords:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = *v31;
    do
    {
      v11 = 0;
      v24 = v8;
      v27 = v7;
      do
      {
        v12 = v10;
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * v11);
        v14 = [v5 count];
        v15 = [v13 count];
        v16 = v14 - v15;
        if (v14 <= v15)
        {
          v10 = v12;
        }

        else
        {
          v17 = v15;
          v10 = v8;
          if (v15 >= 1)
          {
            v26 = v12;
            v18 = 0;
            v29 = v16 + 1;
            do
            {
              v19 = 0;
              while (1)
              {
                v20 = [v5 objectAtIndexedSubscript:v18 + v19];
                v21 = [v13 objectAtIndexedSubscript:v19];
                v22 = [v20 isEqualToString:v21];

                if ((v22 & 1) == 0)
                {
                  break;
                }

                if (v17 == ++v19)
                {
                  v10 = v8;
                  goto LABEL_16;
                }
              }

              ++v18;
            }

            while (v18 != v29);
            v10 = v26;
LABEL_16:
            v9 = v25;
            v7 = v27;
          }
        }

        ++v8;
        ++v11;
      }

      while (v11 != v7);
      v8 = v24 + v7;
      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)recognitionStrings
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [a1 userInputLabels];
  v3 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v42;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v8 = +[CACDisplayManager sharedManager];
        v9 = a1;
        v10 = [a1 _combinationsFromTitle:v7 isCarPlayConnected:{objc_msgSend(v8, "carPlayConnected")}];

        v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v37 + 1) + 8 * j);
              if ([v15 length])
              {
                [v2 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        a1 = v9;
      }

      v4 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v4);
  }

  if ([a1 hasAnyTraits:*MEMORY[0x277CE6E08]])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = [a1 uiElement];
    v17 = [v16 stringWithAXAttribute:5043];
    v18 = +[CACDisplayManager sharedManager];
    v19 = [a1 _combinationsFromTitle:v17 isCarPlayConnected:{objc_msgSend(v18, "carPlayConnected")}];

    v20 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * k);
          if ([v24 length] && (!objc_msgSend(v2, "count") || (objc_msgSend(v2, "containsObject:", v24) & 1) == 0))
          {
            [v2 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v21);
    }
  }

  if (![v2 count] && objc_msgSend(a1, "eligibleForIconVision"))
  {
    v25 = [a1 uiElement];
    v26 = [v25 arrayWithAXAttribute:2315];

    v27 = [MEMORY[0x277CE6AB8] sharedInstance];
    v28 = [v27 classifyImages:v26 withTimeout:0.5];

    if ([v28 length])
    {
      [v2 addObject:v28];
    }
  }

  if ([a1 hasAnyTraits:*MEMORY[0x277CE6DF8]])
  {
    v29 = [a1 uiElement];
    v30 = [v29 arrayWithAXAttribute:2239];
    [v2 addObjectsFromArray:v30];
  }

  return v2;
}

- (id)_combinationsFromTitle:()CACElement isCarPlayConnected:
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D79890] shared];
  v6 = [v5 carPlayDebugOverlayUIEnabled];

  if (!v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CBEB40] orderedSet];
    v12 = &stru_287BD8610;
    if (v4)
    {
      v12 = v4;
    }

    v13 = v12;

    v14 = +[CACPreferences sharedPreferences];
    v15 = [v14 bestLocaleIdentifier];

    if (![CACLocaleUtilities isSameLangaugeFromLocaleIdentifier:v15 secondLocaleIdentifier:@"en"])
    {
      v37 = [MEMORY[0x277CCAB68] stringWithString:v13];
      v38 = 4;
      do
      {
        [MEMORY[0x277CE6BA0] _trimMutableString:v37 toMaxWordCount:v38];
        v39 = [v37 copy];
        [v11 addObject:v39];

        --v38;
      }

      while (v38);
      goto LABEL_35;
    }

    v49 = v15;
    v50 = v13;
    v51 = v10;
    v16 = [(__CFString *)v13 cac_stringByPreparingForAX];
    v17 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v18 = [v16 componentsSeparatedByCharactersInSet:v17];

    v55 = v18;
    v19 = [v18 count];
    v48 = v16;
    [v11 addObject:v16];
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = 3;
      if (a4)
      {
        v21 = v19;
      }

      v53 = v21;
      v54 = v19;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v22 = MEMORY[0x277CCAB68];
        v23 = v19 - v20;
        v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v20, v19 - v20}];
        v25 = [v18 objectsAtIndexes:v24];
        v26 = [v25 componentsJoinedByString:@" "];
        v27 = [v22 stringWithString:v26];

        if (v20)
        {
          if (!a4)
          {
            break;
          }
        }

        v28 = [v27 copy];
        [v11 addObject:v28];

        if (v23 >= v53)
        {
          v23 = v53;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          do
          {
            [MEMORY[0x277CE6BA0] _trimMutableString:v27 toMaxWordCount:v23];
            v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            v30 = [v27 rangeOfCharacterFromSet:v29];

            if (v30 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v31 = [a1 englishFunctionWords];
              v32 = [v27 lowercaseString];
              v33 = [v31 containsObject:v32];

              if (v33)
              {
                continue;
              }
            }

            v34 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            v35 = [v27 stringByTrimmingCharactersInSet:v34];
            [v11 addObject:v35];
          }

          while (v23-- > 0);
        }

        objc_autoreleasePoolPop(context);
        ++v20;
        v19 = v54;
        if (v20 == v54)
        {
          goto LABEL_28;
        }
      }

      objc_autoreleasePoolPop(context);
      v19 = v54;
    }

LABEL_28:
    v37 = v48;
    v40 = [v48 componentsSeparatedByString:@" "];
    v41 = [v40 firstObject];

    v42 = [MEMORY[0x277CBEB40] orderedSet];
    if ([v11 containsObject:v41])
    {
      [v42 addObject:v41];
      [v42 unionOrderedSet:v11];
      v43 = v11;
      v11 = v42;
    }

    else
    {
      if (v19 < 2 || [v18 count] < 2)
      {
        v13 = v50;
        v10 = v51;
        v15 = v49;
        goto LABEL_34;
      }

      v45 = [v48 componentsSeparatedByString:@" "];
      v46 = [v45 subarrayWithRange:{0, 2}];
      v43 = [v46 componentsJoinedByString:@" "];

      if ([v11 containsObject:v43])
      {
        [v42 addObject:v43];
        [v42 unionOrderedSet:v11];
        v47 = v42;

        v11 = v47;
      }
    }

    v13 = v50;
    v10 = v51;
    v15 = v49;

LABEL_34:
LABEL_35:

    v9 = [v11 copy];
    objc_autoreleasePoolPop(v10);

    goto LABEL_36;
  }

  v7 = MEMORY[0x277CBEB70];
  if (v4)
  {
    v58[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v9 = [v7 orderedSetWithArray:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB70] orderedSet];
  }

LABEL_36:

  return v9;
}

- (id)englishFunctionWords
{
  if (englishFunctionWords_onceToken != -1)
  {
    [AXElement(CACElement) englishFunctionWords];
  }

  v1 = englishFunctionWords___wordSet;

  return v1;
}

- (uint64_t)isVisuallyEqual:()CACElement
{
  v4 = a3;
  if ([v4 isEqual:v4])
  {
    v5 = [a1 userInputLabels];
    v6 = [v4 userInputLabels];
    if ([v5 isEqualToArray:v6] && (v5 || !v6) && (!v5 || v6))
    {
      [a1 visibleFrame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v4 visibleFrame];
      v23.origin.x = v15;
      v23.origin.y = v16;
      v23.size.width = v17;
      v23.size.height = v18;
      v22.origin.x = v8;
      v22.origin.y = v10;
      v22.size.width = v12;
      v22.size.height = v14;
      if (CGRectEqualToRect(v22, v23))
      {
        v19 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v20 = CACLogElementEvaluation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [AXElement(CACElement) isVisuallyEqual:v20];
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

  v19 = 0;
LABEL_15:

  return v19;
}

- (id)elementForVoiceControlTextEditing
{
  v2 = [a1 elementForTextInsertionAndDeletion];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 firstResponder];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)cacActivate
{
  v2 = [MEMORY[0x277D79898] shared];
  [v2 axPress];

  return [a1 press];
}

- (id)textOperationsOperator
{
  v1 = a1;
  if ([v1 hasWebContent])
  {
    v2 = [v1 elementForAttribute:2011];

    v1 = v2;
  }

  return v1;
}

- (id)cacTrailingValue
{
  [a1 updateCache:2006];
  v2 = [a1 value];
  v3 = [v2 length];
  if (v3 >= 0xC9)
  {
    v4 = [v2 substringWithRange:{v3 - 200, 200}];

    v2 = v4;
  }

  return v2;
}

- (void)isVisuallyEqual:()CACElement .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 0;
  _os_log_debug_impl(&dword_26B354000, log, OS_LOG_TYPE_DEBUG, "Discovered new critera for object. VisibleFrame: %lu", &v1, 0xCu);
}

@end