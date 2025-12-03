@interface PBItemRepresentation
- (PBItemRepresentation)initWithNSItemRepresentation:(id)representation;
- (PBItemRepresentation)initWithType:(id)type preferredRepresentation:(unint64_t)representation loader:(id)loader;
- (PBItemRepresentation)initWithType:(id)type preferredRepresentation:(unint64_t)representation v2_loader:(id)v2_loader;
- (PBItemRepresentation)initWithType:(id)type preferredRepresentation:(unint64_t)representation v3_loader:(id)v3_loader;
- (PBItemRepresentationDataTransferDelegate)dataTransferDelegate;
- (id)_loadWithContext:(id)context completionBlock:(id)block;
- (id)copyWithDoNothingLoaderBlock;
- (id)loadDataWithCompletion:(id)completion;
- (id)loadDataWithContext:(id)context completion:(id)completion;
- (id)loadFileCopyWithCompletion:(id)completion;
- (id)loadFileCopyWithContext:(id)context completion:(id)completion;
- (id)loadOpenInPlaceWithCompletion:(id)completion;
- (id)loadOpenInPlaceWithContext:(id)context completion:(id)completion;
- (id)loadWithCompletionHandler:(id)handler;
- (id)loadWithContext:(id)context completionHandler:(id)handler;
- (id)performProgressTrackingWithLoaderBlock:(id)block onCancelCallback:(id)callback;
- (void)setLoaderBlock:(id)block;
@end

@implementation PBItemRepresentation

- (PBItemRepresentation)initWithType:(id)type preferredRepresentation:(unint64_t)representation loader:(id)loader
{
  loaderCopy = loader;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__PBItemRepresentation_initWithType_preferredRepresentation_loader___block_invoke;
  v14[3] = &unk_279A06260;
  v15 = loaderCopy;
  v9 = loaderCopy;
  typeCopy = type;
  v11 = MEMORY[0x25F8AC430](v14);
  v12 = [(PBItemRepresentation *)self initWithType:typeCopy preferredRepresentation:representation v2_loader:v11];

  return v12;
}

id __68__PBItemRepresentation_initWithType_preferredRepresentation_loader___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__PBItemRepresentation_initWithType_preferredRepresentation_loader___block_invoke_2;
  v8[3] = &unk_279A06238;
  v9 = v3;
  v4 = v3;
  v5 = MEMORY[0x25F8AC430](v8);
  v6 = (*(*(a1 + 32) + 16))();

  return v6;
}

- (PBItemRepresentation)initWithType:(id)type preferredRepresentation:(unint64_t)representation v2_loader:(id)v2_loader
{
  v2_loaderCopy = v2_loader;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PBItemRepresentation_initWithType_preferredRepresentation_v2_loader___block_invoke;
  v12[3] = &unk_279A06288;
  v13 = v2_loaderCopy;
  v9 = v2_loaderCopy;
  v10 = [(PBItemRepresentation *)self initWithType:type preferredRepresentation:representation v3_loader:v12];

  return v10;
}

- (PBItemRepresentation)initWithType:(id)type preferredRepresentation:(unint64_t)representation v3_loader:(id)v3_loader
{
  typeCopy = type;
  v3_loaderCopy = v3_loader;
  v16.receiver = self;
  v16.super_class = PBItemRepresentation;
  v11 = [(PBItemRepresentation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_typeIdentifier, type);
    v13 = MEMORY[0x25F8AC430](v3_loaderCopy);
    loader = v12->_loader;
    v12->_loader = v13;

    v12->_preferredRepresentation = representation;
  }

  return v12;
}

- (PBItemRepresentation)initWithNSItemRepresentation:(id)representation
{
  representationCopy = representation;
  typeIdentifier = [representationCopy typeIdentifier];
  preferredRepresentation = [representationCopy preferredRepresentation];
  if (preferredRepresentation == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = preferredRepresentation == 1;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__PBItemRepresentation_initWithNSItemRepresentation___block_invoke;
  v11[3] = &unk_279A062D8;
  v8 = representationCopy;
  v12 = v8;
  v9 = [(PBItemRepresentation *)self initWithType:typeIdentifier preferredRepresentation:v7 v2_loader:v11];

  if (v9)
  {
    v9->_visibility = [v8 visibility];
    if (objc_opt_respondsToSelector())
    {
      v9->_isDataAvailableImmediately = [v8 isDataAvailableImmediately];
    }
  }

  return v9;
}

id __53__PBItemRepresentation_initWithNSItemRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PBItemRepresentation_initWithNSItemRepresentation___block_invoke_2;
  v8[3] = &unk_279A062B0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 loadWithOptions_v2:0 completionHandler:v8];

  return v6;
}

