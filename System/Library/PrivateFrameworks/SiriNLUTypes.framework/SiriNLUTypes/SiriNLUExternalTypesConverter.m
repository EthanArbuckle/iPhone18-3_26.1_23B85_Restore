@interface SiriNLUExternalTypesConverter
+ (id)convertFromAsrHypothesis:(id)a3;
+ (id)convertFromAsrOutputs:(id)a3;
+ (id)convertFromAsrTokenInformation:(id)a3;
+ (id)convertFromAsrTokens:(id)a3;
+ (id)convertFromContext:(id)a3;
+ (id)convertFromDouble:(double)a3;
+ (id)convertFromEntityCandidate:(id)a3;
+ (id)convertFromEntityCandidates:(id)a3;
+ (id)convertFromMatchingSpan:(id)a3;
+ (id)convertFromMatchingSpans:(id)a3;
+ (id)convertFromNluLegacyNLContext:(id)a3;
+ (id)convertFromNluRequest:(id)a3;
+ (id)convertFromNluResponse:(id)a3;
+ (id)convertFromNluTurnContext:(id)a3;
+ (id)convertFromNluTurnInput:(id)a3;
+ (id)convertFromNumber:(id)a3;
+ (id)convertFromRRAnnotation:(id)a3;
+ (id)convertFromRRAnnotations:(id)a3;
+ (id)convertFromRRGroupIdentifer:(id)a3;
+ (id)convertFromRepetitionResult:(id)a3;
+ (id)convertFromRepetitionResults:(id)a3;
+ (id)convertFromString:(id)a3;
+ (id)convertFromTask:(id)a3;
+ (id)convertFromTasks:(id)a3;
+ (id)convertFromUUID:(id)a3;
+ (id)convertFromUserParse:(id)a3;
+ (id)convertFromUserParses:(id)a3;
+ (id)convertParser:(id)a3;
+ (id)convertfromRequestID:(id)a3;
@end

@implementation SiriNLUExternalTypesConverter

