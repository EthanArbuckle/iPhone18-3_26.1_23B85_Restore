@interface InstallEBookDownloadOperation
+ (id)sharedBookContainerCachesPath;
+ (id)sharedBookContainerPath;
- (BOOL)_installMediaAsset:(id)asset assetInstalledPath:(id *)path fileName:(id *)name drmPath:(id *)drmPath error:(id *)error;
- (id)_bookManifest;
- (id)_existingManifestEntry;
- (id)_newManifestEntry:(BOOL)entry withFileName:(id)name;
- (id)_storeFrontIdentifier;
- (id)_syncedBooksPath;
- (void)_addPurchaseManifestItem:(BOOL)item;
- (void)_removeDuplicateEntry:(id)entry;
- (void)run;
@end

@implementation InstallEBookDownloadOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  download = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [download databaseID]);
  v145 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:?];
  mediaAsset = [download mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  v6 = +[ApplicationWorkspace defaultWorkspace];
  isMultiUser = [v6 isMultiUser];
  if (isMultiUser)
  {
    LOBYTE(isMultiUser) = [download isSharedDownload];
  }

  self->_isSharedDownload = isMultiUser;

  v140 = mediaAsset;
  v8 = &CFDictionaryGetValue_ptr;
  v141 = v3;
  if (!self->_isSharedDownload)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = v21;
      v154 = 138412546;
      v155 = v21;
      v156 = 2048;
      downloadID = [(DownloadHandle *)v145 downloadID];
      LODWORD(v129) = 22;
      v128 = &v154;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_18:

        v24 = 0;
        goto LABEL_64;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4, &v154, v129];
      free(v23);
      v128 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v9 = +[EBookManifest sharedPurchasedBookManifest];
  storeMetadata = [download storeMetadata];
  v10 = [storeMetadata valueForMetadataKey:SSDownloadMetadataKeyPublicationVersion];
  download2 = [(FinishDownloadStepOperation *)self download];
  storeItemIdentifier = [download2 storeItemIdentifier];

  download3 = [(FinishDownloadStepOperation *)self download];
  downloadPermalink = [download3 downloadPermalink];

  v135 = v10;
  if ([download isStoreDownload])
  {
    v15 = [v9 bookPathForAdamID:storeItemIdentifier withPublicationVersion:v10];
LABEL_21:
    v25 = *(&self->_isSharedDownload + 5);
    *(&self->_isSharedDownload + 5) = v15;

    goto LABEL_22;
  }

  if ([downloadPermalink length])
  {
    v15 = [v9 bookPathPermalink:downloadPermalink];
    goto LABEL_21;
  }

