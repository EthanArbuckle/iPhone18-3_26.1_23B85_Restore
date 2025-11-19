@interface BRCDownloadContent
- (BOOL)_prepareSecondStageWithManifest:(id)a3 package:(id)a4 error:(id *)a5;
- (BOOL)_stageWithError:(id *)a3;
- (BOOL)_stageWithManifest:(id)a3 package:(id)a4 xattrsPackage:(id)a5 error:(id *)a6;
- (BRCDownloadContent)initWithDocument:(id)a3 stageID:(id)a4 etagIfLoser:(id)a5 downloadKind:(int)a6 downloadStager:(id)a7;
- (id)_getDesiredPackageIndicesUsingReader:(id)a3 savedContentsURL:(id)a4 package:(id)a5 itemCount:(unint64_t)a6 error:(id *)a7;
- (id)description;
- (id)etagIfLoser;
- (void)_prepareDataForPackageTwoPhaseDownloadIfNeededForItem:(id)a3;
@end

@implementation BRCDownloadContent

- (id)etagIfLoser
{
  if (self->_isLoser)
  {
    return self->super._etag;
  }

  else
  {
    return 0;
  }
}

- (void)_prepareDataForPackageTwoPhaseDownloadIfNeededForItem:(id)a3
{
  v4 = [a3 currentVersion];
  v5 = [v4 isPackage];

  if (v5)
  {
    v16 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-dlspec"];
    v6 = [MEMORY[0x277CFAE68] dataWithContentsOfURL:?];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v6 error:0];
      v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      desiredIndices = self->_desiredIndices;
      self->_desiredIndices = v8;
    }

    if (!self->_desiredIndices)
    {
      v10 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [v10 path];
      v13 = [v11 fileExistsAtPath:v12];

      if (v13)
      {
        v14 = objc_alloc_init(MEMORY[0x277CCAA78]);
        v15 = self->_desiredIndices;
        self->_desiredIndices = v14;

        self->_requiresTwoPhase = 1;
      }
    }
  }
}

- (BRCDownloadContent)initWithDocument:(id)a3 stageID:(id)a4 etagIfLoser:(id)a5 downloadKind:(int)a6 downloadStager:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = BRCDownloadContent;
  v15 = [(BRCDownload *)&v24 initWithDocument:v12 stageID:a4];
  if (v15)
  {
    v16 = [v12 serverZone];
    zone = v15->_zone;
    v15->_zone = v16;

    v18 = [v12 currentVersion];
    v15->super._totalSize = [v18 size];

    v15->_isFinderBookmark = [v12 isFinderBookmark];
    etag = v13;
    if (!v13)
    {
      etag = v15->super._etag;
    }

    objc_storeStrong(&v15->super._etag, etag);
    v15->_isLoser = v13 != 0;
    v15->_kind = a6;
    objc_storeStrong(&v15->_downloadStager, a7);
    v20 = [v12 currentVersion];
    v21 = [v12 dbFacade];
    v22 = [v20 lastEditorUserIdentityWithDBFacade:v21];

    if (v22)
    {
      v15->_isDocumentModifiedByOtherUser = 1;
    }

    [(BRCDownloadContent *)v15 _prepareDataForPackageTwoPhaseDownloadIfNeededForItem:v12];
  }

  return v15;
}

