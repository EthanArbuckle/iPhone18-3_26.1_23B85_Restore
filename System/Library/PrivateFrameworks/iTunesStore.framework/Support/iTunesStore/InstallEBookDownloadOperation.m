@interface InstallEBookDownloadOperation
+ (id)sharedBookContainerCachesPath;
+ (id)sharedBookContainerPath;
- (BOOL)_installMediaAsset:(id)a3 assetInstalledPath:(id *)a4 fileName:(id *)a5 drmPath:(id *)a6 error:(id *)a7;
- (id)_bookManifest;
- (id)_existingManifestEntry;
- (id)_newManifestEntry:(BOOL)a3 withFileName:(id)a4;
- (id)_storeFrontIdentifier;
- (id)_syncedBooksPath;
- (void)_addPurchaseManifestItem:(BOOL)a3;
- (void)_removeDuplicateEntry:(id)a3;
- (void)run;
@end

@implementation InstallEBookDownloadOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  v4 = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [v4 databaseID]);
  v145 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [v4 transactionID], objc_msgSend(v4, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:?];
  v5 = [v4 mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [v5 databaseID]);
  v6 = +[ApplicationWorkspace defaultWorkspace];
  v7 = [v6 isMultiUser];
  if (v7)
  {
    LOBYTE(v7) = [v4 isSharedDownload];
  }

  self->_isSharedDownload = v7;

  v140 = v5;
  v8 = &CFDictionaryGetValue_ptr;
  v141 = v3;
  if (!self->_isSharedDownload)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
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
      v157 = [(DownloadHandle *)v145 downloadID];
      LODWORD(v129) = 22;
      v128 = &v154;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_18:

        v24 = 0;
        goto LABEL_64;
      }

      v19 = [NSString stringWithCString:v23 encoding:4, &v154, v129];
      free(v23);
      v128 = v19;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v9 = +[EBookManifest sharedPurchasedBookManifest];
  v137 = [v4 storeMetadata];
  v10 = [v137 valueForMetadataKey:SSDownloadMetadataKeyPublicationVersion];
  v11 = [(FinishDownloadStepOperation *)self download];
  v12 = [v11 storeItemIdentifier];

  v13 = [(FinishDownloadStepOperation *)self download];
  v14 = [v13 downloadPermalink];

  v135 = v10;
  if ([v4 isStoreDownload])
  {
    v15 = [v9 bookPathForAdamID:v12 withPublicationVersion:v10];
LABEL_21:
    v25 = *(&self->_isSharedDownload + 5);
    *(&self->_isSharedDownload + 5) = v15;

    goto LABEL_22;
  }

  if ([v14 length])
  {
    v15 = [v9 bookPathPermalink:v14];
    goto LABEL_21;
  }

