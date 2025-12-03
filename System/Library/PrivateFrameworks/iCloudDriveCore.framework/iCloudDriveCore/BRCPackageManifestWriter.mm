@interface BRCPackageManifestWriter
- (BOOL)_cloneExcludedFromSyncItemsFromExistingContentsURL:(id)l toStageItemURL:(id)rL error:(id *)error;
- (BOOL)_packageItem:(id)item matchesMode:(unsigned __int16)mode;
- (BOOL)addItem:(id)item;
- (BOOL)addLocalItem:(id)item;
- (BOOL)stagePackageWithReader:(id)reader package:(id)package xattrsPackage:(id)xattrsPackage stageItemURL:(id)l existingContentsURL:(id)rL recordName:(id)name isDocumentModifiedByOtherUser:(BOOL)user;
- (BRCPackageManifestWriter)initWithZone:(id)zone stageID:(id)d url:(id)url;
- (unsigned)_computedFileModeForPackageItem:(id)item;
- (void)_applyQuarantineMetadataWithManifestItem:(id)item isDocumentModifiedByOtherUser:(BOOL)user fd:(int)fd;
- (void)_handleStreamError;
@end

@implementation BRCPackageManifestWriter

- (void)_handleStreamError
{
  stream = self->_stream;
  if (stream)
  {
    streamError = [(NSOutputStream *)stream streamError];
    error = self->_error;
    self->_error = streamError;

    [(NSOutputStream *)self->_stream close];
    v6 = self->_stream;
    self->_stream = 0;

    writer = self->_writer;
    self->_writer = 0;
  }
}

- (BRCPackageManifestWriter)initWithZone:(id)zone stageID:(id)d url:(id)url
{
  zoneCopy = zone;
  dCopy = d;
  urlCopy = url;
  v20.receiver = self;
  v20.super_class = BRCPackageManifestWriter;
  v12 = [(BRCPackageManifestWriter *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientZone, zone);
    objc_storeStrong(&v13->_stageID, d);
    objc_storeStrong(&v13->_url, url);
    v14 = [MEMORY[0x277CBEB78] outputStreamWithURL:urlCopy append:0];
    stream = v13->_stream;
    v13->_stream = v14;

    [(NSOutputStream *)v13->_stream open];
    v16 = [objc_alloc(MEMORY[0x277D43188]) initWithOutputStream:v13->_stream];
    writer = v13->_writer;
    v13->_writer = v16;

    v18 = objc_alloc_init(BRFieldPkgHeader);
    [(BRFieldPkgHeader *)v18 setVersion:1];
    if (([(PBMessageStreamWriter *)v13->_writer writeMessage:v18]& 1) == 0)
    {
      [(BRCPackageManifestWriter *)v13 _handleStreamError];
    }
  }

  return v13;
}

- (BOOL)addItem:(id)item
{
  itemCopy = item;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCPackageManifestWriter addItem:];
  }

  v7 = [(PBMessageStreamWriter *)self->_writer writeMessage:itemCopy];
  if ((v7 & 1) == 0)
  {
    [(BRCPackageManifestWriter *)self _handleStreamError];
  }

  return v7;
}

- (BOOL)addLocalItem:(id)item
{
  itemCopy = item;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCPackageManifestWriter addItem:];
  }

  v7 = [(PBMessageStreamWriter *)self->_writer writeMessage:itemCopy];
  if ((v7 & 1) == 0)
  {
    [(BRCPackageManifestWriter *)self _handleStreamError];
  }

  return v7;
}