void __53__PBItemRepresentation_initWithNSItemRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v4 = [PBSecurityScopedURLWrapper alloc];
    v5 = [v3 urlWrapper];
    v10 = [(PBSecurityScopedURLWrapper *)v4 initWithNSURLWrapper:v5];

    v6 = *(a1 + 32);
    v7 = [v3 data];
    v8 = [v3 error];
    v9 = [v3 cleanupHandler];

    (*(v6 + 16))(v6, v7, v10, 0, v8, v9);
  }
}

- (id)copyWithDoNothingLoaderBlock
{
  v3 = objc_alloc(objc_opt_class());
  typeIdentifier = self->_typeIdentifier;
  preferredRepresentation = [(PBItemRepresentation *)self preferredRepresentation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PBItemRepresentation_copyWithDoNothingLoaderBlock__block_invoke;
  v7[3] = &unk_279A062D8;
  v7[4] = self;
  result = [v3 initWithType:typeIdentifier preferredRepresentation:preferredRepresentation v2_loader:v7];
  *(result + 4) = self->_preferredRepresentation;
  *(result + 5) = self->_visibility;
  *(result + 16) = self->_isDataAvailableImmediately;
  return result;
}

uint64_t __52__PBItemRepresentation_copyWithDoNothingLoaderBlock__block_invoke(uint64_t a1, void (**a2)(void, void, void, void, void, void))
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  v5 = PBCannotLoadRepresentationError(v3, 0);
  (a2)[2](v4, 0, 0, 0, v5, 0);

  return 0;
}

- (id)performProgressTrackingWithLoaderBlock:(id)block onCancelCallback:(id)callback
{
  blockCopy = block;
  callbackCopy = callback;
  v7 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke;
  v28[3] = &unk_279A06300;
  v30 = v31;
  v8 = callbackCopy;
  v29 = v8;
  [v7 setCancellationHandler:v28];
  v9 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_8;
  v17 = &unk_279A06378;
  v20 = &v22;
  v10 = blockCopy;
  v19 = v10;
  v11 = v9;
  v18 = v11;
  v21 = v31;
  _os_activity_initiate(&dword_25E138000, "loading item", OS_ACTIVITY_FLAG_DEFAULT, &v14);

  v12 = v23[5];
  if (v12)
  {
    [v7 addChild:v12 withPendingUnitCount:{100, v14, v15, v16, v17}];
  }

  else
  {
    [v7 addChild:v11 withPendingUnitCount:{100, v14, v15, v16, v17}];
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(v31, 8);

  return v7;
}

void __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_2;
  v3[3] = &unk_279A06300;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  PBDispatchAsyncCallback(v3);
}

uint64_t __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_8(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_2_9;
  v8[3] = &unk_279A06350;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v9 = v3;
  v10 = v4;
  v5 = (*(v2 + 16))(v2, v8);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_2_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_3;
  v7[3] = &unk_279A06328;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  PBDispatchAsyncCallback(v7);
}