LABEL_22:
  v133 = *(&self->_isSharedDownload + 5);
  v143 = v9;
  if (v133)
  {
    v26 = [(InstallEBookDownloadOperation *)self _bookManifest];
    v27 = [v26 manifestPath];
    v28 = [v27 stringByDeletingLastPathComponent];
    v142 = [v28 stringByAppendingPathComponent:*(&self->_isSharedDownload + 5)];

    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    v30 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v31 = v30 | 2;
    }

    else
    {
      v31 = v30;
    }

    v32 = [v29 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
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
      v35 = v14;
      v36 = v12;
      v37 = v34;
      v154 = 138412546;
      v155 = v34;
      v156 = 2048;
      v157 = [(DownloadHandle *)v145 downloadID];
      LODWORD(v129) = 22;
      v128 = &v154;
      v38 = _os_log_send_and_compose_impl();

      v12 = v36;
      v14 = v35;

      if (v38)
      {
        v39 = [NSString stringWithCString:v38 encoding:4, &v154, v129];
        free(v38);
        v128 = v39;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v40 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v41 = v40 | 2;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v26 OSLogObject];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = v41;
    }

    else
    {
      v43 = v41 & 2;
    }

    if (v43)
    {
      v131 = v12;
      v44 = objc_opt_class();
      v45 = v44;
      v154 = 138412546;
      v155 = v44;
      v156 = 2048;
      v157 = [(DownloadHandle *)v145 downloadID];
      LODWORD(v129) = 22;
      v128 = &v154;
      v46 = _os_log_send_and_compose_impl();

      if (v46)
      {
        v47 = [NSString stringWithCString:v46 encoding:4, &v154, v129];
        free(v46);
        v128 = v47;
        SSFileLog();
      }

      v142 = 0;
      v12 = v131;
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

  v49 = [v48 shouldLog];
  if ([v48 shouldLogToDisk])
  {
    v50 = v49 | 2;
  }

  else
  {
    v50 = v49;
  }

  v51 = [v48 OSLogObject];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
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
  v54 = v14;
  v55 = v12;
  v56 = v53;
  v57 = +[InstallEBookDownloadOperation sharedBookContainerPath];
  v154 = 138412546;
  v155 = v53;
  v156 = 2112;
  v157 = v57;
  LODWORD(v129) = 22;
  v128 = &v154;
  v58 = _os_log_send_and_compose_impl();

  v12 = v55;
  v14 = v54;

  v59 = v135;
  if (v58)
  {
    v51 = [NSString stringWithCString:v58 encoding:4, &v154, v129];
    free(v58);
    v128 = v51;
    SSFileLog();
LABEL_60:
  }

  if (v133)
  {
    v144 = 0;
    v60 = 0;
    v136 = 0;
    v61 = 1;
    v5 = v140;
    v8 = &CFDictionaryGetValue_ptr;
    goto LABEL_82;
  }

  v5 = v140;
  v8 = &CFDictionaryGetValue_ptr;
  v24 = v142;
LABEL_64:
  v153 = 0;
  v151 = v24;
  v152 = 0;
  v150 = 0;
  v62 = [(InstallEBookDownloadOperation *)self _installMediaAsset:v5 assetInstalledPath:&v153 fileName:&v152 drmPath:&v151 error:&v150, v128];
  v60 = v153;
  v144 = v152;
  v63 = v151;

  v64 = v150;
  v65 = v64;
  if (v62)
  {
    v136 = v64;
    v142 = v63;
    v66 = objc_alloc_init(NSFileManager);
    LOBYTE(v154) = 0;
    [v66 fileExistsAtPath:v60 isDirectory:&v154];
    v67 = [v4 secondaryAssetForType:SSDownloadAssetTypeArtwork];
    if (v67 && [(FinishDownloadStepOperation *)self downloadAsset:v67 error:0])
    {
      if (v154 == 1)
      {
        v68 = [v60 stringByAppendingPathComponent:@"iTunesArtwork"];
      }

      else
      {
        v70 = [v67 destinationFileName];
        v71 = [v70 pathExtension];

        [v60 stringByDeletingPathExtension];
        v73 = v72 = v60;
        v68 = [v73 stringByAppendingPathExtension:v71];

        v60 = v72;
      }

      v149 = v68;
      [(FinishDownloadStepOperation *)self moveAsset:v67 toPath:&v149 installBehavior:0 error:0];
      v74 = v149;
    }

    v75 = [(InstallEBookDownloadOperation *)self _bookManifest];
    v76 = +[EBookManifest purchasedBookManifest];

    if (v75 == v76)
    {
      v77 = [v4 newITunesMetadataDictionary];
      if (v77)
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

        [(FinishDownloadStepOperation *)self writeBinaryPropertyList:v77 toPath:v78 error:0];
      }
    }

    v61 = 0;
LABEL_82:
    v81 = [v4 storeMetadata];
    v82 = [v81 epubRightsData];

    v138 = v60;
    if (![v82 length])
    {
      goto LABEL_112;
    }

    v132 = v61;
    v83 = [v142 stringByAppendingPathComponent:@"META-INF"];
    v134 = [v83 stringByAppendingPathComponent:@"sinf.xml"];
    v84 = [v8[412] sharedDaemonConfig];
    if (!v84)
    {
      v84 = [v8[412] sharedConfig];
    }

    v85 = [v84 shouldLog];
    if ([v84 shouldLogToDisk])
    {
      v86 = v85 | 2;
    }

    else
    {
      v86 = v85;
    }

    v87 = [v84 OSLogObject];
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
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
      v91 = [v4 databaseID];
      v154 = 138412802;
      v155 = v89;
      v156 = 2048;
      v157 = v91;
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

      v87 = [NSString stringWithCString:v92 encoding:4, &v154, v129];
      free(v92);
      v128 = v87;
      SSFileLog();
    }

