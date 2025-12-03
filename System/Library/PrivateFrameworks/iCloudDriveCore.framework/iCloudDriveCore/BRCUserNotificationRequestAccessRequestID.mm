@interface BRCUserNotificationRequestAccessRequestID
+ (id)decodeWithRequestIDString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)_createCKFetchRecordsOperationForShareRecordID:(id)d originalRequest:(id)request sessionContext:(id)context perRecordCompletionBlock:(id)block;
- (id)_getRequesterForUserRecordName:(id)name requesters:(id)requesters;
- (id)encode;
- (void)_approveRequester:(id)requester share:(id)share sessionContext:(id)context completionHandler:(id)handler;
- (void)_perfromActionWithIdentifier:(id)identifier share:(id)share sessionContext:(id)context requesterToModify:(id)modify;
- (void)_saveShareOperationForShare:(id)share sessionContext:(id)context;
- (void)_sendUserAlertWithError:(id)error type:(id)type;
- (void)performOnActionWithNotificationResponse:(id)response sessionContext:(id)context completionHandler:(id)handler;
@end

@implementation BRCUserNotificationRequestAccessRequestID

- (id)encode
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[BRCUserNotificationRequestAccessRequestID requestTypeName];
  recordName = [(BRCUserNotificationRequestAccess *)self recordName];
  zoneName = [(BRCUserNotificationRequestAccess *)self zoneName];
  ownerName = [(BRCUserNotificationRequestAccess *)self ownerName];
  userRecordName = [(BRCUserNotificationRequestAccess *)self userRecordName];
  accountID = [(BRCUserNotificationRequestAccess *)self accountID];
  v10 = [v3 stringWithFormat:@"%@/%@/%@/%@/%@/%@", v4, recordName, zoneName, ownerName, userRecordName, accountID];

  return v10;
}

