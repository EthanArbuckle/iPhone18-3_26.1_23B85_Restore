@interface BRCUploadCKRecordProvider
- (BRCUploadCKRecordProvider)initWithStageRegistry:(id)a3 deviceID:(id)a4;
- (id)_createFileRecordForURL:(id)a3 item:(id)a4 fileSize:(int64_t *)a5 boundaryKey:(id *)a6 error:(id *)a7;
- (id)_createPackageRecordForURL:(id)a3 item:(id)a4 stageID:(id)a5 fileSize:(int64_t *)a6 boundaryKey:(id *)a7 error:(id *)a8;
- (id)createCKRecordFor:(id)a3 document:(id)a4 stageID:(id)a5 mtime:(unint64_t)a6 etag:(id)a7 xattrSignature:(id)a8 transferSize:(int64_t *)a9 boundaryKey:(id *)a10 error:(id *)a11;
@end

@implementation BRCUploadCKRecordProvider

- (BRCUploadCKRecordProvider)initWithStageRegistry:(id)a3 deviceID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCUploadCKRecordProvider;
  v9 = [(BRCUploadCKRecordProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stageRegistry, a3);
    objc_storeStrong(&v10->_deviceID, a4);
  }

  return v10;
}

- (id)createCKRecordFor:(id)a3 document:(id)a4 stageID:(id)a5 mtime:(unint64_t)a6 etag:(id)a7 xattrSignature:(id)a8 transferSize:(int64_t *)a9 boundaryKey:(id *)a10 error:(id *)a11
{
  v69 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v58 = a5;
  v18 = a7;
  v19 = a8;
  v61 = 0;
  v20 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [v16 path];
  LODWORD(a5) = [v20 fileExistsAtPath:v21 isDirectory:&v61];

  if (a5)
  {
    *buf = 0;
    if (v61 == 1)
    {
      v60 = 0;
      v22 = &v60;
      v23 = [(BRCUploadCKRecordProvider *)self _createPackageRecordForURL:v16 item:v17 stageID:v58 fileSize:buf boundaryKey:&v60 error:a11];
    }

    else
    {
      v59 = 0;
      v22 = &v59;
      v23 = [(BRCUploadCKRecordProvider *)self _createFileRecordForURL:v16 item:v17 fileSize:buf boundaryKey:&v59 error:a11];
    }

    v28 = v23;
    v29 = *v22;
    v24 = v29;
    if (v28)
    {
      if (a10)
      {
        v30 = v29;
        *a10 = v24;
      }

      v31 = [v17 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v24 != 0];
      if (![v28 serializeForContentUpload:v17 size:*buf mtime:a6 etag:v18 shouldUseEnhancedDrivePrivacy:v31 error:a11])
      {

        v42 = 0;
        goto LABEL_40;
      }

      v32 = [BRCUserDefaults defaultsForMangledID:0];
      v33 = [v32 supportsEnhancedDrivePrivacy];

      v56 = v18;
      if (v33)
      {
        v34 = [v17 clientZone];
        v35 = [v34 asPrivateClientZone];
        v36 = [v17 itemID];
        v37 = [v35 childBaseSaltForItemID:v36];

        v38 = [v17 appLibrary];
        if ([v38 isCloudDocsAppLibrary])
        {
          v39 = [v17 clientZone];
          if ([v39 isCloudDocsZone])
          {
            v40 = [v17 parentItemIDInZone];
            v41 = [v40 isNonDesktopRoot];
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v43 = [v17 parentItemIDInZone];
        v33 = [v43 isDocumentsFolder];
      }

      else
      {
        v41 = 0;
        v37 = 0;
      }

      v44 = [v17 st];
      v45 = [v44 logicalName];
      [v28 serializeFilename:v45 forCreation:0 basehashSalt:v37 parentIDIsCloudDocsRoot:v41 parentIDIsDocumentsFolder:v33];

      if (v19)
      {
        v55 = v37;
        v46 = [(BRCStageRegistry *)self->_stageRegistry urlForXattrSignature:v19];
        v18 = v56;
        if (v46)
        {
          v47 = [MEMORY[0x277CBC190] br_assetWithFileURL:v46 boundaryKey:v24];
          [v28 setObject:v47 forKeyedSubscript:@"xattr"];
          if (v24)
          {
            v48 = v19;
          }

          else
          {
            v48 = 0;
          }

          v49 = [v28 encryptedValues];
          [v49 setObject:v48 forKeyedSubscript:@"xattrSignature"];

          v50 = [v47 size];
        }

        else
        {
          v47 = brc_bread_crumbs();
          v51 = brc_default_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            [BRCUploadCKRecordProvider createCKRecordFor:document:stageID:mtime:etag:xattrSignature:transferSize:boundaryKey:error:];
          }

          v50 = 0;
        }

        v37 = v55;
      }

      else
      {
        v50 = 0;
        v18 = v56;
      }

      if (a9)
      {
        *a9 = *buf + v50;
      }
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
    if (v24)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        v54 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCUploadCKRecordProvider createCKRecordFor:document:stageID:mtime:etag:xattrSignature:transferSize:boundaryKey:error:]";
        v63 = 2080;
        if (!a11)
        {
          v54 = "(ignored by caller)";
        }

        v64 = v54;
        v65 = 2112;
        v66 = v24;
        v67 = 2112;
        v68 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a11)
    {
      v27 = v24;
      v28 = 0;
      *a11 = v24;
    }

    else
    {
      v28 = 0;
    }
  }

  v28 = v28;
  v42 = v28;
LABEL_40:

  v52 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)_createFileRecordForURL:(id)a3 item:(id)a4 fileSize:(int64_t *)a5 boundaryKey:(id *)a6 error:(id *)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadCKRecordProvider _createFileRecordForURL:v11 item:? fileSize:? boundaryKey:? error:?];
  }

  v15 = [v12 baseRecordClearAllFields:1];
  v41 = 0;
  v16 = *MEMORY[0x277CBE838];
  v40 = 0;
  v17 = [v11 getResourceValue:&v41 forKey:v16 error:&v40];
  v18 = v41;
  v19 = v40;
  v20 = v19;
  if (v17)
  {
    v21 = [v15 getAndUpdateBoundaryKeyForItem:v12];
    v22 = [v12 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v21 != 0];
    if (a6)
    {
      v23 = v21;
      *a6 = v21;
    }

    v39 = v20;
    v24 = v18;
    v25 = a5;
    if ([v12 isFinderBookmark])
    {
      if (v22)
      {
        v26 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
      }

      else
      {
        v26 = 0;
      }

      v31 = kBRRecordKeyFinderBookmarkContent;
      v21 = v26;
    }

    else
    {
      v31 = kBRRecordKeyFileContent;
    }

    v32 = [MEMORY[0x277CBC190] br_assetWithFileURL:v11 boundaryKey:v21];
    [v15 setObject:v32 forKeyedSubscript:*v31];
    v33 = [v12 st];
    v34 = [v33 logicalName];
    v35 = [v34 br_pathExtension];
    [v32 setItemTypeHint:v35];

    if (v25)
    {
      *v25 = [v24 longLongValue];
    }

    v30 = v15;

    v18 = v24;
    v20 = v39;
  }

  else
  {
    v21 = v19;
    if (v21)
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, 0x90u))
      {
        v38 = "(passed to caller)";
        *buf = 136315906;
        v43 = "[BRCUploadCKRecordProvider _createFileRecordForURL:item:fileSize:boundaryKey:error:]";
        v44 = 2080;
        if (!a7)
        {
          v38 = "(ignored by caller)";
        }

        v45 = v38;
        v46 = 2112;
        v47 = v21;
        v48 = 2112;
        v49 = v27;
        _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a7)
    {
      v29 = v21;
      v30 = 0;
      *a7 = v21;
    }

    else
    {
      v30 = 0;
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_createPackageRecordForURL:(id)a3 item:(id)a4 stageID:(id)a5 fileSize:(int64_t *)a6 boundaryKey:(id *)a7 error:(id *)a8
{
  v94[2] = *MEMORY[0x277D85DE8];
  v65 = a3;
  v12 = a4;
  v13 = a5;
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadCKRecordProvider _createPackageRecordForURL:v65 item:? stageID:? fileSize:? boundaryKey:? error:?];
  }

  v16 = [v12 baseRecordClearAllFields:1];
  v17 = [(BRCStageRegistry *)self->_stageRegistry createURLForUploadWithStageID:v13 name:@"brpackage"];
  v63 = [(BRCStageRegistry *)self->_stageRegistry createURLForUploadWithStageID:v13 name:@"ckpackage"];
  if ([v12 isFinderBookmark])
  {
    [BRCUploadCKRecordProvider _createPackageRecordForURL:item:stageID:fileSize:boundaryKey:error:];
  }

  v18 = [v16 getAndUpdateBoundaryKeyForItem:v12];
  v19 = v18;
  if (a7)
  {
    v20 = v18;
    *a7 = v19;
  }

  [v12 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v19 != 0];
  v21 = [BRCPackageManifestWriter alloc];
  v22 = [v12 clientZone];
  v23 = [(BRCPackageManifestWriter *)v21 initWithZone:v22 stageID:v13 url:v17];

  v24 = [(BRCPackageManifestWriter *)v23 error];

  if (!v24)
  {
    *v91 = 0;
    *&v91[8] = v91;
    *&v91[16] = 0x3032000000;
    v92 = __Block_byref_object_copy__7;
    v93 = __Block_byref_object_dispose__7;
    v94[0] = 0;
    obj = 0;
    v62 = [MEMORY[0x277CBC538] br_packageWithBoundaryKey:v19 error:&obj];
    objc_storeStrong(v94, obj);
    if (v62)
    {
      v28 = *&v91[8];
      v79 = *(*&v91[8] + 40);
      v29 = [v62 anchorAtURL:v63 error:&v79];
      objc_storeStrong((v28 + 40), v79);
      if (v29)
      {
        v59 = [[BRCLazyPackage alloc] initWithRegistry:self->_stageRegistry stageID:v13 name:@"ckpackage-xattrs" boundaryKey:v19];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v88 = 0;
        v58 = objc_opt_new();
        v78[0] = 0;
        v78[1] = v78;
        v78[2] = 0x2020000000;
        v78[3] = 0;
        v30 = [BRCFSPackageEnumerator alloc];
        v31 = *&v91[8];
        v77 = *(*&v91[8] + 40);
        v60 = [(BRCFSPackageEnumerator *)v30 initForURL:v65 boundaryKey:v19 error:&v77];
        objc_storeStrong((v31 + 40), v77);
        if (v60)
        {
          v32 = objc_alloc_init(BRFieldPkgItem);
          v33 = *&v91[8];
          v76 = *(*&v91[8] + 40);
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke;
          v66[3] = &unk_278500E18;
          v66[4] = self;
          v73 = v78;
          v74 = v91;
          v67 = v62;
          v75 = buf;
          v34 = v32;
          v68 = v34;
          v35 = v58;
          v69 = v35;
          v70 = v59;
          v71 = v23;
          v72 = v17;
          [v60 enumeratePackageItemsWithSortOrder:2 error:&v76 usingBlock:v66];
          objc_storeStrong((v33 + 40), v76);
          [v35 done];
        }

        if (*(*&v91[8] + 40))
        {
          v36 = brc_bread_crumbs();
          v37 = brc_default_log();
          if (os_log_type_enabled(v37, 0x90u))
          {
            v55 = *(*&v91[8] + 40);
            *v81 = 138412802;
            v82 = v62;
            v83 = 2112;
            v84 = v55;
            v85 = 2112;
            v86 = v36;
            _os_log_error_impl(&dword_223E7A000, v37, 0x90u, "[ERROR] Fail to performTransactionBlock for package [%@] with error [%@]%@", v81, 0x20u);
          }

          if (a8)
          {
            v38 = *(*&v91[8] + 40);
LABEL_42:
            v27 = 0;
            *a8 = v38;
LABEL_44:

            _Block_object_dispose(v78, 8);
            _Block_object_dispose(buf, 8);

            goto LABEL_45;
          }
        }

        else
        {
          if ([(BRCPackageManifestWriter *)v23 done])
          {
            v46 = [(BRCLazyPackage *)v59 package];
            if (v46)
            {
              [v16 setObject:v46 forKeyedSubscript:@"pkgXattrs"];
            }

            v47 = [MEMORY[0x277CBC190] br_assetWithFileURL:v17 boundaryKey:{v19, v58}];
            [v16 setObject:v62 forKeyedSubscript:@"pkgContent"];
            [v16 setObject:v47 forKeyedSubscript:@"pkgManifest"];
            v48 = [v58 signature];
            [v16 setObject:v48 forKeyedSubscript:@"pkgSignature"];

            if (a6)
            {
              *a6 = *(*&buf[8] + 24);
            }

            v27 = v16;

            goto LABEL_44;
          }

          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, 0x90u))
          {
            v56 = [v17 path];
            v57 = [(BRCPackageManifestWriter *)v23 error];
            *v81 = 138412802;
            v82 = v56;
            v83 = 2112;
            v84 = v57;
            v85 = 2112;
            v86 = v51;
            _os_log_error_impl(&dword_223E7A000, v52, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", v81, 0x20u);
          }

          if (a8)
          {
            v38 = [(BRCPackageManifestWriter *)v23 error];
            goto LABEL_42;
          }
        }

        v27 = 0;
        goto LABEL_44;
      }

      v42 = brc_bread_crumbs();
      v43 = brc_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v63 path];
        v45 = *(*&v91[8] + 40);
        *buf = 138413058;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v44;
        *&buf[22] = 2112;
        v88 = v45;
        v89 = 2112;
        v90 = v42;
        _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to anchor package %@ at %@: %@%@", buf, 0x2Au);
      }

      if (a8)
      {
        v41 = *(*&v91[8] + 40);
        goto LABEL_30;
      }
    }

    else
    {
      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, 0x90u))
      {
        [BRCUploadCKRecordProvider _createPackageRecordForURL:v39 item:v40 stageID:? fileSize:? boundaryKey:? error:?];
      }

      if (a8)
      {
        v41 = *(*&v91[8] + 40);
LABEL_30:
        v27 = 0;
        *a8 = v41;
LABEL_45:

        _Block_object_dispose(v91, 8);
        goto LABEL_46;
      }
    }

    v27 = 0;
    goto LABEL_45;
  }

  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, 0x90u))
  {
    v49 = [v17 path];
    v50 = [(BRCPackageManifestWriter *)v23 error];
    *v91 = 138412802;
    *&v91[4] = v49;
    *&v91[12] = 2112;
    *&v91[14] = v50;
    *&v91[22] = 2112;
    v92 = v25;
    _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", v91, 0x20u);
  }

  if (a8)
  {
    [(BRCPackageManifestWriter *)v23 error];
    *a8 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_46:

  v53 = *MEMORY[0x277D85DE8];

  return v27;
}