uint64_t __80__PBItemRepresentation_performProgressTrackingWithLoaderBlock_onCancelCallback___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (id)_loadWithContext:(id)context completionBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v8 = objc_alloc_init(PBCallbackSerialization);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__12;
  v36[4] = __Block_byref_object_dispose__13;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy_;
  v34[4] = __Block_byref_object_dispose_;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke;
  v29[3] = &unk_279A063C8;
  v32 = v34;
  v9 = v8;
  v30 = v9;
  selfCopy = self;
  v33 = v36;
  v10 = MEMORY[0x25F8AC430](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_3;
  v24[3] = &unk_279A06490;
  v24[4] = self;
  v11 = contextCopy;
  v25 = v11;
  v28 = v36;
  v26 = blockCopy;
  v27 = v10;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_4_19;
  v21[3] = &unk_279A064B8;
  v12 = v26;
  v22 = v12;
  v13 = v27;
  v23 = v13;
  v14 = [(PBItemRepresentation *)self performProgressTrackingWithLoaderBlock:v24 onCancelCallback:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_7_22;
  v19[3] = &unk_279A064E0;
  v19[4] = self;
  v15 = v14;
  v20 = v15;
  [(PBCallbackSerialization *)v9 sendBeginBlock:v19];
  v16 = v20;
  v17 = v15;

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  return v17;
}

uint64_t __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke(void *a1)
{
  [*(*(a1[6] + 8) + 40) setCompletedUnitCount:{objc_msgSend(*(*(a1[6] + 8) + 40), "totalUnitCount")}];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_2;
  v4[3] = &unk_279A063A0;
  v2 = a1[4];
  v4[4] = a1[5];
  [v2 sendEndBlock:v4];
  result = *(*(a1[7] + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataTransferDelegate];
  [v2 itemRepresentationFinishedDataTransfer:*(a1 + 32)];
}

id __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_4;
  v10[3] = &unk_279A06440;
  v14 = *(a1 + 64);
  v6 = v3;
  v11 = v6;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v7 = (*(v5 + 16))(v5, v4, v10);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = MEMORY[0x25F8AC430](a6);
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_5;
  v25[3] = &unk_279A06418;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v29 = v14;
  v30 = v19;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v31 = *(a1 + 48);
  v20 = *(v18 + 16);
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v20(v18, v25);
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_6;
    v7[3] = &unk_279A063F0;
    v8 = *(a1 + 72);
    (*(v1 + 16))(v1, v2, v3, v4, v5, v7);
  }

  else
  {
    v6 = *(*(a1 + 72) + 16);

    v6();
  }
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_6(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_7;
  v1[3] = &unk_279A063F0;
  v2 = *(a1 + 32);
  PBDispatchAsyncCallback(v1);
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_2_16;
    v6[3] = &unk_279A063F0;
    v7 = *(a1 + 48);
    (*(v2 + 16))(v2, 0, 0, 0, v3, v6);
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_2_16(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_3_17;
  v1[3] = &unk_279A063F0;
  v2 = *(a1 + 32);
  PBDispatchAsyncCallback(v1);
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_4_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PBDataTransferCancelledError(0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_5_20;
    v6[3] = &unk_279A063F0;
    v7 = *(a1 + 40);
    (*(v2 + 16))(v2, 0, 0, 0, v3, v6);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_5_20(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_6_21;
  v1[3] = &unk_279A063F0;
  v2 = *(a1 + 32);
  PBDispatchAsyncCallback(v1);
}

void __57__PBItemRepresentation__loadWithContext_completionBlock___block_invoke_7_22(uint64_t a1)
{
  v2 = [*(a1 + 32) dataTransferDelegate];
  [v2 itemRepresentation:*(a1 + 32) beganDataTransferWithProgress:*(a1 + 40)];
}

- (id)loadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PBItemRepresentation_loadWithCompletionHandler___block_invoke;
  v8[3] = &unk_279A06508;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(PBItemRepresentation *)self loadWithContext:0 completionHandler:v8];

  return v6;
}

- (id)loadWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__PBItemRepresentation_loadWithContext_completionHandler___block_invoke;
  v10[3] = &unk_279A06508;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(PBItemRepresentation *)self _loadWithContext:context completionBlock:v10];

  return v8;
}

void __58__PBItemRepresentation_loadWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__PBItemRepresentation_loadWithContext_completionHandler___block_invoke_2;
    v17[3] = &unk_279A06418;
    v22 = v16;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v23 = v15;
    PBDispatchAsyncCallback(v17);
  }
}

- (void)setLoaderBlock:(id)block
{
  v4 = MEMORY[0x25F8AC430](block, a2);
  loader = self->_loader;
  self->_loader = v4;

  MEMORY[0x2821F96F8]();
}

- (id)loadDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PBItemRepresentation_loadDataWithCompletion___block_invoke;
  v8[3] = &unk_279A06530;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = [(PBItemRepresentation *)self loadDataWithDetailedCompletion:v8];

  return v6;
}

