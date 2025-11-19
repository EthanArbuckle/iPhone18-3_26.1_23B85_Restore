@interface SiriNLUTypesSDAConverter
+ (id)convertSystemDialogAct:(id)a3;
+ (id)convertSystemDialogActs:(id)a3;
+ (id)convertSystemGaveOptions:(id)a3;
+ (id)convertSystemInformed:(id)a3;
+ (id)convertSystemOffered:(id)a3;
+ (id)convertSystemPrompted:(id)a3;
+ (id)convertSystemReportedFailure:(id)a3;
+ (id)convertSystemReportedSuccess:(id)a3;
@end

@implementation SiriNLUTypesSDAConverter

+ (id)convertSystemReportedSuccess:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 task];

    if (v5)
    {
      v6 = [v4 task];
      v5 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v6];
    }

    v7 = objc_alloc(MEMORY[0x1E69D2560]);
    v8 = [v4 taskId];
    v9 = [SiriNLUTypesConverter convertUUID:v8];
    v10 = [v7 initWithTaskId:v9 task:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)convertSystemReportedFailure:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 reason];

    if (v5)
    {
      v6 = [v4 reason];
      v5 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v6];
    }

    v7 = [v4 task];

    if (v7)
    {
      v8 = [v4 task];
      v7 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v8];
    }

    v9 = objc_alloc(MEMORY[0x1E69D2558]);
    v10 = [v4 taskId];
    v11 = [SiriNLUTypesConverter convertUUID:v10];
    v12 = [v9 initWithTaskId:v11 reason:v5 task:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)convertSystemPrompted:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 target];

    if (v5)
    {
      v6 = [v4 target];
      v5 = [SiriNLUTypesUsoGraphConverter convertUsoGraph:v6];
    }

    v7 = [objc_alloc(MEMORY[0x1E69D2550]) initWithReference:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemOffered:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2548]);
    v5 = [v3 offeredAct];
    v6 = [SiriNLUTypesUDAConverter convertUserDialogAct:v5];
    v7 = [v4 initWithOfferedAct:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemInformed:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 entities];

    if (v5)
    {
      v6 = [v4 entities];
      v5 = [SiriNLUTypesUsoGraphConverter convertUsoGraphs:v6];
    }

    v7 = [objc_alloc(MEMORY[0x1E69D2540]) initWithEntities:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemGaveOptions:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69D2538]);
    v5 = [v3 choices];
    v6 = [SiriNLUTypesUDAConverter convertUserDialogActs:v5];
    v7 = [v4 initWithChoices:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)convertSystemDialogActs:(id)a3
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

          v10 = [a1 convertSystemDialogAct:{*(*(&v13 + 1) + 8 * i), v13}];
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

+ (id)convertSystemDialogAct:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  if ([v4 hasGaveOptions])
  {
    v6 = [v5 gaveOptions];
    v7 = [a1 convertSystemGaveOptions:v6];
  }

  else if ([v5 hasInformed])
  {
    v6 = [v5 informed];
    v7 = [a1 convertSystemInformed:v6];
  }

  else if ([v5 hasOffered])
  {
    v6 = [v5 offered];
    v7 = [a1 convertSystemOffered:v6];
  }

  else if ([v5 hasPrompted])
  {
    v6 = [v5 prompted];
    v7 = [a1 convertSystemPrompted:v6];
  }

  else if ([v5 hasReportedFailure])
  {
    v6 = [v5 reportedFailure];
    v7 = [a1 convertSystemReportedFailure:v6];
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

    v6 = [v5 reportedSuccess];
    v7 = [a1 convertSystemReportedSuccess:v6];
  }

  v8 = v7;

  if (!v8)
  {
    goto LABEL_17;
  }

  if ([v5 hasRenderedText])
  {
    v9 = [v5 renderedText];
    v10 = [v9 value];
    [v8 setRenderedText:v10];
  }

LABEL_21:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

@end