+ (id)decodeWithRequestIDString:(id)string
{
  if (string)
  {
    v3 = [string componentsSeparatedByString:@"/"];
    if ([v3 count] == 6 && (+[BRCUserNotificationRequestAccessRequestID requestTypeName](BRCUserNotificationRequestAccessRequestID, "requestTypeName"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, v6))
    {
      v7 = [BRCUserNotificationRequestAccessRequestID alloc];
      v8 = [v3 objectAtIndexedSubscript:1];
      v9 = [v3 objectAtIndexedSubscript:2];
      v10 = [v3 objectAtIndexedSubscript:3];
      v11 = [v3 objectAtIndexedSubscript:4];
      v12 = [v3 objectAtIndexedSubscript:5];
      v13 = [(BRCUserNotificationRequestAccess *)v7 initWithRecordName:v8 zoneName:v9 ownerName:v10 userRecordName:v11 accountID:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      encode = [(BRCUserNotificationRequestAccessRequestID *)self encode];
      encode2 = [(BRCUserNotificationRequestAccessRequestID *)equalCopy encode];
      v7 = [encode isEqualToString:encode2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_getRequesterForUserRecordName:(id)name requesters:(id)requesters
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  requestersCopy = requesters;
  v7 = [requestersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(requestersCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        userIdentity = [v10 userIdentity];
        userRecordID = [userIdentity userRecordID];
        recordName = [userRecordID recordName];
        v14 = [recordName isEqualToString:nameCopy];

        if (v14)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [requestersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_saveShareOperationForShare:(id)share sessionContext:(id)context
{
  shareCopy = share;
  contextCopy = context;
  v8 = objc_alloc(MEMORY[0x277CFAE60]);
  recordID = [shareCopy recordID];
  zoneID = [recordID zoneID];
  v11 = [v8 initWithRecordZoneID:zoneID];

  zoneAppRetriever = [contextCopy zoneAppRetriever];
  v13 = [zoneAppRetriever clientZoneByMangledID:v11];

  if (v13)
  {
    v14 = [BRCSharingSaveShareOperation alloc];
    serverZone = [v13 serverZone];
    appLibraryOrZoneName = [(BRCSharingSaveShareOperation *)v14 initWithShare:shareCopy zone:serverZone sessionContext:contextCopy];

    [(_BRCFrameworkOperation *)appLibraryOrZoneName setIgnoreMissingRemoteClientProxy:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke;
    v24[3] = &unk_278504C58;
    v24[4] = self;
    v25 = shareCopy;
    v26 = v13;
    [(_BRCOperation *)appLibraryOrZoneName setFinishBlock:v24];
    syncContextProvider = [contextCopy syncContextProvider];
    v18 = [syncContextProvider transferSyncContextForMangledID:v11];
    [v18 addOperation:appLibraryOrZoneName nonDiscretionary:1];
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserNotificationRequestAccessRequestID _saveShareOperationForShare:sessionContext:];
    }

    v21 = MEMORY[0x277CCA9B8];
    appLibraryOrZoneName = [v11 appLibraryOrZoneName];
    v22 = [v21 brc_errorAppLibraryNotFound:appLibraryOrZoneName];
    v23 = [BRCSharingUtil typeForShare:shareCopy];
    [(BRCUserNotificationRequestAccessRequestID *)self _sendUserAlertWithError:v22 type:v23];
  }
}

void __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke_cold_1();
    }

    v7 = *(a1 + 32);
    v8 = [BRCSharingUtil typeForShare:*(a1 + 40)];
    [v7 _sendUserAlertWithError:v4 type:v8];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke_cold_2();
    }
  }

  v10 = [*(a1 + 48) dbFacade];
  v11 = [v10 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke_75;
  block[3] = &unk_2784FF450;
  v13 = *(a1 + 48);
  dispatch_async(v11, block);
}

- (void)_approveRequester:(id)requester share:(id)share sessionContext:(id)context completionHandler:(id)handler
{
  v38[1] = *MEMORY[0x277D85DE8];
  shareCopy = share;
  handlerCopy = handler;
  v11 = MEMORY[0x277CFAE60];
  contextCopy = context;
  requesterCopy = requester;
  v14 = [v11 alloc];
  recordID = [shareCopy recordID];
  zoneID = [recordID zoneID];
  v17 = [v14 initWithRecordZoneID:zoneID];

  participantLookupInfo = [requesterCopy participantLookupInfo];

  v38[0] = participantLookupInfo;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];

  v20 = [objc_alloc(MEMORY[0x277CBC410]) initWithUserIdentityLookupInfos:v19];
  br_requestForAccess = [MEMORY[0x277CBC4F8] br_requestForAccess];
  [v20 setGroup:br_requestForAccess];

  array = [MEMORY[0x277CBEB18] array];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke;
  v35[3] = &unk_278504C80;
  v23 = shareCopy;
  v36 = v23;
  v24 = array;
  v37 = v24;
  [v20 setPerShareParticipantCompletionBlock:v35];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke_83;
  v31[3] = &unk_278504CA8;
  v33 = v23;
  v34 = handlerCopy;
  v32 = v24;
  v25 = v23;
  v26 = v24;
  v27 = handlerCopy;
  [v20 setFetchShareParticipantsCompletionBlock:v31];
  syncContextProvider = [contextCopy syncContextProvider];

  v29 = [syncContextProvider transferSyncContextForMangledID:v17];

  [v29 addOperation:v20 nonDiscretionary:1];
  v30 = *MEMORY[0x277D85DE8];
}

void __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke_cold_1();
    }
  }

  else if (v8)
  {
    [v8 setRole:3];
    [v8 setPermission:{objc_msgSend(*(a1 + 32), "inferParticipantPermissions")}];
    v12 = *(a1 + 40);
    objc_sync_enter(v12);
    [*(a1 + 40) addObject:v8];
    objc_sync_exit(v12);
  }
}

void __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke_83(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke_83_cold_1();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 40) addParticipant:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v7);
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_perfromActionWithIdentifier:(id)identifier share:(id)share sessionContext:(id)context requesterToModify:(id)modify
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  shareCopy = share;
  contextCopy = context;
  modifyCopy = modify;
  userIdentity = [modifyCopy userIdentity];
  userRecordID = [userIdentity userRecordID];
  recordName = [userRecordID recordName];

  if ([identifierCopy isEqualToString:@"APPROVE_ACTION"])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __113__BRCUserNotificationRequestAccessRequestID__perfromActionWithIdentifier_share_sessionContext_requesterToModify___block_invoke;
    v21[3] = &unk_278504CD0;
    v22 = recordName;
    selfCopy = self;
    v24 = shareCopy;
    v25 = contextCopy;
    [(BRCUserNotificationRequestAccessRequestID *)self _approveRequester:modifyCopy share:v24 sessionContext:v25 completionHandler:v21];
  }

  else if ([identifierCopy isEqualToString:@"DECLINE_ACTION"])
  {
    v26[0] = modifyCopy;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [shareCopy blockRequesters:v17];

    [(BRCUserNotificationRequestAccessRequestID *)self _saveShareOperationForShare:shareCopy sessionContext:contextCopy];
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserNotificationRequestAccessRequestID _perfromActionWithIdentifier:share:sessionContext:requesterToModify:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __113__BRCUserNotificationRequestAccessRequestID__perfromActionWithIdentifier_share_sessionContext_requesterToModify___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __113__BRCUserNotificationRequestAccessRequestID__perfromActionWithIdentifier_share_sessionContext_requesterToModify___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __113__BRCUserNotificationRequestAccessRequestID__perfromActionWithIdentifier_share_sessionContext_requesterToModify___block_invoke_cold_2(a1);
    }

    [*(a1 + 40) _saveShareOperationForShare:*(a1 + 48) sessionContext:*(a1 + 56)];
  }
}

