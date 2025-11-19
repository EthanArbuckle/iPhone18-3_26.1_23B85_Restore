@interface BRCXPCTokenClient
- (NSString)description;
- (void)currentAccountCopyTokenWithBundleID:(id)a3 version:(id)a4 reply:(id)a5;
- (void)fetchContainerPathForCurrentPersonaWithReply:(id)a3;
- (void)fetchGroupContainerPathForCurrentPersonaWithReply:(id)a3;
- (void)getPrimaryiCloudAccountStatus:(id)a3;
- (void)prepareFileProvidersWithReply:(id)a3;
@end

@implementation BRCXPCTokenClient

- (NSString)description
{
  v5.receiver = self;
  v5.super_class = BRCXPCTokenClient;
  v2 = [(BRCXPCClient *)&v5 description];
  v3 = [v2 stringByAppendingString:@"<token-getter>"];

  return v3;
}

- (void)prepareFileProvidersWithReply:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCXPCTokenClient prepareFileProvidersWithReply:]", 1341, 0, v17);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v17[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v19 = v7;
    v20 = 2112;
    v21 = self;
    v22 = 2112;
    v23 = v9;
    v24 = 2080;
    v25 = "[BRCXPCTokenClient prepareFileProvidersWithReply:]";
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__BRCXPCTokenClient_prepareFileProvidersWithReply___block_invoke;
  v15[3] = &unk_2785014D0;
  v15[4] = self;
  v10 = v4;
  v16 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v15);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v19 = self;
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v17);

  v14 = *MEMORY[0x277D85DE8];
}

void __51__BRCXPCTokenClient_prepareFileProvidersWithReply___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentAccountCopyTokenWithBundleID:(id)a3 version:(id)a4 reply:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v68 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(BRCXPCClient *)self session];
  v11 = [v10 accountHandler];

  if (v11)
  {
    v12 = 0;
    goto LABEL_3;
  }

  v33 = +[BRCAccountHandler currentiCloudAccount];
  if ([v33 br_isEnabledForCloudDocs])
  {
    v34 = [v33 br_personaIdentifier];
    if ([v34 isEqualToString:@"__defaultPersonaID__"])
    {
    }

    else
    {
      v40 = [v33 br_personaIdentifier];

      if (v40)
      {
        v41 = 0;
        goto LABEL_32;
      }
    }

    if (currentAccountCopyTokenWithBundleID_version_reply____personaOnceToken != -1)
    {
      [BRCXPCTokenClient currentAccountCopyTokenWithBundleID:version:reply:];
    }

    v40 = currentAccountCopyTokenWithBundleID_version_reply____personalPersona;
    v41 = 1;
LABEL_32:
    v42 = [MEMORY[0x277D77BF8] sharedManager];
    v67 = [v42 currentPersona];

    *buf = 0;
    v43 = [v67 userPersonaUniqueString];
    v65 = v43;
    if (v43 == v40 || ([v43 isEqualToString:{v40, v43}] & 1) != 0)
    {
      v44 = 0;
    }

    else
    {
      if (voucher_process_can_use_arbitrary_personas())
      {
        v69 = 0;
        v52 = [v67 copyCurrentPersonaContextWithError:&v69];
        v53 = v69;
        v54 = *buf;
        *buf = v52;

        if (v53)
        {
          v55 = brc_bread_crumbs();
          v56 = brc_default_log();
          if (os_log_type_enabled(v56, 0x90u))
          {
            __37__BRCAccountMigrationChecker_perform__block_invoke_cold_4();
          }
        }

        v44 = [v67 br_generateAndRestorePersonaContextWithPersonaUniqueString:v40];

        if (!v44)
        {
          goto LABEL_35;
        }

        v57 = brc_bread_crumbs();
        v58 = brc_default_log();
        if (os_log_type_enabled(v58, 0x90u))
        {
          v59 = [v33 br_personaIdentifier];
          ctx.ctx[0] = 138412802;
          *&ctx.ctx[1] = v59;
          LOWORD(ctx.ctx[3]) = 2112;
          *(&ctx.ctx[3] + 2) = v44;
          HIWORD(ctx.ctx[5]) = 2112;
          *&ctx.ctx[6] = v57;
          _os_log_error_impl(&dword_223E7A000, v58, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", &ctx, 0x20u);
        }
      }

      else
      {
        if (!v41 || ([v67 isDataSeparatedPersona] & 1) != 0)
        {
          v63 = brc_bread_crumbs();
          v64 = brc_default_log();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            __br_notify_register_dispatch_block_invoke_cold_3();
          }

          v44 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          goto LABEL_35;
        }

        v57 = brc_bread_crumbs();
        v58 = brc_default_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_2();
        }

        v44 = 0;
      }
    }

