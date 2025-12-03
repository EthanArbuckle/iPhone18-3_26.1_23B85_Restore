@interface WFShortcutPackageFile
- (NSString)directoryName;
- (NSString)fileName;
- (NSString)sanitizedName;
- (WFShortcutPackageFile)initWithShortcutData:(id)data shortcutName:(id)name;
- (WFShortcutPackageFile)initWithSignedShortcutData:(id)data shortcutName:(id)name;
- (WFShortcutPackageFile)initWithSignedShortcutFileURL:(id)l;
- (id)extractShortcutFileRepresentationWithSigningMethod:(int64_t *)method iCloudIdentifier:(id *)identifier error:(id *)error;
- (id)generateDirectoryStructureInDirectory:(id)directory error:(id *)error;
- (id)generateSignedShortcutFileRepresentationWithAccount:(id)account error:(id *)error;
- (id)generateSignedShortcutFileRepresentationWithPrivateKey:(__SecKey *)key signingContext:(id)context error:(id *)error;
- (void)commonInit;
- (void)extractShortcutFileRepresentationWithCompletion:(id)completion;
- (void)preformShortcutDataExtractionWithCompletion:(id)completion;
@end

@implementation WFShortcutPackageFile

- (id)generateDirectoryStructureInDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  shortcutData = [(WFShortcutPackageFile *)self shortcutData];

  if (shortcutData)
  {
    directoryName = [(WFShortcutPackageFile *)self directoryName];
    v9 = [directoryCopy URLByAppendingPathComponent:directoryName];

    fileManager = [(WFShortcutPackageFile *)self fileManager];
    v11 = [fileManager createDirectoryAtURL:v9 withIntermediateDirectories:0 attributes:0 error:error];

    v12 = 0;
    if (v11)
    {
      v13 = [v9 URLByAppendingPathComponent:@"Shortcut.wflow"];
      shortcutData2 = [(WFShortcutPackageFile *)self shortcutData];
      [shortcutData2 writeToURL:v13 atomically:1];

      v12 = v9;
    }
  }

  else if (error)
  {
    WFShortcutPackageFileFailedToSignShortcutFileError();
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)generateSignedShortcutFileRepresentationWithAccount:(id)account error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = getWFSecurityLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[WFShortcutPackageFile generateSignedShortcutFileRepresentationWithAccount:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Generating Signed Shortcut Data with AppleID information", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:*MEMORY[0x1E697AD78] forKeyedSubscript:*MEMORY[0x1E697AD68]];
  [dictionary setObject:&unk_1F4A9A348 forKeyedSubscript:*MEMORY[0x1E697AD50]];
  [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E697AD18]];
  RandomKey = SecKeyCreateRandomKey(dictionary, 0);
  v10 = [WFShortcutSigningContext contextWithAppleIDAccount:accountCopy signingKey:RandomKey];

  v18 = 0;
  v11 = [(WFShortcutPackageFile *)self generateSignedShortcutFileRepresentationWithPrivateKey:RandomKey signingContext:v10 error:&v18];
  v12 = v18;
  v13 = getWFSecurityLogObject();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[WFShortcutPackageFile generateSignedShortcutFileRepresentationWithAccount:error:]";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Generated Signed Shortcut Data with AppleID information Successfully", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFShortcutPackageFile generateSignedShortcutFileRepresentationWithAccount:error:]";
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Failed to generate Signed Shortcut Data with AppleID information: %@", buf, 0x16u);
    }

    if (error)
    {
      v15 = v12;
      *error = v12;
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)generateSignedShortcutFileRepresentationWithPrivateKey:(__SecKey *)key signingContext:(id)context error:(id *)error
{
  v48[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  generateAuthData = [contextCopy generateAuthData];
  if (generateAuthData)
  {
    temporaryWorkingDirectoryURL = [(WFShortcutPackageFile *)self temporaryWorkingDirectoryURL];
    v11 = [(WFShortcutPackageFile *)self generateDirectoryStructureInDirectory:temporaryWorkingDirectoryURL error:error];

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = AEAContextCreateWithProfile(0);
    if (v12)
    {
      v13 = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __101__WFShortcutPackageFile_generateSignedShortcutFileRepresentationWithPrivateKey_signingContext_error___block_invoke;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = v12;
      v14 = _Block_copy(aBlock);
      if (AEAContextSetFieldUInt(v13, 3u, 0x801uLL))
      {
        if (error)
        {
          WFShortcutPackageFileFailedToSignShortcutFileError();
          *error = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_40;
      }

      error = 0;
      v16 = SecKeyCopyExternalRepresentation(key, &error);
      v17 = v16;
      if (!v16)
      {
        if (error)
        {
          v19 = MEMORY[0x1E696ABC0];
          v47[0] = *MEMORY[0x1E696A578];
          v20 = WFLocalizedString(@"Failed to sign shortcut");
          v47[1] = *MEMORY[0x1E696AA08];
          v48[0] = v20;
          v48[1] = error;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
          *error = [v19 errorWithDomain:@"WFWorkflowErrorDomain" code:4 userInfo:v21];
        }

        goto LABEL_20;
      }

      v18 = v16;
      if (AEAContextSetFieldBlob(v13, 8u, 1u, [(__CFData *)v17 bytes], [(__CFData *)v17 length]))
      {
        if (error)
        {
          WFShortcutPackageFileFailedToSignShortcutFileError();
          *error = v15 = 0;
LABEL_39:

LABEL_40:
          v14[2](v14);

          goto LABEL_41;
        }

LABEL_20:
        v15 = 0;
        goto LABEL_39;
      }

      v22 = generateAuthData;
      AEAContextSetFieldBlob(v13, 5u, 0, [generateAuthData bytes], objc_msgSend(generateAuthData, "length"));
      temporaryWorkingDirectoryURL2 = [(WFShortcutPackageFile *)self temporaryWorkingDirectoryURL];
      fileName = [(WFShortcutPackageFile *)self fileName];
      v42 = [temporaryWorkingDirectoryURL2 URLByAppendingPathComponent:fileName];

      v25 = v42;
      s = AAFileStreamOpenWithPath([v42 fileSystemRepresentation], 514, 0x1A4u);
      stream = AEAEncryptionOutputStreamOpen(s, v13, 0, 0);
      v26 = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,MOD,FLG,MTM,BTM,CTM,HLC,CLC");
      v27 = v26;
      if (!v26)
      {
        if (error)
        {
          WFShortcutPackageFileFailedToSignShortcutFileError();
          *error = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_38;
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __101__WFShortcutPackageFile_generateSignedShortcutFileRepresentationWithPrivateKey_signingContext_error___block_invoke_2;
      v44[3] = &__block_descriptor_40_e5_v8__0l;
      v44[4] = v26;
      v40 = _Block_copy(v44);
      v28 = v11;
      v29 = AAPathListCreateWithDirectoryContents([v11 fileSystemRepresentation], 0, 0, 0, 0, 0);
      v30 = v29;
      if (!v29)
      {
        if (error)
        {
          WFShortcutPackageFileFailedToSignShortcutFileError();
          *error = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_37;
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __101__WFShortcutPackageFile_generateSignedShortcutFileRepresentationWithPrivateKey_signingContext_error___block_invoke_3;
      v43[3] = &__block_descriptor_40_e5_v8__0l;
      v43[4] = v29;
      v38 = _Block_copy(v43);
      v31 = AAEncodeArchiveOutputStreamOpen(stream, 0, 0, 0, 0);
      if (v31)
      {
        v32 = v11;
        if (!AAArchiveStreamWritePathList(v31, v30, v27, [v11 fileSystemRepresentation], 0, 0, 0, 0))
        {
          AAArchiveStreamClose(v31);
          AAByteStreamClose(stream);
          AAByteStreamClose(s);
          v33 = MEMORY[0x1E6996E20];
          sanitizedName = [(WFShortcutPackageFile *)self sanitizedName];
          v15 = [v33 fileWithURL:v42 options:3 ofType:0 proposedFilename:sanitizedName];

          fileManager = [(WFShortcutPackageFile *)self fileManager];
          [fileManager removeItemAtURL:v42 error:0];

          goto LABEL_36;
        }

        if (error)
        {
          goto LABEL_32;
        }
      }

      else if (error)
      {
LABEL_32:
        WFShortcutPackageFileFailedToSignShortcutFileError();
        *error = v15 = 0;
LABEL_36:
        v38[2](v38);

LABEL_37:
        v40[2](v40);

LABEL_38:
        goto LABEL_39;
      }

      v15 = 0;
      goto LABEL_36;
    }

    if (error)
    {
      WFShortcutPackageFileFailedToSignShortcutFileError();
      *error = v15 = 0;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (error)
  {
    WFShortcutPackageFileInvalidShortcutFileError();
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_42:

  v36 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)preformShortcutDataExtractionWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[WFShortcutPackageFile preformShortcutDataExtractionWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Extracting Signed Shortcut Data", buf, 0xCu);
  }

  signedShortcutData = [(WFShortcutPackageFile *)self signedShortcutData];
  if (signedShortcutData)
  {
  }

  else
  {
    signedShortcutFileURL = [(WFShortcutPackageFile *)self signedShortcutFileURL];

    if (!signedShortcutFileURL)
    {
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      goto LABEL_19;
    }
  }

  signedShortcutData2 = [(WFShortcutPackageFile *)self signedShortcutData];

  if (signedShortcutData2)
  {
    signedShortcutData3 = [(WFShortcutPackageFile *)self signedShortcutData];
    [signedShortcutData3 bytes];
    signedShortcutData4 = [(WFShortcutPackageFile *)self signedShortcutData];
    [signedShortcutData4 length];
    v11 = AAMemoryInputStreamOpen();
  }

  else
  {
    signedShortcutData3 = [(WFShortcutPackageFile *)self signedShortcutFileURL];
    v11 = AAFileStreamOpenWithPath([signedShortcutData3 fileSystemRepresentation], 0, 0x1A4u);
  }

  if (!v11 || (v12 = AEAContextCreateWithEncryptedStream(v11)) == 0)
  {
    v16 = WFShortcutPackageFileInvalidShortcutFileError();
LABEL_19:
    v17 = v16;
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v16);

    goto LABEL_20;
  }

  v13 = v12;
  *buf = 0;
  if (!AEAContextGetFieldBlob(v12, 5u, 0, 0, 0, buf) && *buf)
  {
    v14 = malloc_type_malloc(*buf, 0x5A32FCC6uLL);
    if (!AEAContextGetFieldBlob(v13, 5u, 0, *buf, v14, 0))
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v14 length:*buf];
      v19 = [WFShortcutSigningContext contextWithAuthData:v15];
      if (v19)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __69__WFShortcutPackageFile_preformShortcutDataExtractionWithCompletion___block_invoke;
        v21[3] = &unk_1E8376628;
        v24 = completionCopy;
        v22 = v19;
        selfCopy = self;
        v25 = v13;
        v26 = v11;
        [v22 validateWithCompletion:v21];

        v20 = v24;
      }

      else
      {
        v20 = WFShortcutPackageFileInvalidShortcutFileError();
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, v20);
      }

      goto LABEL_16;
    }

    free(v14);
  }

  v15 = WFShortcutPackageFileInvalidShortcutFileError();
  (*(completionCopy + 2))(completionCopy, 0, 0, 0, v15);
LABEL_16:

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
}

void __69__WFShortcutPackageFile_preformShortcutDataExtractionWithCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a2)
  {
    v10 = [*(a1 + 32) copyPublicKey];
    if (v10)
    {
      v11 = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__WFShortcutPackageFile_preformShortcutDataExtractionWithCompletion___block_invoke_2;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = v10;
      v12 = _Block_copy(aBlock);
      v13 = SecKeyCopyExternalRepresentation(v11, 0);
      v14 = *(a1 + 56);
      v15 = v13;
      if (AEAContextSetFieldBlob(v14, 7u, 1u, [(__CFData *)v13 bytes], [(__CFData *)v13 length]))
      {
        v16 = *(a1 + 48);
        v17 = WFShortcutPackageFileFailedToExtractShortcutFileError();
        (*(v16 + 16))(v16, 0, 0, 0, v17);
      }

      else
      {
        v20 = [*(a1 + 40) temporaryWorkingDirectoryURL];
        v21 = [*(a1 + 40) directoryName];
        v22 = [v20 URLByAppendingPathComponent:v21];

        v23 = [*(a1 + 40) fileManager];
        v24 = [v22 path];
        LOBYTE(v21) = [v23 fileExistsAtPath:v24 isDirectory:0];

        if ((v21 & 1) == 0)
        {
          v25 = [*(a1 + 40) fileManager];
          [v25 createDirectoryAtURL:v22 withIntermediateDirectories:0 attributes:0 error:0];
        }

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __69__WFShortcutPackageFile_preformShortcutDataExtractionWithCompletion___block_invoke_3;
        v47[3] = &unk_1E837F870;
        v47[4] = *(a1 + 40);
        v17 = v22;
        v48 = v17;
        v46 = _Block_copy(v47);
        v26 = v17;
        v27 = AAExtractArchiveOutputStreamOpen([v17 fileSystemRepresentation], 0, 0, 1uLL, 0);
        if (v27)
        {
          s = AEADecryptionInputStreamOpen(*(a1 + 64), *(a1 + 56), 0, 0);
          istream = AADecodeArchiveInputStreamOpen(s, 0, 0, 0, 0);
          v28 = getWFSecurityLogObject();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v51 = "[WFShortcutPackageFile preformShortcutDataExtractionWithCompletion:]_block_invoke";
            _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_INFO, "%s Extracting Signed Shortcut Data", buf, 0xCu);
          }

          v29 = AAArchiveStreamProcess(istream, v27, 0, 0, 0, 0);
          if (v29 < 0 || AAArchiveStreamClose(v27) < 0)
          {
            v34 = getWFSecurityLogObject();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "[WFShortcutPackageFile preformShortcutDataExtractionWithCompletion:]_block_invoke";
              v52 = 2050;
              v53 = v29;
              _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Failed to extract signed shortcut data with %{public}zd entries", buf, 0x16u);
            }

            v35 = *(a1 + 48);
            v30 = WFShortcutPackageFileFailedToExtractShortcutFileError();
            (*(v35 + 16))(v35, 0, 0, 0, v30);
          }

          else
          {
            v41 = v29;
            v30 = [v17 URLByAppendingPathComponent:@"Shortcut.wflow"];
            v43 = MEMORY[0x1E6996E20];
            v31 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
            v32 = [*(a1 + 40) fileName];
            v44 = [v43 fileWithURL:v30 options:3 ofType:v31 proposedFilename:v32];

            if (v44)
            {
              v33 = getWFSecurityLogObject();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v51 = "[WFShortcutPackageFile preformShortcutDataExtractionWithCompletion:]_block_invoke";
                v52 = 2048;
                v53 = v41;
                _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_INFO, "%s Signed Shortcut Data Extracted Successfully with %zd entries", buf, 0x16u);
              }

              (*(*(a1 + 48) + 16))();
              AAArchiveStreamClose(istream);
              AAByteStreamClose(s);
            }

            else
            {
              v37 = getWFSecurityLogObject();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v51 = "[WFShortcutPackageFile preformShortcutDataExtractionWithCompletion:]_block_invoke";
                _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_ERROR, "%s Could not find the main shortcut Shortcut.wflow file in the archive", buf, 0xCu);
              }

              v38 = *(a1 + 48);
              v39 = WFShortcutPackageFileInvalidShortcutFileError();
              (*(v38 + 16))(v38, 0, 0, 0, v39);
            }
          }
        }

        else
        {
          v36 = *(a1 + 48);
          v30 = WFShortcutPackageFileFailedToExtractShortcutFileError();
          (*(v36 + 16))(v36, 0, 0, 0, v30);
        }

        v46[2](v46);
      }

      v12[2](v12);
    }

    else
    {
      v18 = *(a1 + 48);
      v19 = WFShortcutPackageFileInvalidShortcutFileError();
      (*(v18 + 16))(v18, 0, 0, 0, v19);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __69__WFShortcutPackageFile_preformShortcutDataExtractionWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) fileManager];
  [v2 removeItemAtURL:*(a1 + 40) error:0];
}