- (void)_sendUserAlertWithError:(id)error type:(id)type
{
  errorCopy = error;
  typeCopy = type;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

    if (v7)
    {
      if ([errorCopy brc_containsCloudKitErrorCode:3])
      {
        v8 = +[BRCUserNotification defaultInstance];
        [v8 showErrorDeviceOfflineForType:typeCopy reply:&__block_literal_global_87];
      }

      else
      {
        if ([errorCopy brc_containsCloudKitErrorCode:4])
        {
          v9 = +[BRCUserNotification defaultInstance];
          v8 = v9;
          v10 = &__block_literal_global_89_1;
        }

        else
        {
          if ([errorCopy brc_containsCloudKitErrorCode:29])
          {
            v8 = +[BRCUserNotification defaultInstance];
            [v8 showErrorParticipantLimitReachedForType:typeCopy reply:&__block_literal_global_92_0];
            goto LABEL_15;
          }

          if (([errorCopy brc_containsCloudKitErrorCode:32] & 1) != 0 || (objc_msgSend(errorCopy, "brc_containsCloudKitErrorCode:", 11) & 1) != 0 || objc_msgSend(errorCopy, "brc_containsCloudKitErrorCode:", 10))
          {
            v8 = +[BRCUserNotification defaultInstance];
            [v8 showErrorItemUnavailableOrAccessRestrictedForType:typeCopy reply:&__block_literal_global_94_0];
            goto LABEL_15;
          }

          v9 = +[BRCUserNotification defaultInstance];
          v8 = v9;
          v10 = &__block_literal_global_96;
        }

        [v9 showErrorServerNotReachableForType:typeCopy reply:v10];
      }
    }

    else
    {
      v8 = +[BRCUserNotification defaultInstance];
      [v8 showDefaultErrorForRequestAccessWithReply:&__block_literal_global_98];
    }

LABEL_15:
  }
}