- (void)_applyQuarantineMetadataWithManifestItem:(id)item isDocumentModifiedByOtherUser:(BOOL)user fd:(int)fd
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  path = [itemCopy path];
  quarantineInfo = [itemCopy quarantineInfo];

  v13 = 0;
  LOBYTE(itemCopy) = BRCSetFakeQuarantineInfo(fd, quarantineInfo, &v13);
  v9 = v13;

  if ((itemCopy & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *buf = 138412802;
      v15 = path;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Failed setting quarantine info for item %@: %@%@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_packageItem:(id)item matchesMode:(unsigned __int16)mode
{
  modeCopy = mode;
  itemCopy = item;
  if (((modeCopy & 0x80) == 0) == [itemCopy isWritable])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ((modeCopy & 0x40) == 0) ^ [itemCopy isExecutable];
  }

  return v6;
}

- (unsigned)_computedFileModeForPackageItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isWritable])
  {
    v4 = 434;
  }

  else
  {
    v4 = 288;
  }

  isExecutable = [itemCopy isExecutable];

  if (isExecutable)
  {
    v4 |= 0x49u;
  }

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  stageInPackageFileUmask = [v6 stageInPackageFileUmask];

  return v4 & ~stageInPackageFileUmask;
}

- (BOOL)_cloneExcludedFromSyncItemsFromExistingContentsURL:(id)l toStageItemURL:(id)rL error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = rLCopy;
  v9 = 1;
  if (lCopy && rLCopy)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__30;
    v41 = __Block_byref_object_dispose__30;
    v42 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __100__BRCPackageManifestWriter__cloneExcludedFromSyncItemsFromExistingContentsURL_toStageItemURL_error___block_invoke;
    v36[3] = &unk_278500E40;
    v36[4] = &v37;
    v11 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:16 errorHandler:v36];
    for (i = 0; ; i = nextObject)
    {

      nextObject = [v11 nextObject];

      if (!nextObject)
      {
        break;
      }

      relativePath = [nextObject relativePath];
      lastPathComponent = [relativePath lastPathComponent];
      v16 = [lastPathComponent br_isExcludedWithMaximumDepth:1];

      if (v16)
      {
        v17 = [lCopy URLByAppendingPathComponent:relativePath];
        v18 = [v8 URLByAppendingPathComponent:relativePath];
        v35 = 0;
        v19 = [BRCFileSystemWrapper cloneFromURL:v17 toURL:v18 error:&v35];
        defaultManager = v35;
        if (v19)
        {
          v24 = brc_bread_crumbs();
          v25 = brc_default_log();
          if (os_log_type_enabled(v25, 0x90u))
          {
            [BRCPackageManifestWriter _cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:];
          }

          v26 = defaultManager;
          if (v26)
          {
            v27 = brc_bread_crumbs();
            v28 = brc_default_log();
            if (os_log_type_enabled(v28, 0x90u))
            {
              v33 = "(passed to caller)";
              *buf = 136315906;
              v44 = "[BRCPackageManifestWriter _cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:]";
              v45 = 2080;
              if (!error)
              {
                v33 = "(ignored by caller)";
              }

              v46 = v33;
              v47 = 2112;
              v48 = v26;
              v49 = 2112;
              v50 = v27;
              _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (error)
          {
            v29 = v26;
            *error = v26;
          }

          v9 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        defaultManager = 0;
      }
    }

    v20 = v38[5];
    if (v20)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v32 = "(passed to caller)";
        *buf = 136315906;
        v44 = "[BRCPackageManifestWriter _cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:]";
        v45 = 2080;
        if (!error)
        {
          v32 = "(ignored by caller)";
        }

        v46 = v32;
        v47 = 2112;
        v48 = v20;
        v49 = 2112;
        v50 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v23 = v20;
      *error = v20;
    }

    v9 = v38[5] == 0;
LABEL_24:

    _Block_object_dispose(&v37, 8);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)stagePackageWithReader:(id)reader package:(id)package xattrsPackage:(id)xattrsPackage stageItemURL:(id)l existingContentsURL:(id)rL recordName:(id)name isDocumentModifiedByOtherUser:(BOOL)user
{
  v200 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  packageCopy = package;
  xattrsPackageCopy = xattrsPackage;
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  p_error = &self->_error;
  if (self->_error)
  {
    done = 0;
    goto LABEL_125;
  }

  v178 = rLCopy;
  if (rLCopy)
  {
    v194 = 0;
    v23 = +[BRCFileSystemWrapper openFileWithDirFd:filename:flags:error:](BRCFileSystemWrapper, "openFileWithDirFd:filename:flags:error:", 0xFFFFFFFFLL, [rLCopy fileSystemRepresentation], 33028, &v194);
    v24 = v194;
    if (v23 < 0)
    {
      done = 0;
      br_errorFromErrno = *p_error;
      *p_error = v24;
      goto LABEL_124;
    }

    v172 = v23;
  }

  else
  {
    v172 = -1;
  }

  v25 = [BRCUserDefaults defaultsForMangledID:0];
  stageInPackageDirectoryUmask = [v25 stageInPackageDirectoryUmask];

  itemCount = [packageCopy itemCount];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v193 = 0;
  v27 = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v193];
  br_errorFromErrno = v193;

  v176 = xattrsPackageCopy;
  if (!v27)
  {
LABEL_117:
    if (!*p_error)
    {
      if (br_errorFromErrno)
      {
        v117 = br_errorFromErrno;
      }

      else
      {
        v117 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:@"unknown error"];
      }

      v118 = *p_error;
      *p_error = v117;
    }

    v119 = [nameCopy substringFromIndex:{objc_msgSend(@"documentContent/", "length")}];
    [(BRCClientZone *)self->_clientZone mangledID];
    v121 = v120 = nameCopy;
    v122 = [AppTelemetryTimeSeriesEvent newCorruptPackageDownloadEventWithZoneMangledID:v121 enhancedDrivePrivacyEnabled:[(BRCClientZone *)self->_clientZone enhancedDrivePrivacyEnabled] error:br_errorFromErrno itemIDString:v119];

    session = [(BRCClientZone *)self->_clientZone session];
    [session analyticsReporter];
    v125 = v124 = packageCopy;
    [v125 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v122];

    packageCopy = v124;
    nameCopy = v120;

    xattrsPackageCopy = v176;
    goto LABEL_123;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v177 = BRCOpenAt(0xFFFFFFFFLL, fileSystemRepresentation, 33028, v30, v31, v32, v33, v34, v152);
  if ((v177 & 0x80000000) != 0)
  {
    v78 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:*__error()];

    br_errorFromErrno = v78;
    goto LABEL_117;
  }

  if (!readerCopy)
  {
    v79 = nameCopy;
    v80 = brc_bread_crumbs();
    v81 = brc_default_log();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
    {
      [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
    }

    v82 = MEMORY[0x277CCA9B8];
    v83 = *MEMORY[0x277CFACB0];
    path = [lCopy path];
    v85 = [v82 br_errorWithDomain:v83 code:15 description:{@"unreachable: No reader to stage package at %s", objc_msgSend(path, "UTF8String")}];

    close(v177);
    br_errorFromErrno = v85;
    nameCopy = v79;
    goto LABEL_117;
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v35 = readerCopy;
  v169 = [v35 countByEnumeratingWithState:&v189 objects:v199 count:16];
  v162 = nameCopy;
  if (!v169)
  {
    v174 = 0;
    goto LABEL_69;
  }

  v174 = 0;
  v170 = *v190;
  v157 = packageCopy;
  v158 = v35;
  v171 = readerCopy;
  v156 = lCopy;
  while (2)
  {
    for (i = 0; i != v169; ++i)
    {
      if (*v190 != v170)
      {
        objc_enumerationMutation(v35);
      }

      v37 = *(*(&v189 + 1) + 8 * i);
      v38 = objc_autoreleasePoolPush();
      v188 = 512;
      v187 = xmmword_2241AC000;
      v185 = 0;
      v186 = 0;
      v184 = 0;
      if ([v37 type] == 4)
      {
        if (v174 >= itemCount)
        {
          v161 = v38;
          v90 = brc_bread_crumbs();
          v91 = brc_default_log();
          readerCopy = v171;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218754;
            v196 = v174;
            v197 = 2048;
            *v198 = itemCount;
            *&v198[8] = 2112;
            *&v198[10] = packageCopy;
            *&v198[18] = 2112;
            *&v198[20] = v90;
            _os_log_fault_impl(&dword_223E7A000, v91, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package has been corrupted on the serverAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x2Au);
          }

          v92 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Package has been corrupted on the serverAsking for asset index out of bounds %lu vs %lu in package: %@", v174, itemCount, packageCopy}];

          lCopy = v156;
          if ([(BRCClientZone *)self->_clientZone isPrivateZone])
          {
            asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            [(BRFieldPkgLocalItem *)asPrivateClientZone reportProblemWithType:9 recordName:nameCopy];
            br_errorFromErrno = v92;
            v35 = v158;
            v93 = v161;
            goto LABEL_115;
          }

          br_errorFromErrno = v92;
          v35 = v158;
          v93 = v161;
          goto LABEL_116;
        }

        ++v174;
        readerCopy = v171;
        goto LABEL_60;
      }

      v163 = br_errorFromErrno;
      v39 = v35;
      v40 = objc_alloc_init(BRFieldPkgLocalItem);
      path2 = [v37 path];
      fileSystemRepresentation2 = [path2 fileSystemRepresentation];
      v168 = path2;
      if (!path2)
      {
        v167 = v40;
        v52 = v38;
        v94 = brc_bread_crumbs();
        v95 = brc_default_log();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
        {
          [BRCPackageManifestWriter stagePackageWithReader:v94 package:v95 xattrsPackage:? stageItemURL:? existingContentsURL:? recordName:? isDocumentModifiedByOtherUser:?];
        }

LABEL_111:

        readerCopy = v171;
        lCopy = v156;
        nameCopy = v162;
        br_errorFromErrno = v163;
        goto LABEL_112;
      }

      v43 = fileSystemRepresentation2;
      if (!getattrlistat(v177, fileSystemRepresentation2, &v187, &v184, 0x18uLL, 0x21uLL))
      {
        v96 = v38;
        v97 = brc_bread_crumbs();
        v98 = brc_default_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          stageID = self->_stageID;
          *buf = 138412802;
          v196 = v168;
          v197 = 2112;
          *v198 = stageID;
          *&v198[8] = 2112;
          *&v198[10] = v97;
          _os_log_debug_impl(&dword_223E7A000, v98, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ already exists in stage for package %@%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v96);
        readerCopy = v171;
        xattrsPackageCopy = v176;
        lCopy = v156;
        v35 = v158;
        br_errorFromErrno = v163;
        goto LABEL_69;
      }

      type = [v37 type];
      if (type != 3)
      {
        if (type != 2)
        {
          if (type == 1)
          {
            v35 = v39;
            asPrivateClientZone = v40;
            if (mkdirat(v177, v43, ~stageInPackageDirectoryUmask & 0x1FF) && *__error() != 17)
            {
              v167 = v40;
              v52 = v38;
              br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];

              v133 = brc_bread_crumbs();
              v134 = brc_default_log();
              if (os_log_type_enabled(v134, 0x90u))
              {
                v148 = self->_stageID;
                *buf = 138412802;
                v196 = v168;
                v197 = 2112;
                *v198 = v148;
                *&v198[8] = 2112;
                *&v198[10] = v133;
                _os_log_error_impl(&dword_223E7A000, v134, 0x90u, "[ERROR] Failed to mkdir %@ for package %@%@", buf, 0x20u);
              }

              goto LABEL_143;
            }

            [(BRCPackageManifestWriter *)self _applyDirectoryMetadataWithManifestItem:v37 packageRootFD:v177];
            goto LABEL_35;
          }

          v167 = v40;
          v52 = v38;
          v94 = brc_bread_crumbs();
          v95 = brc_default_log();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          goto LABEL_111;
        }

        v159 = v38;
        if (v174 >= itemCount)
        {
          v128 = brc_bread_crumbs();
          v129 = brc_default_log();
          nameCopy = v162;
          asPrivateClientZone = v40;
          if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218754;
            v196 = v174;
            v197 = 2048;
            *v198 = itemCount;
            *&v198[8] = 2112;
            *&v198[10] = packageCopy;
            *&v198[18] = 2112;
            *&v198[20] = v128;
            _os_log_fault_impl(&dword_223E7A000, v129, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package has been corrupted in the cloudAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x2Au);
          }

          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Package has been corrupted in the cloudAsking for asset index out of bounds %lu vs %lu in package: %@", v174, itemCount, packageCopy}];

          readerCopy = v171;
          lCopy = v156;
          if ([(BRCClientZone *)self->_clientZone isPrivateZone])
          {
            asPrivateClientZone2 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            [asPrivateClientZone2 reportProblemWithType:9 recordName:v162];
          }

          goto LABEL_150;
        }

        v35 = v39;
        v183 = v163;
        v46 = [packageCopy itemAtIndex:? error:?];
        v166 = v183;

        asPrivateClientZone = v40;
        if (!v46)
        {
          br_errorFromErrno = v166;
          readerCopy = v171;
          lCopy = v156;
          v93 = v159;
          nameCopy = v162;
          if (v166)
          {
            goto LABEL_114;
          }

          v131 = brc_bread_crumbs();
          v132 = brc_default_log();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't find item at index %ld", v174}];
LABEL_150:
          v35 = v158;
          v93 = v159;
          goto LABEL_114;
        }

        fileURL = [v46 fileURL];
        path3 = [fileURL path];

        if (path3)
        {
          v164 = path3;
          if (!BRCRenameAt(-1, path3, v177, v168, 0))
          {
            v49 = packageCopy;
            v50 = brc_bread_crumbs();
            v51 = brc_default_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v77 = self->_stageID;
              *buf = 138413058;
              v196 = v164;
              v197 = 2112;
              *v198 = v168;
              *&v198[8] = 2112;
              *&v198[10] = v77;
              *&v198[18] = 2112;
              *&v198[20] = v50;
              _os_log_debug_impl(&dword_223E7A000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] staged from %@ to %@ in %@%@", buf, 0x2Au);
            }

            [(BRCPackageManifestWriter *)self _applyFileMetadataWithManifestItem:v37 isDocumentModifiedByOtherUser:user packageRootFD:v177];
            packageCopy = v49;
            path3 = v164;
            goto LABEL_40;
          }

          v135 = asPrivateClientZone;
          v136 = *__error();
          v137 = brc_bread_crumbs();
          v138 = brc_default_log();
          if (os_log_type_enabled(v138, 0x90u))
          {
            *buf = 138413314;
            v196 = v164;
            v197 = 1024;
            *v198 = v177;
            *&v198[4] = 2112;
            *&v198[6] = v168;
            *&v198[14] = 1024;
            *&v198[16] = v136;
            *&v198[20] = 2112;
            *&v198[22] = v137;
            _os_log_error_impl(&dword_223E7A000, v138, 0x90u, "[ERROR] renameat(-1, %@, %d, %@) %{errno}d%@", buf, 0x2Cu);
          }

          *__error() = v136;
          [MEMORY[0x277CCA9B8] br_errorFromErrno];
          v166 = v139 = v166;
          readerCopy = v171;
          lCopy = v156;
          asPrivateClientZone = v135;
          path3 = v164;
        }

        else
        {
          if ((v172 & 0x80000000) == 0)
          {
            if ([BRCPackageManifestWriter _stageExistingPackageItem:"_stageExistingPackageItem:withLiveFd:stageFd:isDocumentModifiedByOtherUser:" withLiveFd:v37 stageFd:? isDocumentModifiedByOtherUser:?])
            {
LABEL_40:
              ++v174;
              signature = [v46 signature];
              [v37 setSignature:signature];

              br_errorFromErrno = v166;
              v35 = v158;
              v38 = v159;
              goto LABEL_41;
            }

            readerCopy = v171;
            lCopy = v156;
            goto LABEL_149;
          }

          v139 = brc_bread_crumbs();
          v143 = brc_default_log();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          readerCopy = v171;
          lCopy = v156;
        }

LABEL_149:
        nameCopy = v162;

        br_errorFromErrno = v166;
        goto LABEL_150;
      }

      v167 = v40;
      v52 = v38;
      symlinkContent = [v37 symlinkContent];
      v54 = symlinkat([symlinkContent fileSystemRepresentation], v177, v43);

      if (v54 < 0)
      {
        br_errorFromErrno = v163;
        if (*__error() == 17)
        {
          v38 = v52;
          v35 = v158;
          asPrivateClientZone = v167;
          goto LABEL_41;
        }

        br_errorFromErrno2 = [MEMORY[0x277CCA9B8] br_errorFromErrno];

        v141 = brc_bread_crumbs();
        v142 = brc_default_log();
        if (os_log_type_enabled(v142, 0x90u))
        {
          [v37 symlinkContent];
          v150 = v149 = packageCopy;
          v151 = self->_stageID;
          *buf = 138413058;
          v196 = v168;
          v197 = 2112;
          *v198 = v150;
          *&v198[8] = 2112;
          *&v198[10] = v151;
          *&v198[18] = 2112;
          *&v198[20] = v141;
          _os_log_error_impl(&dword_223E7A000, v142, 0x90u, "[ERROR] Failed to create symlink %@ -> %@ for package %@%@", buf, 0x2Au);

          packageCopy = v149;
        }

        br_errorFromErrno = br_errorFromErrno2;
LABEL_143:
        readerCopy = v171;
        lCopy = v156;
        nameCopy = v162;
LABEL_112:
        v35 = v158;
        v93 = v52;
        goto LABEL_113;
      }

      v35 = v158;
      v38 = v52;
      asPrivateClientZone = v40;
