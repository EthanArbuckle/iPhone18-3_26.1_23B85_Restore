@interface SiriNLUTypesConverter
+ (id)convertAsrHypothesis:(id)hypothesis;
+ (id)convertAsrOutputs:(id)outputs;
+ (id)convertAsrTokenInformation:(id)information;
+ (id)convertAsrTokens:(id)tokens;
+ (id)convertEntityCandidate:(id)candidate;
+ (id)convertEntityCandidates:(id)candidates;
+ (id)convertLegacyNLContext:(id)context;
+ (id)convertMatchingSpan:(id)span;
+ (id)convertMatchingSpans:(id)spans;
+ (id)convertNLContext:(id)context;
+ (id)convertParser:(id)parser;
+ (id)convertRRAnnotation:(id)annotation;
+ (id)convertRRAnnotations:(id)annotations;
+ (id)convertRRGroupIdentifer:(id)identifer;
+ (id)convertRepetitionResult:(id)result;
+ (id)convertRepetitionResults:(id)results;
+ (id)convertRequest:(id)request;
+ (id)convertRequestID:(id)d;
+ (id)convertResponse:(id)response;
+ (id)convertResponseStatus:(id)status;
+ (id)convertTask:(id)task;
+ (id)convertTasks:(id)tasks;
+ (id)convertTurnContext:(id)context;
+ (id)convertTurnInput:(id)input;
+ (id)convertTurnInputs:(id)inputs;
+ (id)convertUUID:(id)d;
+ (id)convertUserParse:(id)parse;
+ (id)convertUserParses:(id)parses;
+ (void)convertRewrittenUtterance:(id)utterance;
@end

@implementation SiriNLUTypesConverter

+ (id)convertMatchingSpans:(id)spans
{
  v18 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (spansCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = spansCopy;
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

          v10 = [self convertMatchingSpan:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertMatchingSpan:(id)span
{
  spanCopy = span;
  v4 = spanCopy;
  if (spanCopy)
  {
    if ([spanCopy hasLabel])
    {
      label = [v4 label];
    }

    else
    {
      label = &stru_1F487A568;
    }

    if ([v4 hasInput])
    {
      input = [v4 input];
    }

    else
    {
      input = &stru_1F487A568;
    }

    if ([v4 hasStartTokenIndex])
    {
      startTokenIndex = [v4 startTokenIndex];
    }

    else
    {
      startTokenIndex = 0;
    }

    if ([v4 hasEndTokenIndex])
    {
      endTokenIndex = [v4 endTokenIndex];
    }

    else
    {
      endTokenIndex = 0;
    }

    usoGraph = [v4 usoGraph];

    if (usoGraph)
    {
      usoGraph2 = [v4 usoGraph];
      usoGraph = [SiriNLUTypesUsoGraphConverter convertUsoGraph:usoGraph2];
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

    v6 = [objc_alloc(MEMORY[0x1E69D2530]) initWithLabel:label input:input startTokenIndex:startTokenIndex endTokenIndex:endTokenIndex usoGraph:usoGraph score:v14 matcherNames:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)convertLegacyNLContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (contextCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    renderedTexts = [contextCopy renderedTexts];
    v6 = [renderedTexts countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(renderedTexts);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          value = [v9 value];
          v11 = value == 0;

          if (!v11)
          {
            value2 = [v9 value];
            [v4 addObject:value2];
          }
        }

        v6 = [renderedTexts countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    legacyContextSource = [contextCopy legacyContextSource];
    if (legacyContextSource - 1 >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = legacyContextSource;
    }

    v15 = objc_alloc(MEMORY[0x1E69D24D0]);
    dictationPrompt = [contextCopy dictationPrompt];
    strictPrompt = [contextCopy strictPrompt];
    previousDomainName = [contextCopy previousDomainName];
    v19 = [v15 initWithDictationPrompt:dictationPrompt strictPrompt:strictPrompt previousDomainName:previousDomainName listenAfterSpeaking:objc_msgSend(contextCopy renderedTexts:"listenAfterSpeaking") legacyContextSource:{v4, v14}];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E69D24D0]);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)convertNLContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D24D8]);
    systemDialogActs = [contextCopy systemDialogActs];
    v6 = [SiriNLUTypesSDAConverter convertSystemDialogActs:systemDialogActs];
    activeTasks = [contextCopy activeTasks];
    v8 = [self convertTasks:activeTasks];
    executedTasks = [contextCopy executedTasks];
    v10 = [self convertTasks:executedTasks];
    salientEntities = [contextCopy salientEntities];
    v12 = [self convertEntityCandidates:salientEntities];
    v13 = [v5 initWithSystemDialogActs:v6 activeTasks:v8 executedTasks:v10 salientEntities:v12];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69D24D8]);
  }

  return v13;
}

