@interface WBSPasswordsDataImporter
+ (int64_t)importCredential:(id)a3;
+ (int64_t)importCredential:(id)a3 savedAccountStore:(id)a4;
- (id)_remoteObjectProxyAndSandboxExtensionForFileURL:(id)a3;
- (void)computeNumberOfCredentialsToBeImportedFromCSVWithFileURL:(id)a3 completionHandler:(id)a4;
- (void)fetchLooksLikePasswordsCSVFile:(id)a3 completionHandler:(id)a4;
- (void)importFromCSVWithFileURL:(id)a3 progressHandler:(id)a4;
@end

@implementation WBSPasswordsDataImporter

- (id)_remoteObjectProxyAndSandboxExtensionForFileURL:(id)a3
{
  v4 = a3;
  v5 = +[WBSCredentialExtractionHelperConnectionManager sharedManager];
  v6 = [v5 credentialExtractionHelperConnectionRequestedByClient:self];
  connectionToCredentialExtractionService = self->_connectionToCredentialExtractionService;
  self->_connectionToCredentialExtractionService = v6;

  [v4 fileSystemRepresentation];
  v8 = sandbox_extension_issue_file();
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:1];
    v10 = [(NSXPCConnection *)self->_connectionToCredentialExtractionService remoteObjectProxyWithErrorHandler:&__block_literal_global_46];
    v11 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:v10 second:v9];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordsDataImporter *)v4 _remoteObjectProxyAndSandboxExtensionForFileURL:v12];
    }

    v11 = 0;
  }

  return v11;
}

void __76__WBSPasswordsDataImporter__remoteObjectProxyAndSandboxExtensionForFileURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__WBSPasswordsDataImporter__remoteObjectProxyAndSandboxExtensionForFileURL___block_invoke_cold_1(v2, v3);
  }
}

- (void)fetchLooksLikePasswordsCSVFile:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSPasswordsDataImporter *)self _remoteObjectProxyAndSandboxExtensionForFileURL:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 first];
    v11 = [v9 second];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__WBSPasswordsDataImporter_fetchLooksLikePasswordsCSVFile_completionHandler___block_invoke;
    v12[3] = &unk_1E7FC5790;
    v13 = v7;
    [v10 fetchLooksLikePasswordsCSVFile:v6 sandboxExtension:v11 completionHandler:v12];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)computeNumberOfCredentialsToBeImportedFromCSVWithFileURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSPasswordsDataImporter *)self _remoteObjectProxyAndSandboxExtensionForFileURL:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 first];
    v11 = [v9 second];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__WBSPasswordsDataImporter_computeNumberOfCredentialsToBeImportedFromCSVWithFileURL_completionHandler___block_invoke;
    v12[3] = &unk_1E7FC57B8;
    v13 = v7;
    [v10 fetchExtractedCredentialsFromCSVFile:v6 sandboxExtension:v11 completionHandler:v12];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __103__WBSPasswordsDataImporter_computeNumberOfCredentialsToBeImportedFromCSVWithFileURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 count], v5);
}

- (void)importFromCSVWithFileURL:(id)a3 progressHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x5812000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  v26 = "1";
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  *(&v28 + 1) = [MEMORY[0x1E695DF70] array];
  v29 = [MEMORY[0x1E695DF70] array];
  v8 = [(WBSPasswordsDataImporter *)self _remoteObjectProxyAndSandboxExtensionForFileURL:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 first];
    v11 = [v9 second];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__WBSPasswordsDataImporter_importFromCSVWithFileURL_progressHandler___block_invoke;
    v14[3] = &unk_1E7FC57E0;
    v15 = v7;
    v16 = &v21;
    [v10 fetchExtractedCredentialsFromCSVFile:v6 sandboxExtension:v11 completionHandler:v14];
  }

  else
  {
    v12 = v22;
    v17 = *(v22 + 3);
    v13 = v22[9];
    v18 = v22[8];
    v19 = v13;
    v20 = v12[10];
    (*(v7 + 2))(v7, 2, &v17, 0);
  }

  _Block_object_dispose(&v21, 8);
}

