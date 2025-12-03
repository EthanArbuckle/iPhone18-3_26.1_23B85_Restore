@interface BRCSharingUtil
+ (BOOL)_openSharedSideFaultFileWithAppID:(id)d url:(id)url recordName:(id)name scheduleOpenOperationBlock:(id)block options:(id)options delegate:(id)delegate error:(id *)error;
+ (BOOL)openDocumentInDocumentsAppIfInstalled:(id)installed options:(id)options error:(id *)error;
+ (BOOL)openSharedSideFaultFileWithURL:(id)l recordName:(id)name scheduleOpenOperationBlock:(id)block options:(id)options skipOpenIfNeeded:(BOOL)needed delegate:(id)delegate error:(id *)error;
+ (id)localizationKey:(id)key forOSAndTypeOfShare:(id)share;
+ (id)localizationKey:(id)key forTypeOfShare:(id)share;
+ (id)typeForShare:(id)share;
+ (unint64_t)optionsWithParticipant:(id)participant isRequester:(BOOL)requester;
+ (void)learnParticipantIdentitiesForShare:(id)share forceUpdate:(BOOL)update dbFacade:(id)facade;
@end

@implementation BRCSharingUtil

+ (void)learnParticipantIdentitiesForShare:(id)share forceUpdate:(BOOL)update dbFacade:(id)facade
{
  updateCopy = update;
  v59 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  facadeCopy = facade;
  [facadeCopy assertOnQueue];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = shareCopy;
  participants = [shareCopy participants];
  v9 = [participants countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v40 = !updateCopy;
    v11 = *v47;
    v45 = *MEMORY[0x277CBBF28];
    v41 = participants;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(participants);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        if (([v13 isCurrentUser] & 1) == 0 && objc_msgSend(v13, "acceptanceStatus") == 2)
        {
          userIdentity = [v13 userIdentity];
          v15 = userIdentity;
          if (userIdentity)
          {
            userRecordID = [userIdentity userRecordID];
            if (userRecordID)
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

              userRecordID2 = [v15 userRecordID];
              recordName = [userRecordID2 recordName];

              if (([recordName isEqualToString:v45]& 1) == 0)
              {
                nameComponents = [v15 nameComponents];

                if (nameComponents)
                {
                  v22 = [[BRFieldUserIdentity alloc] initWithCKUserIdentity:v15];
                  v23 = [facadeCopy userIdentityForName:recordName];
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

                  nameComponents2 = [(BRFieldUserIdentity *)v22 nameComponents];
                  [v23 nameComponents];
                  v43 = v23;
                  v27 = v26 = v22;
                  v28 = [nameComponents2 isEqual:v27];

                  v22 = v26;
                  v23 = v43;

                  if ((v28 & 1) == 0)
                  {
LABEL_19:
                    v44 = v22;
                    nameComponents3 = [(BRFieldUserIdentity *)v22 nameComponents];
                    br_formattedName = [nameComponents3 br_formattedName];

                    if ([br_formattedName length] || !v23)
                    {
                      if (!br_formattedName)
                      {
                        [BRCSharingUtil learnParticipantIdentitiesForShare:v50 forceUpdate:&v51 dbFacade:?];
                      }

                      v34 = brc_bread_crumbs();
                      v35 = brc_default_log();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                      {
                        fp_obfuscatedFilename = [br_formattedName fp_obfuscatedFilename];
                        *buf = 138412802;
                        v53 = fp_obfuscatedFilename;
                        v54 = 2112;
                        v55 = recordName;
                        v56 = 2112;
                        v57 = v34;
                        _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] learning name '%@' for user %@%@", buf, 0x20u);
                      }

                      v22 = v44;
                      [facadeCopy setUserIdentityForUserName:recordName userIdentity:v44];
                    }

                    else
                    {
                      v31 = brc_bread_crumbs();
                      v32 = brc_default_log();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        fp_obfuscatedFilename2 = [br_formattedName fp_obfuscatedFilename];
                        *buf = 138412802;
                        v53 = fp_obfuscatedFilename2;
                        v54 = 2112;
                        v55 = recordName;
                        v56 = 2112;
                        v57 = v31;
                        _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring empty name '%@' for user %@%@", buf, 0x20u);
                      }

                      v22 = v44;
                    }
                  }

                  participants = v41;
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
                    v55 = recordName;
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
              userRecordID = brc_bread_crumbs();
              recordName = brc_default_log();
              if (os_log_type_enabled(recordName, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v53 = v13;
                v54 = 2112;
                v55 = userRecordID;
                _os_log_fault_impl(&dword_223E7A000, recordName, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: owner %@ with no user identity%@", buf, 0x16u);
              }
            }

            else
            {
              userRecordID = brc_bread_crumbs();
              recordName = brc_default_log();
              if (os_log_type_enabled(recordName, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v53 = v13;
                v54 = 2112;
                v55 = userRecordID;
                _os_log_debug_impl(&dword_223E7A000, recordName, OS_LOG_TYPE_DEBUG, "[DEBUG] Participant %@ has no user identity%@", buf, 0x16u);
              }
            }

LABEL_39:
          }

          continue;
        }
      }

      v10 = [participants countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v10);
  }

  v36 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)optionsWithParticipant:(id)participant isRequester:(BOOL)requester
{
  participantCopy = participant;
  v6 = participantCopy;
  if (participantCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  if (participantCopy && !requester)
  {
    v8 = [participantCopy role] - 1;
    if (v8 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_2241ABF68[v8];
    }

    permission = [v6 permission];
    switch(permission)
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

    acceptanceStatus = [v6 acceptanceStatus];
    switch(acceptanceStatus)
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

+ (BOOL)_openSharedSideFaultFileWithAppID:(id)d url:(id)url recordName:(id)name scheduleOpenOperationBlock:(id)block options:(id)options delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  urlCopy = url;
  nameCopy = name;
  blockCopy = block;
  optionsCopy = options;
  delegateCopy = delegate;
  v20 = urlCopy;
  [v20 startAccessingSecurityScopedResource];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__23;
  v34 = __Block_byref_object_dispose__23;
  v35 = 0;
  v21 = v20;
  v22 = dCopy;
  v23 = nameCopy;
  v24 = optionsCopy;
  v25 = delegateCopy;
  v26 = blockCopy;
  FPExtendBookmarkForDocumentURL();
  v27 = v31[5];
  if (error && v27)
  {
    v27 = v27;
    *error = v27;
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

+ (BOOL)openDocumentInDocumentsAppIfInstalled:(id)installed options:(id)options error:(id *)error
{
  installedCopy = installed;
  optionsCopy = options;
  v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.DocumentsApp"];
  appState = [v9 appState];
  isInstalled = [appState isInstalled];

  if (isInstalled)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v13 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:installedCopy resolvingAgainstBaseURL:0];
    [v13 setScheme:@"shareddocuments"];
    v14 = [v13 URL];
    v19 = 0;
    [defaultWorkspace openSensitiveURL:v14 withOptions:optionsCopy error:&v19];
    v15 = v19;

    v16 = v15 == 0;
    if (error && v15)
    {
      v17 = v15;
      *error = v15;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"app is not installed"];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)openSharedSideFaultFileWithURL:(id)l recordName:(id)name scheduleOpenOperationBlock:(id)block options:(id)options skipOpenIfNeeded:(BOOL)needed delegate:(id)delegate error:(id *)error
{
  neededCopy = needed;
  lCopy = l;
  nameCopy = name;
  blockCopy = block;
  optionsCopy = options;
  delegateCopy = delegate;
  if (neededCopy)
  {
    brc_appContainerID = brc_bread_crumbs();
    v20 = 1;
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [BRCSharingUtil openSharedSideFaultFileWithURL:brc_appContainerID recordName:v21 scheduleOpenOperationBlock:? options:? skipOpenIfNeeded:? delegate:? error:?];
    }

    goto LABEL_11;
  }

  if (!lCopy)
  {
    +[BRCSharingUtil openSharedSideFaultFileWithURL:recordName:scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:];
  }

  brc_appContainerID = [lCopy brc_appContainerID];
  v21 = lCopy;
  if (brc_appContainerID)
  {
    v22 = [BRCSharingUtil _openSharedSideFaultFileWithAppID:brc_appContainerID url:v21 recordName:nameCopy scheduleOpenOperationBlock:blockCopy options:optionsCopy delegate:delegateCopy error:error];
LABEL_10:
    v20 = v22;
    goto LABEL_11;
  }

  if (lCopy)
  {
    v22 = [BRCSharingUtil openDocumentInDocumentsAppIfInstalled:v21 options:optionsCopy error:error];
    goto LABEL_10;
  }

  v29 = MEMORY[0x277CCA9B8];
  v24 = *MEMORY[0x277CFABD0];
  path = [0 path];
  v30 = [v29 br_errorWithDomain:v24 code:10 description:{@"Don't know how to open shared item at %@", path}];

  v26 = brc_bread_crumbs();
  v27 = brc_default_log();
  if (os_log_type_enabled(v27, 0x90u))
  {
    +[BRCSharingUtil openSharedSideFaultFileWithURL:recordName:scheduleOpenOperationBlock:options:skipOpenIfNeeded:delegate:error:];
  }

  v28 = v30;
  if (error)
  {
    v28 = v30;
    *error = v28;
  }

  v20 = 0;
LABEL_11:

  return v20;
}

+ (id)localizationKey:(id)key forTypeOfShare:(id)share
{
  keyCopy = key;
  shareCopy = share;
  lowercaseString = [shareCopy lowercaseString];
  v8 = [lowercaseString isEqualToString:@"keynote"];

  if (v8)
  {
    v9 = @"_KEYNOTE";
  }

  else
  {
    lowercaseString2 = [shareCopy lowercaseString];
    v11 = [lowercaseString2 isEqualToString:@"numbers"];

    if (v11)
    {
      v9 = @"_NUMBERS";
    }

    else
    {
      lowercaseString3 = [shareCopy lowercaseString];
      v13 = [lowercaseString3 isEqualToString:@"pages"];

      if (v13)
      {
        v9 = @"_PAGES";
      }

      else if ([shareCopy isEqualToString:*MEMORY[0x277CFB000]])
      {
        v9 = @"_FOLDER";
      }

      else
      {
        v9 = @"_DEFAULT";
      }
    }
  }

  v14 = [keyCopy stringByAppendingString:v9];

  return v14;
}

+ (id)localizationKey:(id)key forOSAndTypeOfShare:(id)share
{
  shareCopy = share;
  v6 = [key stringByAppendingString:@"_IOS"];
  v7 = [BRCSharingUtil localizationKey:v6 forTypeOfShare:shareCopy];

  return v7;
}

+ (id)typeForShare:(id)share
{
  shareCopy = share;
  if ([shareCopy isFolderShare])
  {
    brc_applicationName = *MEMORY[0x277CFB000];
  }

  else
  {
    v5 = [shareCopy URL];
    brc_applicationName = [v5 brc_applicationName];
  }

  return brc_applicationName;
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