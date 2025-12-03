@interface _WBSBrowsingDataImportScanner
- (BOOL)_isArchiveFileURL:(id)l;
- (_WBSBrowsingDataImportScanner)init;
- (id)_createSandboxExtensionForURL:(id)l;
- (void)_processFileForURL:(id)l isInUnarchivedFolder:(BOOL)folder completionHandler:(id)handler;
- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
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
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileManager = v3->_fileManager;
    v3->_fileManager = defaultManager;

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

- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  handlerCopy = handler;
  if ([lsCopy count])
  {
    fileManager = self->_fileManager;
    firstObject = [lsCopy firstObject];
    v38 = 0;
    v11 = [(NSFileManager *)fileManager safari_createTemporaryDirectoryAppropriateForURL:firstObject error:&v38];
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

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        results = self->_results;
        self->_results = dictionary;

        dispatch_group_enter(self->_scannerGroup);
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = lsCopy;
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
        v32 = handlerCopy;
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

        (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], v16);
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

      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], v12);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isArchiveFileURL:(id)l
{
  v3 = _isArchiveFileURL__onceToken;
  lCopy = l;
  if (v3 != -1)
  {
    [_WBSBrowsingDataImportScanner _isArchiveFileURL:];
  }

  v5 = _isArchiveFileURL__archiveExtensions;
  pathExtension = [lCopy pathExtension];

  lowercaseString = [pathExtension lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5;
}

- (id)_createSandboxExtensionForURL:(id)l
{
  lCopy = l;
  v4 = *MEMORY[0x1E69E9BB0];
  [lCopy fileSystemRepresentation];
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
      [(_WBSBrowsingDataImportScanner *)lCopy _createSandboxExtensionForURL:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_processFileForURL:(id)l isInUnarchivedFolder:(BOOL)folder completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7CF5158;
  folderCopy = folder;
  aBlock[4] = self;
  v10 = handlerCopy;
  v29 = v10;
  v11 = _Block_copy(aBlock);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  pathExtension = [lCopy pathExtension];
  if ([pathExtension isEqualToString:@"html"])
  {
    v14 = [WBSNetscapeBookmarkFileReader looksLikeBookmarkFile:lCopy];

    if (v14)
    {
      [dictionary setObject:@"bookmark" forKeyedSubscript:@"data_type"];
LABEL_11:
      v11[2](v11, dictionary);
      goto LABEL_15;
    }
  }

  else
  {
  }

  pathExtension2 = [lCopy pathExtension];
  v16 = [pathExtension2 isEqualToString:@"json"];

  if (v16)
  {
    v17 = WBSLoadMetadataDictionaryFromURL(lCopy, 0);
    v18 = [v17 mutableCopy];

    v11[2](v11, v18);
    dictionary = v18;
  }

  else
  {
    pathExtension3 = [lCopy pathExtension];
    v20 = [pathExtension3 isEqualToString:@"csv"];

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
        v25 = lCopy;
        v26 = dictionary;
        v27 = v11;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        v11[2](v11, dictionary);
      }
    }

    else
    {
      if ([dictionary count])
      {
        goto LABEL_11;
      }

      (*(v10 + 2))(v10, dictionary);
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