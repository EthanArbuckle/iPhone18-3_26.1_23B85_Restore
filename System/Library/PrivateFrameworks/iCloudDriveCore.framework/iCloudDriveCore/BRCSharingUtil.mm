@interface BRCSharingUtil
+ (BOOL)_openSharedSideFaultFileWithAppID:(id)a3 url:(id)a4 recordName:(id)a5 scheduleOpenOperationBlock:(id)a6 options:(id)a7 delegate:(id)a8 error:(id *)a9;
+ (BOOL)openDocumentInDocumentsAppIfInstalled:(id)a3 options:(id)a4 error:(id *)a5;
+ (BOOL)openSharedSideFaultFileWithURL:(id)a3 recordName:(id)a4 scheduleOpenOperationBlock:(id)a5 options:(id)a6 skipOpenIfNeeded:(BOOL)a7 delegate:(id)a8 error:(id *)a9;
+ (id)localizationKey:(id)a3 forOSAndTypeOfShare:(id)a4;
+ (id)localizationKey:(id)a3 forTypeOfShare:(id)a4;
+ (id)typeForShare:(id)a3;
+ (unint64_t)optionsWithParticipant:(id)a3 isRequester:(BOOL)a4;
+ (void)learnParticipantIdentitiesForShare:(id)a3 forceUpdate:(BOOL)a4 dbFacade:(id)a5;
@end

@implementation BRCSharingUtil

+ (void)learnParticipantIdentitiesForShare:(id)a3 forceUpdate:(BOOL)a4 dbFacade:(id)a5
{
  v6 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v42 = a5;
  [v42 assertOnQueue];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v7;
  v8 = [v7 participants];
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v40 = !v6;
    v11 = *v47;
    v45 = *MEMORY[0x277CBBF28];
    v41 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        if (([v13 isCurrentUser] & 1) == 0 && objc_msgSend(v13, "acceptanceStatus") == 2)
        {
          v14 = [v13 userIdentity];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 userRecordID];
            if (v16)
            {
              v17 = brc_bread_crumbs();
              v18 = brc_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v53 = v13;
                v54 = 2112;
                v55 = v15;
                v56 = 2112;
                v57 = v17;
                _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] user %@ has identity %@%@", buf, 0x20u);
              }

              v19 = [v15 userRecordID];
              v20 = [v19 recordName];

              if (([v20 isEqualToString:v45]& 1) == 0)
              {
                v21 = [v15 nameComponents];

                if (v21)
                {
                  v22 = [[BRFieldUserIdentity alloc] initWithCKUserIdentity:v15];
                  v23 = [v42 userIdentityForName:v20];
                  if (v23)
                  {
                    v24 = v40;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  if (v24 != 1)
                  {
                    goto LABEL_19;
                  }

                  v25 = [(BRFieldUserIdentity *)v22 nameComponents];
                  [v23 nameComponents];
                  v43 = v23;
                  v27 = v26 = v22;
                  v28 = [v25 isEqual:v27];

                  v22 = v26;
                  v23 = v43;

                  if ((v28 & 1) == 0)
                  {
LABEL_19:
                    v44 = v22;
                    v29 = [(BRFieldUserIdentity *)v22 nameComponents];
                    v30 = [v29 br_formattedName];

                    if ([v30 length] || !v23)
                    {
                      if (!v30)
                      {
                        [BRCSharingUtil learnParticipantIdentitiesForShare:v50 forceUpdate:&v51 dbFacade:?];
                      }

                      v34 = brc_bread_crumbs();
                      v35 = brc_default_log();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                      {
                        v39 = [v30 fp_obfuscatedFilename];
                        *buf = 138412802;
                        v53 = v39;
                        v54 = 2112;
                        v55 = v20;
                        v56 = 2112;
                        v57 = v34;
                        _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] learning name '%@' for user %@%@", buf, 0x20u);
                      }

                      v22 = v44;
                      [v42 setUserIdentityForUserName:v20 userIdentity:v44];
                    }

                    else
                    {
                      v31 = brc_bread_crumbs();
                      v32 = brc_default_log();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        v38 = [v30 fp_obfuscatedFilename];
                        *buf = 138412802;
                        v53 = v38;
                        v54 = 2112;
                        v55 = v20;
                        v56 = 2112;
                        v57 = v31;
                        _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring empty name '%@' for user %@%@", buf, 0x20u);
                      }

                      v22 = v44;
                    }
                  }

                  v8 = v41;
                }

                else
                {
                  v22 = brc_bread_crumbs();
                  v23 = brc_default_log();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
                  {
                    v33 = [v15 debugDescription];
                    *buf = 138412802;
                    v53 = v33;
                    v54 = 2112;
                    v55 = v20;
                    v56 = 2112;
                    v57 = v22;
                    _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: nameless identity: %@ (user %@)%@", buf, 0x20u);
                  }
                }
              }

              goto LABEL_39;
            }
          }

          else
          {
            if ([v13 role] == 1)
            {
              v16 = brc_bread_crumbs();
              v20 = brc_default_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v53 = v13;
                v54 = 2112;
                v55 = v16;
                _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: owner %@ with no user identity%@", buf, 0x16u);
              }
            }

            else
            {
              v16 = brc_bread_crumbs();
              v20 = brc_default_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v53 = v13;
                v54 = 2112;
                v55 = v16;
                _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Participant %@ has no user identity%@", buf, 0x16u);
              }
            }

