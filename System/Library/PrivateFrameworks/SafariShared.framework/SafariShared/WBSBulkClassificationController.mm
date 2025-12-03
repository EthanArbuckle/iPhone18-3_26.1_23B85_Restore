@interface WBSBulkClassificationController
- (WBSBulkClassificationController)initWithSuiteURL:(id)l bundleNames:(id)names;
- (void)_runClassificationForURL:(id)l viewportSize:(CGSize)size delegate:(id)delegate completionHandler:(id)handler;
- (void)runTestsAndStoreResultsIn:(id)in completionHandler:(id)handler;
@end

@implementation WBSBulkClassificationController

- (WBSBulkClassificationController)initWithSuiteURL:(id)l bundleNames:(id)names
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = WBSBulkClassificationController;
  v7 = [(WBSTestController *)&v14 initWithSuiteURL:0 bundleNames:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_inputFileURL, l);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager safari_createDirectoryWithTemplate:@"BulkClassification-XXXX" inDirectory:lCopy];
    scratchFileURL = v8->_scratchFileURL;
    v8->_scratchFileURL = v10;

    v12 = v8;
  }

  return v8;
}

- (void)runTestsAndStoreResultsIn:(id)in completionHandler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  delegate = [(WBSPageTestController *)self delegate];
  if (delegate)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.Safari.BulkClassification", v10);

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke;
    v16[3] = &unk_1E7FC8A98;
    v17 = inCopy;
    v18 = delegate;
    selfCopy = self;
    v21 = defaultManager;
    v22 = handlerCopy;
    v20 = v11;
    v12 = defaultManager;
    v13 = v11;
    [v18 pageTestControllerInitializeApp:self completionHandler:v16];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBSBulkClassificationController runTestsAndStoreResultsIn:v14 completionHandler:?];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    [inCopy reportError:v15 descriptiveResultsName:@"form metadata" forStage:0 forTest:0 inBundle:0];

    handlerCopy[2](handlerCopy);
  }
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_cold_1();
    }

    [*(a1 + 32) reportError:v3 descriptiveResultsName:@"form metadata" forStage:0 forTest:0 inBundle:0];
    [*(a1 + 40) pageTestControllerTerminateApp:*(a1 + 48)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_6;
    block[3] = &unk_1E7FC8A70;
    v5 = *(a1 + 56);
    *&v6 = *(a1 + 64);
    *(&v6 + 1) = *(a1 + 48);
    v10 = v6;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v12 = v10;
    v13 = v9;
    v14 = *(a1 + 32);
    v15 = *(a1 + 72);
    dispatch_async(v5, block);
  }
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_6(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 56);
  v24 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:&v24];
  v5 = v24;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 40) + 56);
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v5;
      _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Failed to read content of directory %@: %@", buf, 0x16u);
    }
  }

  v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v4 count];
    v10 = *(*(a1 + 40) + 56);
    *buf = 134218242;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu files in %@", buf, 0x16u);
  }

  v11 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7;
  v19[3] = &unk_1E7FC8A48;
  v15 = *(a1 + 32);
  v12 = v15.i64[0];
  v20 = vextq_s8(v15, v15, 8uLL);
  v21 = v5;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_32;
  v16[3] = &unk_1E7FB6E08;
  v16[4] = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v13 = v5;
  [v4 safari_enumerateAsynchronouslyOnQueue:v11 enumerationBlock:v19 completionBlock:v16];
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [v6 path];
  v9 = [v8 pathExtension];
  v10 = [v9 isEqualToString:@"zip"];

  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_DEFAULT, "Processing %@", buf, 0xCu);
    }

    v12 = [v6 path];
    v13 = [v12 safari_lastPathComponentWithoutZipExtension];

    v14 = [*(*(a1 + 32) + 64) URLByAppendingPathComponent:v13];
    v15 = *(a1 + 40);
    v16 = [v6 path];
    v17 = [v14 path];
    LOBYTE(v15) = [v15 safari_extractZipArchiveFromPath:v16 toDestination:v17 copyQuarantine:0];

    if (v15)
    {
      v18 = [v14 URLByAppendingPathComponent:@"safari_collection_metadata.json"];
      v19 = MEMORY[0x1E696ACB0];
      v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v18];
      v21 = [v19 JSONObjectWithData:v20 options:0 error:0];

      v22 = *MEMORY[0x1E695F060];
      v23 = *(MEMORY[0x1E695F060] + 8);
      v24 = [v21 safari_stringForKey:@"indexFile"];
      v25 = [v14 URLByAppendingPathComponent:v24];

      v26 = *(a1 + 56);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19;
      v30[3] = &unk_1E7FC8A20;
      v27 = *(a1 + 32);
      v31 = *(a1 + 40);
      v32 = v14;
      v37 = v7;
      v33 = v21;
      v34 = v6;
      v35 = *(a1 + 64);
      v36 = v13;
      v28 = v21;
      [v27 _runClassificationForURL:v25 viewportSize:v26 delegate:v30 completionHandler:{v22, v23}];
    }

    else
    {
      v29 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7_cold_1();
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  if (!v5 || v6)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_3();
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v22[0] = @"FormMetadata";
    v22[1] = @"CollectionMetadata";
    v7 = *(a1 + 48);
    v23[0] = v5;
    v23[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Received metadata for %@", buf, 0xCu);
    }

    v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_1(a1, v8, v11);
    }

    v19 = 0;
    v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:3 error:&v19];
    v13 = v19;
    if (v13)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_2();
      }
    }

    else
    {
      v16 = *(a1 + 64);
      v17 = [*(a1 + 72) stringByAppendingString:@"_formmetadata"];
      v18 = [*MEMORY[0x1E6982E68] identifier];
      [v16 reportResults:v12 resultsName:v17 descriptiveResultsName:@"form metadata" uniformTypeIdentifier:v18 forStage:0 forTest:0 inBundle:0];
    }

    (*(*(a1 + 80) + 16))();
  }
}

uint64_t __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_32(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(*(a1 + 32) + 64) error:0];

  [*(a1 + 40) pageTestControllerTerminateApp:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_runClassificationForURL:(id)l viewportSize:(CGSize)size delegate:(id)delegate completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  lCopy = l;
  delegateCopy = delegate;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke;
  v17[3] = &unk_1E7FC5010;
  v18 = delegateCopy;
  selfCopy = self;
  v20 = lCopy;
  v21 = handlerCopy;
  v14 = lCopy;
  v15 = delegateCopy;
  v16 = handlerCopy;
  [v15 pageTestController:self resizeViewport:v17 completionHandler:{width, height}];
}

void __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_35;
    v8[3] = &unk_1E7FC8AE8;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v5 pageTestController:v6 navigateAndCaptureFormsMetadataForURL:v7 completionHandler:v8];
  }
}

void __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_35_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_37;
    v10[3] = &unk_1E7FC8AC0;
    v11 = v8;
    v9 = v8;
    [v5 enumerateFormsAndFramesUsingBlock:v10];
    (*(*(a1 + 32) + 16))();
  }
}

void __100__WBSBulkClassificationController__runClassificationForURL_viewportSize_delegate_completionHandler___block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 dictionaryRepresentationRedactingSensitiveValues:0 withKnownSensitiveValues:0];
  [v3 addObject:v4];
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_7_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BB6F3000, v1, OS_LOG_TYPE_ERROR, "Failed to unzip capture %@: %@", v2, 0x16u);
}

void __79__WBSBulkClassificationController_runTestsAndStoreResultsIn_completionHandler___block_invoke_19_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Received metadata for %@: %@", &v4, 0x16u);
}

@end