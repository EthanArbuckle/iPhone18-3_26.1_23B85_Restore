@interface SiriNLUTypesConverter
+ (id)convertAsrHypothesis:(id)a3;
+ (id)convertAsrOutputs:(id)a3;
+ (id)convertAsrTokenInformation:(id)a3;
+ (id)convertAsrTokens:(id)a3;
+ (id)convertEntityCandidate:(id)a3;
+ (id)convertEntityCandidates:(id)a3;
+ (id)convertLegacyNLContext:(id)a3;
+ (id)convertMatchingSpan:(id)a3;
+ (id)convertMatchingSpans:(id)a3;
+ (id)convertNLContext:(id)a3;
+ (id)convertParser:(id)a3;
+ (id)convertRRAnnotation:(id)a3;
+ (id)convertRRAnnotations:(id)a3;
+ (id)convertRRGroupIdentifer:(id)a3;
+ (id)convertRepetitionResult:(id)a3;
+ (id)convertRepetitionResults:(id)a3;
+ (id)convertRequest:(id)a3;
+ (id)convertRequestID:(id)a3;
+ (id)convertResponse:(id)a3;
+ (id)convertResponseStatus:(id)a3;
+ (id)convertTask:(id)a3;
+ (id)convertTasks:(id)a3;
+ (id)convertTurnContext:(id)a3;
+ (id)convertTurnInput:(id)a3;
+ (id)convertTurnInputs:(id)a3;
+ (id)convertUUID:(id)a3;
+ (id)convertUserParse:(id)a3;
+ (id)convertUserParses:(id)a3;
+ (void)convertRewrittenUtterance:(id)a3;
@end

@implementation SiriNLUTypesConverter

+ (id)convertMatchingSpans:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertMatchingSpan:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertMatchingSpan:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasLabel])
    {
      v5 = [v4 label];
    }

    else
    {
      v5 = &stru_1F487A568;
    }

    if ([v4 hasInput])
    {
      v7 = [v4 input];
    }

    else
    {
      v7 = &stru_1F487A568;
    }

    if ([v4 hasStartTokenIndex])
    {
      v8 = [v4 startTokenIndex];
    }

    else
    {
      v8 = 0;
    }

    if ([v4 hasEndTokenIndex])
    {
      v9 = [v4 endTokenIndex];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 usoGraph];

    if (v10)
    {
      v11 = [v4 usoGraph];
      v10 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v11];
    }

    v12 = 0.0;
    if ([v4 hasScore])
    {
      [v4 score];
      v12 = v13;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; [v4 matcherNamesCount] > i; ++i)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "matcherNamesAtIndex:", i)}];
      [v14 addObject:v16];
    }

    v6 = [objc_alloc(MEMORY[0x1E69D2530]) initWithLabel:v5 input:v7 startTokenIndex:v8 endTokenIndex:v9 usoGraph:v10 score:v14 matcherNames:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertLegacyNLContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [v3 renderedTexts];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = v10 == 0;

          if (!v11)
          {
            v12 = [v9 value];
            [v4 addObject:v12];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v13 = [v3 legacyContextSource];
    if (v13 - 1 >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v15 = objc_alloc(MEMORY[0x1E69D24D0]);
    v16 = [v3 dictationPrompt];
    v17 = [v3 strictPrompt];
    v18 = [v3 previousDomainName];
    v19 = [v15 initWithDictationPrompt:v16 strictPrompt:v17 previousDomainName:v18 listenAfterSpeaking:objc_msgSend(v3 renderedTexts:"listenAfterSpeaking") legacyContextSource:{v4, v14}];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E69D24D0]);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)convertNLContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D24D8]);
    v15 = [v4 systemDialogActs];
    v6 = [SiriNLUTypesSDAConverter convertSystemDialogActs:v15];
    v7 = [v4 activeTasks];
    v8 = [a1 convertTasks:v7];
    v9 = [v4 executedTasks];
    v10 = [a1 convertTasks:v9];
    v11 = [v4 salientEntities];
    v12 = [a1 convertEntityCandidates:v11];
    v13 = [v5 initWithSystemDialogActs:v6 activeTasks:v8 executedTasks:v10 salientEntities:v12];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69D24D8]);
  }

  return v13;
}

+ (id)convertTurnContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2570]);
    v6 = [v4 nlContext];
    v7 = [a1 convertNLContext:v6];
    v8 = [v4 legacyNlContext];
    v9 = [a1 convertLegacyNLContext:v8];
    v10 = [v5 initWithNLContext:v7 legacyNLContext:v9];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69D2570]);
  }

  return v10;
}

+ (id)convertRepetitionResults:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertRepetitionResult:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertRepetitionResult:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D2500]) initWithAsrHypothesisIndex:objc_msgSend(v3 repetitionType:{"asrHypothesisIndex"), objc_msgSend(v3, "repetitionType")}];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D2500]);
  }

  v5 = v4;

  return v5;
}

