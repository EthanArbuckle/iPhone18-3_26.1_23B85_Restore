@interface SiriNLUTypesSDAConverter
+ (id)convertSystemDialogAct:(id)act;
+ (id)convertSystemDialogActs:(id)acts;
+ (id)convertSystemGaveOptions:(id)options;
+ (id)convertSystemInformed:(id)informed;
+ (id)convertSystemOffered:(id)offered;
+ (id)convertSystemPrompted:(id)prompted;
+ (id)convertSystemReportedFailure:(id)failure;
+ (id)convertSystemReportedSuccess:(id)success;
@end

@implementation SiriNLUTypesSDAConverter

+ (id)convertSystemReportedSuccess:(id)success
{
  successCopy = success;
  v4 = successCopy;
  if (successCopy)
  {
    task = [successCopy task];

    if (task)
    {
      task2 = [v4 task];
      task = [SiriNLUTypesUsoGraphConverter convertUsoGraph:task2];
    }

    v7 = objc_alloc(MEMORY[0x1E69D2560]);
    taskId = [v4 taskId];
    v9 = [SiriNLUTypesConverter convertUUID:taskId];
    v10 = [v7 initWithTaskId:v9 task:task];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertSystemReportedFailure:(id)failure
{
  failureCopy = failure;
  v4 = failureCopy;
  if (failureCopy)
  {
    reason = [failureCopy reason];

    if (reason)
    {
      reason2 = [v4 reason];
      reason = [SiriNLUTypesUsoGraphConverter convertUsoGraph:reason2];
    }

    task = [v4 task];

    if (task)
    {
      task2 = [v4 task];
      task = [SiriNLUTypesUsoGraphConverter convertUsoGraph:task2];
    }

    v9 = objc_alloc(MEMORY[0x1E69D2558]);
    taskId = [v4 taskId];
    v11 = [SiriNLUTypesConverter convertUUID:taskId];
    v12 = [v9 initWithTaskId:v11 reason:reason task:task];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)convertSystemPrompted:(id)prompted
{
  promptedCopy = prompted;
  v4 = promptedCopy;
  if (promptedCopy)
  {
    target = [promptedCopy target];

    if (target)
    {
      target2 = [v4 target];
      target = [SiriNLUTypesUsoGraphConverter convertUsoGraph:target2];
    }

    v7 = [objc_alloc(MEMORY[0x1E69D2550]) initWithReference:target];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemOffered:(id)offered
{
  offeredCopy = offered;
  if (offeredCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2548]);
    offeredAct = [offeredCopy offeredAct];
    v6 = [SiriNLUTypesUDAConverter convertUserDialogAct:offeredAct];
    v7 = [v4 initWithOfferedAct:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemInformed:(id)informed
{
  informedCopy = informed;
  v4 = informedCopy;
  if (informedCopy)
  {
    entities = [informedCopy entities];

    if (entities)
    {
      entities2 = [v4 entities];
      entities = [SiriNLUTypesUsoGraphConverter convertUsoGraphs:entities2];
    }

    v7 = [objc_alloc(MEMORY[0x1E69D2540]) initWithEntities:entities];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemGaveOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2538]);
    choices = [optionsCopy choices];
    v6 = [SiriNLUTypesUDAConverter convertUserDialogActs:choices];
    v7 = [v4 initWithChoices:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemDialogActs:(id)acts
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

          v10 = [self convertSystemDialogAct:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertSystemDialogAct:(id)act
{
  v18 = *MEMORY[0x1E69E9840];
  actCopy = act;
  v5 = actCopy;
  if (!actCopy)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  if ([actCopy hasGaveOptions])
  {
    gaveOptions = [v5 gaveOptions];
    v7 = [self convertSystemGaveOptions:gaveOptions];
  }

  else if ([v5 hasInformed])
  {
    gaveOptions = [v5 informed];
    v7 = [self convertSystemInformed:gaveOptions];
  }

  else if ([v5 hasOffered])
  {
    gaveOptions = [v5 offered];
    v7 = [self convertSystemOffered:gaveOptions];
  }

  else if ([v5 hasPrompted])
  {
    gaveOptions = [v5 prompted];
    v7 = [self convertSystemPrompted:gaveOptions];
  }

  else if ([v5 hasReportedFailure])
  {
    gaveOptions = [v5 reportedFailure];
    v7 = [self convertSystemReportedFailure:gaveOptions];
  }

  else
  {
    if (![v5 hasReportedSuccess])
    {
LABEL_17:
      v11 = loggerContext(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "+[SiriNLUTypesSDAConverter convertSystemDialogAct:]";
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_1C8774000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: Encountered an unknown SDA %@", &v14, 0x16u);
      }

      goto LABEL_20;
    }

    gaveOptions = [v5 reportedSuccess];
    v7 = [self convertSystemReportedSuccess:gaveOptions];
  }

  v8 = v7;

  if (!v8)
  {
    goto LABEL_17;
  }

  if ([v5 hasRenderedText])
  {
    renderedText = [v5 renderedText];
    value = [renderedText value];
    [v8 setRenderedText:value];
  }

LABEL_21:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

@end