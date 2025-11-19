@interface BRCDaemonContainerHelper
+ (id)sharedHelper;
- (BOOL)cloudSyncTCCDisabledForContainerMeta:(id)a3;
- (id)_init;
- (id)fetchAllContainersByIDWithError:(id *)a3;
- (id)fetchContainerForMangledID:(id)a3 personaID:(id)a4;
- (id)itemIDForURL:(id)a3 error:(id *)a4;
- (unsigned)br_capabilityToMoveFromLocalItem:(id)a3 toNewParent:(id)a4 session:(id)a5 error:(id *)a6;
- (unsigned)br_capabilityToMoveFromURL:(id)a3 toNewParent:(id)a4 error:(id *)a5;
- (void)_computeTCCEnabledDisabledBundleIdentifiers;
- (void)dealloc;
@end

@implementation BRCDaemonContainerHelper

+ (id)sharedHelper
{
  if (sharedHelper_onceToken != -1)
  {
    +[BRCDaemonContainerHelper sharedHelper];
  }

  v3 = sharedHelper_instance;

  return v3;
}

uint64_t __40__BRCDaemonContainerHelper_sharedHelper__block_invoke()
{
  sharedHelper_instance = [[BRCDaemonContainerHelper alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v21.receiver = self;
  v21.super_class = BRCDaemonContainerHelper;
  v2 = [(BRCDaemonContainerHelper *)&v21 init];
  v3 = v2;
  if (v2)
  {
    [(BRCDaemonContainerHelper *)v2 _computeTCCEnabledDisabledBundleIdentifiers];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.CloudDocs.BRCDaemonContainerHelper.TCCchanges", v5);

    queue = v3->_queue;
    v3->_queue = v6;

    v8 = v3->_queue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __33__BRCDaemonContainerHelper__init__block_invoke;
    v19 = &unk_2784FF7B0;
    v20 = v3;
    v9 = &v16;
    v10 = MEMORY[0x277D77BF8];
    v11 = v8;
    v12 = [v10 sharedManager];
    v13 = [v12 br_currentPersonaID];

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __br_notify_register_dispatch_block_invoke;
    handler[3] = &unk_2784FF800;
    v24 = v9;
    v25 = "com.apple.tcc.access.changed";
    v23 = v13;
    v14 = v13;
    notify_register_dispatch("com.apple.tcc.access.changed", &v3->_TCCAccessChangedNotificationToken, v11, handler);
  }

  return v3;
}

_DWORD *__33__BRCDaemonContainerHelper__init__block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result[6] == a2)
  {
    return [result _computeTCCEnabledDisabledBundleIdentifiers];
  }

  return result;
}

- (void)_computeTCCEnabledDisabledBundleIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] About to compute the enabled and disabled bundle IDs via TCC%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)fetchAllContainersByIDWithError:(id *)a3
{
  v4 = +[BRCAccountsManager sharedManager];
  v5 = [v4 accountHandlerForCurrentPersona];
  v6 = [v5 session];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__BRCDaemonContainerHelper_fetchAllContainersByIDWithError___block_invoke;
  v12[3] = &unk_2784FF7D8;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v6 enumerateAppLibraries:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

uint64_t __60__BRCDaemonContainerHelper_fetchAllContainersByIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containerMetadata];
  if (v4)
  {
    [v4 setIsCloudSyncTCCDisabled:{objc_msgSend(*(a1 + 32), "cloudSyncTCCDisabledForContainerMeta:", v4)}];
    v5 = *(a1 + 40);
    v6 = [v3 appLibraryID];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __60__BRCDaemonContainerHelper_fetchAllContainersByIDWithError___block_invoke_cold_1();
    }
  }

  return 1;
}