- (void)extractShortcutFileRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  executionQueue = [(WFShortcutPackageFile *)self executionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WFShortcutPackageFile_extractShortcutFileRepresentationWithCompletion___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(executionQueue, v7);
}

- (id)extractShortcutFileRepresentationWithSigningMethod:(int64_t *)method iCloudIdentifier:(id *)identifier error:(id *)error
{
  v9 = dispatch_semaphore_create(0);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__20357;
  v43 = __Block_byref_object_dispose__20358;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__20357;
  v37 = __Block_byref_object_dispose__20358;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__20357;
  v31 = __Block_byref_object_dispose__20358;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__WFShortcutPackageFile_extractShortcutFileRepresentationWithSigningMethod_iCloudIdentifier_error___block_invoke;
  v17[3] = &unk_1E8376600;
  v19 = &v39;
  v20 = &v33;
  v21 = &v23;
  v22 = &v27;
  v10 = v9;
  v18 = v10;
  [(WFShortcutPackageFile *)self preformShortcutDataExtractionWithCompletion:v17];
  v11 = dispatch_time(0, 30000000000);
  v12 = dispatch_semaphore_wait(v10, v11);
  if (v40[5])
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v13;
  if (error && v14)
  {
    *error = v34[5];
  }

  if (method)
  {
    *method = v24[3];
  }

  if (identifier)
  {
    *identifier = v28[5];
  }

  v15 = v40[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v15;
}

void __99__WFShortcutPackageFile_extractShortcutFileRepresentationWithSigningMethod_iCloudIdentifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v20 = v9;

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v11;
  v16 = v11;

  *(*(*(a1 + 56) + 8) + 24) = a3;
  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v10;
  v19 = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)commonInit
{
  v3 = MEMORY[0x1E6996F68];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 createTemporaryDirectoryWithFilename:uUIDString];
  temporaryWorkingDirectoryURL = self->_temporaryWorkingDirectoryURL;
  self->_temporaryWorkingDirectoryURL = v6;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileManager = self->_fileManager;
  self->_fileManager = defaultManager;

  fileManager = [(WFShortcutPackageFile *)self fileManager];
  temporaryWorkingDirectoryURL = [(WFShortcutPackageFile *)self temporaryWorkingDirectoryURL];
  v15 = 0;
  [fileManager createDirectoryAtURL:temporaryWorkingDirectoryURL withIntermediateDirectories:0 attributes:0 error:&v15];
  v12 = v15;

  v13 = dispatch_queue_create("com.apple.shortcuts.shorcut-package-file.execution-queue", 0);
  executionQueue = self->_executionQueue;
  self->_executionQueue = v13;
}