LABEL_22:
  v133 = *(&self->_isSharedDownload + 5);
  v143 = v9;
  if (v133)
  {
    _bookManifest = [(InstallEBookDownloadOperation *)self _bookManifest];
    manifestPath = [_bookManifest manifestPath];
    stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];
    v142 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:*(&self->_isSharedDownload + 5)];

    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v31 = shouldLog2 | 2;
    }

    else
    {
      v31 = shouldLog2;
    }

    oSLogObject2 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 & 2;
    }

    if (v33)
    {
      v34 = objc_opt_class();
      v35 = downloadPermalink;
      v36 = storeItemIdentifier;
      v37 = v34;
      v154 = 138412546;
      v155 = v34;
      v156 = 2048;
      downloadID = [(DownloadHandle *)v145 downloadID];
      LODWORD(v129) = 22;
      v128 = &v154;
      v38 = _os_log_send_and_compose_impl();

      storeItemIdentifier = v36;
      downloadPermalink = v35;

      if (v38)
      {
        v129 = [NSString stringWithCString:v38 encoding:4, &v154, v129];
        free(v38);
        v128 = v129;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  else
  {
    _bookManifest = +[SSLogConfig sharedDaemonConfig];
    if (!_bookManifest)
    {
      _bookManifest = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [_bookManifest shouldLog];
    if ([_bookManifest shouldLogToDisk])
    {
      v41 = shouldLog3 | 2;
    }

    else
    {
      v41 = shouldLog3;
    }

    oSLogObject3 = [_bookManifest OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v43 = v41;
    }

    else
    {
      v43 = v41 & 2;
    }

    if (v43)
    {
      v131 = storeItemIdentifier;
      v44 = objc_opt_class();
      v45 = v44;
      v154 = 138412546;
      v155 = v44;
      v156 = 2048;
      downloadID = [(DownloadHandle *)v145 downloadID];
      LODWORD(v129) = 22;
      v128 = &v154;
      v46 = _os_log_send_and_compose_impl();

      if (v46)
      {
        v1292 = [NSString stringWithCString:v46 encoding:4, &v154, v129];
        free(v46);
        v128 = v1292;
        SSFileLog();
      }

      v142 = 0;
      storeItemIdentifier = v131;
    }

    else
    {

      v142 = 0;
    }
  }

  v48 = +[SSLogConfig sharedDaemonConfig];
  if (!v48)
  {
    v48 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v48 shouldLog];
  if ([v48 shouldLogToDisk])
  {
    v50 = shouldLog4 | 2;
  }

  else
  {
    v50 = shouldLog4;
  }

  oSLogObject4 = [v48 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
  {
    v52 = v50;
  }

  else
  {
    v52 = v50 & 2;
  }

  if (!v52)
  {
    v59 = v135;
    goto LABEL_60;
  }

  v53 = objc_opt_class();
  v54 = downloadPermalink;
  v55 = storeItemIdentifier;
  v56 = v53;
  v57 = +[InstallEBookDownloadOperation sharedBookContainerPath];
  v154 = 138412546;
  v155 = v53;
  v156 = 2112;
  downloadID = v57;
  LODWORD(v129) = 22;
  v128 = &v154;
  v58 = _os_log_send_and_compose_impl();

  storeItemIdentifier = v55;
  downloadPermalink = v54;

  v59 = v135;
  if (v58)
  {
    oSLogObject4 = [NSString stringWithCString:v58 encoding:4, &v154, v129];
    free(v58);
    v128 = oSLogObject4;
    SSFileLog();
LABEL_60:
  }

  if (v133)
  {
    v144 = 0;
    v60 = 0;
    v136 = 0;
    v61 = 1;
    mediaAsset = v140;
    v8 = &CFDictionaryGetValue_ptr;
    goto LABEL_82;
  }

  mediaAsset = v140;
  v8 = &CFDictionaryGetValue_ptr;
  v24 = v142;
LABEL_64:
  v153 = 0;
  v151 = v24;
  v152 = 0;
  v150 = 0;
  v128 = [(InstallEBookDownloadOperation *)self _installMediaAsset:mediaAsset assetInstalledPath:&v153 fileName:&v152 drmPath:&v151 error:&v150, v128];
  v60 = v153;
  v144 = v152;
  v63 = v151;

  v64 = v150;
  v65 = v64;
  if (v128)
  {
    v136 = v64;
    v142 = v63;
    v66 = objc_alloc_init(NSFileManager);
    LOBYTE(v154) = 0;
    [v66 fileExistsAtPath:v60 isDirectory:&v154];
    v67 = [download secondaryAssetForType:SSDownloadAssetTypeArtwork];
    if (v67 && [(FinishDownloadStepOperation *)self downloadAsset:v67 error:0])
    {
      if (v154 == 1)
      {
        v68 = [v60 stringByAppendingPathComponent:@"iTunesArtwork"];
      }

      else
      {
        destinationFileName = [v67 destinationFileName];
        pathExtension = [destinationFileName pathExtension];

        [v60 stringByDeletingPathExtension];
        v73 = v72 = v60;
        v68 = [v73 stringByAppendingPathExtension:pathExtension];

        v60 = v72;
      }

      v149 = v68;
      [(FinishDownloadStepOperation *)self moveAsset:v67 toPath:&v149 installBehavior:0 error:0];
      v74 = v149;
    }

    _bookManifest2 = [(InstallEBookDownloadOperation *)self _bookManifest];
    v76 = +[EBookManifest purchasedBookManifest];

    if (_bookManifest2 == v76)
    {
      newITunesMetadataDictionary = [download newITunesMetadataDictionary];
      if (newITunesMetadataDictionary)
      {
        if (v154 == 1)
        {
          v78 = [v60 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
        }

        else
        {
          [v60 stringByDeletingPathExtension];
          v80 = v79 = v60;
          v78 = [v80 stringByAppendingPathExtension:@"plist"];

          v60 = v79;
        }

        [(FinishDownloadStepOperation *)self writeBinaryPropertyList:newITunesMetadataDictionary toPath:v78 error:0];
      }
    }

    v61 = 0;
LABEL_82:
    storeMetadata2 = [download storeMetadata];
    epubRightsData = [storeMetadata2 epubRightsData];

    v138 = v60;
    if (![epubRightsData length])
    {
      goto LABEL_112;
    }

    v132 = v61;
    v83 = [v142 stringByAppendingPathComponent:@"META-INF"];
    v134 = [v83 stringByAppendingPathComponent:@"sinf.xml"];
    sharedDaemonConfig = [v8[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v8[412] sharedConfig];
    }

    shouldLog5 = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      v86 = shouldLog5 | 2;
    }

    else
    {
      v86 = shouldLog5;
    }

    oSLogObject5 = [sharedDaemonConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v88 = v86;
    }

    else
    {
      v88 = v86 & 2;
    }

    if (v88)
    {
      v89 = objc_opt_class();
      v90 = v89;
      databaseID = [download databaseID];
      v154 = 138412802;
      v155 = v89;
      v156 = 2048;
      downloadID = databaseID;
      v158 = 2112;
      v159 = v83;
      LODWORD(v129) = 32;
      v128 = &v154;
      v92 = _os_log_send_and_compose_impl();

      v8 = &CFDictionaryGetValue_ptr;
      if (!v92)
      {
        goto LABEL_95;
      }

      oSLogObject5 = [NSString stringWithCString:v92 encoding:4, &v154, v129];
      free(v92);
      v128 = oSLogObject5;
      SSFileLog();
    }

LABEL_95:
    v93 = objc_alloc_init(NSFileManager);
    LOBYTE(v146) = 0;
    [v93 fileExistsAtPath:v83 isDirectory:&v146];
    if ((v146 & 1) != 0 || (v148 = 0, [v93 createDirectoryAtPath:v83 withIntermediateDirectories:1 attributes:0 error:&v148], (v94 = v148) == 0))
    {
      v147 = 0;
      [epubRightsData writeToFile:v134 options:1 error:{&v147, v128}];
      v94 = v147;
      v60 = v138;
      if (!v94)
      {
        goto LABEL_111;
      }
    }

    v95 = v94;
    sharedDaemonConfig2 = [v8[412] sharedDaemonConfig];
    if (!sharedDaemonConfig2)
    {
      sharedDaemonConfig2 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [sharedDaemonConfig2 shouldLog];
    if ([sharedDaemonConfig2 shouldLogToDisk])
    {
      v98 = shouldLog6 | 2;
    }

    else
    {
      v98 = shouldLog6;
    }

    oSLogObject6 = [sharedDaemonConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v100 = v98;
    }

    else
    {
      v100 = v98 & 2;
    }

    selfCopy = self;
    if (v100)
    {
      v101 = v83;
      v102 = epubRightsData;
      v103 = objc_opt_class();
      v104 = v103;
      databaseID2 = [download databaseID];
      v154 = 138413058;
      v155 = v103;
      epubRightsData = v102;
      v83 = v101;
      v156 = 2048;
      downloadID = databaseID2;
      v158 = 2112;
      v159 = v101;
      v160 = 2112;
      v161 = v95;
      LODWORD(v129) = 42;
      v128 = &v154;
      v106 = _os_log_send_and_compose_impl();

      if (!v106)
      {
LABEL_110:

        v8 = &CFDictionaryGetValue_ptr;
        v60 = v138;
        self = selfCopy;
LABEL_111:

        mediaAsset = v140;
        v61 = v132;
LABEL_112:
        if (v61 & 1 | !self->_isSharedDownload)
        {
          [(InstallEBookDownloadOperation *)self _addPurchaseManifestItem:v61];
          v69 = v141;
          v63 = v142;
          v65 = v136;
LABEL_143:

          [(FinishDownloadResponse *)v69 setMediaAssetInstallPath:v60];
          goto LABEL_144;
        }

        v139 = epubRightsData;
        v146 = 1;
        v107 = [@"Library" stringByAppendingPathComponent:v144];
        v108 = [@"Library" stringByAppendingPathComponent:@"Caches"];
        v109 = [v108 stringByAppendingPathComponent:@"Staging"];
        v110 = [v109 stringByAppendingPathComponent:v144];

        [v110 UTF8String];
        [v107 UTF8String];
        v111 = container_stage_shared_system_content();
        sharedDaemonConfig3 = [v8[412] sharedDaemonConfig];
        sharedConfig = sharedDaemonConfig3;
        if (v111)
        {
          v114 = mediaAsset;
          if (!sharedDaemonConfig3)
          {
            sharedConfig = +[SSLogConfig sharedConfig];
          }

          shouldLog7 = [sharedConfig shouldLog];
          if ([sharedConfig shouldLogToDisk])
          {
            shouldLog7 |= 2u;
          }

          oSLogObject7 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
          {
            v117 = shouldLog7;
          }

          else
          {
            v117 = shouldLog7 & 2;
          }

          if (v117)
          {
            v118 = objc_opt_class();
            v154 = 138412546;
            v155 = v118;
            v156 = 2080;
            downloadID = v111;
            v119 = v118;
            LODWORD(v129) = 22;
            v128 = &v154;
            v120 = _os_log_send_and_compose_impl();

            if (!v120)
            {
LABEL_126:

              v60 = [[NSString alloc] initWithCString:v111 encoding:4];
              free(v111);
              mediaAsset = v114;
              v65 = v136;
LABEL_140:
              v69 = v141;
              if (!v65)
              {
                [(InstallEBookDownloadOperation *)self _addPurchaseManifestItem:0];
              }

              v63 = v142;
              epubRightsData = v139;
              goto LABEL_143;
            }

            oSLogObject7 = [NSString stringWithCString:v120 encoding:4, &v154, v129];
            free(v120);
            v128 = oSLogObject7;
            SSFileLog();
          }

          goto LABEL_126;
        }

        if (!sharedDaemonConfig3)
        {
          sharedConfig = [v8[412] sharedConfig];
        }

        shouldLog8 = [sharedConfig shouldLog];
        if ([sharedConfig shouldLogToDisk])
        {
          shouldLog8 |= 2u;
        }

        oSLogObject8 = [sharedConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
        {
          v123 = shouldLog8;
        }

        else
        {
          v123 = shouldLog8 & 2;
        }

        if (v123)
        {
          v124 = objc_opt_class();
          v154 = 138412546;
          v155 = v124;
          v156 = 2048;
          downloadID = v146;
          v125 = v124;
          LODWORD(v129) = 22;
          v128 = &v154;
          v126 = _os_log_send_and_compose_impl();

          v127 = v136;
          if (!v126)
          {
LABEL_139:

            v65 = SSError();

            v60 = v138;
            goto LABEL_140;
          }

          oSLogObject8 = [NSString stringWithCString:v126 encoding:4, &v154, v129];
          free(v126);
          v128 = oSLogObject8;
          SSFileLog();
        }

        else
        {
          v127 = v136;
        }

        goto LABEL_139;
      }

      oSLogObject6 = [NSString stringWithCString:v106 encoding:4, &v154, v129];
      free(v106);
      v128 = oSLogObject6;
      SSFileLog();
    }

    goto LABEL_110;
  }

  v69 = v141;
  [(FinishDownloadResponse *)v141 setError:v64];
  [(FinishDownloadResponse *)v141 setResult:0];
LABEL_144:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v69, v128];
}

+ (id)sharedBookContainerCachesPath
{
  [@"systemgroup.com.apple.media.shared.books" UTF8String];
  v2 = container_system_group_path_for_identifier();
  v3 = +[SSLogConfig sharedDaemonConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v21 = 136315138;
      v22 = v2;
      LODWORD(v20) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_14:

        v10 = [NSString stringWithUTF8String:v2];
        v11 = [v10 stringByAppendingPathComponent:@"Library"];
        v12 = [v11 stringByAppendingPathComponent:@"Caches"];
        v13 = [v12 stringByAppendingPathComponent:@"Staging"];

        free(v2);
        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v9 encoding:4, &v21, v20];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v15 = shouldLog2 | 2;
  }

  else
  {
    v15 = shouldLog2;
  }

  oSLogObject2 = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 & 2;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v21 = 134217984;
  v22 = 1;
  LODWORD(v20) = 12;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    oSLogObject2 = [NSString stringWithCString:v18 encoding:4, &v21, v20];
    free(v18);
    SSFileLog();
LABEL_26:
  }

  v13 = 0;
LABEL_28:

  return v13;
}

+ (id)sharedBookContainerPath
{
  [@"systemgroup.com.apple.media.shared.books" UTF8String];
  v2 = container_system_group_path_for_identifier();
  v3 = +[SSLogConfig sharedDaemonConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v19 = 136315138;
      v20 = v2;
      LODWORD(v18) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_14:

        v10 = [NSString stringWithUTF8String:v2];
        v11 = [v10 stringByAppendingPathComponent:@"Library"];

        free(v2);
        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v9 encoding:4, &v19, v18];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v13 = shouldLog2 | 2;
  }

  else
  {
    v13 = shouldLog2;
  }

  oSLogObject2 = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (!v15)
  {
    goto LABEL_26;
  }

  v19 = 134217984;
  v20 = 1;
  LODWORD(v18) = 12;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    oSLogObject2 = [NSString stringWithCString:v16 encoding:4, &v19, v18];
    free(v16);
    SSFileLog();
LABEL_26:
  }

  v11 = 0;
LABEL_28:

  return v11;
}

