@interface WFShortcutExtractor
+ (BOOL)isShortcutFileType:(id)type;
- (WFShortcutExtractor)initWithFile:(id)file allowsOldFormatFile:(BOOL)formatFile skipsMaliciousScanning:(BOOL)scanning suggestedName:(id)name sourceApplication:(id)application;
- (WFShortcutExtractor)initWithURL:(id)l allowsOldFormatFile:(BOOL)file skipsMaliciousScanning:(BOOL)scanning fileAdoptionOptions:(int64_t)options suggestedName:(id)name sourceApplication:(id)application;
- (void)extractRemoteShortcutFileAtURL:(id)l completion:(id)completion;
- (void)extractShortcutFile:(id)file completion:(id)completion;
- (void)extractShortcutWithCompletion:(id)completion;
- (void)extractSignedShortcutFile:(id)file allowsRetryIfExpired:(BOOL)expired completion:(id)completion;
- (void)extractWorkflowFile:(id)file completion:(id)completion;
- (void)extractWorkflowFile:(id)file shortcutName:(id)name shortcutFileContentType:(int64_t)type iCloudIdentifier:(id)identifier completion:(id)completion;
@end

@implementation WFShortcutExtractor

- (void)extractWorkflowFile:(id)file shortcutName:(id)name shortcutFileContentType:(int64_t)type iCloudIdentifier:(id)identifier completion:(id)completion
{
  fileCopy = file;
  identifierCopy = identifier;
  completionCopy = completion;
  nameCopy = name;
  v16 = [WFWorkflowFileDescriptor alloc];
  sourceApplication = [(WFShortcutExtractor *)self sourceApplication];
  v31 = fileCopy;
  v18 = [(WFWorkflowFileDescriptor *)v16 initWithFile:fileCopy name:nameCopy sourceAppIdentifier:sourceApplication];

  v36 = 0;
  v19 = [[WFWorkflowFile alloc] initWithDescriptor:v18 error:&v36];
  v20 = v36;
  v35 = v20;
  v21 = [(WFWorkflowFile *)v19 recordRepresentationWithError:&v35];
  v22 = v35;

  if ((type - 1) > 2)
  {
    v23 = @"ShortcutSourceUnknown";
  }

  else
  {
    v23 = *(&off_1E8377798 + type - 1);
  }

  [v21 setSource:v23];
  if (v21)
  {
    v30 = v22;
    v24 = [WFExtractShortcutResult alloc];
    sourceApplication2 = [(WFShortcutExtractor *)self sourceApplication];
    creationDate = [v31 creationDate];
    v27 = [(WFExtractShortcutResult *)v24 initWithRecord:v21 fileContentType:type iCloudIdentifier:identifierCopy sourceApplicationIdentifier:sourceApplication2 sharedDate:creationDate];

    if ([(WFShortcutExtractor *)self skipsMaliciousScanning])
    {
      completionCopy[2](completionCopy, v27, 0);
    }

    else
    {
      v28 = [[WFWorkflowRemoteQuarantineRequest alloc] initWithWorkflowRecord:v21];
      v29 = +[WFRemoteQuarantinePolicyEvaluator sharedEvaluator];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __108__WFShortcutExtractor_extractWorkflowFile_shortcutName_shortcutFileContentType_iCloudIdentifier_completion___block_invoke;
      v32[3] = &unk_1E837EE10;
      v34 = completionCopy;
      v33 = v27;
      [v29 evaluatePolicyForRequest:v28 completion:v32];
    }

    v22 = v30;
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v22);
  }
}

uint64_t __108__WFShortcutExtractor_extractWorkflowFile_shortcutName_shortcutFileContentType_iCloudIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0);
  }
}

