@interface BRCPackageItem
+ (BOOL)dumpSession:(id)a3 toContext:(id)a4 db:(id)a5 error:(id *)a6;
+ (id)newItemForSignatureCalculationWithURL:(id)a3 inPackage:(id)a4 boundaryKey:(id)a5 error:(id *)a6;
+ (id)packageItemsForFileObjectID:(id)a3 order:(unint64_t)a4 db:(id)a5;
+ (id)packageItemsForItem:(id)a3 order:(unint64_t)a4;
+ (id)packageItemsForItemRowID:(unint64_t)a3 order:(unint64_t)a4 db:(id)a5;
+ (int64_t)largestPackageItemSizeInItemRowID:(unint64_t)a3 session:(id)a4;
- (BOOL)saveToDBWithSession:(id)a3;
- (BOOL)updateContentSignature:(id)a3 boundaryKey:(id)a4 error:(id *)a5;
- (NSData)contentSignature;
- (NSString)description;
- (NSString)symlinkContent;
- (id)_initWithURL:(id)a3 inPackage:(id)a4 forItem:(id)a5 error:(id *)a6;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
- (void)_setXattrs:(id)a3 xattrStager:(id)a4;
@end

@implementation BRCPackageItem

+ (id)newItemForSignatureCalculationWithURL:(id)a3 inPackage:(id)a4 boundaryKey:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [[BRCPackageItem alloc] _initWithURL:v9 inPackage:v11 forItem:0 error:a6];

  if (v12 && [v12 updateContentSignature:v9 boundaryKey:v10 error:a6])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)updateContentSignature:(id)a3 boundaryKey:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (self->_type != 2)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v10 = [MEMORY[0x277CFAE88] open:v8 flags:0x8000];
  if ((v10 & 0x80000000) != 0)
  {
    v14 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v12 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      *buf = 138413058;
      v29 = self;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v12;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %@ - Failed opening contents at '%@'. Error: %@%@", buf, 0x2Au);
    }
  }

  else
  {
    v11 = v10;
    v27 = 0;
    v12 = [MEMORY[0x277CBC6A8] br_signatureWithFileDescriptor:v10 boundaryKey:v9 error:&v27];
    v13 = v27;
    v14 = v13;
    if (v12)
    {
      v15 = v12;
      contentSignature = self->_contentSignature;
      self->_contentSignature = v15;
    }

    else
    {
      if (!v13)
      {
        v14 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
      }

      contentSignature = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        *buf = 138413058;
        v29 = self;
        v30 = 2112;
        v31 = v8;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = contentSignature;
        _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %@ - Failed calculating content signature at '%@'. Error: %@%@", buf, 0x2Au);
      }
    }

    [MEMORY[0x277CFAE88] closeFD:v11];
  }

  v17 = v14;
  if (!v17)
  {
LABEL_19:
    v22 = 1;
    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_20:
    v23 = v17;
    *a5 = v17;
    goto LABEL_21;
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, 0x90u))
  {
    v26 = "(passed to caller)";
    *buf = 136315906;
    v29 = "[BRCPackageItem(FPFSAdditions) updateContentSignature:boundaryKey:error:]";
    v30 = 2080;
    if (!a5)
    {
      v26 = "(ignored by caller)";
    }

    v31 = v26;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v20;
    _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

  v22 = 0;
  if (a5)
  {
    goto LABEL_20;
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)_initWithURL:(id)a3 inPackage:(id)a4 forItem:(id)a5 error:(id *)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v52.receiver = self;
  v52.super_class = BRCPackageItem;
  v13 = [(BRCPackageItem *)&v52 init];
  if (!v13)
  {
    goto LABEL_33;
  }

  if (v12)
  {
    if ([v12 needsInsert])
    {
      v14 = [v12 session];
      v15 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:v14];
      v13->_itemRowID = [v15 nextItemRowID];
    }

    else
    {
      v13->_itemRowID = [v12 dbRowID];
    }
  }

  v51 = 0;
  v16 = *MEMORY[0x277CBE7A0];
  v17 = [v11 getResourceValue:&v51 forKey:*MEMORY[0x277CBE7A0] error:a6];
  v18 = v51;
  v19 = 0;
  if (!v17 || (v50 = 0, v20 = [v10 getResourceValue:&v50 forKey:v16 error:a6], v21 = v50, v19 = v21, (v20 & 1) == 0))
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, 0x90u))
    {
      [BRCPackageItem(FPFSAdditions) _initWithURL:v12 inPackage:v29 forItem:v30 error:?];
    }

    goto LABEL_20;
  }

  v22 = [v21 br_pathRelativeToPath:v18];
  pathInPackage = v13->_pathInPackage;
  v13->_pathInPackage = v22;

  v24 = [[BRCImportObject alloc] initWithURL:v10 packageRoot:v12 error:a6];
  v25 = v24;
  if (v24)
  {
    if ([(BRCImportObject *)v24 isExcluded])
    {
      v26 = [MEMORY[0x277CCA9B8] brc_errorItemIneligibleFromSyncForInode:0 localizedDescription:0];
      if (!v26)
      {
LABEL_13:
        if (a6)
        {
          v28 = v26;
          *a6 = v26;
        }

        goto LABEL_16;
      }

      v48 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (!os_log_type_enabled(v27, 0x90u))
      {
LABEL_12:

        goto LABEL_13;
      }

      v47 = "(passed to caller)";
      *buf = 136315906;
      *v54 = "[BRCPackageItem(FPFSAdditions) _initWithURL:inPackage:forItem:error:]";
      *&v54[8] = 2080;
      if (!a6)
      {
        v47 = "(ignored by caller)";
      }

LABEL_46:
      *&v54[10] = v47;
      v55 = 2112;
      v56 = v26;
      v57 = 2112;
      v58 = v48;
      _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      goto LABEL_12;
    }

    v13->_fileID = [(BRCImportObject *)v25 fileID];
    v32 = [(BRCImportObject *)v25 quarantineInfo];
    quarantineInfo = v13->_quarantineInfo;
    v13->_quarantineInfo = v32;

    v34 = [(BRCImportObject *)v25 xattrs];

    if (v34)
    {
      [(BRCImportObject *)v25 xattrs];
      v35 = v49 = v25;
      v36 = [v12 session];
      v37 = [v36 xattrStager];
      [(BRCPackageItem *)v13 _setXattrs:v35 xattrStager:v37];

      v25 = v49;
    }

    v13->_mtime = [(BRCImportObject *)v25 modificationTime];
    if ([(BRCImportObject *)v25 isFile])
    {
      v13->_type = 2;
      v13->_size = [(BRCImportObject *)v25 size];
      if ([(BRCImportObject *)v25 isWritable])
      {
        v13->_mode |= 1u;
      }

      if ([(BRCImportObject *)v25 isExecutable])
      {
        v13->_mode |= 2u;
      }

      v38 = [(BRCImportObject *)v25 generationID];
      v39 = &OBJC_IVAR___BRCPackageItem__generationID;
    }

    else
    {
      if ([(BRCImportObject *)v25 isUnixDir])
      {
        v13->_type = 1;
        goto LABEL_32;
      }

      if (![(BRCImportObject *)v25 isSymLink])
      {
        v44 = brc_bread_crumbs();
        v45 = brc_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(BRCImportObject *)v25 fileType];
          *buf = 67109378;
          *v54 = v46;
          *&v54[4] = 2112;
          *&v54[6] = v44;
          _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't determine item type %d%@", buf, 0x12u);
        }

        v26 = [MEMORY[0x277CCA9B8] brc_errorItemIneligibleFromSyncForInode:0 localizedDescription:0];
        if (!v26)
        {
          goto LABEL_13;
        }

        v48 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (!os_log_type_enabled(v27, 0x90u))
        {
          goto LABEL_12;
        }

        v47 = "(passed to caller)";
        *buf = 136315906;
        *v54 = "[BRCPackageItem(FPFSAdditions) _initWithURL:inPackage:forItem:error:]";
        *&v54[8] = 2080;
        if (!a6)
        {
          v47 = "(ignored by caller)";
        }

        goto LABEL_46;
      }

      v13->_type = 3;
      v38 = [(BRCImportObject *)v25 symlinkContent];
      v39 = &OBJC_IVAR___BRCPackageItem__symlinkContent;
    }

    v40 = *v39;
    v41 = *(&v13->super.isa + v40);
    *(&v13->super.isa + v40) = v38;