- (void)_addPurchaseManifestItem:(BOOL)item
{
  itemCopy = item;
  _bookManifest = [(InstallEBookDownloadOperation *)self _bookManifest];
  download = [(FinishDownloadStepOperation *)self download];
  isSharedDownload = self->_isSharedDownload;
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (!isSharedDownload)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 = shouldLog;
    }

    else
    {
      v20 = shouldLog & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = v21;
      manifestPath = [_bookManifest manifestPath];
      v45 = 138412546;
      v46 = v21;
      v47 = 2112;
      v48 = manifestPath;
      LODWORD(v43) = 22;
      v42 = &v45;
      v24 = _os_log_send_and_compose_impl();

      if (v24)
      {
        v25 = [NSString stringWithCString:v24 encoding:4, &v45, v43];
        free(v24);
        v42 = v25;
        SSFileLog();
      }
    }

    else
    {
    }

    mediaAsset = [download mediaAsset];
    destinationFileName = [mediaAsset destinationFileName];

    v38 = [_bookManifest manifestEntriesWithProperty:@"Path" equalToValue:destinationFileName limitCount:1];
    if ([v38 count])
    {
      goto LABEL_47;
    }

    _existingManifestEntry = [(InstallEBookDownloadOperation *)self _existingManifestEntry];
    v37 = _existingManifestEntry;
    if (_existingManifestEntry)
    {
      [_existingManifestEntry setObject:destinationFileName forKey:@"Path"];
    }

    else
    {
      v41 = [(InstallEBookDownloadOperation *)self _newManifestEntry:0];
      [_bookManifest addManifestEntry:v41];
    }

    v27 = _bookManifest;