- (id)description
{
  if (self->_isLoser)
  {
    v2 = "loser";
  }

  else
  {
    v2 = "current";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<dl-content[%lld] %@_%@ %s>", self->super._throttleID, self->super._itemID, self->super._etag, v2];
}

- (id)_getDesiredPackageIndicesUsingReader:(id)a3 savedContentsURL:(id)a4 package:(id)a5 itemCount:(unint64_t)a6 error:(id *)a7
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v60 = a4;
  v62 = a5;
  v58 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__37;
  v77 = __Block_byref_object_dispose__37;
  v78 = 0;
  v10 = [BRCUserDefaults defaultsForMangledID:0];
  v11 = [v10 supportsEnhancedDrivePrivacy];

  v59 = [MEMORY[0x277CCAA00] defaultManager];
  v61 = 0;
  v12 = 0;
  v63 = 0;
  v13 = 0;
  v14 = "(passed to caller)";
  if (!a7)
  {
    v14 = "(ignored by caller)";
  }

  v55 = v14;
  v57 = v11 ^ 1;
  v56 = *MEMORY[0x277CFACB0];
  while (1)
  {
    v15 = [v9 nextObject];

    if (!v15)
    {
      break;
    }

    v16 = objc_autoreleasePoolPush();
    if ([v15 type] == 4)
    {
      ++v13;
    }

    else if ([v15 type] == 2)
    {
      if (v13 >= a6)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v50 = [(BRCDownload *)self itemID];
          *buf = 138413314;
          v80 = v50;
          v81 = 2048;
          v82 = v13;
          v83 = 2048;
          v84 = a6;
          v85 = 2112;
          v86 = v62;
          v87 = 2112;
          v88 = v32;
          _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package inside %@ is corrupted in the cloud\nAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x34u);
        }

        v34 = MEMORY[0x277CCA9B8];
        v35 = [(BRCDownload *)self itemID];
        v36 = [v34 br_errorWithDomain:v56 code:15 description:{@"unreachable: Package inside %@ is corrupted in the cloud\nAsking for asset index out of bounds %lu vs %lu in package: %@", v35, v13, a6, v62}];

        if (v36)
        {
          v37 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, 0x90u))
          {
            *buf = 136315906;
            v80 = "[BRCDownloadContent _getDesiredPackageIndicesUsingReader:savedContentsURL:package:itemCount:error:]";
            v81 = 2080;
            v82 = v55;
            v83 = 2112;
            v84 = v36;
            v85 = 2112;
            v86 = v37;
            _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (a7)
        {
          objc_storeStrong(a7, v36);
        }

        if ([(BRCServerZone *)self->_zone isPrivateZone])
        {
          v39 = [(BRCServerZone *)self->_zone clientZone];
          v40 = [v39 asPrivateClientZone];
          v41 = [(BRCDownload *)self recordID];
          v42 = [v41 recordName];
          [v40 reportProblemWithType:9 recordName:v42];
        }

        v31 = 1;
        goto LABEL_19;
      }

      if (((v57 | v61) & 1) == 0)
      {
        v17 = [(BRCServerZone *)self->_zone clientZone];
        v18 = [v17 db];
        v19 = [v18 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __100__BRCDownloadContent__getDesiredPackageIndicesUsingReader_savedContentsURL_package_itemCount_error___block_invoke;
        block[3] = &unk_278500D08;
        v72 = &v73;
        v70 = v17;
        v71 = self;
        v20 = v17;
        dispatch_sync(v19, block);

        v61 = 1;
      }

      v21 = [v15 path];
      v22 = [v60 URLByAppendingPathComponent:v21];

      v23 = [v22 path];
      v24 = [v59 fileExistsAtPath:v23];

      if (!v24)
      {
        goto LABEL_44;
      }

      v25 = v74[5];
      v68 = v63;
      v26 = [BRCDocumentSignatureCalculator calculateSignatureForURL:v22 boundaryKey:v25 error:&v68];
      v27 = v68;
      v28 = v68;

      if (v28)
      {
        v63 = v28;
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, 0x90u))
        {
          *buf = 136315906;
          v80 = "[BRCDownloadContent _getDesiredPackageIndicesUsingReader:savedContentsURL:package:itemCount:error:]";
          v81 = 2080;
          v82 = v55;
          v83 = 2112;
          v84 = v63;
          v85 = 2112;
          v86 = v29;
          _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        if (a7)
        {
          objc_storeStrong(a7, v27);
        }

        v31 = 1;
        goto LABEL_45;
      }

      v67 = 0;
      v43 = [v62 itemAtIndex:v13 error:&v67];
      v44 = v67;
      v45 = v67;
      v63 = v45;
      if (v43)
      {
        v46 = [v43 signature];
        v47 = [v26 isEqualToData:v46];

        if (v47)
        {
          ++v13;
          v31 = 2;
          goto LABEL_42;
        }

LABEL_44:
        [v58 addIndex:v13];
        v31 = 0;
        ++v13;
      }

      else
      {
        v48 = v45;
        if (v48)
        {
          v54 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, 0x90u))
          {
            *buf = 136315906;
            v80 = "[BRCDownloadContent _getDesiredPackageIndicesUsingReader:savedContentsURL:package:itemCount:error:]";
            v81 = 2080;
            v82 = v55;
            v83 = 2112;
            v84 = v48;
            v85 = 2112;
            v86 = v54;
            _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (a7)
        {
          objc_storeStrong(a7, v44);
        }

        v31 = 1;
LABEL_42:
      }

LABEL_45:

      goto LABEL_19;
    }

    v31 = 2;