LABEL_32:
LABEL_33:
    v31 = v13;
    goto LABEL_34;
  }

LABEL_16:

LABEL_20:
  v31 = 0;
LABEL_34:

  v42 = *MEMORY[0x277D85DE8];
  return v31;
}

+ (int64_t)largestPackageItemSizeInItemRowID:(unint64_t)a3 session:(id)a4
{
  v5 = [a4 clientDB];
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT largest_file_size FROM client_pkg_upload_sizes WHERE item_rowid = %llu", a3}];

  v7 = [v6 unsignedLongLongValue];
  return v7;
}

+ (id)packageItemsForItemRowID:(unint64_t)a3 order:(unint64_t)a4 db:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] packageItemsFor itemRowID [%llu] order [%lu]%@", buf, 0x20u);
  }

  if (a4 == 1)
  {
    v10 = @"SELECT item_rowid, rel_path, item_type, asset_rank, file_id, quarantine_info, xattr_signature, mtime, signature_or_link, generation, size, mode FROM client_pkg_upload_items WHERE item_rowid = %llu ORDER BY asset_rank";
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    v10 = @"SELECT item_rowid, rel_path, item_type, asset_rank, file_id, quarantine_info, xattr_signature, mtime, signature_or_link, generation, size, mode FROM client_pkg_upload_items WHERE item_rowid = %llu ORDER BY rel_path";
LABEL_7:
    v11 = [v7 fetch:{v10, a3}];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v12 = [v11 enumerateObjects:&__block_literal_global_39];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __67__BRCPackageItem_FPFSAdditions__packageItemsForItemRowID_order_db___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [[BRCPackageItem alloc] initFromPQLResultSet:v4 error:a3];

  return v5;
}