- (WFShortcutPackageFile)initWithSignedShortcutFileURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = WFShortcutPackageFile;
  v6 = [(WFShortcutPackageFile *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signedShortcutFileURL, l);
    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    shortcutName = v7->_shortcutName;
    v7->_shortcutName = stringByDeletingPathExtension;

    [(WFShortcutPackageFile *)v7 commonInit];
    v11 = v7;
  }

  return v7;
}

- (WFShortcutPackageFile)initWithSignedShortcutData:(id)data shortcutName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = WFShortcutPackageFile;
  v9 = [(WFShortcutPackageFile *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signedShortcutData, data);
    objc_storeStrong(&v10->_shortcutName, name);
    [(WFShortcutPackageFile *)v10 commonInit];
    v11 = v10;
  }

  return v10;
}

- (WFShortcutPackageFile)initWithShortcutData:(id)data shortcutName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = WFShortcutPackageFile;
  v9 = [(WFShortcutPackageFile *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shortcutData, data);
    objc_storeStrong(&v10->_shortcutName, name);
    [(WFShortcutPackageFile *)v10 commonInit];
    v11 = v10;
  }

  return v10;
}

- (NSString)sanitizedName
{
  sanitizedName = self->_sanitizedName;
  if (!sanitizedName)
  {
    shortcutName = [(WFShortcutPackageFile *)self shortcutName];
    wf_sanitizedFilename = [shortcutName wf_sanitizedFilename];
    v6 = self->_sanitizedName;
    self->_sanitizedName = wf_sanitizedFilename;

    sanitizedName = self->_sanitizedName;
  }

  return sanitizedName;
}

- (NSString)directoryName
{
  sanitizedName = [(WFShortcutPackageFile *)self sanitizedName];
  v3 = [sanitizedName stringByAppendingPathExtension:@"shortcuts"];

  return v3;
}

- (NSString)fileName
{
  sanitizedName = [(WFShortcutPackageFile *)self sanitizedName];
  v3 = [sanitizedName stringByAppendingPathExtension:@"shortcut"];

  return v3;
}

@end