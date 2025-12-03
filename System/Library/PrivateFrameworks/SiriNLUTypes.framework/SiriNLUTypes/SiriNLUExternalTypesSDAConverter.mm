@interface SiriNLUExternalTypesSDAConverter
+ (id)convertFromSystemDialogAct:(id)act;
+ (id)convertFromSystemDialogActs:(id)acts;
+ (id)convertFromSystemGaveOptions:(id)options;
+ (id)convertFromSystemInformed:(id)informed;
+ (id)convertFromSystemOffered:(id)offered;
+ (id)convertFromSystemPrompted:(id)prompted;
+ (id)convertFromSystemReportedFailure:(id)failure;
+ (id)convertFromSystemReportedSuccess:(id)success;
@end

@implementation SiriNLUExternalTypesSDAConverter

+ (id)convertFromSystemReportedSuccess:(id)success
{
  successCopy = success;
  if (successCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemReportedSuccess);
    task = [successCopy task];

    if (task)
    {
      task2 = [successCopy task];
      task = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:task2];
    }

    [(SIRINLUEXTERNALSystemReportedSuccess *)v4 setTask:task];
    taskId = [successCopy taskId];
    v8 = [SiriNLUExternalTypesConverter convertFromUUID:taskId];
    [(SIRINLUEXTERNALSystemReportedSuccess *)v4 setTaskId:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemReportedFailure:(id)failure
{
  failureCopy = failure;
  if (failureCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemReportedFailure);
    reason = [failureCopy reason];

    if (reason)
    {
      reason2 = [failureCopy reason];
      reason = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reason2];
    }

    [(SIRINLUEXTERNALSystemReportedFailure *)v4 setReason:reason];
    task = [failureCopy task];

    if (task)
    {
      task2 = [failureCopy task];
      task = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:task2];
    }

    [(SIRINLUEXTERNALSystemReportedFailure *)v4 setTask:task];
    taskId = [failureCopy taskId];
    v10 = [SiriNLUExternalTypesConverter convertFromUUID:taskId];
    [(SIRINLUEXTERNALSystemReportedFailure *)v4 setTaskId:v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemPrompted:(id)prompted
{
  promptedCopy = prompted;
  if (promptedCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemPrompted);
    reference = [promptedCopy reference];

    if (reference)
    {
      reference2 = [promptedCopy reference];
      reference = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:reference2];
    }

    [(SIRINLUEXTERNALSystemPrompted *)v4 setTarget:reference];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemOffered:(id)offered
{
  if (offered)
  {
    offeredCopy = offered;
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemOffered);
    offeredAct = [offeredCopy offeredAct];

    v6 = [SiriNLUExternalTypesUDAConverter convertFromUserDialogAct:offeredAct];
    [(SIRINLUEXTERNALSystemOffered *)v4 setOfferedAct:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemInformed:(id)informed
{
  informedCopy = informed;
  if (informedCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemInformed);
    entities = [informedCopy entities];

    if (entities)
    {
      entities2 = [informedCopy entities];
      entities = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraphs:entities2];
    }

    [(SIRINLUEXTERNALSystemInformed *)v4 setEntities:entities];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemGaveOptions:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (optionsCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemGaveOptions);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    choices = [optionsCopy choices];
    v7 = [choices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(choices);
          }

          v11 = [SiriNLUExternalTypesUDAConverter convertFromUserDialogAct:*(*(&v14 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [choices countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(SIRINLUEXTERNALSystemGaveOptions *)v4 setChoices:v5];
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)convertFromSystemDialogAct:(id)act
{
  actCopy = act;
  if (!actCopy)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALSystemDialogAct);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromSystemGaveOptions:actCopy];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setGaveOptions:v6];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromSystemInformed:actCopy];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setInformed:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromSystemOffered:actCopy];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setOffered:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromSystemPrompted:actCopy];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setPrompted:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromSystemReportedFailure:actCopy];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setReportedFailure:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self convertFromSystemReportedSuccess:actCopy];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setReportedSuccess:v6];
    goto LABEL_15;
  }

LABEL_16:
  renderedText = [actCopy renderedText];
  v8 = [SiriNLUExternalTypesConverter convertFromString:renderedText];
  [(SIRINLUEXTERNALSystemDialogAct *)v5 setRenderedText:v8];

LABEL_17:

  return v5;
}

+ (id)convertFromSystemDialogActs:(id)acts
{
  v19 = *MEMORY[0x1E69E9840];
  actsCopy = acts;
  if (actsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
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

          v11 = [self convertFromSystemDialogAct:{*(*(&v14 + 1) + 8 * i), v14}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

@end