- (id)fetchContainerForMangledID:(id)a3 personaID:(id)a4
{
  v4 = a3;
  if (v4)
  {
    v5 = +[BRCAccountsManager sharedManager];
    v6 = [v5 accountHandlerForCurrentPersona];
    v7 = [v6 session];

    if (v7)
    {
      v8 = [v7 appLibraryByMangledID:v4];
      v9 = [v8 containerMetadataFilledWithTCCInfo];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)cloudSyncTCCDisabledForContainerMeta:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x277CFAD68]];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 bundleIdentifiers];
    v8 = [v7 count];

    if (v8)
    {
      v9 = self;
      objc_sync_enter(v9);
      v10 = [(NSSet *)v9->_knownBundleIDs copy];
      v11 = [(NSSet *)v9->_disabledBundleIDs copy];
      objc_sync_exit(v9);

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [v4 bundleIdentifiers];
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = 0;
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v13; i = (i + 1))
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            if ([v10 containsObject:v17])
            {
              if (([v11 containsObject:v17] & 1) == 0)
              {
                LOBYTE(v13) = 0;
                goto LABEL_19;
              }

              v14 = 1;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        if ((v14 & 1) == 0)
        {
          LOBYTE(v13) = 0;
          goto LABEL_20;
        }

        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [(BRCDaemonContainerHelper *)v4 cloudSyncTCCDisabledForContainerMeta:v12, v13];
        }

        LOBYTE(v13) = 1;
      }

LABEL_19:

LABEL_20:
      goto LABEL_21;
    }
  }

  LOBYTE(v13) = 0;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unsigned)br_capabilityToMoveFromLocalItem:(id)a3 toNewParent:(id)a4 session:(id)a5 error:(id *)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v9 isDirectory])
  {
    v10 = [v8 clientZone];
    v11 = [v9 clientZone];
    if ([v8 isSharedToMeChildItem] && (objc_msgSend(v8, "sharingOptions") & 0x20) != 0 && objc_msgSend(v8, "isKnownByServer"))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 138412546;
        v59 = v8;
        v60 = 2112;
        v61 = v12;
        v14 = "[WARNING] Can't edit a readonly share for %@%@";
LABEL_38:
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, v14, &v58, 0x16u);
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    if ([v9 isSharedToMe] && (objc_msgSend(v9, "sharingOptions") & 0x20) != 0)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 138412546;
        v59 = v9;
        v60 = 2112;
        v61 = v12;
        v14 = "[WARNING] Can't add a file to a readonly share with parent %@%@";
        goto LABEL_38;
      }

LABEL_39:
      v18 = 512;
      goto LABEL_40;
    }

    if ([v8 isSharedToMeTopLevelItem] && objc_msgSend(v9, "isInTrashScope"))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 138412546;
        v59 = v8;
        v60 = 2112;
        v61 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Error trying to move shared top item %@ into trash%@", &v58, 0x16u);
      }

      v18 = 8;
      goto LABEL_40;
    }

    if ([v8 isSharedToMeTopLevelItem] && ((objc_msgSend(v9, "isSharedByMe") & 1) != 0 || objc_msgSend(v9, "isSharedToMe")))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        v18 = 2;
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v58 = 138412546;
      v59 = v8;
      v60 = 2112;
      v61 = v12;
      v19 = "[WARNING] Error trying to move shared top item %@ into a shared item%@";
      v20 = v13;
      v21 = 22;
