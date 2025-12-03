@interface RPTGroupScrollTestParameters
+ (id)newWithTestName:(id)name parameters:(id)parameters completionHandler:(id)handler;
- (id)composerBlock;
- (void)prepareWithComposer:(id)composer;
@end

@implementation RPTGroupScrollTestParameters

- (void)prepareWithComposer:(id)composer
{
  composerCopy = composer;
  parameters = [(RPTGroupScrollTestParameters *)self parameters];
  firstObject = [parameters firstObject];
  [firstObject prepareWithComposer:composerCopy];
}

+ (id)newWithTestName:(id)name parameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  nameCopy = name;
  v10 = objc_opt_new();
  [v10 setTestName:nameCopy];

  [v10 setParameters:parametersCopy];
  [v10 setCompletionHandler:handlerCopy];

  return v10;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__RPTGroupScrollTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __45__RPTGroupScrollTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = [*(a1 + 32) parameters];
  v6 = [v4 arrayWithArray:v5];

  [v6 removeObjectAtIndex:0];
  v7 = [*(a1 + 32) parameters];
  v8 = [v7 firstObject];
  v9 = [v8 composerBlock];
  (v9)[2](v9, v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        [v15 prepareWithComposer:{v3, v17}];
        v16 = [v15 composerBlock];
        (v16)[2](v16, v3);
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

@end