- (void)extractWorkflowFile:(id)file completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  completionCopy = completion;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[WFShortcutExtractor extractWorkflowFile:completion:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Extracting an old shortcut format file", &v13, 0xCu);
  }

  if (VCIsInternalBuild() && +[WFSharingSettings shortcutFileSharingEnabled]|| [(WFShortcutExtractor *)self allowsOldFormatFile])
  {
    suggestedName = [(WFShortcutExtractor *)self suggestedName];
    if (suggestedName)
    {
      v10 = suggestedName;
      [(WFShortcutExtractor *)self extractWorkflowFile:fileCopy shortcutName:suggestedName shortcutFileContentType:0 iCloudIdentifier:0 completion:completionCopy];
    }

    else
    {
      wfName = [fileCopy wfName];
      [(WFShortcutExtractor *)self extractWorkflowFile:fileCopy shortcutName:wfName shortcutFileContentType:0 iCloudIdentifier:0 completion:completionCopy];

      v10 = 0;
    }
  }

  else
  {
    v10 = +[WFSharingSettings shortcutFileSharingDisabledError];
    completionCopy[2](completionCopy, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)extractSignedShortcutFile:(id)file allowsRetryIfExpired:(BOOL)expired completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  completionCopy = completion;
  v9 = getWFGeneralLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[WFShortcutExtractor extractSignedShortcutFile:allowsRetryIfExpired:completion:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Extracting a signed shortcut format file", buf, 0xCu);
  }

  v10 = [WFShortcutPackageFile alloc];
  fileURL = [fileCopy fileURL];
  v12 = [(WFShortcutPackageFile *)v10 initWithSignedShortcutFileURL:fileURL];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__WFShortcutExtractor_extractSignedShortcutFile_allowsRetryIfExpired_completion___block_invoke;
  v16[3] = &unk_1E8377778;
  v17 = fileCopy;
  v18 = completionCopy;
  v16[4] = self;
  v13 = fileCopy;
  v14 = completionCopy;
  [(WFShortcutPackageFile *)v12 extractShortcutFileRepresentationWithCompletion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __81__WFShortcutExtractor_extractSignedShortcutFile_allowsRetryIfExpired_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a3 == 1)
  {
    if (!v9)
    {
      IsExpiredCertificateError = WFErrorIsExpiredCertificateError(v11);
      if (!v10 || !IsExpiredCertificateError)
      {
LABEL_6:
        (*(*(a1 + 48) + 16))();
        goto LABEL_18;
      }

      v14 = getWFGeneralLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[WFShortcutExtractor extractSignedShortcutFile:allowsRetryIfExpired:completion:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Found an iCloud Signed Shortcut File with expired certificate. Trying to download a new one from iCloud", buf, 0xCu);
      }

      v15 = +[WFGallerySessionManager sharedManager];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __81__WFShortcutExtractor_extractSignedShortcutFile_allowsRetryIfExpired_completion___block_invoke_241;
      v23[3] = &unk_1E8377750;
      v26 = *(a1 + 48);
      v16 = v12;
      v17 = *(a1 + 32);
      v24 = v16;
      v25 = v17;
      v18 = [v15 getWorkflowForIdentifier:v10 completionHandler:v23];
    }

    a3 = 1;
  }

  else
  {
    if (a3 != 3 && a3 != 2)
    {
      a3 = -1;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v19 = *(a1 + 32);
  v20 = [v19 suggestedName];
  if (v20)
  {
    [v19 extractWorkflowFile:v9 shortcutName:v20 shortcutFileContentType:a3 iCloudIdentifier:v10 completion:*(a1 + 48)];
  }

  else
  {
    v21 = [*(a1 + 40) wfName];
    [v19 extractWorkflowFile:v9 shortcutName:v21 shortcutFileContentType:a3 iCloudIdentifier:v10 completion:*(a1 + 48)];
  }

LABEL_18:
  v22 = *MEMORY[0x1E69E9840];
}

void __81__WFShortcutExtractor_extractSignedShortcutFile_allowsRetryIfExpired_completion___block_invoke_241(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 signedShortcutFile];

  if (v9)
  {
    v10 = a1[5];
    v11 = [v8 signedShortcutFile];
    [v10 extractSignedShortcutFile:v11 allowsRetryIfExpired:0 completion:a1[6]];
  }

  else
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[WFShortcutExtractor extractSignedShortcutFile:allowsRetryIfExpired:completion:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to download a renewed iCloud Signed Shortcut File", &v15, 0xCu);
    }

    v13 = a1[4];
    (*(a1[6] + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)extractShortcutFile:(id)file completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  completionCopy = completion;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[WFShortcutExtractor extractShortcutFile:completion:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Extracting a shortcut from file", &v17, 0xCu);
  }

  mappedData = [fileCopy mappedData];
  if ([mappedData length] > 3)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [mappedData subdataWithRange:{0, 4}];
    v10 = [v11 wf_stringWithData:v12];

    if ([v10 isEqualToString:@"AEA1"])
    {
      [(WFShortcutExtractor *)self extractSignedShortcutFile:fileCopy completion:completionCopy];
    }

    else
    {
      wfType = [fileCopy wfType];
      v14 = [WFShortcutExtractor isShortcutFileType:wfType];

      if (v14)
      {
        [(WFShortcutExtractor *)self extractWorkflowFile:fileCopy completion:completionCopy];
      }

      else
      {
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
        completionCopy[2](completionCopy, 0, v15);
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    completionCopy[2](completionCopy, 0, v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)extractRemoteShortcutFileAtURL:(id)l completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MEMORY[0x1E696AF78];
  lCopy = l;
  wf_sharedSession = [v7 wf_sharedSession];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __65__WFShortcutExtractor_extractRemoteShortcutFileAtURL_completion___block_invoke;
  v17 = &unk_1E8377728;
  selfCopy = self;
  v19 = completionCopy;
  v10 = completionCopy;
  v11 = [wf_sharedSession downloadTaskWithURL:lCopy completionHandler:&v14];

  v12 = getWFGeneralLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[WFShortcutExtractor extractRemoteShortcutFileAtURL:completion:]";
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Downloading a remote shortcut file", buf, 0xCu);
  }

  [v11 resume];
  v13 = *MEMORY[0x1E69E9840];
}

void __65__WFShortcutExtractor_extractRemoteShortcutFileAtURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && (v10 = MEMORY[0x1E6996E20], [v8 suggestedFilename], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "fileWithURL:options:ofType:proposedFilename:", v7, 3, 0, v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    [*(a1 + 32) extractShortcutFile:v12 completion:*(a1 + 40)];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A978];
    v18 = *MEMORY[0x1E696A578];
    v15 = WFLocalizedString(@"The shortcut could not be downloaded.");
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v13 errorWithDomain:v14 code:-1100 userInfo:v16];

    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)extractShortcutWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[WFShortcutExtractor extractShortcutWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Start extracting a shortcut from file", &v18, 0xCu);
  }

  extractingURL = [(WFShortcutExtractor *)self extractingURL];
  isFileURL = [extractingURL isFileURL];

  if (isFileURL)
  {
    extractingFile = [(WFShortcutExtractor *)self extractingFile];

    if (extractingFile)
    {
      v9 = getWFGeneralLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[WFShortcutExtractor extractShortcutWithCompletion:]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Found a shortcut file URL", &v18, 0xCu);
      }
    }

    else
    {
      v12 = MEMORY[0x1E6996E20];
      extractingURL2 = [(WFShortcutExtractor *)self extractingURL];
      v14 = [v12 fileWithURL:extractingURL2 options:{-[WFShortcutExtractor fileAdoptionOptions](self, "fileAdoptionOptions")}];
      extractingFile = self->_extractingFile;
      self->_extractingFile = v14;

      extractingFile2 = [(WFShortcutExtractor *)self extractingFile];

      if (!extractingFile2)
      {
        extractingFile3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
        completionCopy[2](completionCopy, 0, extractingFile3);
        goto LABEL_13;
      }
    }

    extractingFile3 = [(WFShortcutExtractor *)self extractingFile];
    [(WFShortcutExtractor *)self extractShortcutFile:extractingFile3 completion:completionCopy];
  }

  else
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[WFShortcutExtractor extractShortcutWithCompletion:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Found a remote shortcut URL", &v18, 0xCu);
    }

    extractingFile3 = [(WFShortcutExtractor *)self extractingURL];
    [(WFShortcutExtractor *)self extractRemoteShortcutFileAtURL:extractingFile3 completion:completionCopy];
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
}

