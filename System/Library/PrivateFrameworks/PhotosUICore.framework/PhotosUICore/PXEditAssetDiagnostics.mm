@interface PXEditAssetDiagnostics
- (PXEditAssetDiagnostics)initWithAsset:(id)asset contentEditingInput:(id)input compositionController:(id)controller originalComposition:(id)composition;
- (id)_renameFileAt:(id)at usingPrefix:(id)prefix;
- (void)_renderAssetWithCompositionController:(id)controller attachmentPrefix:(id)prefix scalePolicy:(id)policy completion:(id)completion;
- (void)collectDiagnosticsToTTRContainer:(id)container;
- (void)collectDiagnosticsWithOptions:(id)options completion:(id)completion;
- (void)deleteCollectedFiles;
@end

@implementation PXEditAssetDiagnostics

- (id)_renameFileAt:(id)at usingPrefix:(id)prefix
{
  v22 = *MEMORY[0x1E69E9840];
  atCopy = at;
  prefixCopy = prefix;
  lastPathComponent = [atCopy lastPathComponent];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", prefixCopy, lastPathComponent];

  uRLByDeletingLastPathComponent = [atCopy URLByDeletingLastPathComponent];
  v10 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v8];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v12 = [defaultManager moveItemAtURL:atCopy toURL:v10 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = atCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Could not prefix URL: %@ - Error: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)deleteCollectedFiles
{
  v22 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  diagnosticsPackage = [(PXEditAssetDiagnostics *)self diagnosticsPackage];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PXEditAssetDiagnostics_deleteCollectedFiles__block_invoke;
  aBlock[3] = &unk_1E773DF50;
  v5 = diagnosticsPackage;
  v19 = v5;
  v6 = defaultManager;
  v20 = v6;
  v7 = _Block_copy(aBlock);
  v7[2](v7, @"OriginalAssetURL");
  v7[2](v7, @"OriginalRenderedAssetURL");
  v7[2](v7, @"RenderedAssetURL");
  v7[2](v7, @"RenderedVideoComplementAssetURL");
  v7[2](v7, @"AdjustmentsURL");
  v8 = [v5 objectForKeyedSubscript:@"AuxiliaryURLArray"];
  v9 = v8;
  if (v8)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v6 removeItemAtURL:*(*(&v14 + 1) + 8 * v13++) error:0];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v11);
    }
  }
}

void __46__PXEditAssetDiagnostics_deleteCollectedFiles__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) removeItemAtURL:v3 error:0];
    v3 = v4;
  }
}

- (void)collectDiagnosticsToTTRContainer:(id)container
{
  containerCopy = container;
  diagnosticsPackage = [(PXEditAssetDiagnostics *)self diagnosticsPackage];

  if (diagnosticsPackage)
  {
    NSLog(&cfstr_ThereIsNoNeedT.isa);
  }

  v6 = [containerCopy beginCollectionOperationWithName:@"Edit Diagnostics Operation" timeout:180.0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXEditAssetDiagnostics_collectDiagnosticsToTTRContainer___block_invoke;
  v9[3] = &unk_1E7747D28;
  v10 = v6;
  selfCopy = self;
  v12 = containerCopy;
  v7 = containerCopy;
  v8 = v6;
  [(PXEditAssetDiagnostics *)self collectDiagnosticsWithOptions:0 completion:v9];
}

void __59__PXEditAssetDiagnostics_collectDiagnosticsToTTRContainer___block_invoke(id *a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a1[5] diagnosticsPackage];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PXEditAssetDiagnostics_collectDiagnosticsToTTRContainer___block_invoke_2;
    aBlock[3] = &unk_1E773DF50;
    v4 = v3;
    v19 = v4;
    v20 = a1[6];
    v5 = _Block_copy(aBlock);
    v5[2](v5, @"OriginalAssetURL");
    v5[2](v5, @"OriginalRenderedAssetURL");
    v5[2](v5, @"RenderedAssetURL");
    v5[2](v5, @"RenderedVideoComplementAssetURL");
    v5[2](v5, @"AdjustmentsURL");
    v6 = [v4 objectForKeyedSubscript:@"AuxiliaryURLArray"];
    v7 = v6;
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [a1[6] addAttachment:*(*(&v14 + 1) + 8 * i)];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v21 count:16];
        }

        while (v9);
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"AdjustmentsDescriptionString"];
    if (v12)
    {
      [a1[6] addAttachmentWithText:v12 name:@"EditSession_CompositionControllerDebugDescription"];
    }

    [a1[4] endWithSuccess:1 error:0];
  }

  else
  {
    v13 = a1[4];

    [v13 endWithSuccess:0 error:0];
  }
}

