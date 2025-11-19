@interface BRCUserNotificationRequestAccessApprovedRequestID
+ (id)decodeWithRequestIDString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encode;
- (void)performOnActionWithNotificationResponse:(id)a3 sessionContext:(id)a4 completionHandler:(id)a5;
@end

@implementation BRCUserNotificationRequestAccessApprovedRequestID

- (id)encode
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[BRCUserNotificationRequestAccessApprovedRequestID requestTypeName];
  v5 = [(BRCUserNotificationRequestAccess *)self recordName];
  v6 = [(BRCUserNotificationRequestAccess *)self zoneName];
  v7 = [(BRCUserNotificationRequestAccess *)self ownerName];
  v8 = [(BRCUserNotificationRequestAccess *)self userRecordName];
  v9 = [(BRCUserNotificationRequestAccess *)self accountID];
  v10 = [v3 stringWithFormat:@"%@/%@/%@/%@/%@/%@", v4, v5, v6, v7, v8, v9];

  return v10;
}

+ (id)decodeWithRequestIDString:(id)a3
{
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@"/"];
    if ([v3 count] == 6 && (+[BRCUserNotificationRequestAccessApprovedRequestID requestTypeName](BRCUserNotificationRequestAccessApprovedRequestID, "requestTypeName"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, v6))
    {
      v7 = [BRCUserNotificationRequestAccessApprovedRequestID alloc];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BRCUserNotificationRequestAccessApprovedRequestID *)self encode];
      v6 = [(BRCUserNotificationRequestAccessApprovedRequestID *)v4 encode];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)performOnActionWithNotificationResponse:(id)a3 sessionContext:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x277CBC5F8]);
  v10 = [(BRCUserNotificationRequestAccess *)self zoneName];
  v11 = [(BRCUserNotificationRequestAccess *)self ownerName];
  v12 = [v9 initWithZoneName:v10 ownerName:v11];

  v13 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:v12];
  v14 = objc_alloc(MEMORY[0x277CBC5D0]);
  v15 = [(BRCUserNotificationRequestAccess *)self recordName];
  v16 = [v14 initWithRecordName:v15 zoneID:v12];

  if (v12 && v16)
  {
    v17 = [v7 zoneAppRetriever];
    v18 = [v17 clientZoneByMangledID:v13];

    if (v18)
    {
      v19 = [v18 dbFacade];
      v20 = [v19 serialQueue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __126__BRCUserNotificationRequestAccessApprovedRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke;
      v25[3] = &unk_278500CE0;
      v26 = v18;
      v27 = v16;
      v28 = self;
      v29 = v8;
      dispatch_async(v20, v25);
    }

    else
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [BRCUserNotificationRequestAccessRequestID performOnActionWithNotificationResponse:sessionContext:completionHandler:];
      }

      v8[2](v8);
    }
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserNotificationRequestAccessRequestID performOnActionWithNotificationResponse:sessionContext:completionHandler:];
    }

    v8[2](v8);
  }
}

void __126__BRCUserNotificationRequestAccessApprovedRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) brc_shareItemID];
  v4 = [v2 itemByItemID:v3];

  if (!v4)
  {
    __126__BRCUserNotificationRequestAccessApprovedRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_cold_1();
  }

  v5 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v6 = [v4 fileObjectID];
  v7 = [v6 asString];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __126__BRCUserNotificationRequestAccessApprovedRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_195;
  v9[3] = &unk_278503C90;
  v8 = *(a1 + 56);
  v9[4] = *(a1 + 48);
  v10 = v8;
  [v5 getUserVisibleURLForItemIdentifier:v7 completionHandler:v9];
}

void __126__BRCUserNotificationRequestAccessApprovedRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      *buf = 138412802;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Got an error while computing the URL of %@ - %@%@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *MEMORY[0x277D0AC70];
    v20[0] = *MEMORY[0x277D0AC58];
    v20[1] = v9;
    v21[0] = MEMORY[0x277CBEC38];
    v21[1] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v11 = [*(a1 + 32) recordName];
    v12 = *(a1 + 32);
    v19 = 0;
    v13 = [BRCSharingUtil openSharedSideFaultFileWithURL:v5 recordName:v11 scheduleOpenOperationBlock:&__block_literal_global_198 options:v10 skipOpenIfNeeded:0 delegate:v12 error:&v19];
    v14 = v19;

    if (!v13)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v23 = v5;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Couldn't open item at path %@: %@%@", buf, 0x20u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __126__BRCUserNotificationRequestAccessApprovedRequestID_performOnActionWithNotificationResponse_sessionContext_completionHandler___block_invoke_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: li%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end