LABEL_95:
    v93 = objc_alloc_init(NSFileManager);
    LOBYTE(v146) = 0;
    [v93 fileExistsAtPath:v83 isDirectory:&v146];
    if ((v146 & 1) != 0 || (v148 = 0, [v93 createDirectoryAtPath:v83 withIntermediateDirectories:1 attributes:0 error:&v148], (v94 = v148) == 0))
    {
      v147 = 0;
      [v82 writeToFile:v134 options:1 error:{&v147, v128}];
      v94 = v147;
      v60 = v138;
      if (!v94)
      {
        goto LABEL_111;
      }
    }

    v95 = v94;
    v96 = [v8[412] sharedDaemonConfig];
    if (!v96)
    {
      v96 = +[SSLogConfig sharedConfig];
    }

    v97 = [v96 shouldLog];
    if ([v96 shouldLogToDisk])
    {
      v98 = v97 | 2;
    }

    else
    {
      v98 = v97;
    }

    v99 = [v96 OSLogObject];
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v100 = v98;
    }

    else
    {
      v100 = v98 & 2;
    }

    v130 = self;
    if (v100)
    {
      v101 = v83;
      v102 = v82;
      v103 = objc_opt_class();
      v104 = v103;
      v105 = [v4 databaseID];
      v154 = 138413058;
      v155 = v103;
      v82 = v102;
      v83 = v101;
      v156 = 2048;
      v157 = v105;
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
        self = v130;
LABEL_111:

        v5 = v140;
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

        v139 = v82;
        v146 = 1;
        v107 = [@"Library" stringByAppendingPathComponent:v144];
        v108 = [@"Library" stringByAppendingPathComponent:@"Caches"];
        v109 = [v108 stringByAppendingPathComponent:@"Staging"];
        v110 = [v109 stringByAppendingPathComponent:v144];

        [v110 UTF8String];
        [v107 UTF8String];
        v111 = container_stage_shared_system_content();
        v112 = [v8[412] sharedDaemonConfig];
        v113 = v112;
        if (v111)
        {
          v114 = v5;
          if (!v112)
          {
            v113 = +[SSLogConfig sharedConfig];
          }

          v115 = [v113 shouldLog];
          if ([v113 shouldLogToDisk])
          {
            v115 |= 2u;
          }

          v116 = [v113 OSLogObject];
          if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
          {
            v117 = v115;
          }

          else
          {
            v117 = v115 & 2;
          }

          if (v117)
          {
            v118 = objc_opt_class();
            v154 = 138412546;
            v155 = v118;
            v156 = 2080;
            v157 = v111;
            v119 = v118;
            LODWORD(v129) = 22;
            v128 = &v154;
            v120 = _os_log_send_and_compose_impl();

            if (!v120)
            {
LABEL_126:

              v60 = [[NSString alloc] initWithCString:v111 encoding:4];
              free(v111);
              v5 = v114;
              v65 = v136;
LABEL_140:
              v69 = v141;
              if (!v65)
              {
                [(InstallEBookDownloadOperation *)self _addPurchaseManifestItem:0];
              }

              v63 = v142;
              v82 = v139;
              goto LABEL_143;
            }

            v116 = [NSString stringWithCString:v120 encoding:4, &v154, v129];
            free(v120);
            v128 = v116;
            SSFileLog();
          }

          goto LABEL_126;
        }

        if (!v112)
        {
          v113 = [v8[412] sharedConfig];
        }

        v121 = [v113 shouldLog];
        if ([v113 shouldLogToDisk])
        {
          v121 |= 2u;
        }

        v122 = [v113 OSLogObject];
        if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
        {
          v123 = v121;
        }

        else
        {
          v123 = v121 & 2;
        }

        if (v123)
        {
          v124 = objc_opt_class();
          v154 = 138412546;
          v155 = v124;
          v156 = 2048;
          v157 = v146;
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

          v122 = [NSString stringWithCString:v126 encoding:4, &v154, v129];
          free(v126);
          v128 = v122;
          SSFileLog();
        }

        else
        {
          v127 = v136;
        }

        goto LABEL_139;
      }

      v99 = [NSString stringWithCString:v106 encoding:4, &v154, v129];
      free(v106);
      v128 = v99;
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

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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

      v7 = [NSString stringWithCString:v9 encoding:4, &v21, v20];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v14 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v4 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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
    v16 = [NSString stringWithCString:v18 encoding:4, &v21, v20];
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

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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

      v7 = [NSString stringWithCString:v9 encoding:4, &v19, v18];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v12 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v4 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
    v14 = [NSString stringWithCString:v16 encoding:4, &v19, v18];
    free(v16);
    SSFileLog();