- (id)loadDataWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
  preferredRepresentation = [(PBItemRepresentation *)self preferredRepresentation];
  if (preferredRepresentation)
  {
    preferredRepresentation = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke;
  v17[3] = &unk_279A065D0;
  v17[4] = self;
  v19 = completionCopy;
  v10 = preferredRepresentation;
  v18 = v10;
  v11 = completionCopy;
  v12 = [(PBItemRepresentation *)self _loadWithContext:contextCopy completionBlock:v17];
  if (v10)
  {
    if ([(PBItemRepresentation *)self preferredRepresentation]== 2)
    {
      [v8 addChild:v12 withPendingUnitCount:10];
      v13 = v8;
      v14 = v10;
      v15 = 90;
    }

    else
    {
      [v8 addChild:v12 withPendingUnitCount:50];
      v13 = v8;
      v14 = v10;
      v15 = 50;
    }
  }

  else
  {
    v13 = v8;
    v14 = v12;
    v15 = 100;
  }

  [v13 addChild:v14 withPendingUnitCount:v15];

  return v8;
}

void __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy_;
  v38[4] = __Block_byref_object_dispose_;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v16 = v14;
  v37 = v16;
  if (v16)
  {
    goto LABEL_5;
  }

  if (v11)
  {
    v17 = v11;
    v18 = 0;
    v16 = 0;
    v39 = v17;
LABEL_4:

    goto LABEL_5;
  }

  if (v12)
  {
    v19 = [v12 url];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke_2;
    v28[3] = &unk_279A06580;
    v28[4] = *(a1 + 32);
    v30 = *(a1 + 48);
    v29 = v13;
    v31 = v15;
    v20 = PBCoordinatedReadForUploading(v19, v28);

    [*(a1 + 40) addChild:v20 withPendingUnitCount:100];
    v16 = 0;
    goto LABEL_6;
  }

  v16 = PBNoLoaderAvailableError(*(*(a1 + 32) + 24), 0);
  if (v16)
  {
    v21 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), v16);
    v18 = v33[5];
    v33[5] = v21;
    goto LABEL_4;
  }

LABEL_5:
  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke_4;
  v22[3] = &unk_279A065A8;
  v24 = *(a1 + 48);
  v26 = v38;
  v23 = v13;
  v27 = &v32;
  v25 = v15;
  PBDispatchAsyncCallback(v22);

LABEL_6:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(v38, 8);
}

void __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v9 = v6;
  if (v5 && !v6)
  {
    v10 = *(*(a1 + 32) + 24);
    v26 = 0;
    v11 = PBCloneToTemporaryDir(v5, v10, &v26);
    v12 = v26;
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v25 = 0;
      v14 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:8 error:&v25];
      v9 = v25;
    }

    else
    {
      v9 = v12;
      v14 = 0;
      v8 = 0;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    [v15 removeItemAtURL:v11 error:0];

    v8 = v14;
LABEL_11:
  }

  if (v9)
  {
    v16 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), v9);

    v7 = v16;
  }

  if (!(v8 | v7))
  {
    v7 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), 0);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke_3;
  v19[3] = &unk_279A06558;
  v23 = *(a1 + 48);
  v20 = v8;
  v21 = *(a1 + 40);
  v22 = v7;
  v24 = *(a1 + 56);
  v17 = v7;
  v18 = v8;
  PBDispatchAsyncCallback(v19);
}

uint64_t __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke_3(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5], a1[6]);
  }

  result = a1[8];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __55__PBItemRepresentation_loadDataWithContext_completion___block_invoke_4(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[7] + 8) + 40), a1[4], *(*(a1[8] + 8) + 40));
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)loadFileCopyWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PBItemRepresentation_loadFileCopyWithCompletion___block_invoke;
  v8[3] = &unk_279A065F8;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = [(PBItemRepresentation *)self loadFileCopyWithDetailedCompletion:v8];

  return v6;
}

