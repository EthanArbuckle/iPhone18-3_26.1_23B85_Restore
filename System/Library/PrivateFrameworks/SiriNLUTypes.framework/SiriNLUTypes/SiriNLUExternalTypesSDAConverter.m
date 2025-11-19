@interface SiriNLUExternalTypesSDAConverter
+ (id)convertFromSystemDialogAct:(id)a3;
+ (id)convertFromSystemDialogActs:(id)a3;
+ (id)convertFromSystemGaveOptions:(id)a3;
+ (id)convertFromSystemInformed:(id)a3;
+ (id)convertFromSystemOffered:(id)a3;
+ (id)convertFromSystemPrompted:(id)a3;
+ (id)convertFromSystemReportedFailure:(id)a3;
+ (id)convertFromSystemReportedSuccess:(id)a3;
@end

@implementation SiriNLUExternalTypesSDAConverter

+ (id)convertFromSystemReportedSuccess:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemReportedSuccess);
    v5 = [v3 task];

    if (v5)
    {
      v6 = [v3 task];
      v5 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v6];
    }

    [(SIRINLUEXTERNALSystemReportedSuccess *)v4 setTask:v5];
    v7 = [v3 taskId];
    v8 = [SiriNLUExternalTypesConverter convertFromUUID:v7];
    [(SIRINLUEXTERNALSystemReportedSuccess *)v4 setTaskId:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemReportedFailure:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemReportedFailure);
    v5 = [v3 reason];

    if (v5)
    {
      v6 = [v3 reason];
      v5 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v6];
    }

    [(SIRINLUEXTERNALSystemReportedFailure *)v4 setReason:v5];
    v7 = [v3 task];

    if (v7)
    {
      v8 = [v3 task];
      v7 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v8];
    }

    [(SIRINLUEXTERNALSystemReportedFailure *)v4 setTask:v7];
    v9 = [v3 taskId];
    v10 = [SiriNLUExternalTypesConverter convertFromUUID:v9];
    [(SIRINLUEXTERNALSystemReportedFailure *)v4 setTaskId:v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemPrompted:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemPrompted);
    v5 = [v3 reference];

    if (v5)
    {
      v6 = [v3 reference];
      v5 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraph:v6];
    }

    [(SIRINLUEXTERNALSystemPrompted *)v4 setTarget:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemOffered:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemOffered);
    v5 = [v3 offeredAct];

    v6 = [SiriNLUExternalTypesUDAConverter convertFromUserDialogAct:v5];
    [(SIRINLUEXTERNALSystemOffered *)v4 setOfferedAct:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemInformed:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemInformed);
    v5 = [v3 entities];

    if (v5)
    {
      v6 = [v3 entities];
      v5 = [SiriNLUExternalTypesUsoGraphConverter convertFromUsoGraphs:v6];
    }

    [(SIRINLUEXTERNALSystemInformed *)v4 setEntities:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromSystemGaveOptions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSystemGaveOptions);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v3 choices];
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

          v11 = [SiriNLUExternalTypesUDAConverter convertFromUserDialogAct:*(*(&v14 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)convertFromSystemDialogAct:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = objc_alloc_init(SIRINLUEXTERNALSystemDialogAct);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromSystemGaveOptions:v4];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setGaveOptions:v6];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromSystemInformed:v4];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setInformed:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromSystemOffered:v4];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setOffered:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromSystemPrompted:v4];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setPrompted:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromSystemReportedFailure:v4];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setReportedFailure:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 convertFromSystemReportedSuccess:v4];
    [(SIRINLUEXTERNALSystemDialogAct *)v5 setReportedSuccess:v6];
    goto LABEL_15;
  }

LABEL_16:
  v7 = [v4 renderedText];
  v8 = [SiriNLUExternalTypesConverter convertFromString:v7];
  [(SIRINLUEXTERNALSystemDialogAct *)v5 setRenderedText:v8];

LABEL_17:

  return v5;
}

+ (id)convertFromSystemDialogActs:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
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

          v11 = [a1 convertFromSystemDialogAct:{*(*(&v14 + 1) + 8 * i), v14}];
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