void __59__PXEditAssetDiagnostics_collectDiagnosticsToTTRContainer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addAttachment:v3];
    v3 = v4;
  }
}

- (void)_renderAssetWithCompositionController:(id)controller attachmentPrefix:(id)prefix scalePolicy:(id)policy completion:(id)completion
{
  controllerCopy = controller;
  prefixCopy = prefix;
  policyCopy = policy;
  completionCopy = completion;
  v14 = MEMORY[0x1E69C4300];
  contentEditingInput = [(PXEditAssetDiagnostics *)self contentEditingInput];
  asset = [(PXEditAssetDiagnostics *)self asset];
  v17 = [v14 contentEditingOutputForContentEditingInput:contentEditingInput compositionController:controllerCopy asset:asset async:1 onlyChangingOriginalChoice:0];

  v18 = objc_alloc_init(MEMORY[0x1E69C4308]);
  v19 = v18;
  if (policyCopy)
  {
    [v18 setScalePolicy:policyCopy];
  }

  else
  {
    oneToOneScalePolicy = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
    [v19 setScalePolicy:oneToOneScalePolicy];
  }

  [v19 setApplyVideoOrientationAsMetadata:1];
  v21 = MEMORY[0x1E69C4300];
  renderQueue = [(PXEditAssetDiagnostics *)self renderQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __104__PXEditAssetDiagnostics__renderAssetWithCompositionController_attachmentPrefix_scalePolicy_completion___block_invoke;
  v27[3] = &unk_1E774AD10;
  v28 = v17;
  selfCopy = self;
  v30 = prefixCopy;
  v31 = completionCopy;
  v23 = completionCopy;
  v24 = prefixCopy;
  v25 = v17;
  v26 = [v21 exportCompositionController:controllerCopy forContentEditingOutput:v25 settings:v19 completionQueue:renderQueue completion:v27];
}

void __104__PXEditAssetDiagnostics__renderAssetWithCompositionController_attachmentPrefix_scalePolicy_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) renderedContentURL];
    if (v6 || ([*(a1 + 32) renderedPreviewContentURL], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [*(a1 + 40) _renameFileAt:v6 usingPrefix:*(a1 + 48)];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      v11 = v10;
      v12 = [*(a1 + 40) asset];
      if ([v12 isLivePhoto])
      {
        v13 = [*(a1 + 32) renderedVideoComplementContentURL];

        if (!v13)
        {
LABEL_17:

          goto LABEL_18;
        }

        v14 = *(a1 + 40);
        v15 = [*(a1 + 32) renderedVideoComplementContentURL];
        v16 = [v14 _renameFileAt:v15 usingPrefix:*(a1 + 48)];

        if (v16)
        {
          v12 = v16;
          v13 = v12;
        }

        else
        {
          v13 = [*(a1 + 32) renderedVideoComplementContentURL];
          v12 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "[PXEditAssetDiagnostics collectDiagnosticsWithCompletion:] Could not get result for exportCompositionController - Error: %@", &v18, 0xCu);
    }
  }

  v13 = 0;
  v11 = 0;
LABEL_18:
  (*(*(a1 + 56) + 16))();
}

- (void)collectDiagnosticsWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PXEditAssetDiagnosticsOptions);
  }

  diagnosticsQueue = self->_diagnosticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  block[4] = self;
  v12 = optionsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = optionsCopy;
  dispatch_async(diagnosticsQueue, block);
}