LABEL_35:
    v45 = +[BRCAccountsManager sharedManager];
    v11 = [v45 getOrCreateAccountHandlerForACAccount:v33];

    v12 = [v33 br_dsid];
    if ([v11 finishedLoading])
    {
      v46 = [v11 session];
      v47 = v46 == 0;

      if (v47)
      {
        v61 = brc_bread_crumbs();
        v62 = brc_default_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          ctx.ctx[0] = 138413058;
          *&ctx.ctx[1] = self;
          LOWORD(ctx.ctx[3]) = 2112;
          *(&ctx.ctx[3] + 2) = 0;
          HIWORD(ctx.ctx[5]) = 2112;
          *&ctx.ctx[6] = 0;
          LOWORD(ctx.ctx[8]) = 2112;
          *(&ctx.ctx[8] + 2) = v61;
          _os_log_impl(&dword_223E7A000, v62, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
        }

        (*(v9 + 2))(v9, 0, 0);
        _BRRestorePersona();

        goto LABEL_22;
      }
    }

    _BRRestorePersona();
LABEL_3:
    v13 = [(BRCClientPrivilegesDescriptor *)self->super._clientPriviledgesDescriptor cloudEnabledStatusWithHasSession:1];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v60 = BRCPrettyPrintEnumWithContext(v13, &brc_cloud_enabled_status_entries, 0);
      ctx.ctx[0] = 138412802;
      *&ctx.ctx[1] = self;
      LOWORD(ctx.ctx[3]) = 2112;
      *(&ctx.ctx[3] + 2) = v60;
      HIWORD(ctx.ctx[5]) = 2112;
      *&ctx.ctx[6] = v14;
      _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: %@%@", &ctx, 0x20u);
    }

    if (v13 == 1 || v13 == 253)
    {
      v16 = [v11 ubiquityTokenSalt];
      v17 = [(BRCXPCClient *)self bundleID];
      if (v12)
      {
        goto LABEL_9;
      }

      v18 = [v11 session];
      v19 = [v18 accountFacade];
      v12 = [v19 accountDSID];

      if (v12)
      {
LABEL_9:
        memset(&ctx, 0, sizeof(ctx));
        v20 = v12;
        v21 = [v12 UTF8String];
        v22 = strlen(v21);
        CCHmacInit(&ctx, 0, v21, v22);
        v23 = v16;
        v24 = [v16 UTF8String];
        v25 = strlen(v24);
        CCHmacUpdate(&ctx, v24, v25);
        CCHmacUpdate(&ctx, ":", 1uLL);
        v26 = v17;
        v27 = [v17 UTF8String];
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = "(null)";
        }

        v29 = strlen(v28);
        CCHmacUpdate(&ctx, v28, v29);
        CCHmacFinal(&ctx, macOut);
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:20];
        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          *&buf[4] = self;
          v71 = 2112;
          v72 = v30;
          v73 = 2112;
          v74 = 0;
          v75 = 2112;
          v76 = v31;
          _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        (*(v9 + 2))(v9, v30, 0);
      }

      else
      {
        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          [BRCXPCTokenClient currentAccountCopyTokenWithBundleID:version:reply:];
        }

        v50 = brc_bread_crumbs();
        v51 = brc_default_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          ctx.ctx[0] = 138413058;
          *&ctx.ctx[1] = self;
          LOWORD(ctx.ctx[3]) = 2112;
          *(&ctx.ctx[3] + 2) = 0;
          HIWORD(ctx.ctx[5]) = 2112;
          *&ctx.ctx[6] = 0;
          LOWORD(ctx.ctx[8]) = 2112;
          *(&ctx.ctx[8] + 2) = v50;
          _os_log_impl(&dword_223E7A000, v51, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
        }

        (*(v9 + 2))(v9, 0, 0);
      }
    }

    else
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        ctx.ctx[0] = 138413058;
        *&ctx.ctx[1] = self;
        LOWORD(ctx.ctx[3]) = 2112;
        *(&ctx.ctx[3] + 2) = 0;
        HIWORD(ctx.ctx[5]) = 2112;
        *&ctx.ctx[6] = 0;
        LOWORD(ctx.ctx[8]) = 2112;
        *(&ctx.ctx[8] + 2) = v35;
        _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
      }

      (*(v9 + 2))(v9, 0, 0);
    }