- (id)loadFileCopyWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
  preferredRepresentation = [(PBItemRepresentation *)self preferredRepresentation];
  if (preferredRepresentation)
  {
    preferredRepresentation = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke;
  v17[3] = &unk_279A065D0;
  v17[4] = self;
  v19 = completionCopy;
  v10 = preferredRepresentation;
  v18 = v10;
  v11 = completionCopy;
  v12 = [(PBItemRepresentation *)self _loadWithContext:contextCopy completionBlock:v17];
  if (v10)
  {
    if ([(PBItemRepresentation *)self preferredRepresentation]== 2)
    {
      [v8 addChild:v12 withPendingUnitCount:10];
      v13 = v8;
      v14 = v10;
      v15 = 90;
    }

    else
    {
      [v8 addChild:v12 withPendingUnitCount:50];
      v13 = v8;
      v14 = v10;
      v15 = 50;
    }
  }

  else
  {
    v13 = v8;
    v14 = v12;
    v15 = 100;
  }

  [v13 addChild:v14 withPendingUnitCount:v15];

  return v8;
}

void __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v14;
  v17 = v16;
  if (v16)
  {
    v18 = 0;
    v19 = v16;
LABEL_16:
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke_3;
    v31[3] = &unk_279A06558;
    v28 = *(a1 + 48);
    v32 = v18;
    v33 = v13;
    v34 = v19;
    v35 = v28;
    v36 = v15;
    v29 = v15;
    v30 = v13;
    v24 = v19;
    v25 = v18;
    PBDispatchAsyncCallback(v31);

    goto LABEL_17;
  }

  if (v11)
  {
    v18 = CPTemporaryFileWithUniqueName();
    if (v18)
    {
      [v11 writeToURL:v18 atomically:1];
      v20 = v18;
      v21 = 0;
    }

    else
    {
      v27 = _PBLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_25E138000, v27, OS_LOG_TYPE_FAULT, "Cannot create temporary file.", buf, 2u);
      }

      v21 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), 0);
    }

    if (v21)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!v12)
  {
    v21 = PBNoLoaderAvailableError(*(*(a1 + 32) + 24), 0);
    v18 = 0;
    if (v21)
    {
LABEL_12:
      v19 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), v21);
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v22 = [v12 url];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke_28;
  v37[3] = &unk_279A06620;
  v37[4] = *(a1 + 32);
  v38 = v12;
  v23 = *(a1 + 48);
  v39 = v13;
  v40 = v23;
  v41 = v15;
  v24 = v15;
  v25 = v13;
  v26 = PBCoordinatedRead(v22, v37);

  [*(a1 + 40) addChild:v26 withPendingUnitCount:100];
LABEL_17:
}

void __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v8 = v5;
  if (a2 && !v5)
  {
    v9 = *(*(a1 + 32) + 24);
    v23 = 0;
    v10 = PBCloneToTemporaryDir(a2, v9, &v23);
    v11 = v23;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v7 = v10;
      v8 = 0;
    }

    else
    {
      v13 = v11;
      v14 = [*(a1 + 40) url];
      v8 = PBCannotCopyFileError(v14, 0, v13);

      if (v8)
      {
        v6 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), v8);
        v7 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v7 = 0;
    }

    v6 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke_2;
  v17[3] = &unk_279A06558;
  v21 = *(a1 + 56);
  v18 = v7;
  v19 = *(a1 + 48);
  v20 = v6;
  v22 = *(a1 + 64);
  v15 = v6;
  v16 = v7;
  PBDispatchAsyncCallback(v17);
}

uint64_t __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5], a1[6]);
    if (a1[4])
    {
      v3 = [MEMORY[0x277CCAA00] defaultManager];
      [v3 removeItemAtURL:a1[4] error:0];
    }
  }

  result = a1[8];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __59__PBItemRepresentation_loadFileCopyWithContext_completion___block_invoke_3(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5], a1[6]);
    if (a1[4])
    {
      v3 = [MEMORY[0x277CCAA00] defaultManager];
      [v3 removeItemAtURL:a1[4] error:0];
    }
  }

  result = a1[8];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)loadOpenInPlaceWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__PBItemRepresentation_loadOpenInPlaceWithCompletion___block_invoke;
  v8[3] = &unk_279A06648;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = [(PBItemRepresentation *)self loadOpenInPlaceWithDetailedCompletion:v8];

  return v6;
}

