@interface BRCDownloadContent
- (BOOL)_prepareSecondStageWithManifest:(id)manifest package:(id)package error:(id *)error;
- (BOOL)_stageWithError:(id *)error;
- (BOOL)_stageWithManifest:(id)manifest package:(id)package xattrsPackage:(id)xattrsPackage error:(id *)error;
- (BRCDownloadContent)initWithDocument:(id)document stageID:(id)d etagIfLoser:(id)loser downloadKind:(int)kind downloadStager:(id)stager;
- (id)_getDesiredPackageIndicesUsingReader:(id)reader savedContentsURL:(id)l package:(id)package itemCount:(unint64_t)count error:(id *)error;
- (id)description;
- (id)etagIfLoser;
- (void)_prepareDataForPackageTwoPhaseDownloadIfNeededForItem:(id)item;
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

- (void)_prepareDataForPackageTwoPhaseDownloadIfNeededForItem:(id)item
{
  currentVersion = [item currentVersion];
  isPackage = [currentVersion isPackage];

  if (isPackage)
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
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v10 path];
      v13 = [defaultManager fileExistsAtPath:path];

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

- (BRCDownloadContent)initWithDocument:(id)document stageID:(id)d etagIfLoser:(id)loser downloadKind:(int)kind downloadStager:(id)stager
{
  documentCopy = document;
  loserCopy = loser;
  stagerCopy = stager;
  v24.receiver = self;
  v24.super_class = BRCDownloadContent;
  v15 = [(BRCDownload *)&v24 initWithDocument:documentCopy stageID:d];
  if (v15)
  {
    serverZone = [documentCopy serverZone];
    zone = v15->_zone;
    v15->_zone = serverZone;

    currentVersion = [documentCopy currentVersion];
    v15->super._totalSize = [currentVersion size];

    v15->_isFinderBookmark = [documentCopy isFinderBookmark];
    etag = loserCopy;
    if (!loserCopy)
    {
      etag = v15->super._etag;
    }

    objc_storeStrong(&v15->super._etag, etag);
    v15->_isLoser = loserCopy != 0;
    v15->_kind = kind;
    objc_storeStrong(&v15->_downloadStager, stager);
    currentVersion2 = [documentCopy currentVersion];
    dbFacade = [documentCopy dbFacade];
    v22 = [currentVersion2 lastEditorUserIdentityWithDBFacade:dbFacade];

    if (v22)
    {
      v15->_isDocumentModifiedByOtherUser = 1;
    }

    [(BRCDownloadContent *)v15 _prepareDataForPackageTwoPhaseDownloadIfNeededForItem:documentCopy];
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

- (id)_getDesiredPackageIndicesUsingReader:(id)reader savedContentsURL:(id)l package:(id)package itemCount:(unint64_t)count error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  lCopy = l;
  packageCopy = package;
  v58 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__37;
  v77 = __Block_byref_object_dispose__37;
  v78 = 0;
  v10 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v10 supportsEnhancedDrivePrivacy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v61 = 0;
  v12 = 0;
  v63 = 0;
  v13 = 0;
  v14 = "(passed to caller)";
  if (!error)
  {
    v14 = "(ignored by caller)";
  }

  v55 = v14;
  v57 = supportsEnhancedDrivePrivacy ^ 1;
  v56 = *MEMORY[0x277CFACB0];
  while (1)
  {
    nextObject = [readerCopy nextObject];

    if (!nextObject)
    {
      break;
    }

    v16 = objc_autoreleasePoolPush();
    if ([nextObject type] == 4)
    {
      ++v13;
    }

    else if ([nextObject type] == 2)
    {
      if (v13 >= count)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          itemID = [(BRCDownload *)self itemID];
          *buf = 138413314;
          v80 = itemID;
          v81 = 2048;
          v82 = v13;
          v83 = 2048;
          countCopy = count;
          v85 = 2112;
          v86 = packageCopy;
          v87 = 2112;
          v88 = v32;
          _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package inside %@ is corrupted in the cloud\nAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x34u);
        }

        v34 = MEMORY[0x277CCA9B8];
        itemID2 = [(BRCDownload *)self itemID];
        v36 = [v34 br_errorWithDomain:v56 code:15 description:{@"unreachable: Package inside %@ is corrupted in the cloud\nAsking for asset index out of bounds %lu vs %lu in package: %@", itemID2, v13, count, packageCopy}];

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
            countCopy = v36;
            v85 = 2112;
            v86 = v37;
            _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          objc_storeStrong(error, v36);
        }

        if ([(BRCServerZone *)self->_zone isPrivateZone])
        {
          clientZone = [(BRCServerZone *)self->_zone clientZone];
          asPrivateClientZone = [clientZone asPrivateClientZone];
          recordID = [(BRCDownload *)self recordID];
          recordName = [recordID recordName];
          [asPrivateClientZone reportProblemWithType:9 recordName:recordName];
        }

        v31 = 1;
        goto LABEL_19;
      }

      if (((v57 | v61) & 1) == 0)
      {
        clientZone2 = [(BRCServerZone *)self->_zone clientZone];
        v18 = [clientZone2 db];
        serialQueue = [v18 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __100__BRCDownloadContent__getDesiredPackageIndicesUsingReader_savedContentsURL_package_itemCount_error___block_invoke;
        block[3] = &unk_278500D08;
        v72 = &v73;
        v70 = clientZone2;
        selfCopy = self;
        v20 = clientZone2;
        dispatch_sync(serialQueue, block);

        v61 = 1;
      }

      path = [nextObject path];
      v22 = [lCopy URLByAppendingPathComponent:path];

      path2 = [v22 path];
      v24 = [defaultManager fileExistsAtPath:path2];

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
          countCopy = v63;
          v85 = 2112;
          v86 = v29;
          _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        if (error)
        {
          objc_storeStrong(error, v27);
        }

        v31 = 1;
        goto LABEL_45;
      }

      v67 = 0;
      v43 = [packageCopy itemAtIndex:v13 error:&v67];
      v44 = v67;
      v45 = v67;
      v63 = v45;
      if (v43)
      {
        signature = [v43 signature];
        v47 = [v26 isEqualToData:signature];

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
            countCopy = v48;
            v85 = 2112;
            v86 = v54;
            _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          objc_storeStrong(error, v44);
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
    v12 = nextObject;
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

- (BOOL)_prepareSecondStageWithManifest:(id)manifest package:(id)package error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  packageCopy = package;
  itemCount = [packageCopy itemCount];
  v10 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
  memset(v29, 0, sizeof(v29));
  __brc_create_section(0, "[BRCDownloadContent _prepareSecondStageWithManifest:package:error:]", 373, 0, v29);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCDownloadContent _prepareSecondStageWithManifest:v29 package:? error:?];
  }

  v13 = [[BRCPackageManifestReader alloc] initWithAsset:manifestCopy];
  [(BRCPackageManifestReader *)v13 setItemClass:objc_opt_class()];
  v14 = [(BRCDownloadContent *)self _getDesiredPackageIndicesUsingReader:v13 savedContentsURL:v10 package:packageCopy itemCount:itemCount error:error];
  if (v14)
  {
    error = [(BRCPackageManifestReader *)v13 error];

    v16 = error == 0;
    if (error)
    {
      error2 = [(BRCPackageManifestReader *)v13 error];
      if (error2)
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, 0x90u))
        {
          v27 = "(passed to caller)";
          *buf = 136315906;
          v31 = "[BRCDownloadContent _prepareSecondStageWithManifest:package:error:]";
          v32 = 2080;
          if (!error)
          {
            v27 = "(ignored by caller)";
          }

          v33 = v27;
          v34 = 2112;
          v35 = error2;
          v36 = 2112;
          v37 = v18;
          _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (!error)
      {
        v16 = 0;
        goto LABEL_20;
      }

      error2 = error2;
      v20 = *error;
      *error = error2;
    }

    else
    {
      error2 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-dlspec"];
      v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
      if (([MEMORY[0x277CFAE68] writeData:v20 toURL:error2 atomically:1] & 1) == 0)
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
        v33 = itemCount;
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

- (BOOL)_stageWithManifest:(id)manifest package:(id)package xattrsPackage:(id)xattrsPackage error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  packageCopy = package;
  xattrsPackageCopy = xattrsPackage;
  v34 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"item"];
  v11 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-extended"];
  desiredIndices = [(BRCDownloadContent *)self desiredIndices];

  if (!desiredIndices)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v13 path];
  v16 = [defaultManager fileExistsAtPath:path];

  if (v16)
  {
LABEL_9:
    v22 = [[BRCPackageManifestReader alloc] initWithAsset:manifestCopy];
    v23 = [BRCPackageManifestWriter alloc];
    clientZone = [(BRCServerZone *)self->_zone clientZone];
    v25 = [(BRCPackageManifestWriter *)v23 initWithZone:clientZone stageID:self->super._stageID url:v11];

    v26 = MEMORY[0x277CBEBC0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __69__BRCDownloadContent__stageWithManifest_package_xattrsPackage_error___block_invoke;
    v37[3] = &unk_278505478;
    v21 = v25;
    v38 = v21;
    v17 = v22;
    v39 = v17;
    v40 = packageCopy;
    v41 = xattrsPackageCopy;
    v42 = v34;
    v13 = v13;
    v43 = v13;
    selfCopy = self;
    errorCopy = error;
    [v26 br_setIOPolicy:1 type:7 forBlock:v37];
    fileURL = [manifestCopy fileURL];

    if (fileURL)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      fileURL2 = [manifestCopy fileURL];
      [defaultManager2 removeItemAtURL:fileURL2 error:0];
    }

    error = [(BRCPackageManifestWriter *)v21 error];
    v20 = error == 0;

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
      if (!error)
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

  if (!error)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v17 = v17;
  v20 = 0;
  v21 = *error;
  *error = v17;
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

- (BOOL)_stageWithError:(id *)error
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
      fileURL = [v10 fileURL];

      if (fileURL)
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
          fileURL2 = [v10 fileURL];
          *buf = 138412802;
          v57 = fileURL2;
          v58 = 2112;
          v59 = v11;
          v60 = 2112;
          v61 = v14;
          _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: asset has a missing url (%@), or we can't compute the stage url %@%@", buf, 0x20u);
        }

        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CFACB0];
        fileURL3 = [v10 fileURL];
        v40 = [v16 br_errorWithDomain:v17 code:15 description:{@"unreachable: asset has a missing url (%@), or we can't compute the stage url %@", fileURL3, v11}];

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
            if (!error)
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

        if (error)
        {
          objc_storeStrong(error, v40);
        }

        v21 = 0;
      }

      else
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        fileURL4 = [v10 fileURL];
        v55 = 0;
        [defaultManager br_forceMoveItemAtURL:fileURL4 toURL:v11 error:&v55];
        v39 = v55;
        v40 = v55;

        if (error)
        {
          objc_storeStrong(error, v39);
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
        if (!error)
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

    if (error)
    {
      objc_storeStrong(error, v11);
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
      if (!error)
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
              v42 = [(BRCDownloadContent *)self _prepareSecondStageWithManifest:v10 package:v11 error:error];
            }

            else
            {
              v42 = [(BRCDownloadContent *)self _stageWithManifest:v10 package:v11 xattrsPackage:v40 error:error];
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
          if (!error)
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
            if (error)
            {
              objc_storeStrong(error, v33);
            }

            goto LABEL_87;
          }

          v36 = "(passed to caller)";
          *buf = 136315906;
          v57 = "[BRCDownloadContent _stageWithError:]";
          v58 = 2080;
          if (!error)
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
        if (!error)
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
      if (!error)
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

  if (error)
  {
    v10 = v10;
    v21 = 0;
    v11 = *error;
    *error = v10;
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