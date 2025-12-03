@interface SiriNLUTypesUDAConverter
+ (id)convertDelegatedUserDialogAct:(id)act;
+ (id)convertReferenceContext:(id)context;
+ (id)convertRewriteMessage:(id)message;
+ (id)convertRewriteMessages:(id)messages;
+ (id)convertUserAccepted:(id)accepted;
+ (id)convertUserAcknowledged:(id)acknowledged;
+ (id)convertUserCancelled:(id)cancelled;
+ (id)convertUserDialogAct:(id)act;
+ (id)convertUserDialogActs:(id)acts;
+ (id)convertUserRejected:(id)rejected;
+ (id)convertUserStatedTask:(id)task;
+ (id)convertUserWantedToPause:(id)pause;
+ (id)convertUserWantedToProceed:(id)proceed;
+ (id)convertUserWantedToRepeat:(id)repeat;
+ (void)convertUtteranceAlignment:(id)alignment;
@end

@implementation SiriNLUTypesUDAConverter

+ (void)convertUtteranceAlignment:(id)alignment
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

+ (id)convertUserStatedTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25A8]);
    task = [taskCopy task];
    v6 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:task];
    v7 = [v4 initWithTask:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertDelegatedUserDialogAct:(id)act
{
  actCopy = act;
  v5 = actCopy;
  if (actCopy)
  {
    if ([actCopy hasRewrittenUtterance])
    {
      rewrittenUtterance = [v5 rewrittenUtterance];
      value = [rewrittenUtterance value];
    }

    else
    {
      value = 0;
    }

    if ([v5 hasAsrHypothesisIndex])
    {
      asrHypothesisIndex = [v5 asrHypothesisIndex];
    }

    else
    {
      asrHypothesisIndex = 0;
    }

    matchingSpans = [v5 matchingSpans];

    if (matchingSpans)
    {
      matchingSpans2 = [v5 matchingSpans];
      v12 = [SiriNLUTypesConverter convertMatchingSpans:matchingSpans2];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    rewrite = [v5 rewrite];
    v14 = [self convertRewriteMessage:rewrite];

    referenceContext = [v5 referenceContext];
    v16 = [self convertReferenceContext:referenceContext];

    v17 = objc_alloc(MEMORY[0x1E69D24C0]);
    externalParserId = [v5 externalParserId];
    v8 = [v17 initWithAsrHypothesisIndex:asrHypothesisIndex rewrittenUtterace:value externalParserId:externalParserId spans:v12 rewriteMessage:v14 referenceContext:v16];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)convertReferenceContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D24F8]) initWithContextualReference:objc_msgSend(contextCopy DisambiguationNeeded:{"contextualReference"), objc_msgSend(contextCopy, "disambiguationNeeded")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertRewriteMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2528]);
    rewriteType = [messageCopy rewriteType];
    rewrittenUtterance = [messageCopy rewrittenUtterance];
    v7 = [v4 initWithType:rewriteType utterance:rewrittenUtterance];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertRewriteMessages:(id)messages
{
  v18 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (messagesCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = messagesCopy;
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

          v10 = [self convertRewriteMessage:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUserWantedToPause:(id)pause
{
  pauseCopy = pause;
  v4 = pauseCopy;
  if (pauseCopy)
  {
    if ([pauseCopy hasTaskId])
    {
      v5 = objc_alloc(MEMORY[0x1E69D25B0]);
      taskId = [v4 taskId];
      v7 = [SiriNLUTypesConverter convertUUID:taskId];
      reference = [v4 reference];
      v9 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
      v10 = [v5 initWithTaskId:v7 reference:v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69D25B0]);
      taskId = [v4 reference];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:taskId];
      v10 = [v11 initWithReference:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUserWantedToProceed:(id)proceed
{
  proceedCopy = proceed;
  v4 = proceedCopy;
  if (proceedCopy)
  {
    if ([proceedCopy hasTaskId])
    {
      v5 = objc_alloc(MEMORY[0x1E69D25B8]);
      taskId = [v4 taskId];
      v7 = [SiriNLUTypesConverter convertUUID:taskId];
      reference = [v4 reference];
      v9 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
      v10 = [v5 initWithTaskId:v7 reference:v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69D25B8]);
      taskId = [v4 reference];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:taskId];
      v10 = [v11 initWithReference:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUserAcknowledged:(id)acknowledged
{
  acknowledgedCopy = acknowledged;
  if (acknowledgedCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2588]);
    systemDialogActId = [acknowledgedCopy systemDialogActId];
    v6 = [SiriNLUTypesConverter convertUUID:systemDialogActId];
    reference = [acknowledgedCopy reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
    v9 = [v4 initWithSystemDialogActId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserWantedToRepeat:(id)repeat
{
  repeatCopy = repeat;
  if (repeatCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25C0]);
    systemDialogActId = [repeatCopy systemDialogActId];
    v6 = [SiriNLUTypesConverter convertUUID:systemDialogActId];
    reference = [repeatCopy reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
    v9 = [v4 initWithSystemDialogActId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v4 = cancelledCopy;
  if (cancelledCopy)
  {
    if ([cancelledCopy hasTaskId])
    {
      v5 = objc_alloc(MEMORY[0x1E69D2590]);
      taskId = [v4 taskId];
      v7 = [SiriNLUTypesConverter convertUUID:taskId];
      reference = [v4 reference];
      v9 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
      v10 = [v5 initWithTaskId:v7 reference:v9];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69D2590]);
      taskId = [v4 reference];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:taskId];
      v10 = [v11 initWithReference:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertUserRejected:(id)rejected
{
  rejectedCopy = rejected;
  if (rejectedCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D25A0]);
    offerId = [rejectedCopy offerId];
    v6 = [SiriNLUTypesConverter convertUUID:offerId];
    reference = [rejectedCopy reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
    v9 = [v4 initWithOfferId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserAccepted:(id)accepted
{
  acceptedCopy = accepted;
  if (acceptedCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2580]);
    offerId = [acceptedCopy offerId];
    v6 = [SiriNLUTypesConverter convertUUID:offerId];
    reference = [acceptedCopy reference];
    v8 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reference];
    v9 = [v4 initWithOfferId:v6 reference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertUserDialogActs:(id)acts
{
  v18 = *MEMORY[0x1E69E9840];
  actsCopy = acts;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (actsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = actsCopy;
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

          v10 = [self convertUserDialogAct:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertUserDialogAct:(id)act
{
  v17 = *MEMORY[0x1E69E9840];
  actCopy = act;
  v5 = actCopy;
  if (actCopy)
  {
    if ([actCopy hasAlignment])
    {
      alignment = [v5 alignment];
      [self convertUtteranceAlignment:alignment];
    }

    if ([v5 hasAccepted])
    {
      accepted = [v5 accepted];
      v8 = [self convertUserAccepted:accepted];
LABEL_22:
      v9 = v8;

      goto LABEL_27;
    }

    if ([v5 hasRejected])
    {
      accepted = [v5 rejected];
      v8 = [self convertUserRejected:accepted];
      goto LABEL_22;
    }

    if ([v5 hasCancelled])
    {
      accepted = [v5 cancelled];
      v8 = [self convertUserCancelled:accepted];
      goto LABEL_22;
    }

    if ([v5 hasWantedToRepeat])
    {
      accepted = [v5 wantedToRepeat];
      v8 = [self convertUserWantedToRepeat:accepted];
      goto LABEL_22;
    }

    if ([v5 hasAcknowledged])
    {
      accepted = [v5 acknowledged];
      v8 = [self convertUserAcknowledged:accepted];
      goto LABEL_22;
    }

    if ([v5 hasWantedToProceed])
    {
      accepted = [v5 wantedToProceed];
      v8 = [self convertUserWantedToProceed:accepted];
      goto LABEL_22;
    }

    if ([v5 hasWantedToPause])
    {
      accepted = [v5 wantedToPause];
      v8 = [self convertUserWantedToPause:accepted];
      goto LABEL_22;
    }

    if ([v5 hasDelegated])
    {
      accepted = [v5 delegated];
      v8 = [self convertDelegatedUserDialogAct:accepted];
      goto LABEL_22;
    }

    if ([v5 hasUserStatedTask])
    {
      accepted = [v5 userStatedTask];
      v8 = [self convertUserStatedTask:accepted];
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