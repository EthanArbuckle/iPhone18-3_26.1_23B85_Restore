@interface SiriNLUExternalTypesConverter
+ (id)convertFromAsrHypothesis:(id)hypothesis;
+ (id)convertFromAsrOutputs:(id)outputs;
+ (id)convertFromAsrTokenInformation:(id)information;
+ (id)convertFromAsrTokens:(id)tokens;
+ (id)convertFromContext:(id)context;
+ (id)convertFromDouble:(double)double;
+ (id)convertFromEntityCandidate:(id)candidate;
+ (id)convertFromEntityCandidates:(id)candidates;
+ (id)convertFromMatchingSpan:(id)span;
+ (id)convertFromMatchingSpans:(id)spans;
+ (id)convertFromNluLegacyNLContext:(id)context;
+ (id)convertFromNluRequest:(id)request;
+ (id)convertFromNluResponse:(id)response;
+ (id)convertFromNluTurnContext:(id)context;
+ (id)convertFromNluTurnInput:(id)input;
+ (id)convertFromNumber:(id)number;
+ (id)convertFromRRAnnotation:(id)annotation;
+ (id)convertFromRRAnnotations:(id)annotations;
+ (id)convertFromRRGroupIdentifer:(id)identifer;
+ (id)convertFromRepetitionResult:(id)result;
+ (id)convertFromRepetitionResults:(id)results;
+ (id)convertFromString:(id)string;
+ (id)convertFromTask:(id)task;
+ (id)convertFromTasks:(id)tasks;
+ (id)convertFromUUID:(id)d;
+ (id)convertFromUserParse:(id)parse;
+ (id)convertFromUserParses:(id)parses;
+ (id)convertParser:(id)parser;
+ (id)convertfromRequestID:(id)d;
@end

@implementation SiriNLUExternalTypesConverter

