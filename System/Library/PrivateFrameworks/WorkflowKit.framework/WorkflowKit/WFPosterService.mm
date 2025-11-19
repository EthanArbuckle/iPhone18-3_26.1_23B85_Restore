@interface WFPosterService
- (void)fetchEligiblePostersWithCompletionHandler:(id)a3;
- (void)findPosterMatchingRepresentation:(id)a3 completionHandler:(id)a4;
- (void)getPostersWithCompletionHandler:(id)a3;
@end

@implementation WFPosterService

- (void)findPosterMatchingRepresentation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WFPosterService_findPosterMatchingRepresentation_completionHandler___block_invoke;
  v10[3] = &unk_1E837F020;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(WFPosterService *)self getPostersWithCompletionHandler:v10];
}

void __70__WFPosterService_findPosterMatchingRepresentation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__WFPosterService_findPosterMatchingRepresentation_completionHandler___block_invoke_2;
    v8[3] = &unk_1E8376E78;
    v9 = *(a1 + 32);
    v7 = [v5 if_firstObjectPassingTest:v8];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __70__WFPosterService_findPosterMatchingRepresentation_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v3 UUID];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)getPostersWithCompletionHandler:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getPRSServiceClass_softClass;
  v14 = getPRSServiceClass_softClass;
  if (!getPRSServiceClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getPRSServiceClass_block_invoke;
    v10[3] = &unk_1E837FAC0;
    v10[4] = &v11;
    __getPRSServiceClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__WFPosterService_getPostersWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E837F588;
  v9 = v3;
  v7 = v3;
  [v6 fetchPosterConfigurations:v8];
}

void __51__WFPosterService_getPostersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__WFPosterService_getPostersWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_1E8376E50;
    v7 = v4;
    v5 = v4;
    [v3 enumerateObjectsUsingBlock:v6];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __51__WFPosterService_getPostersWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = WFLocalizedString(@"Wallpaper %ld");
  v12 = [v5 localizedStringWithFormat:v7, a3 + 1];

  v8 = [WFPosterRepresentation alloc];
  v9 = [v6 serverUUID];
  v10 = [v6 providerBundleIdentifier];

  v11 = [(WFPosterRepresentation *)v8 initWithUUID:v9 name:v12 providerBundleIdentifier:v10];
  [*(a1 + 32) addObject:v11];
}

- (void)fetchEligiblePostersWithCompletionHandler:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getPRSExternalSystemServiceClass_softClass;
  v11 = getPRSExternalSystemServiceClass_softClass;
  if (!getPRSExternalSystemServiceClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPRSExternalSystemServiceClass_block_invoke;
    v7[3] = &unk_1E837FAC0;
    v7[4] = &v8;
    __getPRSExternalSystemServiceClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = objc_alloc_init(v4);
  [v6 fetchEligibleConfigurationsWithCompletion:v3];
}

@end