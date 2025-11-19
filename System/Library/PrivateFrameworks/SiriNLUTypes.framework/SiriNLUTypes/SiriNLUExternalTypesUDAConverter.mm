@interface SiriNLUExternalTypesUDAConverter
+ (id)convertFromDelegatedUserDialogAct:(id)a3;
+ (id)convertFromReferenceContext:(id)a3;
+ (id)convertFromRewriteMessage:(id)a3;
+ (id)convertFromRewriteMessages:(id)a3;
+ (id)convertFromUserAccepted:(id)a3;
+ (id)convertFromUserAcknowledged:(id)a3;
+ (id)convertFromUserCancelled:(id)a3;
+ (id)convertFromUserDialogAct:(id)a3;
+ (id)convertFromUserDialogActs:(id)a3;
+ (id)convertFromUserRejected:(id)a3;
+ (id)convertFromUserStatedTask:(id)a3;
+ (id)convertFromUserWantedToPause:(id)a3;
+ (id)convertFromUserWantedToProceed:(id)a3;
+ (id)convertFromUserWantedToRepeat:(id)a3;
@end

@implementation SiriNLUExternalTypesUDAConverter

+ (id)convertFromUserStatedTask:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserStatedTask);
    v5 = [v3 task];

    v6 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v5];
    [(SIRINLUEXTERNALUserStatedTask *)v4 setTask:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromDelegatedUserDialogAct:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(SIRINLUEXTERNALDelegatedUserDialogAct);
    -[SIRINLUEXTERNALDelegatedUserDialogAct setAsrHypothesisIndex:](v5, "setAsrHypothesisIndex:", [v4 asrHypothesisIndex]);
    v6 = [v4 externalParserId];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setExternalParserId:v6];

    v7 = [v4 rewrittenUtterance];
    v8 = [SiriNLUExternalTypesConverter convertFromString:v7];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setRewrittenUtterance:v8];

    v9 = [v4 spans];
    v10 = [SiriNLUExternalTypesConverter convertFromMatchingSpans:v9];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setMatchingSpans:v10];

    v11 = [v4 rewrite];
    v12 = [a1 convertFromRewriteMessage:v11];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setRewrite:v12];

    v13 = [v4 referenceContext];

    v14 = [a1 convertFromReferenceContext:v13];
    [(SIRINLUEXTERNALDelegatedUserDialogAct *)v5 setReferenceContext:v14];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromReferenceContext:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALReferenceContext);
    -[SIRINLUEXTERNALReferenceContext setContextualReference:](v4, "setContextualReference:", [v3 contextualReference]);
    v5 = [v3 disambiguationNeeded];

    [(SIRINLUEXTERNALReferenceContext *)v4 setDisambiguationNeeded:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromRewriteMessage:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALRewriteMessage);
    -[SIRINLUEXTERNALRewriteMessage setRewriteType:](v4, "setRewriteType:", [v3 rewriteType]);
    v5 = [v3 rewrittenUtterance];

    [(SIRINLUEXTERNALRewriteMessage *)v4 setRewrittenUtterance:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromRewriteMessages:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
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

          v11 = [a1 convertFromRewriteMessage:{*(*(&v14 + 1) + 8 * i), v14}];
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

+ (id)convertFromUserWantedToPause:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserWantedToPause);
    v5 = [v3 taskId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserWantedToPause *)v4 setTaskId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserWantedToPause *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserWantedToProceed:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserWantedToProceed);
    v5 = [v3 taskId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserWantedToProceed *)v4 setTaskId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserWantedToProceed *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserAcknowledged:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserAcknowledged);
    v5 = [v3 systemDialogActId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserAcknowledged *)v4 setSystemDialogActId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserAcknowledged *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserWantedToRepeat:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserWantedToRepeat);
    v5 = [v3 systemDialogActId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserWantedToRepeat *)v4 setSystemDialogActId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserWantedToRepeat *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserCancelled:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserCancelled);
    v5 = [v3 taskId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserCancelled *)v4 setTaskId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserCancelled *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserRejected:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserRejected);
    v5 = [v3 offerId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserRejected *)v4 setOfferId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserRejected *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserAccepted:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALUserAccepted);
    v5 = [v3 offerId];
    v6 = [SiriNLUExternalTypesConverter convertFromUUID:v5];
    [(SIRINLUEXTERNALUserAccepted *)v4 setOfferId:v6];

    v7 = [v3 reference];

    v8 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v7];
    [(SIRINLUEXTERNALUserAccepted *)v4 setReference:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUserDialogActs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
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

          v11 = [a1 convertFromUserDialogAct:{*(*(&v14 + 1) + 8 * i), v14}];
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

+ (id)convertFromUserDialogAct:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALUserDialogAct);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromDelegatedUserDialogAct:v4];
    [(SIRINLUEXTERNALUserDialogAct *)v5 setDelegated:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a1 convertFromUserAccepted:v4];
      [(SIRINLUEXTERNALUserDialogAct *)v5 setAccepted:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [a1 convertFromUserAcknowledged:v4];
        [(SIRINLUEXTERNALUserDialogAct *)v5 setAcknowledged:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [a1 convertFromUserCancelled:v4];
          [(SIRINLUEXTERNALUserDialogAct *)v5 setCancelled:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [a1 convertFromUserRejected:v4];
            [(SIRINLUEXTERNALUserDialogAct *)v5 setRejected:v6];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v6 = [a1 convertFromUserStatedTask:v4];
              [(SIRINLUEXTERNALUserDialogAct *)v5 setUserStatedTask:v6];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = [a1 convertFromUserWantedToPause:v4];
                [(SIRINLUEXTERNALUserDialogAct *)v5 setWantedToPause:v6];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v6 = [a1 convertFromUserWantedToProceed:v4];
                  [(SIRINLUEXTERNALUserDialogAct *)v5 setWantedToProceed:v6];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  v6 = [a1 convertFromUserWantedToRepeat:v4];
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