+ (id)convertUserParses:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertUserParse:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUserParse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2598]);
    v6 = [v4 userDialogActs];
    v7 = [SiriNLUTypesUDAConverter convertUserDialogActs:v6];
    [v4 probability];
    v9 = v8;
    v10 = [v4 idA];
    v11 = [SiriNLUTypesConverter convertUUID:v10];
    v12 = [v4 parserId];
    v13 = [v4 repetitionResult];
    v14 = [a1 convertRepetitionResult:v13];
    [v4 comparableProbability];
    v16 = [v5 initWithUserDialogActs:v7 probability:v11 nsUUID:v12 parserId:v14 repetitionResult:v9 comparableProbability:v15];

    v17 = [v4 parser];
    v18 = [SiriNLUTypesConverter convertParser:v17];
    [v16 setParser:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)convertParser:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D24E0]);
    v5 = [v3 algorithm];
    if (v5 < 3)
    {
      [v4 setAlgorithmType:v5];
    }

    v6 = [v3 parserId];
    if (v6 <= 7)
    {
      [v4 setParserIdentifier:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertEntityCandidates:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertEntityCandidate:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertEntityCandidate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 entity];

    if (v6)
    {
      v7 = [v5 entity];
      v22 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v7];
    }

    else
    {
      v22 = 0;
    }

    v9 = 0.0;
    if ([v5 hasScore])
    {
      v10 = [v5 score];
      [v10 value];
      v9 = v11;
    }

    v12 = objc_alloc(MEMORY[0x1E69D24C8]);
    v21 = [v5 entityId];
    v13 = [v21 value];
    v14 = [v5 appBundleId];
    v15 = [v14 value];
    v16 = [v5 groupId];
    v17 = [a1 convertRRGroupIdentifer:v16];
    v18 = [v5 annotations];
    v19 = [a1 convertRRAnnotations:v18];
    v8 = [v12 initWithEntity:v22 score:v13 entityId:v15 appBundleId:v17 groupId:v19 annotations:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)convertRRGroupIdentifer:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D24F0]);
    v5 = [v3 groupId];
    v6 = [v5 value];
    v7 = [v4 initWithGroupId:v6 seq:{objc_msgSend(v3, "seq")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertRRAnnotations:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertRRAnnotation:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertRRAnnotation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D24E8]);
    v5 = [v3 key];
    v6 = [v5 value];
    v7 = [v3 value];
    v8 = [v7 value];
    v9 = [v4 initWithKey:v6 value:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertTasks:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertTask:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertTask:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasTask])
    {
      v5 = [v4 task];
      v6 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v5];
    }

    else
    {
      v6 = 0;
    }

    v8 = 0.0;
    if ([v4 hasScore])
    {
      v9 = [v4 score];
      [v9 value];
      v8 = v10;
    }

    v7 = [objc_alloc(MEMORY[0x1E69D2568]) initWithTask:v6 score:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)convertRewrittenUtterance:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = loggerContext(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "+[SiriNLUTypesConverter convertRewrittenUtterance:]";
    _os_log_impl(&dword_1C8774000, v3, OS_LOG_TYPE_INFO, "%s [WARN]: RewrittenUtterance was added on Nov 9 It doesn't have a hand-crafted SIRINLU equivalent", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)convertAsrTokens:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertAsrTokenInformation:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertAsrTokenInformation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D24B8]);
    v13 = [v3 postItnText];
    v5 = [v3 phoneSequence];
    v6 = [v3 ipaPhoneSequence];
    v7 = [v3 addSpaceAfter];
    v8 = [v3 removeSpaceAfter];
    v9 = [v3 removeSpaceBefore];
    [v3 confidenceScore];
    v11 = [v4 initWithPostITNText:v13 phoneSequence:v5 ipaPhoneSequence:v6 addSpaceAfter:v7 removeSpaceAfter:v8 removeSpaceBefore:v9 confidenceScore:v10 beginIndex:__PAIR64__(objc_msgSend(v3 endIndex:"endIndex") startMilliSeconds:objc_msgSend(v3 endMilliSeconds:{"beginIndex")), __PAIR64__(objc_msgSend(v3, "endMilliSeconds"), objc_msgSend(v3, "startMilliSeconds"))}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)convertAsrOutputs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertAsrHypothesis:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertAsrHypothesis:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D24B0]);
    v6 = [v4 utterance];
    [v4 probability];
    v8 = v7;
    v9 = [v4 asrTokens];
    v10 = [a1 convertAsrTokens:v9];
    v11 = [v4 idA];
    v12 = [a1 convertUUID:v11];
    v13 = [v5 initWithUtterance:v6 probability:v10 asrTokens:v12 uuid:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)convertTurnInputs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1 convertTurnInput:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertTurnInput:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 hasLocale])
    {
      v6 = [v5 locale];
    }

    else
    {
      v8 = loggerContext(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v18 = 136315138;
        v19 = "+[SiriNLUTypesConverter convertTurnInput:]";
        _os_log_impl(&dword_1C8774000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: Not expecting nil locale, defaulting to en_US", &v18, 0xCu);
      }

      v6 = @"en_US";
    }

    v9 = loggerContext(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "+[SiriNLUTypesConverter convertTurnInput:]";
      _os_log_impl(&dword_1C8774000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: SIRINLUEXTERNALTurnInput doesn't have EntityCandidates", &v18, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x1E69D2578]);
    v11 = [v5 asrOutputs];
    v12 = [a1 convertAsrOutputs:v11];
    v13 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v14 = [v5 turnContext];
    v15 = [a1 convertTurnContext:v14];
    v7 = [v10 initWithAsrOutputs:v12 salientEntities:v13 turnContext:v15 locale:v6 tapToEdit:objc_msgSend(v5 startTimestamp:{"tapToEdit"), objc_msgSend(v5, "startTimestamp")}];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69D2578]);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertRequestID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2510]);
    v5 = [v3 idA];
    v6 = [v3 nluRequestId];
    v7 = [SiriNLUTypesConverter convertUUID:v6];
    v8 = [v3 connectionId];
    v9 = [v4 initWithIdAsString:v5 nluRequestId:v7 connectionID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v7[1] = [v3 highInt];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertResponseStatus:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    if (v5 > 300)
    {
      if (v5 <= 302)
      {
        if (v5 == 301)
        {
          v13 = objc_alloc(MEMORY[0x1E69D2520]);
          v7 = [v4 descriptionA];
          v8 = [v13 initStatusCode:301 statusDescription:v7];
        }

        else
        {
          v9 = objc_alloc(MEMORY[0x1E69D2520]);
          v7 = [v4 descriptionA];
          v8 = [v9 initStatusCode:302 statusDescription:v7];
        }

        goto LABEL_20;
      }

      if (v5 == 303)
      {
        v15 = objc_alloc(MEMORY[0x1E69D2520]);
        v7 = [v4 descriptionA];
        v8 = [v15 initStatusCode:303 statusDescription:v7];
        goto LABEL_20;
      }

      if (v5 == 500)
      {
        v11 = objc_alloc(MEMORY[0x1E69D2520]);
        v7 = [v4 descriptionA];
        v8 = [v11 initStatusCode:500 statusDescription:v7];
        goto LABEL_20;
      }
    }

    else if (v5 > 100)
    {
      if (v5 == 101)
      {
        v14 = objc_alloc(MEMORY[0x1E69D2520]);
        v7 = [v4 descriptionA];
        v8 = [v14 initStatusCode:101 statusDescription:v7];
        goto LABEL_20;
      }

      if (v5 == 300)
      {
        v10 = objc_alloc(MEMORY[0x1E69D2520]);
        v7 = [v4 descriptionA];
        v8 = [v10 initStatusCode:300 statusDescription:v7];
        goto LABEL_20;
      }
    }

    else
    {
      if (!v5)
      {
        v12 = objc_alloc(MEMORY[0x1E69D2520]);
        v7 = [v4 descriptionA];
        v8 = [v12 initStatusCode:0 statusDescription:v7];
        goto LABEL_20;
      }

      if (v5 == 100)
      {
        v6 = objc_alloc(MEMORY[0x1E69D2520]);
        v7 = [v4 descriptionA];
        v8 = [v6 initStatusCode:100 statusDescription:v7];
LABEL_20:
        v16 = v8;

        goto LABEL_25;
      }
    }

    v17 = loggerContext(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "+[SiriNLUTypesConverter convertResponseStatus:]";
      v22 = 1024;
      v23 = [v4 code];
      _os_log_impl(&dword_1C8774000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Unknown status code: %d", &v20, 0x12u);
    }
  }

  v16 = 0;
LABEL_25:

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)convertResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2518]);
    v6 = [v4 requestId];
    v7 = [a1 convertRequestID:v6];
    v8 = [v4 parses];
    v9 = [SiriNLUTypesConverter convertUserParses:v8];
    v10 = [v4 repetitionResults];
    v11 = [SiriNLUTypesConverter convertRepetitionResults:v10];
    v12 = [v5 initWithRequestId:v7 parses:v9 repetitionResults:v11];

    v13 = [v4 responseStatus];
    v14 = [a1 convertResponseStatus:v13];
    [v12 setResponseStatus:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)convertRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2508]);
    v6 = [v4 requestId];
    v7 = [a1 convertRequestID:v6];
    v8 = [v4 currentTurnInput];
    v9 = [a1 convertTurnInput:v8];
    v10 = [v4 previousTurnInputs];
    v11 = [a1 convertTurnInputs:v10];
    v12 = [v5 initWithRequestId:v7 currentTurnInput:v9 previousTurnInputs:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end