+ (id)convertFromMatchingSpans:(id)a3
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

          v10 = [a1 convertFromMatchingSpan:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromMatchingSpan:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSpan);
    v5 = [v3 input];
    [(SIRINLUEXTERNALSpan *)v4 setInput:v5];

    v6 = [v3 label];
    [(SIRINLUEXTERNALSpan *)v4 setLabel:v6];

    -[SIRINLUEXTERNALSpan setStartTokenIndex:](v4, "setStartTokenIndex:", [v3 startTokenIndex]);
    -[SIRINLUEXTERNALSpan setEndTokenIndex:](v4, "setEndTokenIndex:", [v3 endTokenIndex]);
    [v3 score];
    [(SIRINLUEXTERNALSpan *)v4 setScore:?];
    v7 = [v3 usoGraph];
    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALSpan *)v4 setUsoGraph:v8];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v3 matcherNames];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
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

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)convertFromRepetitionResults:(id)a3
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

          v10 = [a1 convertFromRepetitionResult:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromRepetitionResult:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALRepetitionResult);
    -[SIRINLUEXTERNALRepetitionResult setAsrHypothesisIndex:](v4, "setAsrHypothesisIndex:", [v3 asrHypothesisIndex]);
    -[SIRINLUEXTERNALRepetitionResult setRepetitionType:](v4, "setRepetitionType:", [v3 repetitionType]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserParses:(id)a3
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

          v10 = [a1 convertFromUserParse:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromUserParse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALUserParse);
    v6 = [v4 userDialogActs];
    v7 = [SiriNLUExternalTypesUDAConverter convertFromUserDialogActs:v6];
    [(SIRINLUEXTERNALUserParse *)v5 setUserDialogActs:v7];

    [v4 probability];
    [(SIRINLUEXTERNALUserParse *)v5 setProbability:?];
    v8 = [v4 nsUUID];
    v9 = [a1 convertFromUUID:v8];
    [(SIRINLUEXTERNALUserParse *)v5 setIdA:v9];

    v10 = [v4 parserId];
    [(SIRINLUEXTERNALUserParse *)v5 setParserId:v10];

    v11 = [v4 parser];
    v12 = [a1 convertParser:v11];
    [(SIRINLUEXTERNALUserParse *)v5 setParser:v12];

    v13 = [v4 repetitionResult];
    v14 = [a1 convertFromRepetitionResult:v13];
    [(SIRINLUEXTERNALUserParse *)v5 setRepetitionResult:v14];

    [v4 comparableProbability];
    [(SIRINLUEXTERNALUserParse *)v5 setComparableProbability:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertParser:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALParser);
    v5 = [v3 algorithmType];
    if (v5 < 3)
    {
      [(SIRINLUEXTERNALParser *)v4 setAlgorithm:v5];
    }

    v6 = [v3 parserIdentifier];
    if (v6 <= 7)
    {
      [(SIRINLUEXTERNALParser *)v4 setParserId:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromAsrOutputs:(id)a3
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

          v10 = [a1 convertFromAsrHypothesis:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromUUID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    [v3 getUUIDBytes:&v10];
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

+ (id)convertFromAsrTokenInformation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALAsrTokenInformation);
    v5 = [v3 phoneSequence];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setPhoneSequence:v5];

    [v3 confidenceScore];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setConfidenceScore:?];
    -[SIRINLUEXTERNALAsrTokenInformation setBeginIndex:](v4, "setBeginIndex:", [v3 beginIndex]);
    -[SIRINLUEXTERNALAsrTokenInformation setEndIndex:](v4, "setEndIndex:", [v3 endIndex]);
    v6 = [v3 ipaPhoneSequence];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setIpaPhoneSequence:v6];

    v7 = [v3 postITNText];
    [(SIRINLUEXTERNALAsrTokenInformation *)v4 setPostItnText:v7];

    -[SIRINLUEXTERNALAsrTokenInformation setAddSpaceAfter:](v4, "setAddSpaceAfter:", [v3 addSpaceAfter]);
    -[SIRINLUEXTERNALAsrTokenInformation setRemoveSpaceAfter:](v4, "setRemoveSpaceAfter:", [v3 removeSpaceAfter]);
    -[SIRINLUEXTERNALAsrTokenInformation setRemoveSpaceBefore:](v4, "setRemoveSpaceBefore:", [v3 removeSpaceBefore]);
    -[SIRINLUEXTERNALAsrTokenInformation setStartMilliSeconds:](v4, "setStartMilliSeconds:", [v3 startMilliSeconds]);
    -[SIRINLUEXTERNALAsrTokenInformation setEndMilliSeconds:](v4, "setEndMilliSeconds:", [v3 endMilliSeconds]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromAsrTokens:(id)a3
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

          v10 = [a1 convertFromAsrTokenInformation:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromAsrHypothesis:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALAsrHypothesis);
    v6 = [v4 utterance];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setUtterance:v6];

    [v4 probability];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setProbability:?];
    v7 = [v4 uuid];
    v8 = [a1 convertFromUUID:v7];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setIdA:v8];

    v9 = [v4 asrTokens];
    v10 = [a1 convertFromAsrTokens:v9];
    [(SIRINLUEXTERNALAsrHypothesis *)v5 setAsrTokens:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRICOMMONStringValue);
    [(SIRICOMMONStringValue *)v4 setValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromDouble:(double)a3
{
  v4 = objc_alloc_init(SIRICOMMONDoubleValue);
  [(SIRICOMMONDoubleValue *)v4 setValue:a3];

  return v4;
}

+ (id)convertFromNumber:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRICOMMONInt64Value);
    -[SIRICOMMONInt64Value setValue:](v4, "setValue:", [v3 intValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromTasks:(id)a3
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

          v10 = [a1 convertFromTask:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALTask);
    [v4 score];
    v6 = [a1 convertFromDouble:?];
    [(SIRINLUEXTERNALTask *)v5 setScore:v6];

    v7 = [v4 task];
    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALTask *)v5 setTask:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromEntityCandidates:(id)a3
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

          v10 = [a1 convertFromEntityCandidate:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromEntityCandidate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALEntityCandidate);
    [v4 score];
    v6 = [a1 convertFromDouble:?];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setScore:v6];

    v7 = [v4 entity];
    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setEntity:v8];

    v9 = [v4 appBundleId];
    v10 = [a1 convertFromString:v9];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setAppBundleId:v10];

    v11 = [v4 annotations];
    v12 = [v11 mutableCopy];
    v13 = [a1 convertFromRRAnnotations:v12];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setAnnotations:v13];

    v14 = [v4 groupId];
    v15 = [a1 convertFromRRGroupIdentifer:v14];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setGroupId:v15];

    v16 = [v4 entityId];
    v17 = [a1 convertFromString:v16];
    [(SIRINLUEXTERNALEntityCandidate *)v5 setEntityId:v17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromRRGroupIdentifer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v4 groupId];
    v7 = [a1 convertFromString:v6];
    [v5 setGroupId:v7];

    [v5 setSeq:{objc_msgSend(v4, "seq")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromRRAnnotations:(id)a3
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

          v10 = [a1 convertFromRRAnnotation:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertFromRRAnnotation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v4 key];
    v7 = [a1 convertFromString:v6];
    [v5 setKey:v7];

    v8 = [v4 value];
    v9 = [a1 convertFromString:v8];
    [v5 setValue:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALNLContext);
    v6 = [v4 activeTasks];
    v7 = [a1 convertFromTasks:v6];
    [(SIRINLUEXTERNALNLContext *)v5 setActiveTasks:v7];

    v8 = [v4 executedTasks];
    v9 = [a1 convertFromTasks:v8];
    [(SIRINLUEXTERNALNLContext *)v5 setExecutedTasks:v9];

    v10 = [v4 systemDialogActs];
    v11 = [SiriNLUExternalTypesSDAConverter convertFromSystemDialogActs:v10];
    [(SIRINLUEXTERNALNLContext *)v5 setSystemDialogActs:v11];

    v12 = [v4 salientEntities];
    v13 = [a1 convertFromEntityCandidates:v12];
    [(SIRINLUEXTERNALNLContext *)v5 setSalientEntities:v13];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromNluLegacyNLContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALLegacyNLContext);
  -[SIRINLUEXTERNALLegacyNLContext setListenAfterSpeaking:](v5, "setListenAfterSpeaking:", [v4 listenAfterSpeaking]);
  v6 = [v4 previousDomainName];
  [(SIRINLUEXTERNALLegacyNLContext *)v5 setPreviousDomainName:v6];

  -[SIRINLUEXTERNALLegacyNLContext setStrictPrompt:](v5, "setStrictPrompt:", [v4 strictPrompt]);
  -[SIRINLUEXTERNALLegacyNLContext setDictationPrompt:](v5, "setDictationPrompt:", [v4 dictationPrompt]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(SIRINLUEXTERNALLegacyNLContext *)v5 setRenderedTexts:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v4 renderedTexts];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(SIRINLUEXTERNALLegacyNLContext *)v5 renderedTexts];
        v14 = [a1 convertFromString:v12];
        [v13 addObject:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v4 legacyContextSource];
  v16 = v15;
  if (v15 < 2)
  {
    goto LABEL_16;
  }

  if (v15 == 2)
  {
    [(SIRINLUEXTERNALLegacyNLContext *)v5 setLegacyContextSource:2];
    goto LABEL_15;
  }

  if (v15 == 3)
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

