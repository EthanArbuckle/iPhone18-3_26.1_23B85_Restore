@interface BRCFSPackageEnumerator
+ (BOOL)enumerateItemsInPackageAtURL:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)enumeratePackageItemsWithSortOrder:(unint64_t)a3 error:(id *)a4 usingBlock:(id)a5;
- (id)initForURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5;
@end

@implementation BRCFSPackageEnumerator

+ (BOOL)enumerateItemsInPackageAtURL:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__BRCFSPackageEnumerator_enumerateItemsInPackageAtURL_error_usingBlock___block_invoke;
  v28[3] = &unk_278500E40;
  v28[4] = &v29;
  v9 = [v8 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:16 errorHandler:v28];

  v10 = 0;
  *&v11 = 138412546;
  v26 = v11;
  do
  {
    v12 = [v9 nextObject];

    if (!v12)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = [v12 lastPathComponent];
    if ([v14 br_isExcludedWithMaximumDepth:1])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = v26;
        v36 = v12;
        v37 = 2112;
        v38 = v15;
        _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ is excluded from sync. Skipping hierarchy%@", buf, 0x16u);
      }

      if ([v12 fp_isFolder])
      {
        [v9 skipDescendants];
      }

      v17 = 0;
    }

    else
    {
      buf[0] = 0;
      v18 = [v12 relativePath];
      v7[2](v7, v12, v18, buf);

      v17 = buf[0];
    }

    objc_autoreleasePoolPop(v13);
    v10 = v12;
  }

  while ((v17 & 1) == 0);
  v19 = v30[5];
  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      v25 = "(passed to caller)";
      *buf = 136315906;
      v36 = "+[BRCFSPackageEnumerator enumerateItemsInPackageAtURL:error:usingBlock:]";
      v37 = 2080;
      if (!a4)
      {
        v25 = "(ignored by caller)";
      }

      v38 = v25;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v20;
      _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v22 = v19;
    *a4 = v19;
  }

  _Block_object_dispose(&v29, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (id)initForURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v38.receiver = self;
  v38.super_class = BRCFSPackageEnumerator;
  v11 = [(BRCFSPackageEnumerator *)&v38 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSPackageEnumerator initForURL:v9 boundaryKey:v12 error:v13];
  }

  objc_storeStrong(&v11->_rootURL, a3);
  v14 = [v10 copy];
  boundaryKey = v11->_boundaryKey;
  v11->_boundaryKey = v14;

  v16 = [BRCSQLBackedSet createStringsSetWithError:a5];
  packageItems = v11->_packageItems;
  v11->_packageItems = v16;

  if (!v11->_packageItems)
  {
    goto LABEL_10;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__8;
  v36 = __Block_byref_object_dispose__8;
  v37 = 0;
  rootURL = v11->_rootURL;
  obj = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__BRCFSPackageEnumerator_initForURL_boundaryKey_error___block_invoke;
  v28[3] = &unk_278500E68;
  v29 = v11;
  v30 = &v32;
  [BRCFSPackageEnumerator enumerateItemsInPackageAtURL:rootURL error:&obj usingBlock:v28];
  objc_storeStrong(&v37, obj);
  v19 = v33[5];
  if (!v19)
  {

    _Block_object_dispose(&v32, 8);
LABEL_12:
    v24 = v11;
    goto LABEL_13;
  }

  v20 = v19;
  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, 0x90u))
  {
    v27 = "(passed to caller)";
    *buf = 136315906;
    v40 = "[BRCFSPackageEnumerator initForURL:boundaryKey:error:]";
    v41 = 2080;
    if (!a5)
    {
      v27 = "(ignored by caller)";
    }

    v42 = v27;
    v43 = 2112;
    v44 = v20;
    v45 = 2112;
    v46 = v21;
    _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

  if (a5)
  {
    v23 = v20;
    *a5 = v20;
  }

  _Block_object_dispose(&v32, 8);
LABEL_10:
  v24 = 0;
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __55__BRCFSPackageEnumerator_initForURL_boundaryKey_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 16);
  v9 = 0;
  [v6 addObject:a3 error:&v9];
  v7 = v9;
  v8 = v9;
  if (v8)
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }
}

- (BOOL)enumeratePackageItemsWithSortOrder:(unint64_t)a3 error:(id *)a4 usingBlock:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  packageItems = self->_packageItems;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__BRCFSPackageEnumerator_enumeratePackageItemsWithSortOrder_error_usingBlock___block_invoke;
  v17[3] = &unk_278500E90;
  v17[4] = self;
  v19 = &v20;
  v9 = v7;
  v18 = v9;
  [(BRCSQLBackedSet *)packageItems enumerateObjectsWithSortOrder:2 usingBlock:v17];
  v10 = v21[5];
  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      v16 = "(passed to caller)";
      *buf = 136315906;
      v27 = "[BRCFSPackageEnumerator enumeratePackageItemsWithSortOrder:error:usingBlock:]";
      v28 = 2080;
      if (!a4)
      {
        v16 = "(ignored by caller)";
      }

      v29 = v16;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v13 = v10;
    *a4 = v10;
  }

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

void __78__BRCFSPackageEnumerator_enumeratePackageItemsWithSortOrder_error_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1[4] + 8) URLByAppendingPathComponent:v5];
  v8 = a1[4];
  v9 = *(v8 + 8);
  v10 = *(v8 + 24);
  v11 = *(a1[6] + 8);
  obj = *(v11 + 40);
  v12 = [BRCPackageItem newItemForSignatureCalculationWithURL:v7 inPackage:v9 boundaryKey:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    (*(a1[5] + 16))();
  }

  else if ([*(*(a1[6] + 8) + 40) br_isCloudDocsErrorCode:43])
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 path];
      v16 = [v15 fp_obfuscatedPath];
      *buf = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring excluded package item from sync %@%@", buf, 0x16u);
    }

    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      v22 = [v7 path];
      v23 = [v22 fp_obfuscatedPath];
      v24 = *(*(a1[6] + 8) + 40);
      *buf = 138412802;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Couldn't create import item for %@ - %@%@", buf, 0x20u);
    }

    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)initForURL:(uint64_t)a1 boundaryKey:(uint64_t)a2 error:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Creating BRCFSPackageEnumerator for %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end