void __69__WBSPasswordsDataImporter_importFromCSVWithFileURL_progressHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 40) + 8);
    v33 = *(v8 + 48);
    v9 = *(v8 + 72);
    v34 = *(v8 + 64);
    v35 = v9;
    v36 = *(v8 + 80);
    (*(v7 + 16))(v7, 2, &v33, a3);
    goto LABEL_16;
  }

  v10 = [v5 count];
  v11 = a1 + 40;
  *(*(*(a1 + 40) + 8) + 56) = v10;
  if (v10 >= 1)
  {
    v12 = v10;
    v13 = 0;
    v14 = v10;
    while (1)
    {
      v15 = [v6 objectAtIndexedSubscript:v13];
      v16 = [WBSPasswordsDataImporter importCredential:v15];
      if (v16 == 2)
      {
        ++*(*(*v11 + 8) + 64);
        goto LABEL_12;
      }

      if (v16 == 1)
      {
        break;
      }

      if (!v16)
      {
        v17 = *(*(*v11 + 8) + 72);
LABEL_10:
        [v17 addObject:v15];
      }

LABEL_12:
      *(*(*(a1 + 40) + 8) + 48) = (v13 / v14);
      v18 = *(a1 + 32);
      v19 = *(*(a1 + 40) + 8);
      v29 = *(v19 + 48);
      v20 = *(v19 + 72);
      v30 = *(v19 + 64);
      v31 = v20;
      v32 = *(v19 + 80);
      (*(v18 + 16))(v18, 1, &v29, 0);

      if (v12 == ++v13)
      {
        goto LABEL_13;
      }
    }

    v17 = *(*(*v11 + 8) + 80);
    goto LABEL_10;
  }

LABEL_13:
  v21 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __69__WBSPasswordsDataImporter_importFromCSVWithFileURL_progressHandler___block_invoke_cold_1(v21, v6, a1 + 40);
  }

  v22 = *(a1 + 32);
  v23 = *(*(a1 + 40) + 8);
  v25 = *(v23 + 48);
  v24 = *(v23 + 72);
  v26 = *(v23 + 64);
  v27 = v24;
  v28 = *(v23 + 80);
  (*(v22 + 16))(v22, 3, &v25, 0);
LABEL_16:
}

+ (int64_t)importCredential:(id)a3
{
  v4 = MEMORY[0x1E69C8A38];
  v5 = a3;
  v6 = [v4 sharedStore];
  v7 = [a1 importCredential:v5 savedAccountStore:v6];

  return v7;
}

