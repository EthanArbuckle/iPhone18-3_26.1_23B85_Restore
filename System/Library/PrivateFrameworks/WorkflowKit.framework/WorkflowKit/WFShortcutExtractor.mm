@interface WFShortcutExtractor
+ (BOOL)isShortcutFileType:(id)a3;
- (WFShortcutExtractor)initWithFile:(id)a3 allowsOldFormatFile:(BOOL)a4 skipsMaliciousScanning:(BOOL)a5 suggestedName:(id)a6 sourceApplication:(id)a7;
- (WFShortcutExtractor)initWithURL:(id)a3 allowsOldFormatFile:(BOOL)a4 skipsMaliciousScanning:(BOOL)a5 fileAdoptionOptions:(int64_t)a6 suggestedName:(id)a7 sourceApplication:(id)a8;
- (void)extractRemoteShortcutFileAtURL:(id)a3 completion:(id)a4;
- (void)extractShortcutFile:(id)a3 completion:(id)a4;
- (void)extractShortcutWithCompletion:(id)a3;
- (void)extractSignedShortcutFile:(id)a3 allowsRetryIfExpired:(BOOL)a4 completion:(id)a5;
- (void)extractWorkflowFile:(id)a3 completion:(id)a4;
- (void)extractWorkflowFile:(id)a3 shortcutName:(id)a4 shortcutFileContentType:(int64_t)a5 iCloudIdentifier:(id)a6 completion:(id)a7;
@end

@implementation WFShortcutExtractor

- (void)extractWorkflowFile:(id)a3 shortcutName:(id)a4 shortcutFileContentType:(int64_t)a5 iCloudIdentifier:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a4;
  v16 = [WFWorkflowFileDescriptor alloc];
  v17 = [(WFShortcutExtractor *)self sourceApplication];
  v31 = v12;
  v18 = [(WFWorkflowFileDescriptor *)v16 initWithFile:v12 name:v15 sourceAppIdentifier:v17];

  v36 = 0;
  v19 = [[WFWorkflowFile alloc] initWithDescriptor:v18 error:&v36];
  v20 = v36;
  v35 = v20;
  v21 = [(WFWorkflowFile *)v19 recordRepresentationWithError:&v35];
  v22 = v35;

  if ((a5 - 1) > 2)
  {
    v23 = @"ShortcutSourceUnknown";
  }

  else
  {
    v23 = *(&off_1E8377798 + a5 - 1);
  }

  [v21 setSource:v23];
  if (v21)
  {
    v30 = v22;
    v24 = [WFExtractShortcutResult alloc];
    v25 = [(WFShortcutExtractor *)self sourceApplication];
    v26 = [v31 creationDate];
    v27 = [(WFExtractShortcutResult *)v24 initWithRecord:v21 fileContentType:a5 iCloudIdentifier:v13 sourceApplicationIdentifier:v25 sharedDate:v26];

    if ([(WFShortcutExtractor *)self skipsMaliciousScanning])
    {
      v14[2](v14, v27, 0);
    }

    else
    {
      v28 = [[WFWorkflowRemoteQuarantineRequest alloc] initWithWorkflowRecord:v21];
      v29 = +[WFRemoteQuarantinePolicyEvaluator sharedEvaluator];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __108__WFShortcutExtractor_extractWorkflowFile_shortcutName_shortcutFileContentType_iCloudIdentifier_completion___block_invoke;
      v32[3] = &unk_1E837EE10;
      v34 = v14;
      v33 = v27;
      [v29 evaluatePolicyForRequest:v28 completion:v32];
    }

    v22 = v30;
  }

  else
  {
    (v14)[2](v14, 0, v22);
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

- (void)extractWorkflowFile:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[WFShortcutExtractor extractWorkflowFile:completion:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Extracting an old shortcut format file", &v13, 0xCu);
  }

  if (VCIsInternalBuild() && +[WFSharingSettings shortcutFileSharingEnabled]|| [(WFShortcutExtractor *)self allowsOldFormatFile])
  {
    v9 = [(WFShortcutExtractor *)self suggestedName];
    if (v9)
    {
      v10 = v9;
      [(WFShortcutExtractor *)self extractWorkflowFile:v6 shortcutName:v9 shortcutFileContentType:0 iCloudIdentifier:0 completion:v7];
    }

    else
    {
      v11 = [v6 wfName];
      [(WFShortcutExtractor *)self extractWorkflowFile:v6 shortcutName:v11 shortcutFileContentType:0 iCloudIdentifier:0 completion:v7];

      v10 = 0;
    }
  }

  else
  {
    v10 = +[WFSharingSettings shortcutFileSharingDisabledError];
    v7[2](v7, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)extractSignedShortcutFile:(id)a3 allowsRetryIfExpired:(BOOL)a4 completion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = getWFGeneralLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[WFShortcutExtractor extractSignedShortcutFile:allowsRetryIfExpired:completion:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Extracting a signed shortcut format file", buf, 0xCu);
  }

  v10 = [WFShortcutPackageFile alloc];
  v11 = [v7 fileURL];
  v12 = [(WFShortcutPackageFile *)v10 initWithSignedShortcutFileURL:v11];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__WFShortcutExtractor_extractSignedShortcutFile_allowsRetryIfExpired_completion___block_invoke;
  v16[3] = &unk_1E8377778;
  v17 = v7;
  v18 = v8;
  v16[4] = self;
  v13 = v7;
  v14 = v8;
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

- (void)extractShortcutFile:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[WFShortcutExtractor extractShortcutFile:completion:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Extracting a shortcut from file", &v17, 0xCu);
  }

  v9 = [v6 mappedData];
  if ([v9 length] > 3)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v9 subdataWithRange:{0, 4}];
    v10 = [v11 wf_stringWithData:v12];

    if ([v10 isEqualToString:@"AEA1"])
    {
      [(WFShortcutExtractor *)self extractSignedShortcutFile:v6 completion:v7];
    }

    else
    {
      v13 = [v6 wfType];
      v14 = [WFShortcutExtractor isShortcutFileType:v13];

      if (v14)
      {
        [(WFShortcutExtractor *)self extractWorkflowFile:v6 completion:v7];
      }

      else
      {
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
        v7[2](v7, 0, v15);
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    v7[2](v7, 0, v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)extractRemoteShortcutFileAtURL:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E696AF78];
  v8 = a3;
  v9 = [v7 wf_sharedSession];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __65__WFShortcutExtractor_extractRemoteShortcutFileAtURL_completion___block_invoke;
  v17 = &unk_1E8377728;
  v18 = self;
  v19 = v6;
  v10 = v6;
  v11 = [v9 downloadTaskWithURL:v8 completionHandler:&v14];

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

- (void)extractShortcutWithCompletion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[WFShortcutExtractor extractShortcutWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Start extracting a shortcut from file", &v18, 0xCu);
  }

  v6 = [(WFShortcutExtractor *)self extractingURL];
  v7 = [v6 isFileURL];

  if (v7)
  {
    v8 = [(WFShortcutExtractor *)self extractingFile];

    if (v8)
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
      v13 = [(WFShortcutExtractor *)self extractingURL];
      v14 = [v12 fileWithURL:v13 options:{-[WFShortcutExtractor fileAdoptionOptions](self, "fileAdoptionOptions")}];
      extractingFile = self->_extractingFile;
      self->_extractingFile = v14;

      v16 = [(WFShortcutExtractor *)self extractingFile];

      if (!v16)
      {
        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:0];
        v4[2](v4, 0, v11);
        goto LABEL_13;
      }
    }

    v11 = [(WFShortcutExtractor *)self extractingFile];
    [(WFShortcutExtractor *)self extractShortcutFile:v11 completion:v4];
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

    v11 = [(WFShortcutExtractor *)self extractingURL];
    [(WFShortcutExtractor *)self extractRemoteShortcutFileAtURL:v11 completion:v4];
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
}