LABEL_19:
    objc_autoreleasePoolPop(v16);
    v12 = v15;
    if ((v31 | 2) != 2)
    {
      v51 = 0;
      goto LABEL_47;
    }
  }

  v51 = v58;
LABEL_47:

  _Block_object_dispose(&v73, 8);
  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

void __100__BRCDownloadContent__getDesiredPackageIndicesUsingReader_savedContentsURL_package_itemCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 32);
  v7 = [v2 db];
  v4 = [v2 contentBoundaryKeyForItemID:v3 withDB:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)_prepareSecondStageWithManifest:(id)a3 package:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v8 = a4;
  v9 = [v8 itemCount];
  v10 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
  memset(v29, 0, sizeof(v29));
  __brc_create_section(0, "[BRCDownloadContent _prepareSecondStageWithManifest:package:error:]", 373, 0, v29);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCDownloadContent _prepareSecondStageWithManifest:v29 package:? error:?];
  }

  v13 = [[BRCPackageManifestReader alloc] initWithAsset:v28];
  [(BRCPackageManifestReader *)v13 setItemClass:objc_opt_class()];
  v14 = [(BRCDownloadContent *)self _getDesiredPackageIndicesUsingReader:v13 savedContentsURL:v10 package:v8 itemCount:v9 error:a5];
  if (v14)
  {
    v15 = [(BRCPackageManifestReader *)v13 error];

    v16 = v15 == 0;
    if (v15)
    {
      v17 = [(BRCPackageManifestReader *)v13 error];
      if (v17)
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, 0x90u))
        {
          v27 = "(passed to caller)";
          *buf = 136315906;
          v31 = "[BRCDownloadContent _prepareSecondStageWithManifest:package:error:]";
          v32 = 2080;
          if (!a5)
          {
            v27 = "(ignored by caller)";
          }

          v33 = v27;
          v34 = 2112;
          v35 = v17;
          v36 = 2112;
          v37 = v18;
          _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (!a5)
      {
        v16 = 0;
        goto LABEL_20;
      }

      v17 = v17;
      v20 = *a5;
      *a5 = v17;
    }

    else
    {
      v17 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-dlspec"];
      v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
      if (([MEMORY[0x277CFAE68] writeData:v20 toURL:v17 atomically:1] & 1) == 0)
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [BRCDownloadContent _prepareSecondStageWithManifest:v21 package:v22 error:?];
        }
      }

      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v31 = v14;
        v32 = 2048;
        v33 = v9;
        v34 = 2112;
        v35 = v23;
        _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Desired indices are: %@ (itemCount: %ld)%@", buf, 0x20u);
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:

  __brc_leave_section(v29);
  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_stageWithManifest:(id)a3 package:(id)a4 xattrsPackage:(id)a5 error:(id *)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v36 = a4;
  v35 = a5;
  v34 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"item"];
  v11 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-extended"];
  v12 = [(BRCDownloadContent *)self desiredIndices];

  if (!v12)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v13 path];
  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
LABEL_9:
    v22 = [[BRCPackageManifestReader alloc] initWithAsset:v10];
    v23 = [BRCPackageManifestWriter alloc];
    v24 = [(BRCServerZone *)self->_zone clientZone];
    v25 = [(BRCPackageManifestWriter *)v23 initWithZone:v24 stageID:self->super._stageID url:v11];

    v26 = MEMORY[0x277CBEBC0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __69__BRCDownloadContent__stageWithManifest_package_xattrsPackage_error___block_invoke;
    v37[3] = &unk_278505478;
    v21 = v25;
    v38 = v21;
    v17 = v22;
    v39 = v17;
    v40 = v36;
    v41 = v35;
    v42 = v34;
    v13 = v13;
    v43 = v13;
    v44 = self;
    v45 = a6;
    [v26 br_setIOPolicy:1 type:7 forBlock:v37];
    v27 = [v10 fileURL];

    if (v27)
    {
      v28 = [MEMORY[0x277CCAA00] defaultManager];
      v29 = [v10 fileURL];
      [v28 removeItemAtURL:v29 error:0];
    }

    v30 = [(BRCPackageManifestWriter *)v21 error];
    v20 = v30 == 0;

    goto LABEL_12;
  }

  v17 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
  if (v17)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      v33 = "(passed to caller)";
      *buf = 136315906;
      v47 = "[BRCDownloadContent _stageWithManifest:package:xattrsPackage:error:]";
      v48 = 2080;
      if (!a6)
      {
        v33 = "(ignored by caller)";
      }

      v49 = v33;
      v50 = 2112;
      v51 = v17;
      v52 = 2112;
      v53 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (!a6)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v17 = v17;
  v20 = 0;
  v21 = *a6;
  *a6 = v17;