- (BOOL)saveToDBWithSession:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_assetRank)
  {
    v5 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:v4];
    self->_assetRank = [v5 allocatePackageItemRank];
  }

  type = self->_type;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        v7 = v38;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v8 = __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke;
        goto LABEL_16;
      }

LABEL_30:
      [BRCPackageItem(DatabaseMethods) saveToDBWithSession:];
      v11 = 0;
LABEL_17:
      v14 = [v4 clientDB];
      v15 = [v14 sqliteErrorHandler];

      v16 = [v4 clientDB];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke_35;
      v34[3] = &unk_2784FFB58;
      v12 = v15;
      v35 = v12;
      LOBYTE(v15) = (v11)[2](v11, v16, v34);

      if (v15)
      {
        goto LABEL_18;
      }

      v17 = [v4 clientDB];
      v18 = [v17 lastError];
      v19 = [v18 isSqliteErrorCode:19];

      if (!v19)
      {
        goto LABEL_23;
      }

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = self;
        v41 = 2112;
        v42 = v20;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[NOTICE] Overriding an already declared item %@%@", buf, 0x16u);
      }

      v22 = [v4 clientDB];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke_37;
      v32[3] = &unk_2785046D0;
      v32[4] = self;
      v33 = v11;
      v23 = [v22 groupInTransaction:v32];

      if (v23)
      {
LABEL_18:
        v13 = 1;
      }

      else
      {
LABEL_23:
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, 0x90u))
        {
          v30 = [v4 clientDB];
          v31 = [v30 lastError];
          *buf = 138412802;
          v40 = self;
          v41 = 2112;
          v42 = v31;
          v43 = 2112;
          v44 = v24;
          _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] failed to save item %@ to DB: %@%@", buf, 0x20u);
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [(BRCPackageItem(DatabaseMethods) *)v26 saveToDBWithSession:v27];
        }

        v13 = 0;
      }

      goto LABEL_29;
    }

    v7 = v37;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v8 = __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke_2;