- (id)_createCKFetchRecordsOperationForShareRecordID:(id)d originalRequest:(id)request sessionContext:(id)context perRecordCompletionBlock:(id)block
{
  v22[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v10 = MEMORY[0x277CBC3E0];
  blockCopy = block;
  dCopy = d;
  v13 = [v10 alloc];
  v22[0] = dCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v15 = [v13 initWithRecordIDs:v14];

  [v15 setPerRecordCompletionBlock:blockCopy];
  br_requestForAccess = [MEMORY[0x277CBC4F8] br_requestForAccess];
  [v15 setGroup:br_requestForAccess];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __148__BRCUserNotificationRequestAccessRequestID__createCKFetchRecordsOperationForShareRecordID_originalRequest_sessionContext_perRecordCompletionBlock___block_invoke;
  v20[3] = &unk_278504CF8;
  v20[4] = self;
  v21 = requestCopy;
  v17 = requestCopy;
  [v15 setFetchRecordsCompletionBlock:v20];

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

void __148__BRCUserNotificationRequestAccessRequestID__createCKFetchRecordsOperationForShareRecordID_originalRequest_sessionContext_perRecordCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Could not fetch records %@ with error %@%@", &v14, 0x20u);
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) content];
    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"itemType"];
    [v9 _sendUserAlertWithError:v6 type:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performOnActionWithNotificationResponse:(id)response sessionContext:(id)context completionHandler:(id)handler
{
  responseCopy = response;
  contextCopy = context;
  handlerCopy = handler;
  if (performOnActionWithNotificationResponse_sessionContext_completionHandler__onceToken != -1)
  {
    [BRCUserNotificationRequestAccessRequestID performOnActionWithNotificationResponse:sessionContext:completionHandler:];
  }

  v11 = performOnActionWithNotificationResponse_sessionContext_completionHandler__actionsIdentifiers;
  actionIdentifier = [responseCopy actionIdentifier];
  LOBYTE(v11) = [v11 containsObject:actionIdentifier];

  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277CBC5F8]);
    zoneName = [(BRCUserNotificationRequestAccess *)self zoneName];
    ownerName = [(BRCUserNotificationRequestAccess *)self ownerName];
    v16 = [v13 initWithZoneName:zoneName ownerName:ownerName];

    v17 = objc_alloc(MEMORY[0x277CBC5D0]);
    recordName = [(BRCUserNotificationRequestAccess *)self recordName];
    v19 = [v17 initWithRecordName:recordName zoneID:v16];

    if (v16 && v19)
    {
      actionIdentifier2 = [responseCopy actionIdentifier];
      v21 = [actionIdentifier2 isEqualToString:*MEMORY[0x277CE20E8]];

      if (v21)
      {
        v22 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:v16];
        zoneAppRetriever = [contextCopy zoneAppRetriever];
        v24 = [zoneAppRetriever clientZoneByMangledID:v22];

        if (v24)
        {
          dbFacade = [v24 dbFacade];
          serialQueue = [dbFacade serialQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_106;
          block[3] = &unk_2784FF4F0;
          v50 = v24;
          v51 = v19;
          v52 = contextCopy;
          v53 = v22;
          selfCopy = self;
          dispatch_async(serialQueue, block);

          handlerCopy[2](handlerCopy);
        }

        else
        {
          v40 = brc_bread_crumbs();
          v41 = brc_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [BRCUserNotificationRequestAccessRequestID performOnActionWithNotificationResponse:sessionContext:completionHandler:];
          }

          handlerCopy[2](handlerCopy);
        }
      }

      else
      {
        v42 = MEMORY[0x277D85DD0];
        v43 = 3221225472;
        v44 = __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_115;
        v45 = &unk_278504D68;
        selfCopy2 = self;
        v31 = responseCopy;
        v47 = v31;
        v32 = contextCopy;
        v48 = v32;
        v33 = MEMORY[0x22AA4A310](&v42);
        notification = [v31 notification];
        request = [notification request];
        v36 = [(BRCUserNotificationRequestAccessRequestID *)self _createCKFetchRecordsOperationForShareRecordID:v19 originalRequest:request sessionContext:v32 perRecordCompletionBlock:v33];

        v37 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:v16];
        syncContextProvider = [v32 syncContextProvider];
        v39 = [syncContextProvider transferSyncContextForMangledID:v37];
        [v39 addOperation:v36 nonDiscretionary:1];

        handlerCopy[2](handlerCopy);
      }
    }

    else
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [BRCUserNotificationRequestAccessRequestID performOnActionWithNotificationResponse:sessionContext:completionHandler:];
      }

      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, 0x90u))
    {
      [BRCUserNotificationRequestAccessRequestID performOnActionWithNotificationResponse:sessionContext:completionHandler:];
    }

    handlerCopy[2](handlerCopy);
  }
}