+ (id)convertTurnContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2570]);
    nlContext = [contextCopy nlContext];
    v7 = [self convertNLContext:nlContext];
    legacyNlContext = [contextCopy legacyNlContext];
    v9 = [self convertLegacyNLContext:legacyNlContext];
    v10 = [v5 initWithNLContext:v7 legacyNLContext:v9];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69D2570]);
  }

  return v10;
}

+ (id)convertRepetitionResults:(id)results
{
  v18 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (resultsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = resultsCopy;
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

          v10 = [self convertRepetitionResult:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertRepetitionResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D2500]) initWithAsrHypothesisIndex:objc_msgSend(resultCopy repetitionType:{"asrHypothesisIndex"), objc_msgSend(resultCopy, "repetitionType")}];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D2500]);
  }

  v5 = v4;

  return v5;
}

+ (id)convertUserParses:(id)parses
{
  v18 = *MEMORY[0x1E69E9840];
  parsesCopy = parses;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (parsesCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = parsesCopy;
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

          v10 = [self convertUserParse:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUserParse:(id)parse
{
  parseCopy = parse;
  if (parseCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2598]);
    userDialogActs = [parseCopy userDialogActs];
    v7 = [SiriNLUTypesUDAConverter convertUserDialogActs:userDialogActs];
    [parseCopy probability];
    v9 = v8;
    v10 = [parseCopy idA];
    v11 = [SiriNLUTypesConverter convertUUID:v10];
    parserId = [parseCopy parserId];
    repetitionResult = [parseCopy repetitionResult];
    v14 = [self convertRepetitionResult:repetitionResult];
    [parseCopy comparableProbability];
    v16 = [v5 initWithUserDialogActs:v7 probability:v11 nsUUID:parserId parserId:v14 repetitionResult:v9 comparableProbability:v15];

    parser = [parseCopy parser];
    v18 = [SiriNLUTypesConverter convertParser:parser];
    [v16 setParser:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)convertParser:(id)parser
{
  parserCopy = parser;
  if (parserCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D24E0]);
    algorithm = [parserCopy algorithm];
    if (algorithm < 3)
    {
      [v4 setAlgorithmType:algorithm];
    }

    parserId = [parserCopy parserId];
    if (parserId <= 7)
    {
      [v4 setParserIdentifier:parserId];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertEntityCandidates:(id)candidates
{
  v18 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (candidatesCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = candidatesCopy;
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

          v10 = [self convertEntityCandidate:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertEntityCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = candidateCopy;
  if (candidateCopy)
  {
    entity = [candidateCopy entity];

    if (entity)
    {
      entity2 = [v5 entity];
      v22 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:entity2];
    }

    else
    {
      v22 = 0;
    }

    v9 = 0.0;
    if ([v5 hasScore])
    {
      score = [v5 score];
      [score value];
      v9 = v11;
    }

    v12 = objc_alloc(MEMORY[0x1E69D24C8]);
    entityId = [v5 entityId];
    value = [entityId value];
    appBundleId = [v5 appBundleId];
    value2 = [appBundleId value];
    groupId = [v5 groupId];
    v17 = [self convertRRGroupIdentifer:groupId];
    annotations = [v5 annotations];
    v19 = [self convertRRAnnotations:annotations];
    v8 = [v12 initWithEntity:v22 score:value entityId:value2 appBundleId:v17 groupId:v19 annotations:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)convertRRGroupIdentifer:(id)identifer
{
  identiferCopy = identifer;
  if (identiferCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D24F0]);
    groupId = [identiferCopy groupId];
    value = [groupId value];
    v7 = [v4 initWithGroupId:value seq:{objc_msgSend(identiferCopy, "seq")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertRRAnnotations:(id)annotations
{
  v18 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  if (annotationsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = annotationsCopy;
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

          v10 = [self convertRRAnnotation:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertRRAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (annotationCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D24E8]);
    v5 = [annotationCopy key];
    value = [v5 value];
    value2 = [annotationCopy value];
    v7Value = [value2 value];
    v9 = [v4 initWithKey:value value:v7Value];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertTasks:(id)tasks
{
  v18 = *MEMORY[0x1E69E9840];
  tasksCopy = tasks;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (tasksCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = tasksCopy;
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

          v10 = [self convertTask:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertTask:(id)task
{
  taskCopy = task;
  v4 = taskCopy;
  if (taskCopy)
  {
    if ([taskCopy hasTask])
    {
      task = [v4 task];
      v6 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:task];
    }

    else
    {
      v6 = 0;
    }

    v8 = 0.0;
    if ([v4 hasScore])
    {
      score = [v4 score];
      [score value];
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

+ (void)convertRewrittenUtterance:(id)utterance
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

+ (id)convertAsrTokens:(id)tokens
{
  v18 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (tokensCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = tokensCopy;
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

          v10 = [self convertAsrTokenInformation:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertAsrTokenInformation:(id)information
{
  informationCopy = information;
  if (informationCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D24B8]);
    postItnText = [informationCopy postItnText];
    phoneSequence = [informationCopy phoneSequence];
    ipaPhoneSequence = [informationCopy ipaPhoneSequence];
    addSpaceAfter = [informationCopy addSpaceAfter];
    removeSpaceAfter = [informationCopy removeSpaceAfter];
    removeSpaceBefore = [informationCopy removeSpaceBefore];
    [informationCopy confidenceScore];
    v11 = [v4 initWithPostITNText:postItnText phoneSequence:phoneSequence ipaPhoneSequence:ipaPhoneSequence addSpaceAfter:addSpaceAfter removeSpaceAfter:removeSpaceAfter removeSpaceBefore:removeSpaceBefore confidenceScore:v10 beginIndex:__PAIR64__(objc_msgSend(informationCopy endIndex:"endIndex") startMilliSeconds:objc_msgSend(informationCopy endMilliSeconds:{"beginIndex")), __PAIR64__(objc_msgSend(informationCopy, "endMilliSeconds"), objc_msgSend(informationCopy, "startMilliSeconds"))}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)convertAsrOutputs:(id)outputs
{
  v18 = *MEMORY[0x1E69E9840];
  outputsCopy = outputs;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (outputsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = outputsCopy;
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

          v10 = [self convertAsrHypothesis:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertAsrHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  if (hypothesisCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D24B0]);
    utterance = [hypothesisCopy utterance];
    [hypothesisCopy probability];
    v8 = v7;
    asrTokens = [hypothesisCopy asrTokens];
    v10 = [self convertAsrTokens:asrTokens];
    v11 = [hypothesisCopy idA];
    v12 = [self convertUUID:v11];
    v13 = [v5 initWithUtterance:utterance probability:v10 asrTokens:v12 uuid:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)convertTurnInputs:(id)inputs
{
  v18 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (inputsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = inputsCopy;
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

          v10 = [self convertTurnInput:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertTurnInput:(id)input
{
  v20 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v5 = inputCopy;
  if (inputCopy)
  {
    if ([inputCopy hasLocale])
    {
      locale = [v5 locale];
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

      locale = @"en_US";
    }

    v9 = loggerContext(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "+[SiriNLUTypesConverter convertTurnInput:]";
      _os_log_impl(&dword_1C8774000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: SIRINLUEXTERNALTurnInput doesn't have EntityCandidates", &v18, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x1E69D2578]);
    asrOutputs = [v5 asrOutputs];
    v12 = [self convertAsrOutputs:asrOutputs];
    v13 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    turnContext = [v5 turnContext];
    v15 = [self convertTurnContext:turnContext];
    v7 = [v10 initWithAsrOutputs:v12 salientEntities:v13 turnContext:v15 locale:locale tapToEdit:objc_msgSend(v5 startTimestamp:{"tapToEdit"), objc_msgSend(v5, "startTimestamp")}];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69D2578]);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertRequestID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2510]);
    v5 = [dCopy idA];
    nluRequestId = [dCopy nluRequestId];
    v7 = [SiriNLUTypesConverter convertUUID:nluRequestId];
    connectionId = [dCopy connectionId];
    v9 = [v4 initWithIdAsString:v5 nluRequestId:v7 connectionID:connectionId];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUUID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    v7[1] = [dCopy highInt];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertResponseStatus:(id)status
{
  v24 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v4 = statusCopy;
  if (statusCopy)
  {
    code = [statusCopy code];
    if (code > 300)
    {
      if (code <= 302)
      {
        if (code == 301)
        {
          v13 = objc_alloc(MEMORY[0x1E69D2520]);
          descriptionA = [v4 descriptionA];
          v8 = [v13 initStatusCode:301 statusDescription:descriptionA];
        }

        else
        {
          v9 = objc_alloc(MEMORY[0x1E69D2520]);
          descriptionA = [v4 descriptionA];
          v8 = [v9 initStatusCode:302 statusDescription:descriptionA];
        }

        goto LABEL_20;
      }

      if (code == 303)
      {
        v15 = objc_alloc(MEMORY[0x1E69D2520]);
        descriptionA = [v4 descriptionA];
        v8 = [v15 initStatusCode:303 statusDescription:descriptionA];
        goto LABEL_20;
      }

      if (code == 500)
      {
        v11 = objc_alloc(MEMORY[0x1E69D2520]);
        descriptionA = [v4 descriptionA];
        v8 = [v11 initStatusCode:500 statusDescription:descriptionA];
        goto LABEL_20;
      }
    }

    else if (code > 100)
    {
      if (code == 101)
      {
        v14 = objc_alloc(MEMORY[0x1E69D2520]);
        descriptionA = [v4 descriptionA];
        v8 = [v14 initStatusCode:101 statusDescription:descriptionA];
        goto LABEL_20;
      }

      if (code == 300)
      {
        v10 = objc_alloc(MEMORY[0x1E69D2520]);
        descriptionA = [v4 descriptionA];
        v8 = [v10 initStatusCode:300 statusDescription:descriptionA];
        goto LABEL_20;
      }
    }

    else
    {
      if (!code)
      {
        v12 = objc_alloc(MEMORY[0x1E69D2520]);
        descriptionA = [v4 descriptionA];
        v8 = [v12 initStatusCode:0 statusDescription:descriptionA];
        goto LABEL_20;
      }

      if (code == 100)
      {
        v6 = objc_alloc(MEMORY[0x1E69D2520]);
        descriptionA = [v4 descriptionA];
        v8 = [v6 initStatusCode:100 statusDescription:descriptionA];
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
      code2 = [v4 code];
      _os_log_impl(&dword_1C8774000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Unknown status code: %d", &v20, 0x12u);
    }
  }

  v16 = 0;
LABEL_25:

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)convertResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2518]);
    requestId = [responseCopy requestId];
    v7 = [self convertRequestID:requestId];
    parses = [responseCopy parses];
    v9 = [SiriNLUTypesConverter convertUserParses:parses];
    repetitionResults = [responseCopy repetitionResults];
    v11 = [SiriNLUTypesConverter convertRepetitionResults:repetitionResults];
    v12 = [v5 initWithRequestId:v7 parses:v9 repetitionResults:v11];

    responseStatus = [responseCopy responseStatus];
    v14 = [self convertResponseStatus:responseStatus];
    [v12 setResponseStatus:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)convertRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69D2508]);
    requestId = [requestCopy requestId];
    v7 = [self convertRequestID:requestId];
    currentTurnInput = [requestCopy currentTurnInput];
    v9 = [self convertTurnInput:currentTurnInput];
    previousTurnInputs = [requestCopy previousTurnInputs];
    v11 = [self convertTurnInputs:previousTurnInputs];
    v12 = [v5 initWithRequestId:v7 currentTurnInput:v9 previousTurnInputs:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end