@interface WFCurrentAppVariable
- (WFCurrentAppVariable)initWithAggrandizements:(id)a3;
- (id)icon;
- (id)possibleContentClasses;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
@end

@implementation WFCurrentAppVariable

- (id)possibleContentClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();

  return [v2 orderedSetWithObject:v3];
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v4 = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"app.dashed" symbolColor:v3 background:v4];

  return v5;
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__WFCurrentAppVariable_retrieveContentCollectionWithVariableSource_completionHandler___block_invoke;
  v7[3] = &unk_1E837F588;
  v8 = v4;
  v6 = v4;
  [v5 getCurrentAppWithCompletionHandler:v7];
}

void __86__WFCurrentAppVariable_retrieveContentCollectionWithVariableSource_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{*(*(&v14 + 1) + 8 * v12++), v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (WFCurrentAppVariable)initWithAggrandizements:(id)a3
{
  v4 = WFVariableDictionaryWithAggrandizements(a3);
  v5 = [(WFVariable *)self initWithDictionary:v4 variableProvider:0];

  return v5;
}

@end