void __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (![v7 isFile])
  {
    v14 = 0;
    goto LABEL_8;
  }

  v9 = objc_alloc(MEMORY[0x277CBC540]);
  v10 = *(*(a1 + 32) + 16);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "fileID")}];
  v12 = [v7 generationID];
  v13 = [v12 fsGenerationID];
  v14 = [v9 initWithDeviceID:v10 fileID:v11 generationID:v13];

  ++*(*(*(a1 + 88) + 8) + 24);
  [v14 setPackageIndex:?];
  v15 = [v7 pathInPackage];
  v16 = [v15 lastPathComponent];
  v17 = [v16 br_pathExtension];
  [v14 setItemTypeHint:v17];

  v18 = [*(a1 + 40) addItem:v14];
  v19 = *(*(a1 + 96) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  if (!*(*(*(a1 + 96) + 8) + 40))
  {
    *(*(*(a1 + 104) + 8) + 24) += [v7 size];
LABEL_8:
    [*(a1 + 48) updateWithPkgItem:v7];
    v24 = *(a1 + 48);
    v23 = *(a1 + 56);
    v56 = 0;
    v25 = [v23 addItem:v24 error:&v56];
    v26 = v56;
    v27 = v56;
    if (v25)
    {
      v28 = [v7 xattrSignature];

      if (v28)
      {
        v29 = *(*(a1 + 32) + 8);
        v30 = [v7 xattrSignature];
        v31 = [v29 urlForXattrSignature:v30];

        v55 = 0;
        LOBYTE(v30) = [v31 checkResourceIsReachableAndReturnError:&v55];
        v32 = v55;
        if (v30)
        {
          v51 = a4;
          v33 = [objc_alloc(MEMORY[0x277CBC540]) initWithFileURL:v31];
          v34 = [*(a1 + 64) itemCount];
          [v14 setPackageIndex:v34];
          v35 = *(a1 + 64);
          v52 = v33;
          v54 = v32;
          LOBYTE(v33) = [v35 addItem:v33 error:&v54];
          v36 = v54;

          if (v33)
          {
            [*(a1 + 48) setXattrIndex:v34];
          }

          else
          {
            v41 = brc_bread_crumbs();
            v42 = brc_default_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v58 = v36;
              v59 = 2112;
              v60 = v41;
              _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to add xattrs to xattrs package: %@%@", buf, 0x16u);
            }
          }

          v32 = v36;
          a4 = v51;
          v39 = v52;
        }

        else
        {
          v39 = brc_bread_crumbs();
          v40 = brc_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            v53 = [v7 xattrSignature];
            *buf = 138412802;
            v58 = v53;
            v59 = 2112;
            v60 = v32;
            v61 = 2112;
            v62 = v39;
            _os_log_fault_impl(&dword_223E7A000, v40, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We're missing a package xattr for signature %@ - %@%@", buf, 0x20u);
          }
        }
      }

      if ([*(a1 + 72) addItem:*(a1 + 48)])
      {
        [*(a1 + 48) clear];
LABEL_30:

        goto LABEL_31;
      }

      v43 = [*(a1 + 72) error];
      v44 = *(*(a1 + 96) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      v46 = brc_bread_crumbs();
      v47 = brc_default_log();
      if (os_log_type_enabled(v47, 0x90u))
      {
        v49 = [*(a1 + 80) path];
        v50 = *(*(*(a1 + 96) + 8) + 40);
        *buf = 138412802;
        v58 = v49;
        v59 = 2112;
        v60 = v50;
        v61 = 2112;
        v62 = v46;
        _os_log_error_impl(&dword_223E7A000, v47, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v26);
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, 0x90u))
      {
        __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_2(v8, v37, v38);
      }
    }

    *a4 = 1;
    goto LABEL_30;
  }

  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, 0x90u))
  {
    __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_1(v21, v22);
  }

  *a4 = 1;
LABEL_31:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)createCKRecordFor:document:stageID:mtime:etag:xattrSignature:transferSize:boundaryKey:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No xattr url found for signature %@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createFileRecordForURL:(void *)a1 item:fileSize:boundaryKey:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  v2 = [v1 fp_prettyPath];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Creating CK record for URL: %@%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createPackageRecordForURL:(void *)a1 item:stageID:fileSize:boundaryKey:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  v2 = [v1 fp_prettyPath];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Creating CK record for URL: %@%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createPackageRecordForURL:item:stageID:fileSize:boundaryKey:error:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !document.isFinderBookmark%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createPackageRecordForURL:(os_log_t)log item:stageID:fileSize:boundaryKey:error:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to create package: %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] Failed to add item to package%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = [v5 fp_obfuscatedPath];
  OUTLINED_FUNCTION_1_0();
  v9 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] Couldn't add item for checksumming at %@%@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end