LABEL_46:
    [v27 synchronizeData];

LABEL_47:
    goto LABEL_48;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v44 = download;
  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v13 = objc_opt_class();
    v14 = v13;
    manifestPath2 = [_bookManifest manifestPath];
    v45 = 138412546;
    v46 = v13;
    v47 = 2112;
    v48 = manifestPath2;
    LODWORD(v43) = 22;
    v42 = &v45;
    v16 = _os_log_send_and_compose_impl();

    if (!v16)
    {
      goto LABEL_13;
    }

    oSLogObject2 = [NSString stringWithCString:v16 encoding:4, &v45, v43];
    free(v16);
    v42 = oSLogObject2;
    SSFileLog();
  }

LABEL_13:
  [(InstallEBookDownloadOperation *)self _removeDuplicateEntry:_bookManifest];
  if (itemCopy)
  {
    v17 = *(&self->_isSharedDownload + 5);
  }

  else
  {
    v17 = 0;
  }

  download = v44;
  destinationFileName = [(InstallEBookDownloadOperation *)self _newManifestEntry:v17, v42];
  [_bookManifest addManifestEntry:destinationFileName];
  [_bookManifest synchronizeData];
  if (!itemCopy)
  {
    v27 = +[EBookManifest sharedPurchasedBookManifest];
    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = shouldLog3 | 2;
    }

    else
    {
      v30 = shouldLog3;
    }

    oSLogObject3 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v32 = v30;
    }

    else
    {
      v32 = v30 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      v34 = v33;
      manifestPath3 = [v27 manifestPath];
      v45 = 138412546;
      v46 = v33;
      download = v44;
      v47 = 2112;
      v48 = manifestPath3;
      LODWORD(v43) = 22;
      v42 = &v45;
      v36 = _os_log_send_and_compose_impl();

      if (!v36)
      {
LABEL_39:

        [(InstallEBookDownloadOperation *)self _removeDuplicateEntry:v27];
        v37 = [(InstallEBookDownloadOperation *)self _newManifestEntry:1 withFileName:0];
        [v27 addManifestEntry:v37];
        v38 = v27;
        goto LABEL_46;
      }

      oSLogObject3 = [NSString stringWithCString:v36 encoding:4, &v45, v43];
      free(v36);
      v42 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_39;
  }

LABEL_48:
}