LABEL_39:
          }

          continue;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v10);
  }

  v36 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)optionsWithParticipant:(id)a3 isRequester:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  if (v5 && !a4)
  {
    v8 = [v5 role] - 1;
    if (v8 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_2241ABF68[v8];
    }

    v9 = [v6 permission];
    switch(v9)
    {
      case 3:
        v7 |= 0x40uLL;
        break;
      case 2:
        v7 |= 0x20uLL;
        break;
      case 1:
        v7 |= 0x10uLL;
        break;
    }

    v10 = [v6 acceptanceStatus];
    switch(v10)
    {
      case 3:
        v7 |= 0x200uLL;
        break;
      case 2:
        v7 |= 0x100uLL;
        break;
      case 1:
        v7 |= 0x80uLL;
        break;
    }
  }

  return v7;
}

+ (BOOL)_openSharedSideFaultFileWithAppID:(id)a3 url:(id)a4 recordName:(id)a5 scheduleOpenOperationBlock:(id)a6 options:(id)a7 delegate:(id)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v15;
  [v20 startAccessingSecurityScopedResource];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__23;
  v34 = __Block_byref_object_dispose__23;
  v35 = 0;
  v21 = v20;
  v22 = v14;
  v23 = v16;
  v24 = v18;
  v25 = v19;
  v26 = v17;
  FPExtendBookmarkForDocumentURL();
  v27 = v31[5];
  if (a9 && v27)
  {
    v27 = v27;
    *a9 = v27;
  }

  v28 = v27 == 0;

  _Block_object_dispose(&v30, 8);
  return v28;
}

void __117__BRCSharingUtil__openSharedSideFaultFileWithAppID_url_recordName_scheduleOpenOperationBlock_options_delegate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v26 = [*(a1 + 32) path];
      *buf = 138412802;
      v30 = v5;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Got bookmark string %@ for URL %@%@", buf, 0x20u);
    }

    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = *MEMORY[0x277CC1E28];
    v27[0] = *MEMORY[0x277CC1DF8];
    v27[1] = v9;
    v28[0] = v5;
    v28[1] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __117__BRCSharingUtil__openSharedSideFaultFileWithAppID_url_recordName_scheduleOpenOperationBlock_options_delegate_error___block_invoke_cold_1(a1, v11, v12);
    }

    IsDataSeparated = BRCurrentPersonaIsDataSeparated();
    v14 = *(a1 + 56);
    v15 = [v8 operationToOpenResource:*(a1 + 32) usingApplication:*(a1 + 40) uniqueDocumentIdentifier:*(a1 + 48) isContentManaged:IsDataSeparated sourceAuditToken:0 userInfo:v10 options:v14 delegate:*(a1 + 64)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CFABD0];
    if (a3)
    {
      v35 = *MEMORY[0x277CCA7E8];
      v36[0] = a3;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    }

    else
    {
      v18 = MEMORY[0x277CBEC10];
    }

    v20 = *(a1 + 32);
    v19 = a1 + 32;
    v21 = [v20 path];
    v22 = [v16 br_errorWithDomain:v17 code:10 userInfo:v18 description:{@"Can't get bookmark string at %@", v21}];
    v23 = *(*(v19 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    if (a3)
    {
    }

    v8 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      __117__BRCSharingUtil__openSharedSideFaultFileWithAppID_url_recordName_scheduleOpenOperationBlock_options_delegate_error___block_invoke_cold_2(v19);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (BOOL)openDocumentInDocumentsAppIfInstalled:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.DocumentsApp"];
  v10 = [v9 appState];
  v11 = [v10 isInstalled];

  if (v11)
  {
    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v13 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v7 resolvingAgainstBaseURL:0];
    [v13 setScheme:@"shareddocuments"];
    v14 = [v13 URL];
    v19 = 0;
    [v12 openSensitiveURL:v14 withOptions:v8 error:&v19];
    v15 = v19;

    v16 = v15 == 0;
    if (a5 && v15)
    {
      v17 = v15;
      *a5 = v15;
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"app is not installed"];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)openSharedSideFaultFileWithURL:(id)a3 recordName:(id)a4 scheduleOpenOperationBlock:(id)a5 options:(id)a6 skipOpenIfNeeded:(BOOL)a7 delegate:(id)a8 error:(id *)a9
{
  v10 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v10)
  {
    v19 = brc_bread_crumbs();
    v20 = 1;
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [BRCSharingUtil openSharedSideFaultFileWithURL:v19 recordName:v21 scheduleOpenOperationBlock:? options:? skipOpenIfNeeded:? delegate:? error:?];
    }

    goto LABEL_11;
  }

  if (!v14)
  {
    +[BRCSharingUtil openSharedSideFaultFileWithURL:recordName:scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:];
  }

  v19 = [v14 brc_appContainerID];
  v21 = v14;
  if (v19)
  {
    v22 = [BRCSharingUtil _openSharedSideFaultFileWithAppID:v19 url:v21 recordName:v15 scheduleOpenOperationBlock:v16 options:v17 delegate:v18 error:a9];
LABEL_10:
    v20 = v22;
    goto LABEL_11;
  }

  if (v14)
  {
    v22 = [BRCSharingUtil openDocumentInDocumentsAppIfInstalled:v21 options:v17 error:a9];
    goto LABEL_10;
  }

  v29 = MEMORY[0x277CCA9B8];
  v24 = *MEMORY[0x277CFABD0];
  v25 = [0 path];
  v30 = [v29 br_errorWithDomain:v24 code:10 description:{@"Don't know how to open shared item at %@", v25}];

  v26 = brc_bread_crumbs();
  v27 = brc_default_log();
  if (os_log_type_enabled(v27, 0x90u))
  {
    +[BRCSharingUtil openSharedSideFaultFileWithURL:recordName:scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:];
  }

  v28 = v30;
  if (a9)
  {
    v28 = v30;
    *a9 = v28;
  }

  v20 = 0;