- (id)loadOpenInPlaceWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke;
  v10[3] = &unk_279A066C0;
  v10[4] = self;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = [(PBItemRepresentation *)self _loadWithContext:context completionBlock:v10];

  return v8;
}

void __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v14;
  v17 = v16;
  if (v16)
  {
    v18 = 0;
    LOBYTE(v19) = 0;
    v20 = v16;
    goto LABEL_3;
  }

  if (v11)
  {
    v21 = CPTemporaryFileWithUniqueName();
    if (v21)
    {
      if ([v11 writeToURL:v21 atomically:1])
      {
        v18 = v21;
        v19 = 0;
        goto LABEL_22;
      }

      v32 = _PBLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_25E138000, v32, OS_LOG_TYPE_FAULT, "Could not write data to temporary file.", buf, 2u);
      }

      v31 = PBCannotCopyFileError(0, 0, 0);
    }

    else
    {
      v30 = _PBLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_25E138000, v30, OS_LOG_TYPE_FAULT, "Could not create temporary file.", buf, 2u);
      }

      v31 = PBCannotCreateTemporaryFile(0, 0);
    }

    v19 = v31;
    v18 = 0;
LABEL_22:

    if (v19)
    {
      goto LABEL_23;
    }

LABEL_27:
    v20 = 0;
    goto LABEL_3;
  }

  if (v12)
  {
    v22 = [v12 isReadonly];
    v23 = [v12 url];
    v18 = v23;
    if (!v22)
    {
      v20 = 0;
      LOBYTE(v19) = 1;
      goto LABEL_3;
    }

    v24 = [v23 startAccessingSecurityScopedResource];

    v25 = objc_alloc_init(MEMORY[0x277CCA9E8]);
    v26 = [v12 url];
    v44 = 0;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke_31;
    v40[3] = &unk_279A06670;
    v27 = *(a1 + 40);
    v40[4] = *(a1 + 32);
    v42 = v27;
    v41 = v13;
    v43 = v15;
    [v25 coordinateReadingItemAtURL:v26 options:1 error:&v44 byAccessor:v40];
    v19 = v44;

    if (v24)
    {
      v28 = [v12 url];
      [v28 stopAccessingSecurityScopedResource];
    }

    v18 = 0;
    if (!v19)
    {
      v20 = 0;
      goto LABEL_4;
    }

    v29 = 0;
    goto LABEL_24;
  }

  v19 = PBNoLoaderAvailableError(*(*(a1 + 32) + 24), 0);
  v18 = 0;
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_23:
  v29 = 1;
LABEL_24:
  v20 = PBCannotLoadRepresentationError(*(*(a1 + 32) + 24), v19);

  if (!v29)
  {
    goto LABEL_4;
  }

  LOBYTE(v19) = 0;
LABEL_3:
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke_3;
  v33[3] = &unk_279A06698;
  v37 = *(a1 + 40);
  v18 = v18;
  v34 = v18;
  v39 = v19;
  v35 = v13;
  v20 = v20;
  v36 = v20;
  v38 = v15;
  PBDispatchAsyncCallback(v33);

LABEL_4:
}

void __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 24);
    v19 = 0;
    v6 = PBCloneToTemporaryDir(v3, v5, &v19);
    v7 = v19;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = v6;
      v9 = 0;
    }

    else
    {
      v9 = v7;
      if (!v7)
      {
        v9 = PBCannotCopyFileError(v4, 0, 0);
      }

      v10 = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke_2;
    v13[3] = &unk_279A06558;
    v17 = *(a1 + 48);
    v14 = v10;
    v15 = *(a1 + 40);
    v16 = v9;
    v18 = *(a1 + 56);
    v11 = v9;
    v12 = v10;
    PBDispatchAsyncCallback(v13);
  }
}

uint64_t __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], 0, a1[5], a1[6]);
  }

  result = a1[8];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __62__PBItemRepresentation_loadOpenInPlaceWithContext_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 72), *(a1 + 40), *(a1 + 48));
  }

  result = *(a1 + 64);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (PBItemRepresentationDataTransferDelegate)dataTransferDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataTransferDelegate);

  return WeakRetained;
}

@end