- (WFShortcutExtractor)initWithFile:(id)a3 allowsOldFormatFile:(BOOL)a4 skipsMaliciousScanning:(BOOL)a5 suggestedName:(id)a6 sourceApplication:(id)a7
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFShortcutExtractor.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"extractingFile"}];
  }

  v27.receiver = self;
  v27.super_class = WFShortcutExtractor;
  v17 = [(WFShortcutExtractor *)&v27 init];
  if (v17)
  {
    v18 = [v14 fileURL];
    extractingURL = v17->_extractingURL;
    v17->_extractingURL = v18;

    objc_storeStrong(&v17->_extractingFile, a3);
    v17->_allowsOldFormatFile = a4;
    v17->_skipsMaliciousScanning = a5;
    v20 = [v15 copy];
    suggestedName = v17->_suggestedName;
    v17->_suggestedName = v20;

    v22 = [v16 copy];
    sourceApplication = v17->_sourceApplication;
    v17->_sourceApplication = v22;

    v24 = v17;
  }

  return v17;
}

- (WFShortcutExtractor)initWithURL:(id)a3 allowsOldFormatFile:(BOOL)a4 skipsMaliciousScanning:(BOOL)a5 fileAdoptionOptions:(int64_t)a6 suggestedName:(id)a7 sourceApplication:(id)a8
{
  v16 = a3;
  v17 = a7;
  v18 = a8;
  if (!v16)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFShortcutExtractor.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"extractingURL"}];
  }

  v28.receiver = self;
  v28.super_class = WFShortcutExtractor;
  v19 = [(WFShortcutExtractor *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_extractingURL, a3);
    v20->_allowsOldFormatFile = a4;
    v20->_skipsMaliciousScanning = a5;
    v20->_fileAdoptionOptions = a6;
    v21 = [v17 copy];
    suggestedName = v20->_suggestedName;
    v20->_suggestedName = v21;

    v23 = [v18 copy];
    sourceApplication = v20->_sourceApplication;
    v20->_sourceApplication = v23;

    v25 = v20;
  }

  return v20;
}

+ (BOOL)isShortcutFileType:(id)a3
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"com.apple.shortcut";
  v9[1] = @"com.apple.shortcuts.workflow-file";
  v9[2] = @"is.workflow.my.workflow";
  v9[3] = @"is.workflow.workflow";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v9 count:4];
  v6 = [v5 if_compactMap:&__block_literal_global_25780];
  LOBYTE(v3) = [v4 conformsToUTTypes:v6];

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

@end