+ (id)convertFromMatchingSpans:(id)spans
{
  v18 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  if (spansCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

          v10 = [self convertFromMatchingSpan:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromMatchingSpan:(id)span
{
  v22 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  if (spanCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSpan);
    input = [spanCopy input];
    [(SIRINLUEXTERNALSpan *)v4 setInput:input];

    label = [spanCopy label];
    [(SIRINLUEXTERNALSpan *)v4 setLabel:label];

    -[SIRINLUEXTERNALSpan setStartTokenIndex:](v4, "setStartTokenIndex:", [spanCopy startTokenIndex]);
    -[SIRINLUEXTERNALSpan setEndTokenIndex:](v4, "setEndTokenIndex:", [spanCopy endTokenIndex]);
    [spanCopy score];
    [(SIRINLUEXTERNALSpan *)v4 setScore:?];
    usoGraph = [spanCopy usoGraph];
    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:usoGraph];
    [(SIRINLUEXTERNALSpan *)v4 setUsoGraph:v8];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    matcherNames = [spanCopy matcherNames];
    v10 = [matcherNames countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(matcherNames);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 intValue] == 1)
          {
            v14 = 1;
          }

          else if ([v13 intValue] == 2)
          {
            v14 = 2;
          }

          else if ([v13 intValue] == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 0;
          }

          [(SIRINLUEXTERNALSpan *)v4 addMatcherNames:v14];
        }

        v10 = [matcherNames countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertFromRepetitionResults:(id)results
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

          v10 = [self convertFromRepetitionResult:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromRepetitionResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALRepetitionResult);
    -[SIRINLUEXTERNALRepetitionResult setAsrHypothesisIndex:](v4, "setAsrHypothesisIndex:", [resultCopy asrHypothesisIndex]);
    -[SIRINLUEXTERNALRepetitionResult setRepetitionType:](v4, "setRepetitionType:", [resultCopy repetitionType]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserParses:(id)parses
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

          v10 = [self convertFromUserParse:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromUserParse:(id)parse
{
  parseCopy = parse;
  if (parseCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALUserParse);
    userDialogActs = [parseCopy userDialogActs];
    v7 = [SiriNLUExternalTypesUDAConverter convertFromUserDialogActs:userDialogActs];
    [(SIRINLUEXTERNALUserParse *)v5 setUserDialogActs:v7];

    [parseCopy probability];
    [(SIRINLUEXTERNALUserParse *)v5 setProbability:?];
    nsUUID = [parseCopy nsUUID];
    v9 = [self convertFromUUID:nsUUID];
    [(SIRINLUEXTERNALUserParse *)v5 setIdA:v9];

    parserId = [parseCopy parserId];
    [(SIRINLUEXTERNALUserParse *)v5 setParserId:parserId];

    parser = [parseCopy parser];
    v12 = [self convertParser:parser];
    [(SIRINLUEXTERNALUserParse *)v5 setParser:v12];

    repetitionResult = [parseCopy repetitionResult];
    v14 = [self convertFromRepetitionResult:repetitionResult];
    [(SIRINLUEXTERNALUserParse *)v5 setRepetitionResult:v14];

    [parseCopy comparableProbability];
    [(SIRINLUEXTERNALUserParse *)v5 setComparableProbability:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertParser:(id)parser
{
  parserCopy = parser;
  if (parserCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALParser);
    algorithmType = [parserCopy algorithmType];
    if (algorithmType < 3)
    {
      [(SIRINLUEXTERNALParser *)v4 setAlgorithm:algorithmType];
    }

    parserIdentifier = [parserCopy parserIdentifier];
    if (parserIdentifier <= 7)
    {
      [(SIRINLUEXTERNALParser *)v4 setParserId:parserIdentifier];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromAsrOutputs:(id)outputs
{
  v18 = *MEMORY[0x1E69E9840];
  outputsCopy = outputs;
  if (outputsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

          v10 = [self convertFromAsrHypothesis:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromUUID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    v10 = 0;
    v11 = 0;
    [dCopy getUUIDBytes:&v10];
    v6 = v10;
    v5 = v11;
    v7 = objc_alloc_init(SIRINLUEXTERNALUUID);
    [(SIRINLUEXTERNALUUID *)v7 setLowInt:v6];
    [(SIRINLUEXTERNALUUID *)v7 setHighInt:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)convertFromAsrTokenInformation:(id)information
{
  informationCopy = information;
  if (informationCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALAsrTokenInformation);
    phoneSequence = [informationCopy phoneSequence];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setPhoneSequence:phoneSequence];

    [informationCopy confidenceScore];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setConfidenceScore:?];
    -[SIRINLUEXTERNALAsrTokenInformation setBeginIndex:](v4, "setBeginIndex:", [informationCopy beginIndex]);
    -[SIRINLUEXTERNALAsrTokenInformation setEndIndex:](v4, "setEndIndex:", [informationCopy endIndex]);
    ipaPhoneSequence = [informationCopy ipaPhoneSequence];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setIpaPhoneSequence:ipaPhoneSequence];

    postITNText = [informationCopy postITNText];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setPostItnText:postITNText];

    -[SIRINLUEXTERNALAsrTokenInformation setAddSpaceAfter:](v4, "setAddSpaceAfter:", [informationCopy addSpaceAfter]);
    -[SIRINLUEXTERNALAsrTokenInformation setRemoveSpaceAfter:](v4, "setRemoveSpaceAfter:", [informationCopy removeSpaceAfter]);
    -[SIRINLUEXTERNALAsrTokenInformation setRemoveSpaceBefore:](v4, "setRemoveSpaceBefore:", [informationCopy removeSpaceBefore]);
    -[SIRINLUEXTERNALAsrTokenInformation setStartMilliSeconds:](v4, "setStartMilliSeconds:", [informationCopy startMilliSeconds]);
    -[SIRINLUEXTERNALAsrTokenInformation setEndMilliSeconds:](v4, "setEndMilliSeconds:", [informationCopy endMilliSeconds]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromAsrTokens:(id)tokens
{
  v18 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  if (tokensCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

          v10 = [self convertFromAsrTokenInformation:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromAsrHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  if (hypothesisCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALAsrHypothesis);
    utterance = [hypothesisCopy utterance];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setUtterance:utterance];

    [hypothesisCopy probability];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setProbability:?];
    uuid = [hypothesisCopy uuid];
    v8 = [self convertFromUUID:uuid];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setIdA:v8];

    asrTokens = [hypothesisCopy asrTokens];
    v10 = [self convertFromAsrTokens:asrTokens];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setAsrTokens:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = objc_alloc_init(SIRICOMMONStringValue);
    [(SIRICOMMONStringValue *)v4 setValue:stringCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromDouble:(double)double
{
  v4 = objc_alloc_init(SIRICOMMONDoubleValue);
  [(SIRICOMMONDoubleValue *)v4 setValue:double];

  return v4;
}

+ (id)convertFromNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v4 = objc_alloc_init(SIRICOMMONInt64Value);
    -[SIRICOMMONInt64Value setValue:](v4, "setValue:", [numberCopy intValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromTasks:(id)tasks
{
  v18 = *MEMORY[0x1E69E9840];
  tasksCopy = tasks;
  if (tasksCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

          v10 = [self convertFromTask:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALTask);
    [taskCopy score];
    v6 = [self convertFromDouble:?];
    [(SIRINLUEXTERNALTask *)v5 setScore:v6];

    task = [taskCopy task];
    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:task];
    [(SIRINLUEXTERNALTask *)v5 setTask:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromEntityCandidates:(id)candidates
{
  v18 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  if (candidatesCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

          v10 = [self convertFromEntityCandidate:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromEntityCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (candidateCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
    [candidateCopy score];
    v6 = [self convertFromDouble:?];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setScore:v6];

    entity = [candidateCopy entity];
    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:entity];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setEntity:v8];

    appBundleId = [candidateCopy appBundleId];
    v10 = [self convertFromString:appBundleId];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setAppBundleId:v10];

    annotations = [candidateCopy annotations];
    v12 = [annotations mutableCopy];
    v13 = [self convertFromRRAnnotations:v12];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setAnnotations:v13];

    groupId = [candidateCopy groupId];
    v15 = [self convertFromRRGroupIdentifer:groupId];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setGroupId:v15];

    entityId = [candidateCopy entityId];
    v17 = [self convertFromString:entityId];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setEntityId:v17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromRRGroupIdentifer:(id)identifer
{
  identiferCopy = identifer;
  if (identiferCopy)
  {
    v5 = objc_opt_new();
    groupId = [identiferCopy groupId];
    v7 = [self convertFromString:groupId];
    [v5 setGroupId:v7];

    [v5 setSeq:{objc_msgSend(identiferCopy, "seq")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromRRAnnotations:(id)annotations
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

          v10 = [self convertFromRRAnnotation:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromRRAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (annotationCopy)
  {
    v5 = objc_opt_new();
    v6 = [annotationCopy key];
    v7 = [self convertFromString:v6];
    [v5 setKey:v7];

    value = [annotationCopy value];
    v9 = [self convertFromString:value];
    [v5 setValue:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALNLContext);
    activeTasks = [contextCopy activeTasks];
    v7 = [self convertFromTasks:activeTasks];
    [(SIRINLUEXTERNALNLContext *)v5 setActiveTasks:v7];

    executedTasks = [contextCopy executedTasks];
    v9 = [self convertFromTasks:executedTasks];
    [(SIRINLUEXTERNALNLContext *)v5 setExecutedTasks:v9];

    systemDialogActs = [contextCopy systemDialogActs];
    v11 = [SiriNLUExternalTypesSDAConverter convertFromSystemDialogActs:systemDialogActs];
    [(SIRINLUEXTERNALNLContext *)v5 setSystemDialogActs:v11];

    salientEntities = [contextCopy salientEntities];
    v13 = [self convertFromEntityCandidates:salientEntities];
    [(SIRINLUEXTERNALNLContext *)v5 setSalientEntities:v13];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromNluLegacyNLContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALLegacyNLContext);
  -[SIRINLUEXTERNALLegacyNLContext setListenAfterSpeaking:](v5, "setListenAfterSpeaking:", [contextCopy listenAfterSpeaking]);
  previousDomainName = [contextCopy previousDomainName];
  [(SIRINLUEXTERNALLegacyNLContext *)v5 setPreviousDomainName:previousDomainName];

  -[SIRINLUEXTERNALLegacyNLContext setStrictPrompt:](v5, "setStrictPrompt:", [contextCopy strictPrompt]);
  -[SIRINLUEXTERNALLegacyNLContext setDictationPrompt:](v5, "setDictationPrompt:", [contextCopy dictationPrompt]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(SIRINLUEXTERNALLegacyNLContext *)v5 setRenderedTexts:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  renderedTexts = [contextCopy renderedTexts];
  v9 = [renderedTexts countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(renderedTexts);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        renderedTexts2 = [(SIRINLUEXTERNALLegacyNLContext *)v5 renderedTexts];
        v14 = [self convertFromString:v12];
        [renderedTexts2 addObject:v14];
      }

      v9 = [renderedTexts countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  legacyContextSource = [contextCopy legacyContextSource];
  v16 = legacyContextSource;
  if (legacyContextSource < 2)
  {
    goto LABEL_16;
  }

  if (legacyContextSource == 2)
  {
    [(SIRINLUEXTERNALLegacyNLContext *)v5 setLegacyContextSource:2];
    goto LABEL_15;
  }

  if (legacyContextSource == 3)
  {
LABEL_15:
    v16 = 3;
LABEL_16:
    [(SIRINLUEXTERNALLegacyNLContext *)v5 setLegacyContextSource:v16];
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromNluTurnContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALTurnContext);
  legacyNLContextNullable = [contextCopy legacyNLContextNullable];

  if (legacyNLContextNullable)
  {
    legacyNLContextNullable2 = [contextCopy legacyNLContextNullable];
    v8 = [self convertFromNluLegacyNLContext:legacyNLContextNullable2];
    [(SIRINLUEXTERNALTurnContext *)v5 setLegacyNlContext:v8];
  }

  else
  {
    legacyNLContext = [contextCopy legacyNLContext];

    if (!legacyNLContext)
    {
      goto LABEL_8;
    }

    legacyNLContextNullable2 = [contextCopy legacyNLContext];
    v8 = [self convertFromNluLegacyNLContext:legacyNLContextNullable2];
    [(SIRINLUEXTERNALTurnContext *)v5 setLegacyNlContext:v8];
  }

LABEL_8:
  nlContextNullable = [contextCopy nlContextNullable];

  if (nlContextNullable)
  {
    nlContextNullable2 = [contextCopy nlContextNullable];
    v12 = [self convertFromContext:nlContextNullable2];
    [(SIRINLUEXTERNALTurnContext *)v5 setNlContext:v12];
  }

  else
  {
    nlContext = [contextCopy nlContext];

    if (!nlContext)
    {
      goto LABEL_13;
    }

    nlContextNullable2 = [contextCopy nlContext];
    v12 = [self convertFromContext:nlContextNullable2];
    [(SIRINLUEXTERNALTurnContext *)v5 setNlContext:v12];
  }

LABEL_13:

  return v5;
}

+ (id)convertFromNluTurnInput:(id)input
{
  v25 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (inputCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
    asrOutputs = [inputCopy asrOutputs];
    v7 = [self convertFromAsrOutputs:asrOutputs];
    [(SIRINLUEXTERNALTurnInput *)v5 setAsrOutputs:v7];

    turnContext = [inputCopy turnContext];
    v9 = [self convertFromNluTurnContext:turnContext];
    [(SIRINLUEXTERNALTurnInput *)v5 setTurnContext:v9];

    locale = [inputCopy locale];
    [(SIRINLUEXTERNALTurnInput *)v5 setLocale:locale];

    -[SIRINLUEXTERNALTurnInput setTapToEdit:](v5, "setTapToEdit:", [inputCopy tapToEdit]);
    -[SIRINLUEXTERNALTurnInput setStartTimestamp:](v5, "setStartTimestamp:", [inputCopy startTimestamp]);
    systemDialogActs = [inputCopy systemDialogActs];
    v12 = [systemDialogActs count];

    if (v12 == 1)
    {
      systemDialogActs2 = [inputCopy systemDialogActs];
      v14 = [SiriNLUExternalTypesSDAConverter convertFromSystemDialogActs:systemDialogActs2];

      v15 = objc_alloc_init(SIRINLUEXTERNALSystemDialogActGroup);
      [(SIRINLUEXTERNALTurnInput *)v5 setSystemDialogActGroup:v15];

      firstObject = [v14 firstObject];
      systemDialogActGroup = [(SIRINLUEXTERNALTurnInput *)v5 systemDialogActGroup];
      [systemDialogActGroup setSystemDialogAct:firstObject];
    }

    else
    {
      systemDialogActs3 = [inputCopy systemDialogActs];
      v19 = [systemDialogActs3 count];

      if (v19 >= 2)
      {
        v20 = loggerContext(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v23 = 136315138;
          v24 = "+[SiriNLUExternalTypesConverter convertFromNluTurnInput:]";
          _os_log_impl(&dword_1C8774000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: The SIRINLUTurnInput contains multiple system dialog act, we are not converting them to SIRINLUEXTERNALTurnInput", &v23, 0xCu);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertfromRequestID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALRequestID);
    idAsString = [dCopy idAsString];
    [(SIRINLUEXTERNALRequestID *)v4 setIdA:idAsString];

    connectionID = [dCopy connectionID];
    [(SIRINLUEXTERNALRequestID *)v4 setConnectionId:connectionID];

    nluRequestId = [dCopy nluRequestId];
    v8 = [SiriNLUExternalTypesConverter convertFromUUID:nluRequestId];
    [(SIRINLUEXTERNALRequestID *)v4 setNluRequestId:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromNluResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALCDMNluResponse);
    requestId = [responseCopy requestId];
    v7 = [self convertfromRequestID:requestId];
    [(SIRINLUEXTERNALCDMNluResponse *)v5 setRequestId:v7];

    parses = [responseCopy parses];
    v9 = [self convertFromUserParses:parses];
    [(SIRINLUEXTERNALCDMNluResponse *)v5 setParses:v9];

    repetitionResults = [responseCopy repetitionResults];
    v11 = [self convertFromRepetitionResults:repetitionResults];
    [(SIRINLUEXTERNALCDMNluResponse *)v5 setRepetitionResults:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromNluRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (requestCopy)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALCDMNluRequest);
    requestId = [requestCopy requestId];
    v7 = [self convertfromRequestID:requestId];
    [(SIRINLUEXTERNALCDMNluRequest *)v5 setRequestId:v7];

    currentTurnInput = [requestCopy currentTurnInput];
    v9 = [self convertFromNluTurnInput:currentTurnInput];
    [(SIRINLUEXTERNALCDMNluRequest *)v5 setCurrentTurnInput:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    previousTurnInputs = [requestCopy previousTurnInputs];
    v12 = [previousTurnInputs countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(previousTurnInputs);
          }

          v15 = [self convertFromNluTurnInput:*(*(&v18 + 1) + 8 * i)];
          [v10 addObject:v15];
        }

        v12 = [previousTurnInputs countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [(SIRINLUEXTERNALCDMNluRequest *)v5 setPreviousTurnInputs:v10];
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

@end