- (id)_bookManifest
{
  v3 = +[EBookManifest purchasedBookManifest];
  v4 = +[EBookManifest syncedBookManifest];
  download = [(FinishDownloadStepOperation *)self download];
  libraryItemIdentifier = [download libraryItemIdentifier];
  if (libraryItemIdentifier)
  {
    v7 = [v4 manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];
    if ([v7 count] == 1)
    {
      v8 = v4;
      goto LABEL_6;
    }

    v9 = [v3 manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];

    if ([v9 count] == 1)
    {
      v8 = v3;
      v7 = v9;
LABEL_6:
      v10 = v8;

      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  mediaAsset = [download mediaAsset];
  localPath = [mediaAsset localPath];

  _syncedBooksPath = [(InstallEBookDownloadOperation *)self _syncedBooksPath];
  LODWORD(mediaAsset) = [localPath hasPrefix:_syncedBooksPath];

  if (mediaAsset)
  {
    v14 = v4;
  }

  else
  {
    v14 = v3;
  }

  v10 = v14;

LABEL_13:
  v15 = v10;

  return v10;
}

- (id)_existingManifestEntry
{
  download = [(FinishDownloadStepOperation *)self download];
  libraryItemIdentifier = [download libraryItemIdentifier];

  if (!libraryItemIdentifier)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v4 = +[EBookManifest syncedBookManifest];
  v5 = [v4 manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];

  if ([v5 count] == 1)
  {
    v6 = v5;
  }

  else
  {
    v8 = +[EBookManifest purchasedBookManifest];
    v6 = [v8 manifestEntriesWithProperty:@"Persistent ID" equalToValue:libraryItemIdentifier limitCount:1];

    if ([v6 count] != 1)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = v6;
  }

  v7 = [v5 objectAtIndex:0];
LABEL_9:

LABEL_10:

  return v7;
}

- (BOOL)_installMediaAsset:(id)asset assetInstalledPath:(id *)path fileName:(id *)name drmPath:(id *)drmPath error:(id *)error
{
  assetCopy = asset;
  v10 = objc_alloc_init(NSFileManager);
  localPath = [assetCopy localPath];
  sourceURLString = [assetCopy sourceURLString];
  v142 = 0;
  v133 = sourceURLString;
  if (([v10 fileExistsAtPath:localPath] & 1) == 0 && sourceURLString)
  {
    v13 = [[NSURL alloc] initWithString:sourceURLString];
    if (![v13 isFileURL])
    {
LABEL_17:

      goto LABEL_18;
    }

    v131 = assetCopy;
    v129 = v10;
    path = [v13 path];
    v141 = localPath;
    [(FinishDownloadStepOperation *)self moveFile:path toPath:&v141 installBehavior:0 error:0];
    v15 = v141;

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      nameCopy = name;
      v22 = objc_opt_class();
      v23 = v22;
      path2 = [v13 path];
      v143 = 138412802;
      v144 = v22;
      name = nameCopy;
      v145 = 2112;
      v146 = path2;
      v147 = 2112;
      v148 = v15;
      LODWORD(v118) = 32;
      v116 = &v143;
      v25 = _os_log_send_and_compose_impl();

      v10 = v129;
      assetCopy = v131;
      if (!v25)
      {
LABEL_16:

        localPath = v15;
        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v25 encoding:4, &v143, v118];
      free(v25);
      v116 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
  if (([v10 fileExistsAtPath:localPath isDirectory:{&v142, v116}] & 1) == 0)
  {
    v39 = +[SSLogConfig sharedDaemonConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v39 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v42 = shouldLog2;
    }

    else
    {
      v42 = shouldLog2 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v143 = 138412546;
      v144 = v43;
      v145 = 2112;
      v146 = localPath;
      v44 = v43;
      LODWORD(v118) = 22;
      v45 = _os_log_send_and_compose_impl();

      errorCopy3 = error;
      if (!v45)
      {
        goto LABEL_73;
      }

      oSLogObject2 = [NSString stringWithCString:v45 encoding:4, &v143, v118];
      free(v45);
      SSFileLog();
    }

    else
    {
      errorCopy3 = error;
    }

LABEL_73:
    v75 = SSError();
    destinationFileName = 0;
    v65 = 0;
    v38 = 0;
    LOBYTE(v73) = 0;
    v76 = v133;
    if (!errorCopy3)
    {
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  nameCopy2 = name;
  _bookManifest = [(InstallEBookDownloadOperation *)self _bookManifest];
  manifestPath = [_bookManifest manifestPath];
  stringByDeletingLastPathComponent = [manifestPath stringByDeletingLastPathComponent];

  destinationFileName = [assetCopy destinationFileName];
  v30 = +[EBookManifest syncedBookManifest];

  v126 = _bookManifest;
  if (_bookManifest == v30)
  {
    pathExtension = [destinationFileName pathExtension];
    lastPathComponent = [localPath lastPathComponent];

    if ([pathExtension length])
    {
      pathExtension2 = [lastPathComponent pathExtension];
      v34 = [pathExtension2 length];

      if (!v34)
      {
        v35 = [lastPathComponent stringByAppendingPathExtension:pathExtension];

        lastPathComponent = v35;
      }
    }

    destinationFileName = lastPathComponent;
  }

  v36 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:destinationFileName];
  if (self->_isSharedDownload)
  {
    v37 = +[InstallEBookDownloadOperation sharedBookContainerCachesPath];
    v38 = [v37 stringByAppendingPathComponent:destinationFileName];

    stringByDeletingLastPathComponent = v37;
  }

  else
  {
    v38 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:destinationFileName];
  }

  v132 = v36;

  v47 = +[SSLogConfig sharedDaemonConfig];
  if (!v47)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [v47 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v50 = shouldLog3;
  }

  else
  {
    v50 = shouldLog3 & 2;
  }

  if (v50)
  {
    v51 = objc_opt_class();
    v143 = 138412546;
    v144 = v51;
    v145 = 2112;
    v146 = v38;
    v52 = v51;
    LODWORD(v118) = 22;
    v117 = &v143;
    v53 = _os_log_send_and_compose_impl();

    if (!v53)
    {
      goto LABEL_48;
    }

    oSLogObject3 = [NSString stringWithCString:v53 encoding:4, &v143, v118];
    free(v53);
    v117 = oSLogObject3;
    SSFileLog();
  }

LABEL_48:
  if (v142 == 1)
  {
    v54 = [localPath isEqualToString:v38];
    v55 = +[SSLogConfig sharedDaemonConfig];
    v56 = v55;
    if (v54)
    {
      if (!v55)
      {
        v56 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject4 = [v56 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
      {
        v59 = shouldLog4;
      }

      else
      {
        v59 = shouldLog4 & 2;
      }

      if (v59)
      {
        v60 = objc_opt_class();
        v143 = 138412546;
        v144 = v60;
        v145 = 2112;
        v146 = v38;
        v61 = v60;
        LODWORD(v118) = 22;
        v62 = _os_log_send_and_compose_impl();

        if (!v62)
        {
LABEL_98:

          v75 = 0;
          v73 = 1;
LABEL_102:
          v65 = v132;
          goto LABEL_136;
        }

        oSLogObject4 = [NSString stringWithCString:v62 encoding:4, &v143, v118];
        free(v62);
        SSFileLog();
      }

      goto LABEL_98;
    }

    if (!v55)
    {
      v56 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v56 shouldLog];
    if ([v56 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [v56 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v79 = shouldLog5;
    }

    else
    {
      v79 = shouldLog5 & 2;
    }

    if (v79)
    {
      v80 = objc_opt_class();
      v143 = 138412802;
      v144 = v80;
      v145 = 2112;
      v146 = localPath;
      v147 = 2112;
      v148 = v38;
      v81 = v80;
      LODWORD(v118) = 32;
      v82 = _os_log_send_and_compose_impl();

      if (!v82)
      {
LABEL_101:

        v140 = v38;
        v139 = 0;
        v73 = [(FinishDownloadStepOperation *)self moveFile:localPath toPath:&v140 installBehavior:0 error:&v139];
        v91 = v140;

        v75 = v139;
        v38 = v91;
        goto LABEL_102;
      }

      oSLogObject5 = [NSString stringWithCString:v82 encoding:4, &v143, v118];
      free(v82);
      SSFileLog();
    }

    goto LABEL_101;
  }

  v137 = 0;
  v138 = 0;
  v63 = [(FinishDownloadStepOperation *)self unzipAsset:assetCopy unzippedPath:&v138 error:&v137];
  v64 = v138;
  v122 = v137;
  v123 = v64;
  v65 = v132;
  v124 = v63;
  if (v63)
  {
    v136 = v38;
    [(FinishDownloadStepOperation *)self moveFile:v64 toPath:&v136 installBehavior:0 error:0];
    v66 = v136;

    v67 = +[SSLogConfig sharedDaemonConfig];
    if (!v67)
    {
      v67 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject6 = [v67 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
    {
      v70 = shouldLog6;
    }

    else
    {
      v70 = shouldLog6 & 2;
    }

    if (v70)
    {
      v71 = objc_opt_class();
      v143 = 138412546;
      v144 = v71;
      v145 = 2112;
      v146 = v66;
      v72 = v71;
      LODWORD(v118) = 22;
      v73 = 1;
      v74 = _os_log_send_and_compose_impl();

      if (!v74)
      {
        v75 = 0;
        v65 = v132;
        goto LABEL_118;
      }

      oSLogObject6 = [NSString stringWithCString:v74 encoding:4, &v143, v118];
      free(v74);
      SSFileLog();
    }

    v65 = v132;

    v75 = 0;
    v73 = 1;
LABEL_118:
    v92 = v122;
    goto LABEL_135;
  }

  [v10 removeItemAtPath:v64 error:0];
  pathExtension3 = [v38 pathExtension];
  if (([pathExtension3 isEqualToString:@"epub"] & 1) == 0 && !objc_msgSend(pathExtension3, "isEqualToString:", @"ibooks"))
  {
    v93 = [localPath isEqualToString:v38];
    v94 = +[SSLogConfig sharedDaemonConfig];
    v95 = v94;
    if (v93)
    {
      if (!v94)
      {
        v95 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v95 shouldLog];
      if ([v95 shouldLogToDisk])
      {
        shouldLog7 |= 2u;
      }

      v119 = v95;
      oSLogObject7 = [v95 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
      {
        v98 = shouldLog7;
      }

      else
      {
        v98 = shouldLog7 & 2;
      }

      if (v98)
      {
        v99 = objc_opt_class();
        v143 = 138412546;
        v144 = v99;
        v145 = 2112;
        v146 = v38;
        v100 = v99;
        LODWORD(v118) = 22;
        v101 = _os_log_send_and_compose_impl();

        if (!v101)
        {
LABEL_130:

          v75 = 0;
          v73 = 1;
          v66 = v38;
LABEL_133:
          v92 = v122;
          goto LABEL_134;
        }

        oSLogObject7 = [NSString stringWithCString:v101 encoding:4, &v143, v118];
        free(v101);
        SSFileLog();
      }

      goto LABEL_130;
    }

    if (!v94)
    {
      v95 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [v95 shouldLog];
    if ([v95 shouldLogToDisk])
    {
      shouldLog8 |= 2u;
    }

    v120 = v95;
    oSLogObject8 = [v95 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
    {
      v104 = shouldLog8;
    }

    else
    {
      v104 = shouldLog8 & 2;
    }

    if (v104)
    {
      v105 = objc_opt_class();
      v143 = 138412802;
      v144 = v105;
      v145 = 2112;
      v146 = localPath;
      v147 = 2112;
      v148 = v38;
      v106 = v105;
      LODWORD(v118) = 32;
      v107 = _os_log_send_and_compose_impl();

      if (!v107)
      {
LABEL_132:

        v134 = 0;
        v135 = v38;
        v73 = [(FinishDownloadStepOperation *)self moveFile:localPath toPath:&v135 installBehavior:0 error:&v134];
        v66 = v135;

        v75 = v134;
        goto LABEL_133;
      }

      oSLogObject8 = [NSString stringWithCString:v107 encoding:4, &v143, v118];
      free(v107);
      SSFileLog();
    }

    goto LABEL_132;
  }

  v83 = +[SSLogConfig sharedDaemonConfig];
  if (!v83)
  {
    v83 = +[SSLogConfig sharedConfig];
  }

  shouldLog9 = [v83 shouldLog];
  if ([v83 shouldLogToDisk])
  {
    shouldLog9 |= 2u;
  }

  oSLogObject9 = [v83 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
  {
    v86 = shouldLog9;
  }

  else
  {
    v86 = shouldLog9 & 2;
  }

  if (!v86)
  {
    v88 = v122;
    goto LABEL_104;
  }

  v87 = objc_opt_class();
  v143 = 138412802;
  v144 = v87;
  v145 = 2112;
  v146 = localPath;
  v147 = 2112;
  v88 = v122;
  v148 = v122;
  v89 = v87;
  LODWORD(v118) = 32;
  v90 = _os_log_send_and_compose_impl();

  if (v90)
  {
    oSLogObject9 = [NSString stringWithCString:v90 encoding:4, &v143, v118];
    free(v90);
    SSFileLog();
LABEL_104:
  }

  v75 = v88;
  v92 = v88;
  v73 = 0;
  v66 = v38;
  v65 = v132;
LABEL_134:
  v67 = pathExtension3;
LABEL_135:

  v38 = v66;
  if ((v124 & 1) == 0)
  {
LABEL_136:
    if (v73)
    {
      fileAttributes = [assetCopy fileAttributes];
      if ([fileAttributes count])
      {
        [v10 setAttributes:fileAttributes ofItemAtPath:v38 error:0];
      }
    }
  }

  if (drmPath)
  {
    v109 = !v73;
  }

  else
  {
    v109 = 1;
  }

  v76 = v133;
  if ((v109 & 1) == 0)
  {
    v110 = v38;
    *path = v38;
    v111 = v132;
    *drmPath = v132;
    v65 = v132;
  }

  if (destinationFileName)
  {
    v112 = !v73;
  }

  else
  {
    v112 = 1;
  }

  if ((v112 & 1) == 0)
  {
    v113 = destinationFileName;
    *nameCopy2 = destinationFileName;
    LOBYTE(v73) = 1;
    goto LABEL_153;
  }

  errorCopy3 = error;
  if (!error)
  {
    goto LABEL_153;
  }

LABEL_151:
  if (!v73)
  {
    v114 = v75;
    *errorCopy3 = v75;
  }

LABEL_153:

  return v73;
}

- (id)_newManifestEntry:(BOOL)entry withFileName:(id)name
{
  nameCopy = name;
  v7 = objc_alloc_init(NSMutableDictionary);
  download = [(FinishDownloadStepOperation *)self download];
  if ([nameCopy length])
  {
    [v7 setObject:nameCopy forKey:@"Path"];
  }

  else
  {
    mediaAsset = [download mediaAsset];
    destinationFileName = [mediaAsset destinationFileName];
    [v7 setObject:destinationFileName forKey:@"Path"];
  }

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [download isSampleDownload]);
  [v7 setObject:v11 forKey:@"isSample"];

  collectionName = [download collectionName];
  if (collectionName)
  {
    [v7 setObject:collectionName forKey:@"Album"];
  }

  artistName = [download artistName];

  if (artistName)
  {
    [v7 setObject:artistName forKey:@"Artist"];
  }

  artworkTemplateName = [download artworkTemplateName];

  if (artworkTemplateName)
  {
    [v7 setObject:artworkTemplateName forKey:@"artwork-template-name"];
  }

  genreName = [download genreName];

  if (genreName)
  {
    [v7 setObject:genreName forKey:@"Genre"];
  }

  libraryItemIdentifier = [download libraryItemIdentifier];

  if (libraryItemIdentifier)
  {
    [v7 setObject:libraryItemIdentifier forKey:@"Persistent ID"];
  }

  if (!entry)
  {
    storeAccountIdentifier = [download storeAccountIdentifier];
    if (storeAccountIdentifier)
    {
      [v7 setObject:storeAccountIdentifier forKey:@"DSID"];
    }

    storeAccountName = [download storeAccountName];
    v19 = [storeAccountName length];
    if (storeAccountIdentifier && !v19)
    {
      v20 = +[SSAccountStore defaultStore];
      activeAccount = [v20 accountWithUniqueIdentifier:libraryItemIdentifier];
      if (!activeAccount)
      {
        activeAccount = [v20 activeAccount];
      }

      accountName = [activeAccount accountName];

      storeAccountName = accountName;
    }

    if (storeAccountName)
    {
      [v7 setObject:storeAccountName forKey:@"AppleID"];
    }

    if (self->_isSharedDownload)
    {
      v23 = +[ApplicationWorkspace defaultWorkspace];
      isMultiUser = [v23 isMultiUser];

      if (isMultiUser)
      {
        [v7 setObject:&__kCFBooleanTrue forKey:@"usesSharedAsset"];
      }
    }
  }

  downloadPermalink = [download downloadPermalink];

  if (downloadPermalink)
  {
    [v7 setObject:downloadPermalink forKey:@"iTunesU Permlink"];
  }

  _storeFrontIdentifier = [(InstallEBookDownloadOperation *)self _storeFrontIdentifier];

  if (_storeFrontIdentifier)
  {
    [v7 setObject:_storeFrontIdentifier forKey:@"Storefront ID"];
  }

  storeXID = [download storeXID];

  if (storeXID)
  {
    [v7 setObject:storeXID forKey:@"XID"];
  }

  title = [download title];

  if (title)
  {
    [v7 setObject:title forKey:@"Name"];
  }

  storeItemIdentifier = [download storeItemIdentifier];
  v30 = SSGetItemIdentifierFromValue();

  if (v30)
  {
    v31 = [NSNumber numberWithUnsignedLongLong:v30];
    [v7 setObject:v31 forKey:@"s"];
  }

  storeCollectionIdentifier = [download storeCollectionIdentifier];
  v33 = SSGetItemIdentifierFromValue();

  if (title)
  {
    v34 = [NSNumber numberWithUnsignedLongLong:v33];
    [v7 setObject:v34 forKey:@"PlaylistID"];
  }

  storeMetadata = [download storeMetadata];
  copyright = [storeMetadata copyright];

  if (copyright)
  {
    [v7 setObject:copyright forKey:@"Copyright"];
  }

  if ([storeMetadata isExplicitContent])
  {
    v37 = [NSNumber numberWithBool:1];
    [v7 setObject:v37 forKey:@"isExplicit"];
  }

  v38 = [storeMetadata valueForMetadataKey:SSDownloadMetadataKeyHumanReadablePublicationVersion];

  if (v38)
  {
    [v7 setObject:v38 forKey:@"Human Readable Publication Version"];
  }

  v39 = [storeMetadata valueForMetadataKey:SSDownloadMetadataKeyLanguages];

  if (v39)
  {
    [v7 setObject:v39 forKey:@"Languages"];
  }

  v40 = [storeMetadata valueForMetadataKey:SSDownloadMetadataKeyPageProgression];

  if (v40)
  {
    [v7 setObject:v40 forKey:@"PageProgression"];
  }

  pageProgressionDirection = [storeMetadata pageProgressionDirection];

  if (pageProgressionDirection)
  {
    [v7 setObject:pageProgressionDirection forKey:@"Page Progression Direction"];
  }

  v42 = [storeMetadata valueForMetadataKey:SSDownloadMetadataKeyPublicationVersion];

  if (v42)
  {
    [v7 setObject:v42 forKey:@"Publication Version"];
  }

  releaseDateString = [storeMetadata releaseDateString];

  if (releaseDateString)
  {
    [v7 setObject:releaseDateString forKey:@"Release Date"];
  }

  sortArtistName = [storeMetadata sortArtistName];

  if (sortArtistName)
  {
    [v7 setObject:sortArtistName forKey:@"Sort Artist"];
  }

  sortCollectionName = [storeMetadata sortCollectionName];

  if (sortCollectionName)
  {
    [v7 setObject:sortCollectionName forKey:@"Sort Album"];
  }

  sortTitle = [storeMetadata sortTitle];

  if (sortTitle)
  {
    [v7 setObject:sortTitle forKey:@"Sort Name"];
  }

  primaryAssetDictionary = [storeMetadata primaryAssetDictionary];

  if (!primaryAssetDictionary)
  {
    v48 = [storeMetadata valueForMetadataKey:SSDownloadMetadataKeyAssetInfo];
    if (!v48)
    {
      goto LABEL_68;
    }

    primaryAssetDictionary = v48;
  }

  v49 = [primaryAssetDictionary objectForKey:SSDownloadMetadataKeyAssetFlavor];
  if (v49)
  {
    [v7 setObject:v49 forKey:@"Flavor"];
  }

LABEL_68:
  return v7;
}

- (void)_removeDuplicateEntry:(id)entry
{
  entryCopy = entry;
  download = [(FinishDownloadStepOperation *)self download];
  storeItemIdentifier = [download storeItemIdentifier];

  if (storeItemIdentifier)
  {
    v6 = [entryCopy manifestEntriesWithProperty:@"s" equalToValue:storeItemIdentifier limitCount:1];
    if ([v6 count] == 1)
    {
      [entryCopy removeManifestEntryWithStoreItemID:storeItemIdentifier];
    }
  }

  else
  {
    download2 = [(FinishDownloadStepOperation *)self download];
    downloadPermalink = [download2 downloadPermalink];
    v9 = [downloadPermalink length];

    if (!v9)
    {
      goto LABEL_8;
    }

    download3 = [(FinishDownloadStepOperation *)self download];
    downloadPermalink2 = [download3 downloadPermalink];
    v6 = [entryCopy manifestEntriesWithProperty:@"iTunesU Permlink" equalToValue:downloadPermalink2 limitCount:1];

    if ([v6 count] == 1)
    {
      download4 = [(FinishDownloadStepOperation *)self download];
      downloadPermalink3 = [download4 downloadPermalink];
      [entryCopy removeManifestEntryWithDownloadPermalink:downloadPermalink3];
    }
  }

LABEL_8:
}

- (id)_storeFrontIdentifier
{
  download = [(FinishDownloadStepOperation *)self download];
  storeFrontIdentifier = [download storeFrontIdentifier];
  if (!storeFrontIdentifier)
  {
    storeAccountIdentifier = [download storeAccountIdentifier];
    if (storeAccountIdentifier)
    {
      v5 = +[SSAccountStore defaultStore];
      v6 = [v5 accountWithUniqueIdentifier:storeAccountIdentifier];

      if (v6)
      {
        storeFrontIdentifier = [v6 storeFrontIdentifier];
        if (storeFrontIdentifier)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = +[SSDevice currentDevice];
    storeFrontIdentifier = [v7 storeFrontIdentifier];

LABEL_8:
  }

  return storeFrontIdentifier;
}

- (id)_syncedBooksPath
{
  v2 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Books", 0}];
  v3 = [NSString pathWithComponents:v2];

  return v3;
}

@end