void __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"DECLINE_ACTION";
  v5[1] = @"APPROVE_ACTION";
  v5[2] = *MEMORY[0x277CE20E8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = performOnActionWithNotificationResponse_sessionContext_completionHandler__actionsIdentifiers;
  performOnActionWithNotificationResponse_sessionContext_completionHandler__actionsIdentifiers = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_106(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) brc_shareItemID];
  v4 = [v2 itemByItemID:v3];

  v5 = [*(a1 + 48) syncContextProvider];
  v6 = [v5 transferSyncContextForMangledID:*(a1 + 56)];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_106_cold_1();
  }

  v8 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v9 = [v4 fileObjectID];
  v10 = [v9 asString];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_108;
  v11[3] = &unk_278504D40;
  v11[4] = *(a1 + 64);
  [v8 getUserVisibleURLForItemIdentifier:v10 completionHandler:v11];
}

void __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while computing the URL of %@ - %@%@", buf, 0x20u);
    }
  }

  else
  {
    v10 = *MEMORY[0x277D0AC70];
    v19[0] = *MEMORY[0x277D0AC58];
    v19[1] = v10;
    v20[0] = MEMORY[0x277CBEC38];
    v20[1] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v11 = [*(a1 + 32) recordName];
    v12 = *(a1 + 32);
    v18 = 0;
    v13 = [BRCSharingUtil openSharedSideFaultFileWithURL:v5 recordName:v11 scheduleOpenOperationBlock:&__block_literal_global_113 options:v7 skipOpenIfNeeded:0 delegate:v12 error:&v18];
    v8 = v18;

    if (!v13)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v5 URLByDeletingLastPathComponent];
        *buf = 138412802;
        v22 = v17;
        v23 = 2112;
        v24 = v8;
        v25 = 2112;
        v26 = v14;
        _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Couldn't open item at path %@: %@%@", buf, 0x20u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_115(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed fetching recordID %@ with error %@%@", &v19, 0x20u);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [v12 userRecordName];
    v14 = [v7 requesters];
    v10 = [v12 _getRequesterForUserRecordName:v13 requesters:v14];

    if (v10)
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) actionIdentifier];
      [v15 _perfromActionWithIdentifier:v16 share:v7 sessionContext:*(a1 + 48) requesterToModify:v10];

      goto LABEL_7;
    }

    v11 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_115_cold_1();
    }
  }

LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_saveShareOperationForShare:sessionContext:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordID];
  v2 = [v1 zoneID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Could not find client zone for %@%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Failed to save the share due to %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __88__BRCUserNotificationRequestAccessRequestID__saveShareOperationForShare_sessionContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 40) recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Finished saving share %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__BRCUserNotificationRequestAccessRequestID__approveRequester_share_sessionContext_completionHandler___block_invoke_83_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_perfromActionWithIdentifier:share:sessionContext:requesterToModify:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Unsupported action identifier %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __113__BRCUserNotificationRequestAccessRequestID__perfromActionWithIdentifier_share_sessionContext_requesterToModify___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Error modifying share %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __113__BRCUserNotificationRequestAccessRequestID__perfromActionWithIdentifier_share_sessionContext_requesterToModify___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Successfully approved requester %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)performOnActionWithNotificationResponse:sessionContext:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performOnActionWithNotificationResponse:sessionContext:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Failed creating recordID for request with record name: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performOnActionWithNotificationResponse:sessionContext:completionHandler:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Couldn't find client zone for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_106_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: li && syncContext%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __118__BRCUserNotificationRequestAccessRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_115_cold_1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*v0 userRecordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Did not find requester %@ in requesters list%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end