LABEL_25:
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, v19, &v58, v21);
      goto LABEL_26;
    }

    if ([v10 isEqualToClientZone:v11])
    {
      if ([v8 hasShareIDAndIsOwnedByMe])
      {
        if (([v9 isOwnedByMe] & 1) == 0)
        {
          [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
        }

        if ([v9 isSharedByMe])
        {
          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
LABEL_35:
            v18 = 128;
            goto LABEL_40;
          }

          v58 = 138412802;
          v59 = v8;
          v60 = 2112;
          v61 = v9;
          v62 = 2112;
          v63 = v12;
          v22 = "[WARNING] Error trying to move shared top item %@ into another shared item %@%@";
LABEL_34:
          _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, v22, &v58, 0x20u);
          goto LABEL_35;
        }

LABEL_90:
        if ([v8 isDirectory] && (objc_msgSend(v8, "isSharedByMe") & 1) == 0 && (objc_msgSend(v8, "isSharedToMe") & 1) == 0)
        {
          if (([v9 isSharedToMe] & 1) != 0 || objc_msgSend(v9, "isSharedByMe"))
          {
            v47 = [v8 asDirectory];
            v48 = [v47 possiblyContainsSharedItem];

            if (v48)
            {
              v12 = brc_bread_crumbs();
              v13 = brc_default_log();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v58 = 138412802;
                v59 = v8;
                v60 = 2112;
                v61 = v9;
                v62 = 2112;
                v63 = v12;
                _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Moving item with a shared child %@ into a share with parent %@%@", &v58, 0x20u);
              }

              v18 = 1024;
              goto LABEL_40;
            }
          }

          if ([v9 isInTrashScope])
          {
            v56 = [v8 asDirectory];
            v57 = [v56 possiblyContainsSharedItem];

            if (v57)
            {
              v12 = brc_bread_crumbs();
              v13 = brc_default_log();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v58 = 138412802;
                v59 = v8;
                v60 = 2112;
                v61 = v9;
                v62 = 2112;
                v63 = v12;
                _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Moving an item with a shared child %@ into trash at parent %@%@", &v58, 0x20u);
              }

              v18 = 2048;
              goto LABEL_40;
            }
          }
        }

        v18 = 64;
        goto LABEL_41;
      }

      if ([v8 isOwnedByMe])
      {
        if (![v8 isSharedByMe])
        {
          if ([v9 isSharedByMe])
          {
            v12 = brc_bread_crumbs();
            v13 = brc_default_log();
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }

            v58 = 138412802;
            v59 = v8;
            v60 = 2112;
            v61 = v9;
            v62 = 2112;
            v63 = v12;
            v22 = "[WARNING] Moving item %@ into a share with parent %@%@";
            goto LABEL_34;
          }

          goto LABEL_90;
        }

        if (([v9 isOwnedByMe] & 1) == 0)
        {
          [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
        }

        if (([v9 isSharedByMe] & 1) == 0)
        {
          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          v58 = 138412802;
          v59 = v8;
          v60 = 2112;
          v61 = v9;
          v62 = 2112;
          v63 = v12;
          v22 = "[WARNING] Moving item %@ out of the share to new parent %@%@";
          goto LABEL_34;
        }

        v12 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v8];
        v13 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v9];
        if (!v13 || ([v12 recordName], v25 = objc_claimAutoreleasedReturnValue(), -[NSObject recordName](v13, "recordName"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqualToString:", v26), v26, v25, (v27 & 1) == 0))
        {
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v58 = 138412802;
            v59 = v8;
            v60 = 2112;
            v61 = v9;
            v62 = 2112;
            v63 = v28;
            _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEFAULT, "[WARNING] Moving item %@ into a different share with parent %@%@", &v58, 0x20u);
          }

          goto LABEL_35;
        }
      }

      else
      {
        if ([v9 isOwnedByMe])
        {
          [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
        }

        v12 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v8];
        v13 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v9];
        if (!v13 || ([v12 recordName], v37 = objc_claimAutoreleasedReturnValue(), -[NSObject recordName](v13, "recordName"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v37, "isEqualToString:", v38), v38, v37, (v39 & 1) == 0))
        {
          if (![v8 isDocument])
          {
            goto LABEL_83;
          }

          v41 = [v8 appLibrary];
          v42 = [v41 mangledID];
          v43 = [BRCUserDefaults defaultsForMangledID:v42];
          v44 = [v43 supportsServerSideAssetCopies];

          if (v44)
          {
            v45 = brc_bread_crumbs();
            v46 = brc_default_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
            }

            v18 = 64;
          }

          else
          {
LABEL_83:
            v45 = brc_bread_crumbs();
            v46 = brc_default_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v58 = 138412802;
              v59 = v8;
              v60 = 2112;
              v61 = v9;
              v62 = 2112;
              v63 = v45;
              _os_log_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEFAULT, "[WARNING] Moving item %@ into another shared item %@%@", &v58, 0x20u);
            }

            v18 = 128;
          }

          goto LABEL_40;
        }
      }

      goto LABEL_90;
    }

    if ([v8 isSharedToMeTopLevelItem])
    {
      if ([v11 isSharedZone])
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v58 = 138412802;
        v59 = v8;
        v60 = 2112;
        v61 = v9;
        v62 = 2112;
        v63 = v12;
        v19 = "[WARNING] Error trying to move shared top item %@ into another shared item %@%@";
        v20 = v13;
        v21 = 32;
        goto LABEL_25;
      }

      v34 = [v8 appLibrary];
      v35 = [v34 defaultClientZone];
      v36 = [v35 isEqualToClientZone:v11];

      if (v36)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
        }