LABEL_26:
  }

  v11 = 0;
LABEL_28:

  return v11;
}

- (void)_addPurchaseManifestItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(InstallEBookDownloadOperation *)self _bookManifest];
  v6 = [(FinishDownloadStepOperation *)self download];
  isSharedDownload = self->_isSharedDownload;
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (!isSharedDownload)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v18 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v18 |= 2u;
    }

    v19 = [v9 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
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
      v23 = [v5 manifestPath];
      v45 = 138412546;
      v46 = v21;
      v47 = 2112;
      v48 = v23;
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

    v39 = [v6 mediaAsset];
    v26 = [v39 destinationFileName];

    v38 = [v5 manifestEntriesWithProperty:@"Path" equalToValue:v26 limitCount:1];
    if ([v38 count])
    {
      goto LABEL_47;
    }

    v40 = [(InstallEBookDownloadOperation *)self _existingManifestEntry];
    v37 = v40;
    if (v40)
    {
      [v40 setObject:v26 forKey:@"Path"];
    }

    else
    {
      v41 = [(InstallEBookDownloadOperation *)self _newManifestEntry:0];
      [v5 addManifestEntry:v41];
    }

    v27 = v5;
LABEL_46:
    [v27 synchronizeData];

LABEL_47:
    goto LABEL_48;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v44 = v6;
  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [v5 manifestPath];
    v45 = 138412546;
    v46 = v13;
    v47 = 2112;
    v48 = v15;
    LODWORD(v43) = 22;
    v42 = &v45;
    v16 = _os_log_send_and_compose_impl();

    if (!v16)
    {
      goto LABEL_13;
    }

    v12 = [NSString stringWithCString:v16 encoding:4, &v45, v43];
    free(v16);
    v42 = v12;
    SSFileLog();
  }