LABEL_12:

LABEL_13:
  v31 = *MEMORY[0x277D85DE8];
  return v20;
}

void __69__BRCDownloadContent__stageWithManifest_package_xattrsPackage_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = [*(a1 + 80) recordID];
  v9 = [v8 recordName];
  LOBYTE(v17) = *(*(a1 + 80) + 144);
  LOBYTE(v2) = [v2 stagePackageWithReader:v3 package:v4 xattrsPackage:v5 stageItemURL:v6 existingContentsURL:v7 recordName:v9 isDocumentModifiedByOtherUser:v17];

  if ((v2 & 1) == 0)
  {
    v10 = [*(a1 + 32) error];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 88);
        *buf = 136315906;
        if (v15)
        {
          v16 = "(passed to caller)";
        }

        else
        {
          v16 = "(ignored by caller)";
        }

        v19 = "[BRCDownloadContent _stageWithManifest:package:xattrsPackage:error:]_block_invoke";
        v20 = 2080;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    v13 = *(a1 + 88);
    if (v13)
    {
      objc_storeStrong(v13, v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_stageWithError:(id *)a3
{
  v64 = *MEMORY[0x277D85DE8];
  isFinderBookmark = self->_isFinderBookmark;
  p_record = &self->super._record;
  record = self->super._record;
  if (isFinderBookmark)
  {
    v8 = kBRRecordKeyFinderBookmarkContent;
  }

  else
  {
    v8 = kBRRecordKeyFileContent;
  }

  v9 = [(CKRecord *)record objectForKeyedSubscript:*v8];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"item"];
      v12 = [v10 fileURL];

      if (v12)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v48 = [v10 fileURL];
          *buf = 138412802;
          v57 = v48;
          v58 = 2112;
          v59 = v11;
          v60 = 2112;
          v61 = v14;
          _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: asset has a missing url (%@), or we can't compute the stage url %@%@", buf, 0x20u);
        }

        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CFACB0];
        v18 = [v10 fileURL];
        v40 = [v16 br_errorWithDomain:v17 code:15 description:{@"unreachable: asset has a missing url (%@), or we can't compute the stage url %@", v18, v11}];

        if (v40)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, 0x90u))
          {
            v54 = "(passed to caller)";
            *buf = 136315906;
            v57 = "[BRCDownloadContent _stageWithError:]";
            v58 = 2080;
            if (!a3)
            {
              v54 = "(ignored by caller)";
            }

            v59 = v54;
            v60 = 2112;
            v61 = v40;
            v62 = 2112;
            v63 = v19;
            _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (a3)
        {
          objc_storeStrong(a3, v40);
        }

        v21 = 0;
      }

      else
      {
        v37 = [MEMORY[0x277CCAA00] defaultManager];
        v38 = [v10 fileURL];
        v55 = 0;
        [v37 br_forceMoveItemAtURL:v38 toURL:v11 error:&v55];
        v39 = v55;
        v40 = v55;

        if (a3)
        {
          objc_storeStrong(a3, v39);
        }

        v21 = v40 == 0;
      }

      goto LABEL_49;
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [BRCDownloadContent _stageWithError:?];
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: file content is not a CKAsset: %@", *p_record}];
    if (v11)
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        v47 = "(passed to caller)";
        *buf = 136315906;
        v57 = "[BRCDownloadContent _stageWithError:]";
        v58 = 2080;
        if (!a3)
        {
          v47 = "(ignored by caller)";
        }

        v59 = v47;
        v60 = 2112;
        v61 = v11;
        v62 = 2112;
        v63 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a3)
    {
      objc_storeStrong(a3, v11);
    }

