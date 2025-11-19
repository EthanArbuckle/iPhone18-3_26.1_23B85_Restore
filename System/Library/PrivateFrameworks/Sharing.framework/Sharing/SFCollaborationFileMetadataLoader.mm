@interface SFCollaborationFileMetadataLoader
- (SFCollaborationFileMetadataLoader)initWithFileURL:(id)a3;
- (void)_loadCompletedWithCollaborationMetadata:(id)a3 error:(id)a4;
- (void)_loadMetadata;
- (void)loadMetadataWithCompletionHandler:(id)a3;
- (void)presentedItemUbiquityDidChange;
@end

@implementation SFCollaborationFileMetadataLoader

- (SFCollaborationFileMetadataLoader)initWithFileURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFCollaborationFileMetadataLoader;
  v5 = [(SFCollaborationFileMetadataLoader *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    presentedItemURL = v5->_presentedItemURL;
    v5->_presentedItemURL = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    presentedItemOperationQueue = v5->_presentedItemOperationQueue;
    v5->_presentedItemOperationQueue = v8;

    [(NSOperationQueue *)v5->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    v5->_waitingForUbiquityChange = 0;
  }

  return v5;
}

- (void)loadMetadataWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [getFPItemManagerClass() defaultManager];
  v6 = [(SFCollaborationFileMetadataLoader *)self presentedItemURL];
  v15 = 0;
  v7 = [v5 itemForURL:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    if (SharedWithYouCoreLibrary() && (v9 = SharedWithYouCoreLibrary(), dlsym(v9, "SWCollaborationMetadataForDocumentURL")))
    {
      [(SFCollaborationFileMetadataLoader *)self setLoadCompletionHandler:v4];
      if ([v7 isKnownByTheProvider])
      {
        [(SFCollaborationFileMetadataLoader *)self _loadMetadata];
      }

      else
      {
        [(SFCollaborationFileMetadataLoader *)self setWaitingForUbiquityChange:1];
        v13 = share_sheet_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(SFCollaborationFileMetadataLoader *)self presentedItemURL];
          *buf = 138412290;
          v17 = v14;
          _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Collaboration: waiting to load metadata until document is synced with iCloud for documentURL:%@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SFCollaborationFileMetadataLoader loadMetadataWithCompletionHandler:];
      }

      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationFileMetadataLoader loadMetadataWithCompletionHandler:];
    }

    (*(v4 + 2))(v4, 0, v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)presentedItemUbiquityDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 presentedItemURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_loadMetadata
{
  objc_initWeak(location, self);
  v3 = [(SFCollaborationFileMetadataLoader *)self presentedItemURL];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __50__SFCollaborationFileMetadataLoader__loadMetadata__block_invoke;
  v14 = &unk_1E788E2D8;
  objc_copyWeak(&v15, location);
  v4 = v3;
  v5 = &v11;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr;
  v21 = getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr;
  if (!getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr)
  {
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __getSWCollaborationMetadataForDocumentURLSymbolLoc_block_invoke;
    location[4] = &unk_1E788A938;
    v17 = &v18;
    v7 = SharedWithYouCoreLibrary();
    v8 = dlsym(v7, "SWCollaborationMetadataForDocumentURL");
    *(v17[1] + 24) = v8;
    getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr = *(v17[1] + 24);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v6)
  {
    v6(v4, v5);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_SWCollaborationMetadataForDocumentURL(NSURL *__strong, void (^__strong)(_SWCollaborationMetadata * _Nullable __strong, NSError * _Nullable __strong))"}];
    [v9 handleFailureInFunction:v10 file:@"SFCollaborationUtilities.m" lineNumber:143 description:{@"%s", dlerror(), v11, v12, v13, v14}];

    __break(1u);
  }
}

void __50__SFCollaborationFileMetadataLoader__loadMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadCompletedWithCollaborationMetadata:v6 error:v5];
}

- (void)_loadCompletedWithCollaborationMetadata:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationFileMetadataLoader _loadCompletedWithCollaborationMetadata:error:];
    }
  }

  v9 = [(SFCollaborationFileMetadataLoader *)self loadCompletionHandler];
  [(SFCollaborationFileMetadataLoader *)self setLoadCompletionHandler:0];
  (v9)[2](v9, v6, v7);
}

- (void)loadMetadataWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadMetadataWithCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 presentedItemURL];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_loadCompletedWithCollaborationMetadata:error:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 presentedItemURL];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end