LABEL_13:
  [(InstallEBookDownloadOperation *)self _removeDuplicateEntry:v5];
  if (v3)
  {
    v17 = *(&self->_isSharedDownload + 5);
  }

  else
  {
    v17 = 0;
  }

  v6 = v44;
  v26 = [(InstallEBookDownloadOperation *)self _newManifestEntry:v17, v42];
  [v5 addManifestEntry:v26];
  [v5 synchronizeData];
  if (!v3)
  {
    v27 = +[EBookManifest sharedPurchasedBookManifest];
    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v29 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v28 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
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
      v35 = [v27 manifestPath];
      v45 = 138412546;
      v46 = v33;
      v6 = v44;
      v47 = 2112;
      v48 = v35;
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

      v31 = [NSString stringWithCString:v36 encoding:4, &v45, v43];
      free(v36);
      v42 = v31;
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
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = [v5 libraryItemIdentifier];
  if (v6)
  {
    v7 = [v4 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v6 limitCount:1];
    if ([v7 count] == 1)
    {
      v8 = v4;
      goto LABEL_6;
    }

    v9 = [v3 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v6 limitCount:1];

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
  v11 = [v5 mediaAsset];
  v12 = [v11 localPath];

  v13 = [(InstallEBookDownloadOperation *)self _syncedBooksPath];
  LODWORD(v11) = [v12 hasPrefix:v13];

  if (v11)
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
  v2 = [(FinishDownloadStepOperation *)self download];
  v3 = [v2 libraryItemIdentifier];

  if (!v3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v4 = +[EBookManifest syncedBookManifest];
  v5 = [v4 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v3 limitCount:1];

  if ([v5 count] == 1)
  {
    v6 = v5;
  }

  else
  {
    v8 = +[EBookManifest purchasedBookManifest];
    v6 = [v8 manifestEntriesWithProperty:@"Persistent ID" equalToValue:v3 limitCount:1];

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

- (BOOL)_installMediaAsset:(id)a3 assetInstalledPath:(id *)a4 fileName:(id *)a5 drmPath:(id *)a6 error:(id *)a7
{
  v9 = a3;
  v10 = objc_alloc_init(NSFileManager);
  v11 = [v9 localPath];
  v12 = [v9 sourceURLString];
  v142 = 0;
  v133 = v12;
  if (([v10 fileExistsAtPath:v11] & 1) == 0 && v12)
  {
    v13 = [[NSURL alloc] initWithString:v12];
    if (![v13 isFileURL])
    {
LABEL_17:

      goto LABEL_18;
    }

    v131 = v9;
    v129 = v10;
    v14 = [v13 path];
    v141 = v11;
    [(FinishDownloadStepOperation *)self moveFile:v14 toPath:&v141 installBehavior:0 error:0];
    v15 = v141;

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = a5;
      v22 = objc_opt_class();
      v23 = v22;
      v24 = [v13 path];
      v143 = 138412802;
      v144 = v22;
      a5 = v21;
      v145 = 2112;
      v146 = v24;
      v147 = 2112;
      v148 = v15;
      LODWORD(v118) = 32;
      v116 = &v143;
      v25 = _os_log_send_and_compose_impl();

      v10 = v129;
      v9 = v131;
      if (!v25)
      {
LABEL_16:

        v11 = v15;
        goto LABEL_17;
      }

      v19 = [NSString stringWithCString:v25 encoding:4, &v143, v118];
      free(v25);
      v116 = v19;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
  if (([v10 fileExistsAtPath:v11 isDirectory:{&v142, v116}] & 1) == 0)
  {
    v39 = +[SSLogConfig sharedDaemonConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    v40 = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      v40 |= 2u;
    }

    v41 = [v39 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v143 = 138412546;
      v144 = v43;
      v145 = 2112;
      v146 = v11;
      v44 = v43;
      LODWORD(v118) = 22;
      v45 = _os_log_send_and_compose_impl();

      v46 = a7;
      if (!v45)
      {
        goto LABEL_73;
      }

      v41 = [NSString stringWithCString:v45 encoding:4, &v143, v118];
      free(v45);
      SSFileLog();
    }

    else
    {
      v46 = a7;
    }

LABEL_73:
    v75 = SSError();
    v29 = 0;
    v65 = 0;
    v38 = 0;
    LOBYTE(v73) = 0;
    v76 = v133;
    if (!v46)
    {
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  v125 = a5;
  v26 = [(InstallEBookDownloadOperation *)self _bookManifest];
  v27 = [v26 manifestPath];
  v28 = [v27 stringByDeletingLastPathComponent];

  v29 = [v9 destinationFileName];
  v30 = +[EBookManifest syncedBookManifest];

  v126 = v26;
  if (v26 == v30)
  {
    v31 = [v29 pathExtension];
    v32 = [v11 lastPathComponent];

    if ([v31 length])
    {
      v33 = [v32 pathExtension];
      v34 = [v33 length];

      if (!v34)
      {
        v35 = [v32 stringByAppendingPathExtension:v31];

        v32 = v35;
      }
    }

    v29 = v32;
  }

  v36 = [v28 stringByAppendingPathComponent:v29];
  if (self->_isSharedDownload)
  {
    v37 = +[InstallEBookDownloadOperation sharedBookContainerCachesPath];
    v38 = [v37 stringByAppendingPathComponent:v29];

    v28 = v37;
  }

  else
  {
    v38 = [v28 stringByAppendingPathComponent:v29];
  }

  v132 = v36;

  v47 = +[SSLogConfig sharedDaemonConfig];
  if (!v47)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  v48 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    v48 |= 2u;
  }

  v49 = [v47 OSLogObject];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = v48;
  }

  else
  {
    v50 = v48 & 2;
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

    v49 = [NSString stringWithCString:v53 encoding:4, &v143, v118];
    free(v53);
    v117 = v49;
    SSFileLog();
  }

LABEL_48:
  if (v142 == 1)
  {
    v54 = [v11 isEqualToString:v38];
    v55 = +[SSLogConfig sharedDaemonConfig];
    v56 = v55;
    if (v54)
    {
      if (!v55)
      {
        v56 = +[SSLogConfig sharedConfig];
      }

      v57 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        v57 |= 2u;
      }

      v58 = [v56 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 2;
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

        v58 = [NSString stringWithCString:v62 encoding:4, &v143, v118];
        free(v62);
        SSFileLog();
      }

      goto LABEL_98;
    }

    if (!v55)
    {
      v56 = +[SSLogConfig sharedConfig];
    }

    v77 = [v56 shouldLog];
    if ([v56 shouldLogToDisk])
    {
      v77 |= 2u;
    }

    v78 = [v56 OSLogObject];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v79 = v77;
    }

    else
    {
      v79 = v77 & 2;
    }

    if (v79)
    {
      v80 = objc_opt_class();
      v143 = 138412802;
      v144 = v80;
      v145 = 2112;
      v146 = v11;
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
        v73 = [(FinishDownloadStepOperation *)self moveFile:v11 toPath:&v140 installBehavior:0 error:&v139];
        v91 = v140;

        v75 = v139;
        v38 = v91;
        goto LABEL_102;
      }

      v78 = [NSString stringWithCString:v82 encoding:4, &v143, v118];
      free(v82);
      SSFileLog();
    }

    goto LABEL_101;
  }

  v137 = 0;
  v138 = 0;
  v63 = [(FinishDownloadStepOperation *)self unzipAsset:v9 unzippedPath:&v138 error:&v137];
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

    v68 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      v68 |= 2u;
    }

    v69 = [v67 OSLogObject];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = v68;
    }

    else
    {
      v70 = v68 & 2;
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

      v69 = [NSString stringWithCString:v74 encoding:4, &v143, v118];
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
  v121 = [v38 pathExtension];
  if (([v121 isEqualToString:@"epub"] & 1) == 0 && !objc_msgSend(v121, "isEqualToString:", @"ibooks"))
  {
    v93 = [v11 isEqualToString:v38];
    v94 = +[SSLogConfig sharedDaemonConfig];
    v95 = v94;
    if (v93)
    {
      if (!v94)
      {
        v95 = +[SSLogConfig sharedConfig];
      }

      v96 = [v95 shouldLog];
      if ([v95 shouldLogToDisk])
      {
        v96 |= 2u;
      }

      v119 = v95;
      v97 = [v95 OSLogObject];
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = v96;
      }

      else
      {
        v98 = v96 & 2;
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

        v97 = [NSString stringWithCString:v101 encoding:4, &v143, v118];
        free(v101);
        SSFileLog();
      }

      goto LABEL_130;
    }

    if (!v94)
    {
      v95 = +[SSLogConfig sharedConfig];
    }

    v102 = [v95 shouldLog];
    if ([v95 shouldLogToDisk])
    {
      v102 |= 2u;
    }

    v120 = v95;
    v103 = [v95 OSLogObject];
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      v104 = v102;
    }

    else
    {
      v104 = v102 & 2;
    }

    if (v104)
    {
      v105 = objc_opt_class();
      v143 = 138412802;
      v144 = v105;
      v145 = 2112;
      v146 = v11;
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
        v73 = [(FinishDownloadStepOperation *)self moveFile:v11 toPath:&v135 installBehavior:0 error:&v134];
        v66 = v135;

        v75 = v134;
        goto LABEL_133;
      }

      v103 = [NSString stringWithCString:v107 encoding:4, &v143, v118];
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

  v84 = [v83 shouldLog];
  if ([v83 shouldLogToDisk])
  {
    v84 |= 2u;
  }

  v85 = [v83 OSLogObject];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = v84;
  }

  else
  {
    v86 = v84 & 2;
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
  v146 = v11;
  v147 = 2112;
  v88 = v122;
  v148 = v122;
  v89 = v87;
  LODWORD(v118) = 32;
  v90 = _os_log_send_and_compose_impl();

  if (v90)
  {
    v85 = [NSString stringWithCString:v90 encoding:4, &v143, v118];
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
  v67 = v121;
LABEL_135:

  v38 = v66;
  if ((v124 & 1) == 0)
  {
LABEL_136:
    if (v73)
    {
      v108 = [v9 fileAttributes];
      if ([v108 count])
      {
        [v10 setAttributes:v108 ofItemAtPath:v38 error:0];
      }
    }
  }

  if (a6)
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
    *a4 = v38;
    v111 = v132;
    *a6 = v132;
    v65 = v132;
  }

  if (v29)
  {
    v112 = !v73;
  }

  else
  {
    v112 = 1;
  }

  if ((v112 & 1) == 0)
  {
    v113 = v29;
    *v125 = v29;
    LOBYTE(v73) = 1;
    goto LABEL_153;
  }

  v46 = a7;
  if (!a7)
  {
    goto LABEL_153;
  }

LABEL_151:
  if (!v73)
  {
    v114 = v75;
    *v46 = v75;
  }

LABEL_153:

  return v73;
}