LABEL_11:

  return v20;
}

+ (id)localizationKey:(id)a3 forTypeOfShare:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"keynote"];

  if (v8)
  {
    v9 = @"_KEYNOTE";
  }

  else
  {
    v10 = [v6 lowercaseString];
    v11 = [v10 isEqualToString:@"numbers"];

    if (v11)
    {
      v9 = @"_NUMBERS";
    }

    else
    {
      v12 = [v6 lowercaseString];
      v13 = [v12 isEqualToString:@"pages"];

      if (v13)
      {
        v9 = @"_PAGES";
      }

      else if ([v6 isEqualToString:*MEMORY[0x277CFB000]])
      {
        v9 = @"_FOLDER";
      }

      else
      {
        v9 = @"_DEFAULT";
      }
    }
  }

  v14 = [v5 stringByAppendingString:v9];

  return v14;
}

+ (id)localizationKey:(id)a3 forOSAndTypeOfShare:(id)a4
{
  v5 = a4;
  v6 = [a3 stringByAppendingString:@"_IOS"];
  v7 = [BRCSharingUtil localizationKey:v6 forTypeOfShare:v5];

  return v7;
}

+ (id)typeForShare:(id)a3
{
  v3 = a3;
  if ([v3 isFolderShare])
  {
    v4 = *MEMORY[0x277CFB000];
  }

  else
  {
    v5 = [v3 URL];
    v4 = [v5 brc_applicationName];
  }

  return v4;
}

+ (void)learnParticipantIdentitiesForShare:(uint8_t *)a1 forceUpdate:(void *)a2 dbFacade:.cold.1(uint8_t *a1, void *a2)
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: userFormattedName != nil%@", a1, 0xCu);
  }
}

void __117__BRCSharingUtil__openSharedSideFaultFileWithAppID_url_recordName_scheduleOpenOperationBlock_options_delegate_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) path];
  v7 = *(a1 + 40);
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] doing open operation on %@ with %@%@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __117__BRCSharingUtil__openSharedSideFaultFileWithAppID_url_recordName_scheduleOpenOperationBlock_options_delegate_error___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] can't get bookmark string at %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)openSharedSideFaultFileWithURL:recordName:scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: url%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)openSharedSideFaultFileWithURL:recordName:scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [0 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v1, v2, "[ERROR] don't know how to open shared item at %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)openSharedSideFaultFileWithURL:(uint64_t)a1 recordName:(NSObject *)a2 scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Skipping open in app%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end