- (WFShortcutExtractor)initWithFile:(id)file allowsOldFormatFile:(BOOL)formatFile skipsMaliciousScanning:(BOOL)scanning suggestedName:(id)name sourceApplication:(id)application
{
  fileCopy = file;
  nameCopy = name;
  applicationCopy = application;
  if (!fileCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShortcutExtractor.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"extractingFile"}];
  }

  v27.receiver = self;
  v27.super_class = WFShortcutExtractor;
  v17 = [(WFShortcutExtractor *)&v27 init];
  if (v17)
  {
    fileURL = [fileCopy fileURL];
    extractingURL = v17->_extractingURL;
    v17->_extractingURL = fileURL;

    objc_storeStrong(&v17->_extractingFile, file);
    v17->_allowsOldFormatFile = formatFile;
    v17->_skipsMaliciousScanning = scanning;
    v20 = [nameCopy copy];
    suggestedName = v17->_suggestedName;
    v17->_suggestedName = v20;

    v22 = [applicationCopy copy];
    sourceApplication = v17->_sourceApplication;
    v17->_sourceApplication = v22;

    v24 = v17;
  }

  return v17;
}

- (WFShortcutExtractor)initWithURL:(id)l allowsOldFormatFile:(BOOL)file skipsMaliciousScanning:(BOOL)scanning fileAdoptionOptions:(int64_t)options suggestedName:(id)name sourceApplication:(id)application
{
  lCopy = l;
  nameCopy = name;
  applicationCopy = application;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShortcutExtractor.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"extractingURL"}];
  }

  v28.receiver = self;
  v28.super_class = WFShortcutExtractor;
  v19 = [(WFShortcutExtractor *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_extractingURL, l);
    v20->_allowsOldFormatFile = file;
    v20->_skipsMaliciousScanning = scanning;
    v20->_fileAdoptionOptions = options;
    v21 = [nameCopy copy];
    suggestedName = v20->_suggestedName;
    v20->_suggestedName = v21;

    v23 = [applicationCopy copy];
    sourceApplication = v20->_sourceApplication;
    v20->_sourceApplication = v23;

    v25 = v20;
  }

  return v20;
}

+ (BOOL)isShortcutFileType:(id)type
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"com.apple.shortcut";
  v9[1] = @"com.apple.shortcuts.workflow-file";
  v9[2] = @"is.workflow.my.workflow";
  v9[3] = @"is.workflow.workflow";
  v3 = MEMORY[0x1E695DEC8];
  typeCopy = type;
  v5 = [v3 arrayWithObjects:v9 count:4];
  v6 = [v5 if_compactMap:&__block_literal_global_25780];
  LOBYTE(v3) = [typeCopy conformsToUTTypes:v6];

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

@end