- (id)_newManifestEntry:(BOOL)a3 withFileName:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [(FinishDownloadStepOperation *)self download];
  if ([v6 length])
  {
    [v7 setObject:v6 forKey:@"Path"];
  }

  else
  {
    v9 = [v8 mediaAsset];
    v10 = [v9 destinationFileName];
    [v7 setObject:v10 forKey:@"Path"];
  }

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isSampleDownload]);
  [v7 setObject:v11 forKey:@"isSample"];

  v12 = [v8 collectionName];
  if (v12)
  {
    [v7 setObject:v12 forKey:@"Album"];
  }

  v13 = [v8 artistName];

  if (v13)
  {
    [v7 setObject:v13 forKey:@"Artist"];
  }

  v14 = [v8 artworkTemplateName];

  if (v14)
  {
    [v7 setObject:v14 forKey:@"artwork-template-name"];
  }

  v15 = [v8 genreName];

  if (v15)
  {
    [v7 setObject:v15 forKey:@"Genre"];
  }

  v16 = [v8 libraryItemIdentifier];

  if (v16)
  {
    [v7 setObject:v16 forKey:@"Persistent ID"];
  }

  if (!a3)
  {
    v17 = [v8 storeAccountIdentifier];
    if (v17)
    {
      [v7 setObject:v17 forKey:@"DSID"];
    }

    v18 = [v8 storeAccountName];
    v19 = [v18 length];
    if (v17 && !v19)
    {
      v20 = +[SSAccountStore defaultStore];
      v21 = [v20 accountWithUniqueIdentifier:v16];
      if (!v21)
      {
        v21 = [v20 activeAccount];
      }

      v22 = [v21 accountName];

      v18 = v22;
    }

    if (v18)
    {
      [v7 setObject:v18 forKey:@"AppleID"];
    }

    if (self->_isSharedDownload)
    {
      v23 = +[ApplicationWorkspace defaultWorkspace];
      v24 = [v23 isMultiUser];

      if (v24)
      {
        [v7 setObject:&__kCFBooleanTrue forKey:@"usesSharedAsset"];
      }
    }
  }

  v25 = [v8 downloadPermalink];

  if (v25)
  {
    [v7 setObject:v25 forKey:@"iTunesU Permlink"];
  }

  v26 = [(InstallEBookDownloadOperation *)self _storeFrontIdentifier];

  if (v26)
  {
    [v7 setObject:v26 forKey:@"Storefront ID"];
  }

  v27 = [v8 storeXID];

  if (v27)
  {
    [v7 setObject:v27 forKey:@"XID"];
  }

  v28 = [v8 title];

  if (v28)
  {
    [v7 setObject:v28 forKey:@"Name"];
  }

  v29 = [v8 storeItemIdentifier];
  v30 = SSGetItemIdentifierFromValue();

  if (v30)
  {
    v31 = [NSNumber numberWithUnsignedLongLong:v30];
    [v7 setObject:v31 forKey:@"s"];
  }

  v32 = [v8 storeCollectionIdentifier];
  v33 = SSGetItemIdentifierFromValue();

  if (v28)
  {
    v34 = [NSNumber numberWithUnsignedLongLong:v33];
    [v7 setObject:v34 forKey:@"PlaylistID"];
  }

  v35 = [v8 storeMetadata];
  v36 = [v35 copyright];

  if (v36)
  {
    [v7 setObject:v36 forKey:@"Copyright"];
  }

  if ([v35 isExplicitContent])
  {
    v37 = [NSNumber numberWithBool:1];
    [v7 setObject:v37 forKey:@"isExplicit"];
  }

  v38 = [v35 valueForMetadataKey:SSDownloadMetadataKeyHumanReadablePublicationVersion];

  if (v38)
  {
    [v7 setObject:v38 forKey:@"Human Readable Publication Version"];
  }

  v39 = [v35 valueForMetadataKey:SSDownloadMetadataKeyLanguages];

  if (v39)
  {
    [v7 setObject:v39 forKey:@"Languages"];
  }

  v40 = [v35 valueForMetadataKey:SSDownloadMetadataKeyPageProgression];

  if (v40)
  {
    [v7 setObject:v40 forKey:@"PageProgression"];
  }

  v41 = [v35 pageProgressionDirection];

  if (v41)
  {
    [v7 setObject:v41 forKey:@"Page Progression Direction"];
  }

  v42 = [v35 valueForMetadataKey:SSDownloadMetadataKeyPublicationVersion];

  if (v42)
  {
    [v7 setObject:v42 forKey:@"Publication Version"];
  }

  v43 = [v35 releaseDateString];

  if (v43)
  {
    [v7 setObject:v43 forKey:@"Release Date"];
  }

  v44 = [v35 sortArtistName];

  if (v44)
  {
    [v7 setObject:v44 forKey:@"Sort Artist"];
  }

  v45 = [v35 sortCollectionName];

  if (v45)
  {
    [v7 setObject:v45 forKey:@"Sort Album"];
  }

  v46 = [v35 sortTitle];

  if (v46)
  {
    [v7 setObject:v46 forKey:@"Sort Name"];
  }

  v47 = [v35 primaryAssetDictionary];

  if (!v47)
  {
    v48 = [v35 valueForMetadataKey:SSDownloadMetadataKeyAssetInfo];
    if (!v48)
    {
      goto LABEL_68;
    }

    v47 = v48;
  }

  v49 = [v47 objectForKey:SSDownloadMetadataKeyAssetFlavor];
  if (v49)
  {
    [v7 setObject:v49 forKey:@"Flavor"];
  }