void __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke(id *a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [a1[4] asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1[4] asset];

    if (v6)
    {
      dispatch_group_enter(v2);
      v7 = MEMORY[0x1E6978630];
      v43[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_2;
      v39[3] = &unk_1E7735460;
      v39[4] = a1[4];
      v40 = v4;
      v41 = v3;
      v42 = v2;
      [v7 px_generateResourceFilesForAssets:v8 completionHandler:v39];
    }
  }

  else
  {

    v6 = 0;
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  [v3 setObject:v4 forKeyedSubscript:@"AuxiliaryURLArray"];
  v9 = [a1[4] compositionController];
  v10 = [v9 debugDescription];
  [v3 setObject:v10 forKeyedSubscript:@"AdjustmentsDescriptionString"];

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 1;
  v11 = [a1[4] contentEditingInput];

  if (v11)
  {
    dispatch_group_enter(v2);
    v12 = a1[4];
    v13 = [v12 compositionController];
    v14 = [a1[5] scalePolicyForRenders];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_3;
    v33[3] = &unk_1E7735488;
    v34 = v3;
    v36 = v37;
    v35 = v2;
    [v12 _renderAssetWithCompositionController:v13 attachmentPrefix:@"EditSession" scalePolicy:v14 completion:v33];
  }

  if ([a1[5] includeOriginalRender])
  {
    dispatch_group_enter(v2);
    v15 = objc_alloc(MEMORY[0x1E69BDDE8]);
    v16 = [a1[4] originalComposition];
    v17 = [v15 initWithComposition:v16];

    v18 = a1[4];
    v19 = [a1[5] scalePolicyForRenders];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_4;
    v29[3] = &unk_1E7735488;
    v30 = v3;
    v32 = v37;
    v31 = v2;
    [v18 _renderAssetWithCompositionController:v17 attachmentPrefix:@"OriginalRender" scalePolicy:v19 completion:v29];
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v20 = [a1[4] compositionController];
  v21 = [v20 inpaintAdjustmentController];

  if (v21)
  {
    v22 = MEMORY[0x1E69C4268];
    v23 = [a1[4] compositionController];
    v24 = [v22 logForCompositionController:v23];

    if ([v24 length])
    {
      [v3 setObject:v24 forKeyedSubscript:@"CleanupDiagnosticSummaryString"];
    }
  }

  v25 = [v3 copy];
  [a1[4] setDiagnosticsPackage:v25];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_5;
  block[3] = &unk_1E77463F8;
  v27 = a1[6];
  v28 = v37;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v37, 8);
}

void __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) asset];
  v5 = [v4 originalFilename];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v27 = 0;
    v9 = 0;
    v10 = *v30;
    do
    {
      v11 = 0;
      v28 = v8;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [*(a1 + 32) _renameFileAt:v12 usingPrefix:{@"EntryAsset", v27}];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v12;
        }

        v16 = v15;

        v17 = [v12 lastPathComponent];
        if ([v17 isEqualToString:v5])
        {
          v18 = v16;

          v9 = v18;
        }

        else
        {
          v19 = v10;
          v20 = v9;
          v21 = v5;
          v22 = v6;
          v23 = [v17 stringByDeletingPathExtension];
          v24 = [v23 isEqualToString:@"PenultimateFullSizeRender"];

          if (v24)
          {
            v25 = v16;

            v27 = v25;
          }

          else
          {
            [*(a1 + 40) addObject:v16];
          }

          v6 = v22;
          v5 = v21;
          v9 = v20;
          v10 = v19;
          v8 = v28;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);

    if (v9)
    {
      [*(a1 + 48) setObject:v9 forKeyedSubscript:@"OriginalAssetURL"];
    }

    v26 = v27;
    if (v27)
    {
      [*(a1 + 48) setObject:v27 forKeyedSubscript:@"PenultimateAssetURL"];
    }
  }

  else
  {

    v26 = 0;
    v9 = 0;
  }

  dispatch_group_leave(*(a1 + 56));
}

void __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_3(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    [*(a1 + 32) setObject:a3 forKeyedSubscript:@"RenderedAssetURL"];
    if (v7)
    {
      [*(a1 + 32) setObject:v7 forKeyedSubscript:@"RenderedVideoComplementAssetURL"];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a3 forKeyedSubscript:@"OriginalRenderedAssetURL"];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

uint64_t __67__PXEditAssetDiagnostics_collectDiagnosticsWithOptions_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

- (PXEditAssetDiagnostics)initWithAsset:(id)asset contentEditingInput:(id)input compositionController:(id)controller originalComposition:(id)composition
{
  assetCopy = asset;
  inputCopy = input;
  controllerCopy = controller;
  compositionCopy = composition;
  v28.receiver = self;
  v28.super_class = PXEditAssetDiagnostics;
  v14 = [(PXEditAssetDiagnostics *)&v28 init];
  asset = v14->_asset;
  v14->_asset = assetCopy;
  v16 = assetCopy;

  contentEditingInput = v14->_contentEditingInput;
  v14->_contentEditingInput = inputCopy;
  v18 = inputCopy;

  compositionController = v14->_compositionController;
  v14->_compositionController = controllerCopy;
  v20 = controllerCopy;

  originalComposition = v14->_originalComposition;
  v14->_originalComposition = compositionCopy;
  v22 = compositionCopy;

  v23 = dispatch_queue_create("PXEditAssetDiagnostics", 0);
  diagnosticsQueue = v14->_diagnosticsQueue;
  v14->_diagnosticsQueue = v23;

  v25 = dispatch_queue_create("PXEditAssetDiagnosticsRender", 0);
  renderQueue = v14->_renderQueue;
  v14->_renderQueue = v25;

  return v14;
}

@end