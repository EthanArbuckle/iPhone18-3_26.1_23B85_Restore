@interface BRCListNonLocalVersionsOperation
- (BRCListNonLocalVersionsOperation)initWithDocumentItem:(id)a3 sessionContext:(id)a4;
- (id)createActivity;
- (void)main;
@end

@implementation BRCListNonLocalVersionsOperation

- (BRCListNonLocalVersionsOperation)initWithDocumentItem:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 serverZone];
  v9 = [v8 metadataSyncContext];
  v20.receiver = self;
  v20.super_class = BRCListNonLocalVersionsOperation;
  v10 = [(_BRCOperation *)&v20 initWithName:@"versions/list-non-local-versions" syncContext:v9 sessionContext:v7];

  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(BRCListNonLocalVersionsOperation *)v6 initWithDocumentItem:v11 sessionContext:v12];
    }

    [(BRCListNonLocalVersionsOperation *)v10 setItem:v6];
    v13 = [v6 documentRecordID];
    [(BRCListNonLocalVersionsOperation *)v10 setRecordID:v13];

    v14 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v6];
    [(BRCListNonLocalVersionsOperation *)v10 setShareID:v14];

    v15 = [v6 serverZone];
    [(BRCListNonLocalVersionsOperation *)v10 setServerZone:v15];

    v16 = [v6 currentVersion];
    [(BRCListNonLocalVersionsOperation *)v10 setCurrentVersion:v16];

    [(_BRCOperation *)v10 setNonDiscretionary:1];
    v17 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v10 setGroup:v17];

    v18 = [[BRCNotification alloc] initWithLocalItem:v10->_item itemDiffs:0];
    [(BRCListNonLocalVersionsOperation *)v10 setNotification:v18];

    objc_storeStrong(&v10->_sessionContext, a4);
  }

  return v10;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "versions/list-non-local-versions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(BRCListNonLocalVersionsOperation *)self serverZone];
  v4 = [v3 clientZone];

  v5 = [(BRCListNonLocalVersionsOperation *)self recordID];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc(MEMORY[0x277CBC398]);
  v26[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v9 = [v7 initWithRecordIDs:v8];

  v10 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:153];
  [v9 setDesiredKeys:v10];

  v11 = [MEMORY[0x277CBC4F8] br_fetchNonLocalVersions];
  [v9 setGroup:v11];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__BRCListNonLocalVersionsOperation_main__block_invoke;
  v22[3] = &unk_278506B20;
  v22[4] = self;
  v12 = v5;
  v23 = v12;
  v24 = v4;
  v13 = v6;
  v25 = v13;
  v14 = v4;
  [v9 setFetchRecordVersionsProgressBlock:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__BRCListNonLocalVersionsOperation_main__block_invoke_9;
  v18[3] = &unk_278502620;
  v19 = v12;
  v20 = self;
  v21 = v13;
  v15 = v13;
  v16 = v12;
  [v9 setFetchRecordVersionsCompletionBlock:v18];
  [(_BRCOperation *)self addSubOperation:v9];

  v17 = *MEMORY[0x277D85DE8];
}

void __40__BRCListNonLocalVersionsOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v66 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v45 = a4;
  v8 = a5;
  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    if (v8)
    {
      [*(a1 + 32) completedWithResult:0 error:v8];
      goto LABEL_32;
    }

    memset(v56, 0, sizeof(v56));
    __brc_create_section(0, "[BRCListNonLocalVersionsOperation main]_block_invoke", 85, 0, v56);
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v40 = v56[0];
      v41 = [v45 count];
      v42 = *(a1 + 40);
      *buf = 134218754;
      v59 = v40;
      v60 = 2048;
      v61 = v41;
      v62 = 2112;
      v63 = v42;
      v64 = 2112;
      v65 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Got %lu versions for (recordID:%@)%@", buf, 0x2Au);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v45;
    v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    v8 = 0;
    if (!v11)
    {
LABEL_31:

      __brc_leave_section(v56);
      goto LABEL_32;
    }

    v47 = *v53;
    *&v12 = 138412546;
    v43 = v12;
LABEL_8:
    v48 = v11;
    v13 = 0;
    while (1)
    {
      if (*v53 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v52 + 1) + 8 * v13);
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v14 etag];
        v38 = [v14 debugDescription];
        *buf = 138412802;
        v59 = v37;
        v60 = 2112;
        v61 = v38;
        v62 = 2112;
        v63 = v15;
        _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Considering etag %@ %@%@", buf, 0x20u);
      }

      v17 = [*(a1 + 32) currentVersion];
      v18 = [v17 ckInfo];
      v19 = [v18 etag];
      v20 = [v14 etag];
      v21 = [v19 isEqualToString:v20];

      if (v21)
      {
        v22 = brc_bread_crumbs();
        v23 = brc_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v59 = v22;
          _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Skipping current version%@", buf, 0xCu);
        }

        goto LABEL_29;
      }

      v50 = v8;
      v51 = 0;
      v24 = [v14 deserializeVersion:&v51 fakeStatInfo:0 contentBoundaryKey:0 clientZone:*(a1 + 48) error:&v50];
      v22 = v51;
      v25 = v50;

      if (v24)
      {
        v26 = [v22 originalPOSIXName];
        v27 = v26 == 0;

        if (!v27)
        {
          if ([v14 brc_currentUserOwnsLastEditorDeviceWithSessionContext:*(*(a1 + 32) + 504)])
          {
            v23 = [v14 brc_lastEditorDeviceName];
            v28 = 0;
          }

          else
          {
            v30 = [*(*(a1 + 32) + 504) cachedCurrentUserRecordName];
            v49 = 0;
            v31 = [v14 brc_lastModifiedUserRecordNameWithCurrentUserRecordName:v30 personNameComponents:&v49];
            v28 = v49;

            v23 = 0;
          }

          v32 = [*(a1 + 32) notification];
          v33 = [v32 copy];

          v34 = [v14 etag];
          v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject mtime](v22, "mtime")}];
          v36 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject size](v22, "size")}];
          [v33 markAsLoserVersionWithEtag:v34 modificationDate:v35 editorNameComponents:v28 lastEditorDeviceName:v23 size:v36];

          [*(a1 + 56) addObject:v33];
          goto LABEL_28;
        }

        v23 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, 0x90u))
        {
          *buf = 138412290;
          v59 = v23;
          _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Version is lacking a name%@", buf, 0xCu);
        }
      }

      else
      {
        v23 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, 0x90u))
        {
          *buf = v43;
          v59 = v25;
          v60 = 2112;
          v61 = v23;
          _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Unable to deserialize record: %@%@", buf, 0x16u);
        }
      }

LABEL_28:
      v8 = v25;
LABEL_29:

      if (v48 == ++v13)
      {
        v11 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (!v11)
        {
          goto LABEL_31;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_32:

  v39 = *MEMORY[0x277D85DE8];
}

void __40__BRCListNonLocalVersionsOperation_main__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCListNonLocalVersionsOperation_main__block_invoke_9_cold_1(a1, v4, v5);
  }

  if (([*(a1 + 40) finishIfCancelled] & 1) == 0)
  {
    [*(a1 + 40) completedWithResult:*(a1 + 48) error:v3];
  }
}

@end