LABEL_22:
    v33 = v11;
    goto LABEL_23;
  }

  v38 = brc_bread_crumbs();
  v39 = brc_default_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    ctx.ctx[0] = 138413058;
    *&ctx.ctx[1] = self;
    LOWORD(ctx.ctx[3]) = 2112;
    *(&ctx.ctx[3] + 2) = 0;
    HIWORD(ctx.ctx[5]) = 2112;
    *&ctx.ctx[6] = 0;
    LOWORD(ctx.ctx[8]) = 2112;
    *(&ctx.ctx[8] + 2) = v38;
    _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
  }

  (*(v9 + 2))(v9, 0, 0);
LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
}

void __71__BRCXPCTokenClient_currentAccountCopyTokenWithBundleID_version_reply___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = currentAccountCopyTokenWithBundleID_version_reply____personalPersona;
  currentAccountCopyTokenWithBundleID_version_reply____personalPersona = v0;
}

- (void)getPrimaryiCloudAccountStatus:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a3;
  memset(v47, 0, sizeof(v47));
  __brc_create_section(1, "[BRCXPCTokenClient getPrimaryiCloudAccountStatus:]", 1425, 0, v47);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v47[0];
    v7 = qos_class_self();
    v8 = BRCPrettyPrintEnumWithContext(v7, &brc_qos_entries, 0);
    *buf = 134219010;
    v51 = v6;
    v52 = 2112;
    v53 = self;
    v54 = 2112;
    v55 = v8;
    v56 = 2080;
    v57 = "[BRCXPCTokenClient getPrimaryiCloudAccountStatus:]";
    v58 = 2112;
    v59 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __51__BRCXPCTokenClient_getPrimaryiCloudAccountStatus___block_invoke;
  v45[3] = &unk_2785014D0;
  v45[4] = self;
  v43 = v3;
  v46 = v43;
  v9 = _brc_ipc_check_logged_status(self, 0, v45);

  if (v9)
  {
    v10 = +[BRCAccountHandler currentiCloudAccount];
    v11 = [v10 isEnabledForDataclass:*MEMORY[0x277CB91D8]];
    v12 = [v10 br_isCloudDocsMigrationComplete];
    v41 = [v10 br_dsid];
    v13 = +[BRCAccountsManager sharedManager];
    v14 = [v10 identifier];
    v42 = [v13 accountHandlerForACAccountID:v14];

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCTokenClient getPrimaryiCloudAccountStatus:];
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCTokenClient getPrimaryiCloudAccountStatus:];
    }

    v19 = BRGetMigrationStatusForDSID();
    v20 = [v42 loggedOutError];
    v21 = [v20 br_isCloudDocsErrorCode:22];
    v38 = v20;
    v22 = [v42 session];
    v23 = [v22 clientState];
    v39 = [v23 objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];

    if (v39)
    {
      v24 = [v39 intValue] != 3;
    }

    else
    {
      v24 = 0;
    }

    v48[0] = *MEMORY[0x277CFAB50];
    v40 = [MEMORY[0x277CCABB0] numberWithChar:v19];
    v49[0] = v40;
    v48[1] = *MEMORY[0x277CFAB30];
    v25 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v49[1] = v25;
    v48[2] = *MEMORY[0x277CFAB18];
    v26 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    v49[2] = v26;
    v48[3] = *MEMORY[0x277CFAB20];
    v27 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    v49[3] = v27;
    v48[4] = *MEMORY[0x277CFAB40];
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "br_isEnabledForDesktopSync")}];
    v49[4] = v28;
    v48[5] = *MEMORY[0x277CFAB48];
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "br_isEnabledForDesktopSync")}];
    v49[5] = v29;
    v48[6] = *MEMORY[0x277CFAB38];
    v30 = MEMORY[0x277CCABB0];
    v31 = [(BRCXPCClient *)self session];
    v32 = [v30 numberWithInt:v31 != 0];
    v49[6] = v32;
    v48[7] = *MEMORY[0x277CFAB28];
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v49[7] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:8];

    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v51 = self;
      v52 = 2112;
      v53 = v34;
      v54 = 2112;
      v55 = 0;
      v56 = 2112;
      v57 = v35;
      _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v43 + 2))(v43, v34, 0);
  }

  __brc_leave_section(v47);

  v37 = *MEMORY[0x277D85DE8];
}

