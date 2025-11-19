@interface WFOutOfProcessWorkflowController
@end

@implementation WFOutOfProcessWorkflowController

void __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_173(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__15279;
    v22 = __Block_byref_object_dispose__15280;
    v23 = objc_opt_new();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_2;
    v14 = &unk_1E8375D98;
    v7 = *(a1 + 32);
    v17 = *(a1 + 56);
    v15 = v7;
    v16 = &v18;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];
    v8 = [v19[5] copy];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_3;
  v11[3] = &unk_1E8375D70;
  v8 = v5;
  v12 = v8;
  v9 = [v7 if_firstObjectPassingTest:v11];
  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a1[6] object:a1[7] file:@"WFOutOfProcessWorkflowController+ContextualActions.m" lineNumber:44 description:{@"can't find size descriptor matching the service's response (%@, %@)", a1[4], v8}];
  }

  [*(*(a1[5] + 8) + 40) setObject:v6 forKeyedSubscript:v9];
}

uint64_t __104__WFOutOfProcessWorkflowController_ContextualActions__computeFinderResizedSizesForImages_inSizes_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end