@interface _WBSBrowsingDataImportScanner
- (BOOL)_isArchiveFileURL:(id)a3;
- (_WBSBrowsingDataImportScanner)init;
- (id)_createSandboxExtensionForURL:(id)a3;
- (void)_processFileForURL:(id)a3 isInUnarchivedFolder:(BOOL)a4 completionHandler:(id)a5;
- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5;
@end

@implementation _WBSBrowsingDataImportScanner

- (_WBSBrowsingDataImportScanner)init
{
  v14.receiver = self;
  v14.super_class = _WBSBrowsingDataImportScanner;
  v2 = [(_WBSBrowsingDataImportScanner *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    fileManager = v3->_fileManager;
    v3->_fileManager = v4;

    v6 = dispatch_group_create();
    scannerGroup = v3->_scannerGroup;
    v3->_scannerGroup = v6;

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getDSArchiveServiceClass_softClass;
    v19 = getDSArchiveServiceClass_softClass;
    if (!getDSArchiveServiceClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getDSArchiveServiceClass_block_invoke;
      v15[3] = &unk_1E7CF0630;
      v15[4] = &v16;
      __getDSArchiveServiceClass_block_invoke(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = objc_alloc_init(v8);
    archiveService = v3->_archiveService;
    v3->_archiveService = v10;

    v12 = v3;
  }

  return v3;
}

- (void)scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 count])
  {
    fileManager = self->_fileManager;
    v10 = [v7 firstObject];
    v38 = 0;
    v11 = [(NSFileManager *)fileManager safari_createTemporaryDirectoryAppropriateForURL:v10 error:&v38];
    v12 = v38;
    temporaryUnarchiveDestinationFolder = self->_temporaryUnarchiveDestinationFolder;
    self->_temporaryUnarchiveDestinationFolder = v11;

    v14 = self->_temporaryUnarchiveDestinationFolder;
    if (v14)
    {
      v37 = v12;
      v15 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:v14 options:0x100000 createMode:0 error:&v37];
      v16 = v37;

      temporaryUnarchiveDestinationFileHandle = self->_temporaryUnarchiveDestinationFileHandle;
      self->_temporaryUnarchiveDestinationFileHandle = v15;

      if (self->_temporaryUnarchiveDestinationFileHandle)
      {
        v18 = [(_WBSBrowsingDataImportScanner *)self _createSandboxExtensionForURL:self->_temporaryUnarchiveDestinationFolder];
        temporaryUnarchiveDestinationFolderSandboxExtension = self->_temporaryUnarchiveDestinationFolderSandboxExtension;
        self->_temporaryUnarchiveDestinationFolderSandboxExtension = v18;

        v20 = [MEMORY[0x1E695DF90] dictionary];
        results = self->_results;
        self->_results = v20;

        dispatch_group_enter(self->_scannerGroup);
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = v7;
        v23 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          do
          {
            v26 = 0;
            do
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [(_WBSBrowsingDataImportScanner *)self _scanImportedURL:*(*(&v33 + 1) + 8 * v26++) isInUnarchivedFolder:0];
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v24);
        }

        scannerGroup = self->_scannerGroup;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __84___WBSBrowsingDataImportScanner_scanImportURLs_sandboxExtensions_completionHandler___block_invoke;
        v31[3] = &unk_1E7CF16B8;
        v31[4] = self;
        v32 = v8;
        dispatch_group_notify(scannerGroup, MEMORY[0x1E69E96A0], v31);
        dispatch_group_leave(self->_scannerGroup);
      }

      else
      {
        v29 = WBS_LOG_CHANNEL_PREFIXImport();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [_WBSBrowsingDataImportScanner scanImportURLs:v29 sandboxExtensions:? completionHandler:?];
        }

        (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], v16);
      }

      v12 = v16;
    }

    else
    {
      v28 = WBS_LOG_CHANNEL_PREFIXImport();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [_WBSBrowsingDataImportScanner scanImportURLs:v28 sandboxExtensions:? completionHandler:?];
      }

      (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], v12);
    }
  }

  else
  {
    (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isArchiveFileURL:(id)a3
{
  v3 = _isArchiveFileURL__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [_WBSBrowsingDataImportScanner _isArchiveFileURL:];
  }

  v5 = _isArchiveFileURL__archiveExtensions;
  v6 = [v4 pathExtension];

  v7 = [v6 lowercaseString];
  LOBYTE(v5) = [v5 containsObject:v7];

  return v5;
}

- (id)_createSandboxExtensionForURL:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69E9BB0];
  [v3 fileSystemRepresentation];
  v5 = sandbox_extension_issue_file();
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:strlen(v5) encoding:4 freeWhenDone:1];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_WBSBrowsingDataImportScanner *)v3 _createSandboxExtensionForURL:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_processFileForURL:(id)a3 isInUnarchivedFolder:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7CF5158;
  v30 = a4;
  aBlock[4] = self;
  v10 = v9;
  v29 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = [v8 pathExtension];
  if ([v13 isEqualToString:@"html"])
  {
    v14 = [WBSNetscapeBookmarkFileReader looksLikeBookmarkFile:v8];

    if (v14)
    {
      [v12 setObject:@"bookmark" forKeyedSubscript:@"data_type"];
LABEL_11:
      v11[2](v11, v12);
      goto LABEL_15;
    }
  }

  else
  {
  }

  v15 = [v8 pathExtension];
  v16 = [v15 isEqualToString:@"json"];

  if (v16)
  {
    v17 = WBSLoadMetadataDictionaryFromURL(v8, 0);
    v18 = [v17 mutableCopy];

    v11[2](v11, v18);
    v12 = v18;
  }

  else
  {
    v19 = [v8 pathExtension];
    v20 = [v19 isEqualToString:@"csv"];

    if (v20)
    {
      v21 = objc_alloc_init(NSClassFromString(&cfstr_Wbspasswordsda.isa));
      v22 = v21;
      if (v21)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke_2;
        block[3] = &unk_1E7CF4970;
        v24 = v21;
        v25 = v8;
        v26 = v12;
        v27 = v11;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        v11[2](v11, v12);
      }
    }

    else
    {
      if ([v12 count])
      {
        goto LABEL_11;
      }

      (*(v10 + 2))(v10, v12);
    }
  }

LABEL_15:
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_createSandboxExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v9 = *__error();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

@end