LABEL_68:
  return v7;
}

- (void)_removeDuplicateEntry:(id)a3
{
  v14 = a3;
  v4 = [(FinishDownloadStepOperation *)self download];
  v5 = [v4 storeItemIdentifier];

  if (v5)
  {
    v6 = [v14 manifestEntriesWithProperty:@"s" equalToValue:v5 limitCount:1];
    if ([v6 count] == 1)
    {
      [v14 removeManifestEntryWithStoreItemID:v5];
    }
  }

  else
  {
    v7 = [(FinishDownloadStepOperation *)self download];
    v8 = [v7 downloadPermalink];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = [(FinishDownloadStepOperation *)self download];
    v11 = [v10 downloadPermalink];
    v6 = [v14 manifestEntriesWithProperty:@"iTunesU Permlink" equalToValue:v11 limitCount:1];

    if ([v6 count] == 1)
    {
      v12 = [(FinishDownloadStepOperation *)self download];
      v13 = [v12 downloadPermalink];
      [v14 removeManifestEntryWithDownloadPermalink:v13];
    }
  }

LABEL_8:
}

- (id)_storeFrontIdentifier
{
  v2 = [(FinishDownloadStepOperation *)self download];
  v3 = [v2 storeFrontIdentifier];
  if (!v3)
  {
    v4 = [v2 storeAccountIdentifier];
    if (v4)
    {
      v5 = +[SSAccountStore defaultStore];
      v6 = [v5 accountWithUniqueIdentifier:v4];

      if (v6)
      {
        v3 = [v6 storeFrontIdentifier];
        if (v3)
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
    v3 = [v7 storeFrontIdentifier];

LABEL_8:
  }

  return v3;
}

- (id)_syncedBooksPath
{
  v2 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Books", 0}];
  v3 = [NSString pathWithComponents:v2];

  return v3;
}

@end