LABEL_16:
    v7[2] = v8;
    v7[3] = &unk_2785046A8;
    v7[4] = self;
    v11 = MEMORY[0x22AA4A310]();
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if (type == 3)
  {
    v7 = v36;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v8 = __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke_3;
    goto LABEL_16;
  }

  if (type != 4)
  {
    goto LABEL_30;
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = self;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] Ignoring tombstone pkg item %@%@", buf, 0x16u);
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [(BRCPackageItem(DatabaseMethods) *)v11 saveToDBWithSession:v12];
  }

  v13 = 1;
LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

void __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke_35(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (([v8 isSqliteErrorCode:19] & 1) == 0)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v10, v7, v8);
    }
  }
}

uint64_t __55__BRCPackageItem_DatabaseMethods__saveToDBWithSession___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 execute:{@"DELETE FROM client_pkg_upload_items WHERE item_rowid = %llu AND rel_path = %@", *(*(a1 + 32) + 8), *(*(a1 + 32) + 32)}])
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = BRCPackageItem;
  v6 = [(BRCPackageItem *)&v19 init];
  if (v6)
  {
    v6->_itemRowID = [v5 longLongAtIndex:0];
    v7 = [v5 stringAtIndex:1];
    pathInPackage = v6->_pathInPackage;
    v6->_pathInPackage = v7;

    v6->_type = [v5 intAtIndex:2];
    v6->_assetRank = [v5 longLongAtIndex:3];
    v6->_fileID = [v5 longLongAtIndex:4];
    v9 = [v5 dataAtIndex:5];
    quarantineInfo = v6->_quarantineInfo;
    v6->_quarantineInfo = v9;

    v11 = [v5 dataAtIndex:6];
    xattrSignature = v6->_xattrSignature;
    v6->_xattrSignature = v11;

    v6->_mtime = [v5 longLongAtIndex:7];
    type = v6->_type;
    if (type == 2)
    {
      v16 = [v5 objectOfClass:objc_opt_class() atIndex:9];
      generationID = v6->_generationID;
      v6->_generationID = v16;

      v6->_size = [v5 unsignedLongLongAtIndex:10];
      v6->_mode = [v5 intAtIndex:11];
    }

    else if (type == 3)
    {
      v14 = [v5 stringAtIndex:8];
      symlinkContent = v6->_symlinkContent;
      v6->_symlinkContent = v14;
    }
  }

  return v6;
}