+ (int64_t)importCredential:(id)a3 savedAccountStore:(id)a4
{
  v5 = a3;
  v79 = a4;
  v6 = [v5 title];
  if (v6)
  {

    goto LABEL_4;
  }

  v7 = [v5 url];

  if (v7)
  {
LABEL_4:
    v8 = [v5 url];
    if (v8)
    {
      v9 = MEMORY[0x1E695AC58];
      v10 = [v5 url];
      v11 = [v9 safari_HTMLFormProtectionSpaceForURL:v10];
    }

    else
    {
      v11 = [MEMORY[0x1E69C8A38] protectionSpaceForNewStandalonePassword];
    }

    v12 = [v5 urlCredentialWithPersistence:3];
    v78 = v11;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = [v5 encryptedURLCredentialWithPersistence:3];
      if (!v13)
      {
        v27 = 0;
LABEL_75:

        goto LABEL_76;
      }
    }

    v14 = [v5 url];

    v15 = objc_alloc(MEMORY[0x1E69C8A58]);
    v16 = [v13 user];
    v17 = [v15 initWithString:v16 matchingType:1];

    v18 = objc_alloc(MEMORY[0x1E69C8A30]);
    v19 = v18;
    if (!v14)
    {
      v28 = [v18 initWithURL:0 options:64 userNameQuery:v17 passkeyCredentialIdentifier:0 associatedDomainsManager:0 webFrameIdentifier:0];
      v29 = objc_alloc(MEMORY[0x1E69C8A58]);
      v30 = [v5 title];
      v31 = [v29 initWithString:v30 matchingType:1];
      [v28 setTitleQuery:v31];

      v87 = 0;
      v88 = &v87;
      v89 = 0x3032000000;
      v90 = __Block_byref_object_copy__11;
      v91 = __Block_byref_object_dispose__12;
      v92 = 0;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke_3;
      v85[3] = &unk_1E7FC5808;
      v85[4] = &v87;
      [v79 getSavedAccountsMatchingCriteria:v28 withSynchronousCompletionHandler:v85];
      v32 = [v88[5] exactMatches];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke_4;
      v83[3] = &unk_1E7FC5850;
      v84 = v5;
      v33 = [v32 safari_mapAndFilterObjectsUsingBlock:v83];
      v34 = [v33 firstObject];

      _Block_object_dispose(&v87, 8);
      v27 = 2;
      if (!v34)
      {
        goto LABEL_19;
      }

      goto LABEL_74;
    }

    v20 = [v5 url];
    v21 = [v19 initWithURL:v20 options:16 userNameQuery:v17 passkeyCredentialIdentifier:0 associatedDomainsManager:0 webFrameIdentifier:0];

    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__11;
    v91 = __Block_byref_object_dispose__12;
    v92 = 0;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke;
    v86[3] = &unk_1E7FC5808;
    v86[4] = &v87;
    [v79 getSavedAccountsMatchingCriteria:v21 withSynchronousCompletionHandler:v86];
    v22 = [v88[5] exactMatches];
    v23 = [v22 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_16];
    v24 = [v23 firstObject];

    if (v24 && ([v24 credentialTypes] & 1) != 0)
    {
      v38 = [v24 password];
      v39 = [v5 password];
      v40 = [v38 isEqualToString:v39];

      v25 = 0;
      if ((v40 & 1) == 0)
      {
        v26 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v25 = 1;
    }

    v26 = v25;
    LOBYTE(v25) = 1;
LABEL_15:

    _Block_object_dispose(&v87, 8);
    if (v25)
    {
      if (!v26)
      {
        goto LABEL_31;
      }

      v27 = 1;
LABEL_19:
      [v79 removeDontSaveMarkerForProtectionSpace:v11];
      if ([v11 port])
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = [v11 host];
        v37 = [v35 stringWithFormat:@"%@:%ld", v36, objc_msgSend(v11, "port")];
      }

      else
      {
        v37 = [v11 host];
      }

      v87 = 0;
      v88 = &v87;
      v89 = 0x3032000000;
      v90 = __Block_byref_object_copy__11;
      v91 = __Block_byref_object_dispose__12;
      v92 = 0;
      v41 = dispatch_group_create();
      dispatch_group_enter(v41);
      v42 = [v13 user];
      v43 = [v13 password];
      v44 = *MEMORY[0x1E69C8C68];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke_5;
      v80[3] = &unk_1E7FC5878;
      v82 = &v87;
      v45 = v41;
      v81 = v45;
      [v79 saveUser:v42 password:v43 forUserTypedSite:v37 customTitle:0 notesEntry:0 groupID:v44 completionHandler:v80];

      v46 = dispatch_time(0, 30000000000);
      if (dispatch_group_wait(v45, v46) || v88[5])
      {
        v47 = 1;
      }

      else
      {
        v47 = 0;
        v27 = 0;
      }

      _Block_object_dispose(&v87, 8);
      if (!v47)
      {
        goto LABEL_74;
      }

LABEL_31:
      v48 = [v5 otpAuthURL];

      v49 = [v5 notesEntry];
      v50 = [v49 length];

      v51 = [v5 title];
      v52 = [v51 length];

      if (v52)
      {
        v77 = [v5 url];
        v53 = [v77 host];
        v54 = [v53 safari_highLevelDomainFromHost];
        v55 = [v5 user];
        v56 = [MEMORY[0x1E695DF70] array];
        v57 = v56;
        if (v54)
        {
          [v56 addObject:v54];
        }

        if (v55)
        {
          [v57 addObject:v55];
        }

        if ([v54 length] && objc_msgSend(v55, "length"))
        {
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", v54, v55];
          [v57 addObject:v58];
        }

        v76 = v48;
        if ([v53 length] && objc_msgSend(v55, "length"))
        {
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", v53, v55];
          [v57 addObject:v59];
        }

        v60 = (v50 | v48) != 0;
        v75 = v50;
        v61 = [v77 absoluteString];
        if (v61)
        {
          [v57 addObject:v61];
        }

        v62 = [v5 title];
        v63 = [v57 containsObject:v62];

        v64 = v63 ^ 1;
        LOBYTE(v62) = v64 | v60;

        v48 = v76;
        if ((v62 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!(v50 | v48))
        {
LABEL_54:
          v27 = 2;
          goto LABEL_74;
        }

        v75 = v50;
        v64 = 0;
      }

      v65 = v64;
      v66 = [v79 savedAccountWithAllMetadataForURLCredential:v13 protectionSpace:v78];
      if (!v66)
      {
        v66 = [v79 savedAccountForURLCredential:v13 protectionSpace:v78];
      }

      if (v48)
      {
        v67 = objc_alloc(MEMORY[0x1E69C8A60]);
        v68 = [v5 otpAuthURL];
        v69 = [v67 initWithOTPAuthURL:v68];

        v70 = [v66 totpGenerators];
        v71 = [v70 firstObject];

        if (v71)
        {
          if (([v71 generatesIdenticalCodesToGenerator:v69] & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else if (v69)
        {
          [v79 saveTOTPGenerator:v69 forSavedAccount:v66 completionHandler:&__block_literal_global_25_0];
        }
      }

      if (v75)
      {
        v69 = [v5 notesEntry];
        v72 = [v66 notesEntry];
        v71 = v72;
        if (v72)
        {
          if (([v72 isEqualToString:v69] & 1) == 0)
          {
LABEL_62:
            v27 = 1;
            goto LABEL_72;
          }
        }

        else
        {
          v73 = [v5 notesEntry];
          [v79 saveNotesEntry:v73 forSavedAccount:v66 completionHandler:&__block_literal_global_27_1];
        }
      }

      if (!v65)
      {
        v27 = 2;
LABEL_73:

        goto LABEL_74;
      }

      v69 = [v5 title];
      v71 = [v66 customTitle];
      if ([v71 length])
      {
        if ([v71 isEqualToString:v69])
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }
      }

      else
      {
        [v79 saveCustomTitle:v69 forSavedAccount:v66 completionHandler:&__block_literal_global_29_0];
        v27 = 2;
      }

LABEL_72:

      goto LABEL_73;
    }

    v27 = 1;
LABEL_74:
    v11 = v78;
    goto LABEL_75;
  }

  v27 = 0;
LABEL_76:

  return v27;
}

id __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 savedAccount];
  if ([v2 isSavedInPersonalKeychain])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 savedAccount];
  if ([v3 isSavedInPersonalKeychain] && (objc_msgSend(*(a1 + 32), "password"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "password"), v5 = objc_claimAutoreleasedReturnValue(), v6 = WBSIsEqual(), v5, v4, v6) && (objc_msgSend(*(a1 + 32), "notesEntry"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "notesEntry"), v8 = objc_claimAutoreleasedReturnValue(), v9 = WBSIsEqual(), v8, v7, v9) && (objc_msgSend(*(a1 + 32), "otpAuthURL"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "totpGenerators"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "originalURL"), v13 = objc_claimAutoreleasedReturnValue(), v14 = WBSIsEqual(), v13, v12, v11, v10, v14))
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __63__WBSPasswordsDataImporter_importCredential_savedAccountStore___block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_remoteObjectProxyAndSandboxExtensionForFileURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Could not create sandbox extension for file URL %@.", &v2, 0xCu);
}

void __76__WBSPasswordsDataImporter__remoteObjectProxyAndSandboxExtensionForFileURL___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote object proxy for CredentialExtractionHelper with error: %{public}@", &v2, 0xCu);
}

void __69__WBSPasswordsDataImporter_importFromCSVWithFileURL_progressHandler___block_invoke_cold_1(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 count];
  v7 = *(*a3 + 8);
  v8 = *(v7 + 64);
  v9 = [*(v7 + 80) count];
  v10 = [*(*(*a3 + 8) + 72) count];
  v11 = 134218752;
  v12 = v6;
  v13 = 2048;
  v14 = v8;
  v15 = 2048;
  v16 = v9;
  v17 = 2048;
  v18 = v10;
  _os_log_debug_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEBUG, "Parsed %lu credentials from CSV file. Imported %lu into keychain, while ignoring %lu conflicting credentials and %lu credentials with errors.", &v11, 0x2Au);
}

@end