+ (id)convertFromNluTurnContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALTurnContext);
  v6 = [v4 legacyNLContextNullable];

  if (v6)
  {
    v7 = [v4 legacyNLContextNullable];
    v8 = [a1 convertFromNluLegacyNLContext:v7];
    [(SIRINLUEXTERNALTurnContext *)v5 setLegacyNlContext:v8];
  }

  else
  {
    v9 = [v4 legacyNLContext];

    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = [v4 legacyNLContext];
    v8 = [a1 convertFromNluLegacyNLContext:v7];
    [(SIRINLUEXTERNALTurnContext *)v5 setLegacyNlContext:v8];
  }

LABEL_8:
  v10 = [v4 nlContextNullable];

  if (v10)
  {
    v11 = [v4 nlContextNullable];
    v12 = [a1 convertFromContext:v11];
    [(SIRINLUEXTERNALTurnContext *)v5 setNlContext:v12];
  }

  else
  {
    v13 = [v4 nlContext];

    if (!v13)
    {
      goto LABEL_13;
    }

    v11 = [v4 nlContext];
    v12 = [a1 convertFromContext:v11];
    [(SIRINLUEXTERNALTurnContext *)v5 setNlContext:v12];
  }

LABEL_13:

  return v5;
}

+ (id)convertFromNluTurnInput:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
    v6 = [v4 asrOutputs];
    v7 = [a1 convertFromAsrOutputs:v6];
    [(SIRINLUEXTERNALTurnInput *)v5 setAsrOutputs:v7];

    v8 = [v4 turnContext];
    v9 = [a1 convertFromNluTurnContext:v8];
    [(SIRINLUEXTERNALTurnInput *)v5 setTurnContext:v9];

    v10 = [v4 locale];
    [(SIRINLUEXTERNALTurnInput *)v5 setLocale:v10];

    -[SIRINLUEXTERNALTurnInput setTapToEdit:](v5, "setTapToEdit:", [v4 tapToEdit]);
    -[SIRINLUEXTERNALTurnInput setStartTimestamp:](v5, "setStartTimestamp:", [v4 startTimestamp]);
    v11 = [v4 systemDialogActs];
    v12 = [v11 count];

    if (v12 == 1)
    {
      v13 = [v4 systemDialogActs];
      v14 = [SiriNLUExternalTypesSDAConverter convertFromSystemDialogActs:v13];

      v15 = objc_alloc_init(SIRINLUEXTERNALSystemDialogActGroup);
      [(SIRINLUEXTERNALTurnInput *)v5 setSystemDialogActGroup:v15];

      v16 = [v14 firstObject];
      v17 = [(SIRINLUEXTERNALTurnInput *)v5 systemDialogActGroup];
      [v17 setSystemDialogAct:v16];
    }

    else
    {
      v18 = [v4 systemDialogActs];
      v19 = [v18 count];

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

+ (id)convertfromRequestID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALRequestID);
    v5 = [v3 idAsString];
    [(SIRINLUEXTERNALRequestID *)v4 setIdA:v5];

    v6 = [v3 connectionID];
    [(SIRINLUEXTERNALRequestID *)v4 setConnectionId:v6];

    v7 = [v3 nluRequestId];
    v8 = [SiriNLUExternalTypesConverter convertFromUUID:v7];
    [(SIRINLUEXTERNALRequestID *)v4 setNluRequestId:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromNluResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALCDMNluResponse);
    v6 = [v4 requestId];
    v7 = [a1 convertfromRequestID:v6];
    [(SIRINLUEXTERNALCDMNluResponse *)v5 setRequestId:v7];

    v8 = [v4 parses];
    v9 = [a1 convertFromUserParses:v8];
    [(SIRINLUEXTERNALCDMNluResponse *)v5 setParses:v9];

    v10 = [v4 repetitionResults];
    v11 = [a1 convertFromRepetitionResults:v10];
    [(SIRINLUEXTERNALCDMNluResponse *)v5 setRepetitionResults:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromNluRequest:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(SIRINLUEXTERNALCDMNluRequest);
    v6 = [v4 requestId];
    v7 = [a1 convertfromRequestID:v6];
    [(SIRINLUEXTERNALCDMNluRequest *)v5 setRequestId:v7];

    v8 = [v4 currentTurnInput];
    v9 = [a1 convertFromNluTurnInput:v8];
    [(SIRINLUEXTERNALCDMNluRequest *)v5 setCurrentTurnInput:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v4 previousTurnInputs];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [a1 convertFromNluTurnInput:*(*(&v18 + 1) + 8 * i)];
          [v10 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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