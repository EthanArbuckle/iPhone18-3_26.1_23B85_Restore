@interface SiriNLUExternalTypesUDAConverter
+ (id)convertFromDelegatedUserDialogAct:(id)act;
+ (id)convertFromReferenceContext:(id)context;
+ (id)convertFromRewriteMessage:(id)message;
+ (id)convertFromRewriteMessages:(id)messages;
+ (id)convertFromUserAccepted:(id)accepted;
+ (id)convertFromUserAcknowledged:(id)acknowledged;
+ (id)convertFromUserCancelled:(id)cancelled;
+ (id)convertFromUserDialogAct:(id)act;
+ (id)convertFromUserDialogActs:(id)acts;
+ (id)convertFromUserRejected:(id)rejected;
+ (id)convertFromUserStatedTask:(id)task;
+ (id)convertFromUserWantedToPause:(id)pause;
+ (id)convertFromUserWantedToProceed:(id)proceed;
+ (id)convertFromUserWantedToRepeat:(id)repeat;
@end

@implementation SiriNLUExternalTypesUDAConverter

+ (id)convertFromUserStatedTask:(id)task
{
  if (task)
  {
    taskCopy = task;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserStatedTask);
    task = [taskCopy task];

    v6 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:task];
    [(SIRINLUEXTERNALUserStatedTask *)v4 setTask:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromDelegatedUserDialogAct:(id)act
{
  if (act)
  {
    actCopy = act;
    v5 = objc_alloc_init(SIRINLUEXTERNALDelegatedUserDialogAct);
    -[SIRINLUEXTERNALDelegatedUserDialogAct setAsrHypothesisIndex:](v5, "setAsrHypothesisIndex:", [actCopy asrHypothesisIndex]);
    externalParserId = [actCopy externalParserId];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setExternalParserId:externalParserId];

    rewrittenUtterance = [actCopy rewrittenUtterance];
    v8 = [SiriNLUExternalTypesConverter convertFromString:rewrittenUtterance];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setRewrittenUtterance:v8];

    spans = [actCopy spans];
    v10 = [SiriNLUExternalTypesConverter convertFromMatchingSpans:spans];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setMatchingSpans:v10];

    rewrite = [actCopy rewrite];
    v12 = [self convertFromRewriteMessage:rewrite];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setRewrite:v12];

    referenceContext = [actCopy referenceContext];

    v14 = [self convertFromReferenceContext:referenceContext];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setReferenceContext:v14];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromReferenceContext:(id)context
{
  if (context)
  {
    contextCopy = context;
    v4 = objc_alloc_init(SIRINLUEXTERNALReferenceContext);
    -[SIRINLUEXTERNALReferenceContext setContextualReference:](v4, "setContextualReference:", [contextCopy contextualReference]);
    disambiguationNeeded = [contextCopy disambiguationNeeded];

    [(SIRINLUEXTERNALReferenceContext *)v4 setDisambiguationNeeded:disambiguationNeeded];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromRewriteMessage:(id)message
{
  if (message)
  {
    messageCopy = message;
    v4 = objc_alloc_init(SIRINLUEXTERNALRewriteMessage);
    -[SIRINLUEXTERNALRewriteMessage setRewriteType:](v4, "setRewriteType:", [messageCopy rewriteType]);
    rewrittenUtterance = [messageCopy rewrittenUtterance];

    [(SIRINLUEXTERNALRewriteMessage *)v4 setRewrittenUtterance:rewrittenUtterance];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromRewriteMessages:(id)messages
{
  v19 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (messagesCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = messagesCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromRewriteMessage:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromUserWantedToPause:(id)pause
{
  if (pause)
  {
    pauseCopy = pause;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserWantedToPause);
    taskId = [pauseCopy taskId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:taskId];
    [(SIRINLUEXTERNALUserWantedToPause *)v4 setTaskId:v6];

    reference = [pauseCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserWantedToPause *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserWantedToProceed:(id)proceed
{
  if (proceed)
  {
    proceedCopy = proceed;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserWantedToProceed);
    taskId = [proceedCopy taskId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:taskId];
    [(SIRINLUEXTERNALUserWantedToProceed *)v4 setTaskId:v6];

    reference = [proceedCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserWantedToProceed *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserAcknowledged:(id)acknowledged
{
  if (acknowledged)
  {
    acknowledgedCopy = acknowledged;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserAcknowledged);
    systemDialogActId = [acknowledgedCopy systemDialogActId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:systemDialogActId];
    [(SIRINLUEXTERNALUserAcknowledged *)v4 setSystemDialogActId:v6];

    reference = [acknowledgedCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserAcknowledged *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserWantedToRepeat:(id)repeat
{
  if (repeat)
  {
    repeatCopy = repeat;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserWantedToRepeat);
    systemDialogActId = [repeatCopy systemDialogActId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:systemDialogActId];
    [(SIRINLUEXTERNALUserWantedToRepeat *)v4 setSystemDialogActId:v6];

    reference = [repeatCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserWantedToRepeat *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserCancelled:(id)cancelled
{
  if (cancelled)
  {
    cancelledCopy = cancelled;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserCancelled);
    taskId = [cancelledCopy taskId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:taskId];
    [(SIRINLUEXTERNALUserCancelled *)v4 setTaskId:v6];

    reference = [cancelledCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserCancelled *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserRejected:(id)rejected
{
  if (rejected)
  {
    rejectedCopy = rejected;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserRejected);
    offerId = [rejectedCopy offerId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:offerId];
    [(SIRINLUEXTERNALUserRejected *)v4 setOfferId:v6];

    reference = [rejectedCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserRejected *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserAccepted:(id)accepted
{
  if (accepted)
  {
    acceptedCopy = accepted;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserAccepted);
    offerId = [acceptedCopy offerId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:offerId];
    [(SIRINLUEXTERNALUserAccepted *)v4 setOfferId:v6];

    reference = [acceptedCopy reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference];
    [(SIRINLUEXTERNALUserAccepted *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserDialogActs:(id)acts
{
  v19 = *MEMORY[0x1E69E9840];
  actsCopy = acts;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (actsCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = actsCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromUserDialogAct:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)convertFromUserDialogAct:(id)act
{
  actCopy = act;
  if (!actCopy)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALUserDialogAct);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromDelegatedUserDialogAct:actCopy];
    [(SIRINLUEXTERNALUserDialogAct *)v5 setDelegated:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [self convertFromUserAccepted:actCopy];
      [(SIRINLUEXTERNALUserDialogAct *)v5 setAccepted:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [self convertFromUserAcknowledged:actCopy];
        [(SIRINLUEXTERNALUserDialogAct *)v5 setAcknowledged:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [self convertFromUserCancelled:actCopy];
          [(SIRINLUEXTERNALUserDialogAct *)v5 setCancelled:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [self convertFromUserRejected:actCopy];
            [(SIRINLUEXTERNALUserDialogAct *)v5 setRejected:v6];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v6 = [self convertFromUserStatedTask:actCopy];
              [(SIRINLUEXTERNALUserDialogAct *)v5 setUserStatedTask:v6];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = [self convertFromUserWantedToPause:actCopy];
                [(SIRINLUEXTERNALUserDialogAct *)v5 setWantedToPause:v6];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v6 = [self convertFromUserWantedToProceed:actCopy];
                  [(SIRINLUEXTERNALUserDialogAct *)v5 setWantedToProceed:v6];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  v6 = [self convertFromUserWantedToRepeat:actCopy];
                  [(SIRINLUEXTERNALUserDialogAct *)v5 setWantedToRepeat:v6];
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_22:

  return v5;
}

@end