LABEL_35:
      br_errorFromErrno = v163;
LABEL_41:
      if ([v37 hasXattrIndex])
      {
        v167 = asPrivateClientZone;
        v160 = v38;
        if ([v37 xattrIndex] < 0 || (v56 = objc_msgSend(v37, "xattrIndex"), v56 >= objc_msgSend(v176, "itemCount")))
        {
          v99 = brc_bread_crumbs();
          v100 = brc_default_log();
          lCopy = v156;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
          {
            xattrIndex = [v37 xattrIndex];
            itemCount2 = [v176 itemCount];
            *buf = 134218498;
            v196 = xattrIndex;
            v197 = 2048;
            *v198 = itemCount2;
            *&v198[8] = 2112;
            *&v198[10] = v99;
            _os_log_fault_impl(&dword_223E7A000, v100, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: xattr index is out of bounds %ld of total %ld%@", buf, 0x20u);
          }

          v101 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: xattr index is out of bounds %ld of total %ld", objc_msgSend(v37, "xattrIndex"), objc_msgSend(v176, "itemCount")}];

          br_errorFromErrno = v101;
          readerCopy = v171;
          goto LABEL_88;
        }

        xattrIndex2 = [v37 xattrIndex];
        v182 = br_errorFromErrno;
        v58 = [v176 itemAtIndex:xattrIndex2 error:&v182];
        v59 = v182;

        if (v59)
        {

          br_errorFromErrno = v59;
          readerCopy = v171;
          lCopy = v156;
          nameCopy = v162;
          goto LABEL_105;
        }

        if (!v58)
        {
          v108 = brc_bread_crumbs();
          v109 = brc_default_log();
          lCopy = v156;
          nameCopy = v162;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't find xattr at index %ld", objc_msgSend(v37, "xattrIndex")}];
          readerCopy = v171;
          goto LABEL_104;
        }

        v60 = MEMORY[0x277CBEA90];
        fileURL2 = [v58 fileURL];
        v181 = 0;
        v62 = [v60 dataWithContentsOfURL:fileURL2 options:0 error:&v181];
        br_errorFromErrno = v181;

        fileURL3 = [v58 fileURL];

        if (fileURL3)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          fileURL4 = [v58 fileURL];
          [defaultManager2 removeItemAtURL:fileURL4 error:0];
        }

        v165 = v58;
        if (!v62 || br_errorFromErrno)
        {
          v110 = v62;
          if (!br_errorFromErrno)
          {
            br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Can't load xattr"];
          }

          v111 = brc_bread_crumbs();
          v112 = brc_default_log();
          readerCopy = v171;
          lCopy = v156;
          packageCopy = v157;
          nameCopy = v162;
          if (os_log_type_enabled(v112, 0x90u))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

LABEL_103:
LABEL_104:
          v35 = v158;
LABEL_105:
          v93 = v160;
LABEL_113:
          asPrivateClientZone = v167;
LABEL_114:

          goto LABEL_115;
        }

        v71 = BRCOpenAt(v177, v43, 33028, v64, v65, v66, v67, v68, v153);
        if ((v71 & 0x80000000) != 0)
        {
          v110 = v62;
          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
          readerCopy = v171;
          lCopy = v156;
          packageCopy = v157;
          nameCopy = v162;
          goto LABEL_103;
        }

        v72 = v71;
        v73 = [[BRFieldXattrBlob alloc] initWithData:v62];
        v180 = 0;
        v74 = [(BRFieldXattrBlob *)v73 applyToFileDescriptor:v72 error:&v180];
        br_errorFromErrno = v180;
        if (!v74)
        {
          v115 = brc_bread_crumbs();
          v116 = brc_default_log();
          if (os_log_type_enabled(v116, 0x90u))
          {
            *buf = 138412546;
            v196 = br_errorFromErrno;
            v197 = 2112;
            *v198 = v115;
            _os_log_error_impl(&dword_223E7A000, v116, 0x90u, "[ERROR] Failed to apply xattrs to file descriptor: %@%@", buf, 0x16u);
          }

          close(v72);
          readerCopy = v171;
          lCopy = v156;
          packageCopy = v157;
          v93 = v160;
          nameCopy = v162;
          v35 = v158;
          asPrivateClientZone = v167;
LABEL_115:

LABEL_116:
          objc_autoreleasePoolPop(v93);

          close(v177);
          goto LABEL_117;
        }

        close(v72);
        [(BRFieldPkgLocalItem *)v167 setXattrs:v62];
        v75 = brc_bread_crumbs();
        v76 = brc_default_log();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          shortDescription = [(BRFieldXattrBlob *)v73 shortDescription];
          path4 = [v37 path];
          *buf = 138412802;
          v196 = shortDescription;
          v197 = 2112;
          *v198 = path4;
          *&v198[8] = 2112;
          *&v198[10] = v75;
          _os_log_debug_impl(&dword_223E7A000, v76, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully applied xattrs %@ to package item %@%@", buf, 0x20u);
        }

        packageCopy = v157;
        v35 = v158;
        v38 = v160;
        asPrivateClientZone = v167;
      }

      if (getattrlistat(v177, v43, &v187, &v184, 0x18uLL, 0x21uLL))
      {
        v167 = asPrivateClientZone;
        v160 = v38;
        br_errorFromErrno3 = [MEMORY[0x277CCA9B8] br_errorFromErrno];

        v103 = *__error();
        v104 = brc_bread_crumbs();
        v105 = brc_default_log();
        readerCopy = v171;
        if (os_log_type_enabled(v105, 0x90u))
        {
          v147 = self->_stageID;
          *buf = 138413058;
          v196 = v168;
          v197 = 2112;
          *v198 = v147;
          *&v198[8] = 1024;
          *&v198[10] = v103;
          *&v198[14] = 2112;
          *&v198[16] = v104;
          _os_log_error_impl(&dword_223E7A000, v105, 0x90u, "[ERROR] unable to stat %@ for package %@ %{errno}d%@", buf, 0x26u);
        }

        *__error() = v103;
        br_errorFromErrno = br_errorFromErrno3;
        lCopy = v156;
LABEL_88:
        nameCopy = v162;
        goto LABEL_104;
      }

      [(BRFieldPkgLocalItem *)asPrivateClientZone setItem:v37];
      [(BRFieldPkgLocalItem *)asPrivateClientZone setFileID:v185];
      if ([v37 type] == 2)
      {
        [(BRFieldPkgLocalItem *)asPrivateClientZone setGenerationID:HIDWORD(v184)];
        [(BRFieldPkgLocalItem *)asPrivateClientZone setSize:v186];
      }

      readerCopy = v171;
      nameCopy = v162;
      if (![(BRCPackageManifestWriter *)self addLocalItem:asPrivateClientZone])
      {
        v167 = asPrivateClientZone;
        v52 = v38;
        v106 = brc_bread_crumbs();
        v107 = brc_default_log();
        if (os_log_type_enabled(v107, 0x90u))
        {
          [BRCPackageManifestWriter stagePackageWithReader:? package:? xattrsPackage:? stageItemURL:? existingContentsURL:? recordName:? isDocumentModifiedByOtherUser:?];
        }

        lCopy = v156;
        goto LABEL_112;
      }

