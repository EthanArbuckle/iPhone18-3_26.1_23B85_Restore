@interface SiriNLUTypesUDAConverter
+ (id)convertDelegatedUserDialogAct:(id)a3;
+ (id)convertReferenceContext:(id)a3;
+ (id)convertRewriteMessage:(id)a3;
+ (id)convertRewriteMessages:(id)a3;
+ (id)convertUserAccepted:(id)a3;
+ (id)convertUserAcknowledged:(id)a3;
+ (id)convertUserCancelled:(id)a3;
+ (id)convertUserDialogAct:(id)a3;
+ (id)convertUserDialogActs:(id)a3;
+ (id)convertUserRejected:(id)a3;
+ (id)convertUserStatedTask:(id)a3;
+ (id)convertUserWantedToPause:(id)a3;
+ (id)convertUserWantedToProceed:(id)a3;
+ (id)convertUserWantedToRepeat:(id)a3;
+ (void)convertUtteranceAlignment:(id)a3;
@end

@implementation SiriNLUTypesUDAConverter

+ (void)convertUtteranceAlignment:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = loggerContext(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "+[SiriNLUTypesUDAConverter convertUtteranceAlignment:]";
    _os_log_impl(&dword_1C8774000, v3, OS_LOG_TYPE_INFO, "%s [WARN]: UtteranceAlignment was recently and doesn't have a hand-crafted SIRINLU equivalent", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)convertUserStatedTask:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25A8]);
    v5 = [v3 task];
    v6 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v5];
    v7 = [v4 initWithTask:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertDelegatedUserDialogAct:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 hasRewrittenUtterance])
    {
      v6 = [v5 rewrittenUtterance];
      v7 = [v6 value];
    }

    else
    {
      v7 = 0;
    }

    if ([v5 hasAsrHypothesisIndex])
    {
      v9 = [v5 asrHypothesisIndex];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 matchingSpans];

    if (v10)
    {
      v11 = [v5 matchingSpans];
      v12 = [SiriNLUTypesConverter convertMatchingSpans:v11];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    v13 = [v5 rewrite];
    v14 = [a1 convertRewriteMessage:v13];

    v15 = [v5 referenceContext];
    v16 = [a1 convertReferenceContext:v15];

    v17 = objc_alloc(MEMORY[0x1E69D24C0]);
    v18 = [v5 externalParserId];
    v8 = [v17 initWithAsrHypothesisIndex:v9 rewrittenUtterace:v7 externalParserId:v18 spans:v12 rewriteMessage:v14 referenceContext:v16];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)convertReferenceContext:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D24F8]) initWithContextualReference:objc_msgSend(v3 DisambiguationNeeded:{"contextualReference"), objc_msgSend(v3, "disambiguationNeeded")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertRewriteMessage:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2528]);
    v5 = [v3 rewriteType];
    v6 = [v3 rewrittenUtterance];
    v7 = [v4 initWithType:v5 utterance:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertRewriteMessages:(id)a3
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

          v10 = [a1 convertRewriteMessage:{*(*(&v13 + 1) + 8 * i), v13}];
          if (v10)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUserWantedToPause:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasTaskId])
    {
      v5 = objc_alloc(MEMORY[0x1E69D25B0]);
      v6 = [v4 taskId];
      v7 = [SiriNLUTypesConverter convertUUID:v6];
      v8 = [v4 reference];
      v9 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v8];
      v10 = [v5 initWithTaskId:v7 reference:v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69D25B0]);
      v6 = [v4 reference];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v6];
      v10 = [v11 initWithReference:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUserWantedToProceed:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasTaskId])
    {
      v5 = objc_alloc(MEMORY[0x1E69D25B8]);
      v6 = [v4 taskId];
      v7 = [SiriNLUTypesConverter convertUUID:v6];
      v8 = [v4 reference];
      v9 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v8];
      v10 = [v5 initWithTaskId:v7 reference:v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69D25B8]);
      v6 = [v4 reference];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v6];
      v10 = [v11 initWithReference:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUserAcknowledged:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2588]);
    v5 = [v3 systemDialogActId];
    v6 = [SiriNLUTypesConverter convertUUID:v5];
    v7 = [v3 reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v7];
    v9 = [v4 initWithSystemDialogActId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserWantedToRepeat:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25C0]);
    v5 = [v3 systemDialogActId];
    v6 = [SiriNLUTypesConverter convertUUID:v5];
    v7 = [v3 reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v7];
    v9 = [v4 initWithSystemDialogActId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserCancelled:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasTaskId])
    {
      v5 = objc_alloc(MEMORY[0x1E69D2590]);
      v6 = [v4 taskId];
      v7 = [SiriNLUTypesConverter convertUUID:v6];
      v8 = [v4 reference];
      v9 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v8];
      v10 = [v5 initWithTaskId:v7 reference:v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69D2590]);
      v6 = [v4 reference];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v6];
      v10 = [v11 initWithReference:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUserRejected:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25A0]);
    v5 = [v3 offerId];
    v6 = [SiriNLUTypesConverter convertUUID:v5];
    v7 = [v3 reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v7];
    v9 = [v4 initWithOfferId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserAccepted:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2580]);
    v5 = [v3 offerId];
    v6 = [SiriNLUTypesConverter convertUUID:v5];
    v7 = [v3 reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v7];
    v9 = [v4 initWithOfferId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserDialogActs:(id)a3
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

          v10 = [a1 convertUserDialogAct:{*(*(&v13 + 1) + 8 * i), v13}];
          if (v10)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertUserDialogAct:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 hasAlignment])
    {
      v6 = [v5 alignment];
      [a1 convertUtteranceAlignment:v6];
    }

    if ([v5 hasAccepted])
    {
      v7 = [v5 accepted];
      v8 = [a1 convertUserAccepted:v7];
LABEL_22:
      v9 = v8;

      goto LABEL_27;
    }

    if ([v5 hasRejected])
    {
      v7 = [v5 rejected];
      v8 = [a1 convertUserRejected:v7];
      goto LABEL_22;
    }

    if ([v5 hasCancelled])
    {
      v7 = [v5 cancelled];
      v8 = [a1 convertUserCancelled:v7];
      goto LABEL_22;
    }

    if ([v5 hasWantedToRepeat])
    {
      v7 = [v5 wantedToRepeat];
      v8 = [a1 convertUserWantedToRepeat:v7];
      goto LABEL_22;
    }

    if ([v5 hasAcknowledged])
    {
      v7 = [v5 acknowledged];
      v8 = [a1 convertUserAcknowledged:v7];
      goto LABEL_22;
    }

    if ([v5 hasWantedToProceed])
    {
      v7 = [v5 wantedToProceed];
      v8 = [a1 convertUserWantedToProceed:v7];
      goto LABEL_22;
    }

    if ([v5 hasWantedToPause])
    {
      v7 = [v5 wantedToPause];
      v8 = [a1 convertUserWantedToPause:v7];
      goto LABEL_22;
    }

    if ([v5 hasDelegated])
    {
      v7 = [v5 delegated];
      v8 = [a1 convertDelegatedUserDialogAct:v7];
      goto LABEL_22;
    }

    if ([v5 hasUserStatedTask])
    {
      v7 = [v5 userStatedTask];
      v8 = [a1 convertUserStatedTask:v7];
      goto LABEL_22;
    }

    v10 = loggerContext(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "+[SiriNLUTypesUDAConverter convertUserDialogAct:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1C8774000, v10, OS_LOG_TYPE_INFO, "%s [WARN]: Encountered an unknown UDA %@", &v13, 0x16u);
    }
  }

  v9 = 0;
LABEL_27:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

@end