LABEL_69:
        v18 = 64;
        goto LABEL_40;
      }

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 138412546;
        v59 = v8;
        v60 = 2112;
        v61 = v12;
        v49 = "[WARNING] Top level shared item %@ moved across zone boundaries.  Allowing it%@";
        v50 = v13;
        v51 = 22;
        goto LABEL_105;
      }
    }

    else
    {
      if (([v10 isSharedZone] & 1) != 0 || objc_msgSend(v11, "isSharedZone"))
      {
        if (![v8 isDocument])
        {
          goto LABEL_63;
        }

        v30 = [v8 appLibrary];
        v31 = [v30 mangledID];
        v32 = [BRCUserDefaults defaultsForMangledID:v31];
        v33 = [v32 supportsServerSideAssetCopies];

        if (!v33)
        {
LABEL_63:
          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v58 = 138412802;
            v59 = v8;
            v60 = 2112;
            v61 = v9;
            v62 = 2112;
            v63 = v12;
            _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] We need to download item %@ which is moving in or out of a shared zone to parent %@%@", &v58, 0x20u);
          }

          v18 = 16;
          goto LABEL_40;
        }

        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
        }

        goto LABEL_69;
      }

      if (![v8 hasShareIDAndIsOwnedByMe] || (objc_msgSend(v8, "sharingOptions") & 0x48) == 0)
      {
        if (![v8 isDocument])
        {
          goto LABEL_111;
        }

        v52 = [v8 appLibrary];
        v53 = [v52 mangledID];
        v54 = [BRCUserDefaults defaultsForMangledID:v53];
        v55 = [v54 supportsServerSideAssetCopies];

        if (!v55)
        {
LABEL_111:
          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v58 = 138412802;
            v59 = v8;
            v60 = 2112;
            v61 = v9;
            v62 = 2112;
            v63 = v12;
            v18 = 32;
            _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] We need to download item %@ which is crossing zone boundaries to %@%@", &v58, 0x20u);
          }

          else
          {
            v18 = 32;
          }

          goto LABEL_40;
        }

        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:];
        }

        goto LABEL_69;
      }

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 138412290;
        v59 = v12;
        v49 = "[WARNING] Warning for move of shared item across zones%@";
        v50 = v13;
        v51 = 12;
LABEL_105:
        _os_log_impl(&dword_223E7A000, v50, OS_LOG_TYPE_DEFAULT, v49, &v58, v51);
      }
    }

    v18 = 256;
    goto LABEL_40;
  }

  v10 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:20];
  if (v10)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v40 = "(passed to caller)";
      v58 = 136315906;
      v59 = "[BRCDaemonContainerHelper br_capabilityToMoveFromLocalItem:toNewParent:session:error:]";
      v60 = 2080;
      if (!a6)
      {
        v40 = "(ignored by caller)";
      }

      v61 = v40;
      v62 = 2112;
      v63 = v10;
      v64 = 2112;
      v65 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", &v58, 0x2Au);
    }
  }

  if (a6)
  {
    v17 = v10;
    *a6 = v10;
  }

  v18 = 4;
LABEL_42:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unsigned)br_capabilityToMoveFromURL:(id)a3 toNewParent:(id)a4 error:(id *)a5
{
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [BRCDaemonContainerHelper br_capabilityToMoveFromURL:toNewParent:error:];
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] brc_errorNotSupportedInFPFS];
  }

  return 1;
}

- (id)itemIDForURL:(id)a3 error:(id *)a4
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCDaemonContainerHelper itemIDForURL:error:];
  }

  return 0;
}

- (void)dealloc
{
  TCCAccessChangedNotificationToken = self->_TCCAccessChangedNotificationToken;
  if (TCCAccessChangedNotificationToken != -1)
  {
    notify_cancel(TCCAccessChangedNotificationToken);
  }

  knownBundleIDs = self->_knownBundleIDs;
  self->_knownBundleIDs = 0;

  disabledBundleIDs = self->_disabledBundleIDs;
  self->_disabledBundleIDs = 0;

  v6.receiver = self;
  v6.super_class = BRCDaemonContainerHelper;
  [(BRCDaemonContainerHelper *)&v6 dealloc];
}

void __60__BRCDaemonContainerHelper_fetchAllContainersByIDWithError___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] no metadata for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)cloudSyncTCCDisabledForContainerMeta:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is disabled by TCC%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Allowing server-side asset copy for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Allowing server-side asset copy for shared folder transfer for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Allowing move of top level folder share item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !parent.isOwnedByMe%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Allowing server-side asset copy for subitem moving %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.6()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: parent.isOwnedByMe%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromLocalItem:toNewParent:session:error:.cold.7()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: parent.isOwnedByMe%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)br_capabilityToMoveFromURL:toNewParent:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: br_capabilityToMoveFromURL is not supported in FPFS%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)itemIDForURL:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't get an itemID from a URL inside the daemon%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end