LABEL_60:
      objc_autoreleasePoolPop(v38);
    }

    xattrsPackageCopy = v176;
    lCopy = v156;
    v169 = [v35 countByEnumeratingWithState:&v189 objects:v199 count:16];
    if (v169)
    {
      continue;
    }

    break;
  }

LABEL_69:

  v179 = br_errorFromErrno;
  [(BRCPackageManifestWriter *)self _cloneExcludedFromSyncItemsFromExistingContentsURL:v178 toStageItemURL:lCopy error:&v179];
  v86 = v179;

  brc_bread_crumbs();
  v88 = v87 = v35;
  v89 = brc_default_log();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    [lCopy path];
    v114 = v113 = packageCopy;
    *buf = 138413058;
    v196 = v114;
    v197 = 2048;
    *v198 = itemCount;
    *&v198[8] = 2048;
    *&v198[10] = v174;
    *&v198[18] = 2112;
    *&v198[20] = v88;
    _os_log_debug_impl(&dword_223E7A000, v89, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished staging package for %@. Item count:%lu.  Asset index:%lu%@", buf, 0x2Au);

    packageCopy = v113;
    xattrsPackageCopy = v176;
  }

  br_errorFromErrno = [v87 error];

  close(v177);
  nameCopy = v162;
  if (br_errorFromErrno)
  {
    goto LABEL_117;
  }

LABEL_123:
  done = [(BRCPackageManifestWriter *)self done];
LABEL_124:

  rLCopy = v178;
LABEL_125:

  v126 = *MEMORY[0x277D85DE8];
  return done;
}

- (void)addItem:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_applyFileMetadataWithManifestItem:isDocumentModifiedByOtherUser:packageRootFD:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_stageExistingPackageItem:(uint64_t)a1 withLiveFd:(NSObject *)a2 stageFd:isDocumentModifiedByOtherUser:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: we should have downloaded this file if there is nothing live%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:(uint64_t *)a1 package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.5()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  [v0 xattrIndex];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.6()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  [v0 type];
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:(uint64_t)a1 package:(NSObject *)a2 xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.7(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: relpath should always exist%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.8()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end