LABEL_87:
    v21 = 0;
    goto LABEL_88;
  }

  if (!self->_isFinderBookmark)
  {
    v11 = [*p_record objectForKeyedSubscript:@"pkgContent"];
    v10 = [*p_record objectForKeyedSubscript:@"pkgManifest"];
    v40 = [*p_record objectForKeyedSubscript:@"pkgXattrs"];
    if (v11)
    {
      v30 = v10 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [BRCDownloadContent _stageWithError:?];
      }

      v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: unknown type for downloaded object %@", *p_record}];
      if (!v33)
      {
        goto LABEL_84;
      }

      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (!os_log_type_enabled(v35, 0x90u))
      {
        goto LABEL_83;
      }

      v36 = "(passed to caller)";
      *buf = 136315906;
      v57 = "[BRCDownloadContent _stageWithError:]";
      v58 = 2080;
      if (!a3)
      {
        v36 = "(ignored by caller)";
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if ([(BRCDownloadContent *)self requiresTwoPhase])
            {
              v42 = [(BRCDownloadContent *)self _prepareSecondStageWithManifest:v10 package:v11 error:a3];
            }

            else
            {
              v42 = [(BRCDownloadContent *)self _stageWithManifest:v10 package:v11 xattrsPackage:v40 error:a3];
            }

            v21 = v42;
LABEL_49:

            goto LABEL_88;
          }

          v49 = brc_bread_crumbs();
          v50 = brc_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            [BRCDownloadContent _stageWithError:?];
          }

          v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: xattrs package is not a CKAsset: %@", *p_record}];
          if (!v33)
          {
            goto LABEL_84;
          }

          v34 = brc_bread_crumbs();
          v35 = brc_default_log();
          if (!os_log_type_enabled(v35, 0x90u))
          {
            goto LABEL_83;
          }

          v36 = "(passed to caller)";
          *buf = 136315906;
          v57 = "[BRCDownloadContent _stageWithError:]";
          v58 = 2080;
          if (!a3)
          {
            v36 = "(ignored by caller)";
          }
        }

        else
        {
          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            [BRCDownloadContent _stageWithError:?];
          }

          v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: package manifest is not a CKAsset: %@", *p_record}];
          if (!v33)
          {
            goto LABEL_84;
          }

          v34 = brc_bread_crumbs();
          v35 = brc_default_log();
          if (!os_log_type_enabled(v35, 0x90u))
          {
LABEL_83:

LABEL_84:
            if (a3)
            {
              objc_storeStrong(a3, v33);
            }

            goto LABEL_87;
          }

          v36 = "(passed to caller)";
          *buf = 136315906;
          v57 = "[BRCDownloadContent _stageWithError:]";
          v58 = 2080;
          if (!a3)
          {
            v36 = "(ignored by caller)";
          }
        }
      }

      else
      {
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [BRCDownloadContent _stageWithError:?];
        }

        v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: pkg content is not a CKPackage: %@", *p_record}];
        if (!v33)
        {
          goto LABEL_84;
        }

        v34 = brc_bread_crumbs();
        v35 = brc_default_log();
        if (!os_log_type_enabled(v35, 0x90u))
        {
          goto LABEL_83;
        }

        v36 = "(passed to caller)";
        *buf = 136315906;
        v57 = "[BRCDownloadContent _stageWithError:]";
        v58 = 2080;
        if (!a3)
        {
          v36 = "(ignored by caller)";
        }
      }
    }

    v59 = v36;
    v60 = 2112;
    v61 = v33;
    v62 = 2112;
    v63 = v34;
    _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    goto LABEL_83;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [BRCDownloadContent _stageWithError:?];
  }

  v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: finder bookmark without content: %@", *p_record}];
  if (v10)
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, 0x90u))
    {
      v53 = "(passed to caller)";
      *buf = 136315906;
      v57 = "[BRCDownloadContent _stageWithError:]";
      v58 = 2080;
      if (!a3)
      {
        v53 = "(ignored by caller)";
      }

      v59 = v53;
      v60 = 2112;
      v61 = v10;
      v62 = 2112;
      v63 = v24;
      _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a3)
  {
    v10 = v10;
    v21 = 0;
    v11 = *a3;
    *a3 = v10;
LABEL_88:

    goto LABEL_89;
  }

  v21 = 0;
LABEL_89:

  v51 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_prepareSecondStageWithManifest:(uint64_t *)a1 package:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx computing desired packages indices%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_prepareSecondStageWithManifest:(uint64_t)a1 package:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: false%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_stageWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: file content is not a CKAsset: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stageWithError:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: unknown type for downloaded object %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stageWithError:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: pkg content is not a CKPackage: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stageWithError:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: package manifest is not a CKAsset: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stageWithError:(uint64_t *)a1 .cold.5(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: xattrs package is not a CKAsset: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_stageWithError:(uint64_t *)a1 .cold.6(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: finder bookmark without content: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

@end