void __51__BRCXPCTokenClient_getPrimaryiCloudAccountStatus___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchContainerPathForCurrentPersonaWithReply:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v19, 0, sizeof(v19));
  __brc_create_section(1, "[BRCXPCTokenClient fetchContainerPathForCurrentPersonaWithReply:]", 1474, 0, v19);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v19[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v21 = v7;
    v22 = 2112;
    v23 = self;
    v24 = 2112;
    v25 = v9;
    v26 = 2080;
    v27 = "[BRCXPCTokenClient fetchContainerPathForCurrentPersonaWithReply:]";
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__BRCXPCTokenClient_fetchContainerPathForCurrentPersonaWithReply___block_invoke;
  v17[3] = &unk_2785014D0;
  v17[4] = self;
  v10 = v4;
  v18 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v17);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
      *buf = 138413058;
      v21 = self;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v15 = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
    (*(v10 + 2))(v10, v15, 0);
  }

  __brc_leave_section(v19);

  v16 = *MEMORY[0x277D85DE8];
}

void __66__BRCXPCTokenClient_fetchContainerPathForCurrentPersonaWithReply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchGroupContainerPathForCurrentPersonaWithReply:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v19, 0, sizeof(v19));
  __brc_create_section(1, "[BRCXPCTokenClient fetchGroupContainerPathForCurrentPersonaWithReply:]", 1483, 0, v19);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v19[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    v21 = v7;
    v22 = 2112;
    v23 = self;
    v24 = 2112;
    v25 = v9;
    v26 = 2080;
    v27 = "[BRCXPCTokenClient fetchGroupContainerPathForCurrentPersonaWithReply:]";
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaWithReply___block_invoke;
  v17[3] = &unk_2785014D0;
  v17[4] = self;
  v10 = v4;
  v18 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v17);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CCACA8] br_personaGroupDir];
      *buf = 138413058;
      v21 = self;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v15 = [MEMORY[0x277CCACA8] br_personaGroupDir];
    (*(v10 + 2))(v10, v15, 0);
  }

  __brc_leave_section(v19);

  v16 = *MEMORY[0x277D85DE8];
}

void __71__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaWithReply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __79__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaForFPFS_withReply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v8, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

@end