+ (BOOL)dumpSession:(id)a3 toContext:(id)a4 db:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 fetch:{@"SELECT item_rowid, rel_path, item_type, asset_rank, file_id, quarantine_info, xattr_signature, mtime, signature_or_link, generation, size, mode  FROM client_pkg_upload_items  ORDER BY item_rowid, rel_path"}];
  [v10 writeLineWithFormat:@"client_pkg_upload_items"];
  [v10 writeLineWithFormat:@"================"];
  if ([v12 next])
  {
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [[BRCPackageItem alloc] initFromPQLResultSet:v12 error:0];
      [v10 writeLineWithFormat:@"%@", v14];

      objc_autoreleasePoolPop(v13);
    }

    while (([v12 next] & 1) != 0);
  }

  [v10 writeLineWithFormat:&stru_2837504F0];
  v15 = [v12 error];

  if (v15)
  {
    v16 = [v12 error];
    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v22 = "(passed to caller)";
        *buf = 136315906;
        v24 = "+[BRCPackageItem(DatabaseMethods) dumpSession:toContext:db:error:]";
        v25 = 2080;
        if (!a6)
        {
          v22 = "(ignored by caller)";
        }

        v26 = v22;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a6)
    {
      v19 = v16;
      *a6 = v16;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (NSString)symlinkContent
{
  if (![(BRCPackageItem *)self isSymLink])
  {
    [BRCPackageItem symlinkContent];
  }

  symlinkContent = self->_symlinkContent;

  return symlinkContent;
}

- (NSData)contentSignature
{
  if (![(BRCPackageItem *)self isFile])
  {
    [BRCPackageItem contentSignature];
  }

  contentSignature = self->_contentSignature;

  return contentSignature;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:32];
  itemRowID = self->_itemRowID;
  if (self->_isDirty)
  {
    v5 = " (dirty)";
  }

  else
  {
    v5 = "";
  }

  v6 = [(NSString *)self->_pathInPackage fp_obfuscatedPath];
  assetRank = self->_assetRank;
  [v3 appendFormat:@"pkg:%lld%s p:'%@' rank:%lld ino:%lld", itemRowID, v5, v6, assetRank, self->_fileID];

  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      v16 = [(NSString *)self->_symlinkContent fp_obfuscatedPath];
      [v3 appendFormat:@" link to:'%@'", v16];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_23;
      }

      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(BRCPackageItem *)v16 description];
      }
    }

    goto LABEL_22;
  }

  if (type == 1)
  {
    [v3 appendString:@" dir"];
    goto LABEL_23;
  }

  if (type == 2)
  {
    generationID = self->_generationID;
    mtime = self->_mtime;
    size = self->_size;
    v22[0] = 114;
    mode = self->_mode;
    v13 = (mode & 1) != 0 ? 119 : 45;
    v22[1] = v13;
    v14 = (mode & 2) != 0 ? 120 : 45;
    v22[2] = v14;
    v22[3] = (mode << 29 >> 31) & 0x4C;
    v22[4] = 0;
    [v3 appendFormat:@" file gen:%@ size:%llu mtime:%llu mode:%s", generationID, size, mtime, v22];
    contentSignature = self->_contentSignature;
    if (contentSignature)
    {
      v16 = [(NSData *)contentSignature brc_hexadecimalString];
      [v3 appendFormat:@" sig:%@", v16];
LABEL_22:
    }
  }

LABEL_23:
  quarantineInfo = self->_quarantineInfo;
  if (quarantineInfo)
  {
    [v3 appendFormat:@" quarantine:%u ", -[NSData br_qtnFlags](quarantineInfo, "br_qtnFlags")];
  }

  xattrSignature = self->_xattrSignature;
  if (xattrSignature)
  {
    v20 = [(NSData *)xattrSignature brc_hexadecimalString];
    [v3 appendFormat:@" xattrSig:%@", v20];
  }

  return v3;
}

- (void)_setXattrs:(id)a3 xattrStager:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 brc_signature];
  xattrSignature = self->_xattrSignature;
  self->_xattrSignature = v7;

  if (v9 && v6)
  {
    [v6 saveXattrBlob:v9 forSignature:self->_xattrSignature error:0];
  }
}

+ (id)packageItemsForItem:(id)a3 order:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2048;
    v17 = [v6 dbRowID];
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] calling packageItemsForItem %@ item_rowid %llu%@", &v14, 0x20u);
  }

  v9 = [v6 dbRowID];
  v10 = [v6 db];
  v11 = [a1 packageItemsForItemRowID:v9 order:a4 db:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)packageItemsForFileObjectID:(id)a3 order:(unint64_t)a4 db:(id)a5
{
  v8 = a5;
  v9 = [a1 packageItemsForItemRowID:objc_msgSend(a3 order:"rawID") db:{a4, v8}];

  return v9;
}

@end