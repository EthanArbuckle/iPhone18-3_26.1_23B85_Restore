@interface PrepareDownloadOperation
+ (BOOL)_isDTServiceHubIssuedRequest:(id)a3;
+ (id)_mediaAssetsForDownloadIdentifier:(int64_t)a3 session:(id)a4;
+ (int64_t)_URLSessionTaskPriorityForDownload:(id)a3;
+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)a3;
+ (void)enumerateOperationsWithDownloadQuery:(id)a3 session:(id)a4 usingBlock:(id)a5;
- (BOOL)_allowsCellularAccessForAsset:(id)a3;
- (BOOL)_assetNeedsDecryption:(id)a3;
- (BOOL)_isPodcast;
- (BOOL)_isPodcastRestore;
- (BOOL)_itemIsInMediaLibrary;
- (BOOL)_itemIsInSoftwareLibrary;
- (BOOL)_requiresPoweredPluggedIn;
- (BOOL)_sendsStoreHeadersForAsset:(id)a3;
- (BOOL)_shouldCancelAsDuplicate;
- (BOOL)_shouldCancelAutomaticDownload;
- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)a3 dataConsumer:(id)a4;
- (BOOL)_shouldFailForFinishedDownload;
- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)a3;
- (BOOL)ignoresDownloadHandler;
- (double)_transferProgressFractionWithAsset:(id)a3;
- (id)_bestMediaAsset;
- (id)_clientIdentifier;
- (id)_initWithDownload:(id)a3 mediaAssets:(id)a4 policy:(id)a5;
- (id)_newAVAssetDownloadSessionOptionsWithAsset:(id)a3 URLRequest:(id)a4;
- (id)_newAVContentInfoDictionary;
- (id)_newDataConsumerWithAsset:(id)a3 destinationPath:(id)a4;
- (id)_newURLRequestWithAsset:(id)a3;
- (id)outputBlock;
- (int64_t)_assetSizeFromURLResponse:(id)a3;
- (int64_t)_loadSizeForAsset:(id)a3 error:(id *)a4;
- (int64_t)_loadSizeIfNecessaryForAsset:(id)a3;
- (void)_recordCoreAnalyticsEventForClient:(id)a3 downloadKind:(id)a4 url:(id)a5;
- (void)run;
- (void)setIgnoresDownloadHandler:(BOOL)a3;
- (void)setOutputBlock:(id)a3;
@end

@implementation PrepareDownloadOperation

- (id)_initWithDownload:(id)a3 mediaAssets:(id)a4 policy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PrepareDownloadOperation;
  v12 = [(PrepareDownloadOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_download, a3);
    v14 = [v10 copy];
    mediaAssets = v13->_mediaAssets;
    v13->_mediaAssets = v14;

    objc_storeStrong(&v13->_policy, a5);
  }

  return v13;
}

+ (void)enumerateOperationsWithDownloadQuery:(id)a3 session:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22[0] = @"airplay_content_type";
  v22[1] = @"is_automatic";
  v22[2] = @"bundle_id";
  v22[3] = @"client.audit_token_data";
  v22[4] = @"client_id";
  v22[5] = @"download_permalink";
  v22[6] = @"application_id.bundle_id";
  v22[7] = @"is_restore";
  v22[8] = @"is_shared";
  v22[9] = @"is_from_store";
  v22[10] = @"kind";
  v22[11] = @"loading_priority";
  v22[12] = @"override_audit_token_data";
  v22[13] = @"policy_id";
  v22[14] = @"priority";
  v22[15] = @"rate_limit";
  v22[16] = @"rental_id";
  v22[17] = @"resource_timeout_interval";
  v22[18] = @"IFNULL(download_state.restore_data_size, 0)";
  v22[19] = @"IFNULL(download_state.restore_state, 0)";
  v22[20] = @"cancel_if_duplicate";
  v22[21] = @"store_account_id";
  v22[22] = @"store_download_key";
  v22[23] = @"store_item_id";
  v22[24] = @"store_publication_version";
  v22[25] = @"store_redownload_parameters";
  v22[26] = @"store_saga_id";
  v22[27] = @"title";
  v22[28] = @"thumbnail_url";
  v22[29] = @"timeout_interval";
  v22[30] = @"transaction_id";
  v11 = [[NSArray alloc] initWithObjects:v22 count:31];
  v12 = [v9 policyManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D4E44;
  v17[3] = &unk_10032BD10;
  v21 = a1;
  v13 = v9;
  v18 = v13;
  v19 = v12;
  v14 = v10;
  v20 = v14;
  v15 = v12;
  [v8 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v17];

  for (i = 30; i != -1; --i)
  {
  }
}

- (BOOL)ignoresDownloadHandler
{
  [(PrepareDownloadOperation *)self lock];
  ignoresDownloadHandler = self->_ignoresDownloadHandler;
  [(PrepareDownloadOperation *)self unlock];
  return ignoresDownloadHandler;
}

- (id)outputBlock
{
  [(PrepareDownloadOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(PrepareDownloadOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setIgnoresDownloadHandler:(BOOL)a3
{
  [(PrepareDownloadOperation *)self lock];
  self->_ignoresDownloadHandler = a3;

  [(PrepareDownloadOperation *)self unlock];
}

- (void)setOutputBlock:(id)a3
{
  v6 = a3;
  [(PrepareDownloadOperation *)self lock];
  if (self->_outputBlock != v6)
  {
    v4 = [v6 copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(PrepareDownloadOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(PrepareDownloadResponse);
  [(PrepareDownloadResponse *)v3 setIgnoresDownloadHandler:[(PrepareDownloadOperation *)self ignoresDownloadHandler]];
  [(PrepareDownloadResponse *)v3 setResult:0];
  v4 = [(SSMemoryEntity *)self->_download valueForProperty:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copy];
    [(PrepareDownloadResponse *)v3 setKind:v6];

    if ([v5 isEqualToString:@"com.apple.MobileAsset"])
    {
      [(PrepareDownloadResponse *)v3 setLegacyClient:1];
    }
  }

  v7 = [(SSMemoryEntity *)self->_download valueForProperty:?];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
    [(PrepareDownloadResponse *)v3 setBundleIdentifier:v9];
  }

  v220 = v8;
  v10 = [(SSMemoryEntity *)self->_download databaseID];
  [(PrepareDownloadResponse *)v3 setDownloadIdentifier:v10];
  v11 = [(SSMemoryEntity *)self->_download valueForProperty:@"transaction_id"];
  v12 = [v11 longLongValue];

  v219 = [[DownloadHandle alloc] initWithTransactionIdentifier:v12 downloadIdentifier:v10];
  [(PrepareDownloadResponse *)v3 setDownloadHandle:?];
  v13 = [(SSMemoryEntity *)self->_download valueForProperty:@"rental_id"];
  v14 = [v13 longLongValue];

  [(PrepareDownloadResponse *)v3 setRentalIdentifier:v14];
  v15 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
  v16 = [v15 longLongValue];

  [(PrepareDownloadResponse *)v3 setStoreItemIdentifier:v16];
  v218 = [(SSMemoryEntity *)self->_download valueForProperty:@"title"];
  [(PrepareDownloadResponse *)v3 setTitle:?];
  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v18 |= 2u;
  }

  v19 = [v17 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v18 &= 2u;
  }

  v215 = v10;
  if (v18)
  {
    v20 = objc_opt_class();
    v223 = 138412546;
    v224 = v20;
    v225 = 2048;
    v226 = v10;
    LODWORD(v201) = 22;
    v198 = &v223;
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_16;
    }

    v19 = [NSString stringWithCString:v21 encoding:4, &v223, v201];
    free(v21);
    v198 = v19;
    SSFileLog();
  }

LABEL_16:
  v22 = [(PrepareDownloadOperation *)self _bestMediaAsset];
  -[PrepareDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [v22 databaseID]);
  v23 = [v22 valueForProperty:@"url_session_task_id"];
  [(PrepareDownloadResponse *)v3 setTaskIdentifier:v23];

  v24 = [v22 valueForProperty:@"url"];
  v217 = v24;
  if (!v24)
  {
    v29 = 0;
    v221 = 0;
    goto LABEL_40;
  }

  v25 = [(PrepareDownloadOperation *)self _clientIdentifier];
  [(PrepareDownloadOperation *)self _recordCoreAnalyticsEventForClient:v25 downloadKind:v5 url:v24];

  v221 = [[NSURL alloc] initWithString:v24];
  v26 = [v22 valueForProperty:@"is_downloaded"];
  v27 = [v26 BOOLValue];

  if (!v27)
  {
    v29 = 0;
    LODWORD(v24) = 0;
    goto LABEL_40;
  }

  v207 = v5;
  v28 = +[NSFileManager defaultManager];
  v29 = [v28 fileExistsAtPath:v24];
  v212 = v22;
  if (v29)
  {
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    v31 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v31 |= 2u;
    }

    v32 = [v30 OSLogObject];
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v31 &= 2u;
    }

    if (!v31)
    {
      goto LABEL_38;
    }
  }

  else
  {
    [v22 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    v33 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v33 |= 2u;
    }

    v32 = [v30 OSLogObject];
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 &= 2u;
    }

    if (!v33)
    {
      goto LABEL_38;
    }
  }

  v34 = v3;
  v35 = objc_opt_class();
  v36 = [v212 databaseID];
  v223 = 138412802;
  v224 = v35;
  v225 = 2048;
  v226 = v215;
  v227 = 2048;
  v228 = v36;
  LODWORD(v201) = 32;
  v198 = &v223;
  v37 = _os_log_send_and_compose_impl();

  v3 = v34;
  if (v37)
  {
    v32 = [NSString stringWithCString:v37 encoding:4, &v223, v201];
    free(v37);
    v198 = v32;
    SSFileLog();
LABEL_38:
  }

  LODWORD(v24) = 1;
  v5 = v207;
  v22 = v212;
LABEL_40:
  v38 = +[ApplicationWorkspace defaultWorkspace];
  if (![v38 isMultiUser])
  {
LABEL_49:

    goto LABEL_50;
  }

  IsEBookKind = SSDownloadKindIsEBookKind();

  if (IsEBookKind)
  {
    v40 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_shared"];
    v41 = [v40 BOOLValue];

    if (v41)
    {
      v213 = v22;
      v205 = v3;
      v208 = v5;
      v38 = +[EBookManifest sharedPurchasedBookManifest];
      v42 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_publication_version"];
      v43 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
      v44 = [(SSMemoryEntity *)self->_download valueForProperty:@"download_permalink"];
      v45 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
      v46 = [v45 BOOLValue];

      if (v46)
      {
        v47 = [v38 bookPathForAdamID:v43 withPublicationVersion:v42];
      }

      else
      {
        if (![v44 length])
        {
          v49 = 0;
          v3 = v205;
          goto LABEL_48;
        }

        v47 = [v38 bookPathPermalink:v44];
      }

      v48 = v47;
      v3 = v205;

      v49 = v48 != 0;
LABEL_48:
      v29 |= v49;
      LODWORD(v24) = v24 | v49;

      v5 = v208;
      v22 = v213;
      goto LABEL_49;
    }
  }

LABEL_50:
  if (!SSDownloadKindIsSoftwareKind())
  {
    if ([(PrepareDownloadOperation *)self _shouldFailForFinishedDownload])
    {
      v59 = +[SSLogConfig sharedDaemonConfig];
      if (!v59)
      {
        v59 = +[SSLogConfig sharedConfig];
      }

      v60 = [v59 shouldLog];
      if ([v59 shouldLogToDisk])
      {
        v61 = v60 | 2;
      }

      else
      {
        v61 = v60;
      }

      v62 = [v59 OSLogObject];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v61;
      }

      else
      {
        v63 = v61 & 2;
      }

      if (v63)
      {
LABEL_72:
        v64 = objc_opt_class();
        v223 = 138412546;
        v224 = v64;
        v225 = 2048;
        v226 = v215;
        v65 = v64;
        LODWORD(v201) = 22;
        v199 = &v223;
        v66 = _os_log_send_and_compose_impl();

        p_vtable = (DemoteApplicationOperation + 24);
        if (!v66)
        {
LABEL_211:

          v78 = v3;
          v79 = 4;
          goto LABEL_212;
        }

        v62 = [NSString stringWithCString:v66 encoding:4, &v223, v201];
        free(v66);
        v199 = v62;
        SSFileLog();
LABEL_210:

        goto LABEL_211;
      }

LABEL_209:
      p_vtable = DemoteApplicationOperation.vtable;
      goto LABEL_210;
    }

    if ([(PrepareDownloadOperation *)self _shouldCancelAsDuplicate])
    {
      v67 = +[SSLogConfig sharedDaemonConfig];
      if (!v67)
      {
        v67 = +[SSLogConfig sharedConfig];
      }

      v68 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v69 = v68 | 2;
      }

      else
      {
        v69 = v68;
      }

      v70 = [v67 OSLogObject];
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v69;
      }

      else
      {
        v71 = v69 & 2;
      }

      if (v71)
      {
LABEL_98:
        v75 = objc_opt_class();
        v223 = 138412546;
        v224 = v75;
        v225 = 2048;
        v226 = v215;
        v76 = v75;
        LODWORD(v201) = 22;
        v199 = &v223;
        v77 = _os_log_send_and_compose_impl();

        p_vtable = (DemoteApplicationOperation + 24);
        if (!v77)
        {
LABEL_102:

          v78 = v3;
          v79 = 1;
LABEL_212:
          [(PrepareDownloadResponse *)v78 setResult:v79, v199];
          goto LABEL_213;
        }

        v70 = [NSString stringWithCString:v77 encoding:4, &v223, v201];
        free(v77);
        v199 = v70;
        SSFileLog();
LABEL_101:

        goto LABEL_102;
      }

LABEL_100:
      p_vtable = (DemoteApplicationOperation + 24);
      goto LABEL_101;
    }

    if ([(PrepareDownloadOperation *)self _shouldCancelAutomaticDownload])
    {
      v67 = +[SSLogConfig sharedDaemonConfig];
      if (!v67)
      {
        v67 = +[SSLogConfig sharedConfig];
      }

      v72 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v73 = v72 | 2;
      }

      else
      {
        v73 = v72;
      }

      v70 = [v67 OSLogObject];
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 2;
      }

      if (v74)
      {
        goto LABEL_98;
      }

      goto LABEL_100;
    }

    v80 = [(SSMemoryEntity *)self->_download valueForProperty:@"IFNULL(download_state.restore_state, 0)"];
    v81 = [v80 integerValue];

    if (v81 == 1)
    {
      v82 = +[SSLogConfig sharedDaemonConfig];
      if (!v82)
      {
        v82 = +[SSLogConfig sharedConfig];
      }

      v83 = [v82 shouldLog];
      if ([v82 shouldLogToDisk])
      {
        v84 = v83 | 2;
      }

      else
      {
        v84 = v83;
      }

      v85 = [v82 OSLogObject];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v84;
      }

      else
      {
        v86 = v84 & 2;
      }

      if (v86)
      {
LABEL_113:
        v87 = objc_opt_class();
        v223 = 138412546;
        v224 = v87;
        v225 = 2048;
        v226 = v215;
        v88 = v87;
        LODWORD(v201) = 22;
        v199 = &v223;
LABEL_114:
        v89 = _os_log_send_and_compose_impl();

LABEL_127:
        p_vtable = (DemoteApplicationOperation + 24);
        if (!v89)
        {
LABEL_180:

          v78 = v3;
          v79 = 3;
          goto LABEL_212;
        }

        v85 = [NSString stringWithCString:v89 encoding:4, &v223, v201];
        free(v89);
        v199 = v85;
        SSFileLog();
LABEL_179:

        goto LABEL_180;
      }

LABEL_178:
      p_vtable = (DemoteApplicationOperation + 24);
      goto LABEL_179;
    }

    if (v22)
    {
      if ((v24 & v29) == 1)
      {
        v82 = +[SSLogConfig sharedDaemonConfig];
        if (!v82)
        {
          v82 = +[SSLogConfig sharedConfig];
        }

        v90 = [v82 shouldLog];
        if ([v82 shouldLogToDisk])
        {
          v91 = v90 | 2;
        }

        else
        {
          v91 = v90;
        }

        v85 = [v82 OSLogObject];
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v92 = v91;
        }

        else
        {
          v92 = v91 & 2;
        }

        if (v92)
        {
          v93 = objc_opt_class();
          v94 = v93;
          v95 = [v22 databaseID];
          v223 = 138412802;
          v224 = v93;
          v225 = 2048;
          v226 = v215;
          v227 = 2048;
          v228 = v95;
          LODWORD(v201) = 32;
          v199 = &v223;
          v89 = _os_log_send_and_compose_impl();

          goto LABEL_127;
        }

        goto LABEL_178;
      }

      if (([v221 isFileURL] & v29) == 1)
      {
        v82 = +[SSLogConfig sharedDaemonConfig];
        if (!v82)
        {
          v82 = +[SSLogConfig sharedConfig];
        }

        v113 = [v82 shouldLog];
        if ([v82 shouldLogToDisk])
        {
          v114 = v113 | 2;
        }

        else
        {
          v114 = v113;
        }

        v85 = [v82 OSLogObject];
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          v115 = v114;
        }

        else
        {
          v115 = v114 & 2;
        }

        if (v115)
        {
          goto LABEL_113;
        }

        goto LABEL_178;
      }

      if (SSDownloadKindIsSoftwareKind())
      {
        if ([ApplicationWorkspace keepSafeHarborDataForBundleID:v220])
        {
          v116 = [(PrepareDownloadResponse *)v3 clientIdentifier];
          if (v116)
          {
            v117 = v116;
            v118 = [(PrepareDownloadResponse *)v3 clientIdentifier];
            v119 = [v118 isEqualToString:@"atc"];

            if (v119)
            {
              v82 = +[SSLogConfig sharedDaemonConfig];
              if (!v82)
              {
                v82 = +[SSLogConfig sharedConfig];
              }

              v120 = [v82 shouldLog];
              if ([v82 shouldLogToDisk])
              {
                v121 = v120 | 2;
              }

              else
              {
                v121 = v120;
              }

              v85 = [v82 OSLogObject];
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
              {
                v122 = v121;
              }

              else
              {
                v122 = v121 & 2;
              }

              if (!v122)
              {
                goto LABEL_178;
              }

LABEL_153:
              v112 = objc_opt_class();
              v223 = 138412802;
              v224 = v112;
              v225 = 2048;
              v226 = v215;
              v227 = 2112;
              v228 = v220;
              v88 = v112;
              LODWORD(v201) = 32;
              v199 = &v223;
              goto LABEL_114;
            }
          }
        }
      }

      v123 = [(PrepareDownloadOperation *)self _loadSizeIfNecessaryForAsset:v22];
      if (v123 >= 1)
      {
        [(PrepareDownloadResponse *)v3 setMediaAssetSize:v123];
      }

      v124 = [v22 valueForProperty:@"local_path"];
      v125 = [v22 valueForProperty:@"is_hls"];
      v206 = v125;
      if (objc_opt_respondsToSelector())
      {
        v126 = [v125 BOOLValue];
        if (!v124 && v126)
        {
          v127 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
          v128 = sub_10020F36C(v127);

          v129 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v22 databaseID]);
          v130 = [v129 stringByAppendingPathExtension:SSDownloadMetadataKeyFileExtensionMoviePackage];

          v131 = [v128 stringByAppendingPathComponent:v130];

          v124 = v131;
          v209 = 1;
          goto LABEL_189;
        }

        v209 = v126;
        if (v124)
        {
LABEL_189:
          [(PrepareDownloadResponse *)v3 setDestinationPath:v124];
          v132 = [(SSMemoryEntity *)self->_download valueForProperty:@"has_hdr"];
          v203 = v132;
          if (objc_opt_respondsToSelector())
          {
            v133 = [v132 BOOLValue];
          }

          else
          {
            v133 = 0;
          }

          v134 = [(SSMemoryEntity *)self->_download valueForProperty:@"has_4k"];
          v202 = v134;
          if (objc_opt_respondsToSelector())
          {
            v135 = [v134 BOOLValue];
          }

          else
          {
            v135 = 0;
          }

          [(PrepareDownloadResponse *)v3 setHasHDR:v133];
          [(PrepareDownloadResponse *)v3 setHas4K:v135];
          v136 = [(PrepareDownloadOperation *)self _newURLRequestWithAsset:v22];
          v204 = v124;
          v211 = v136;
          if (!v136)
          {
LABEL_250:
            [(PrepareDownloadResponse *)v3 setHLS:v209];
            [(PrepareDownloadResponse *)v3 setRequiresDownloadHandler:v136 == 0];
            [(PrepareDownloadResponse *)v3 setURLRequest:v136];
            v160 = [(PrepareDownloadResponse *)v3 dataConsumer];
            v161 = [(PrepareDownloadOperation *)self _shouldFailForDiskSpaceWithAsset:v22 dataConsumer:v160];

            if (v161)
            {
              v162 = +[SSLogConfig sharedDaemonConfig];
              if (!v162)
              {
                v162 = +[SSLogConfig sharedConfig];
              }

              v163 = [v162 shouldLog];
              if ([v162 shouldLogToDisk])
              {
                v164 = v163 | 2;
              }

              else
              {
                v164 = v163;
              }

              v165 = [v162 OSLogObject];
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                v166 = v164;
              }

              else
              {
                v166 = v164 & 2;
              }

              if (v166)
              {
                v167 = objc_opt_class();
                v223 = 138412546;
                v224 = v167;
                v225 = 2048;
                v226 = v215;
                LODWORD(v201) = 22;
                v199 = &v223;
                v168 = _os_log_send_and_compose_impl();

                v136 = v211;
                p_vtable = (DemoteApplicationOperation + 24);
                if (!v168)
                {
LABEL_304:

                  v196 = SSError();
                  [(PrepareDownloadResponse *)v3 setError:v196];

                  [(PrepareDownloadResponse *)v3 setResult:2];
                  v197 = [(PrepareDownloadResponse *)v3 dataConsumer];
                  v178 = v197;
                  if (v197)
                  {
                    [v197 suspend];
                    [(PrepareDownloadResponse *)v3 setDataConsumer:0];
                  }

                  v50 = v204;
                  v189 = v206;
LABEL_307:

                  goto LABEL_87;
                }

                v165 = [NSString stringWithCString:v168 encoding:4, &v223, v201];
                free(v168);
                v199 = v165;
                SSFileLog();
              }

              else
              {
                p_vtable = (DemoteApplicationOperation + 24);
              }

              goto LABEL_304;
            }

            v169 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
            v170 = [v169 BOOLValue];

            if (v170)
            {
              [(PrepareDownloadResponse *)v3 setRestore:1];
              -[PrepareDownloadResponse setCellularAllowed:](v3, "setCellularAllowed:", [v136 allowsCellularAccess]);
              if ((SSDownloadKindIsPodcastKind() & v170) == 1)
              {
                [(PrepareDownloadResponse *)v3 setInfersDiscretionary:1];
                [(PrepareDownloadResponse *)v3 setClientIdentifier:@"com.apple.podcasts"];
                v171 = +[SSLogConfig sharedDaemonConfig];
                if (!v171)
                {
                  v171 = +[SSLogConfig sharedConfig];
                }

                v172 = [v171 shouldLog];
                if ([v171 shouldLogToDisk])
                {
                  v172 |= 2u;
                }

                v173 = [v171 OSLogObject];
                if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                {
                  v172 &= 2u;
                }

                if (v172)
                {
                  v174 = objc_opt_class();
                  v223 = 138412546;
                  v224 = v174;
                  v225 = 2048;
                  v226 = v215;
                  LODWORD(v201) = 22;
                  v199 = &v223;
                  v175 = _os_log_send_and_compose_impl();

                  if (!v175)
                  {
LABEL_276:

                    [(PrepareDownloadResponse *)v3 setRequiresPowerPluggedIn:[(PrepareDownloadOperation *)self _requiresPoweredPluggedIn]];
                    [(PrepareDownloadOperation *)self _transferProgressFractionWithAsset:v22];
                    [(PrepareDownloadResponse *)v3 setTransferProgressFraction:?];
                    v177 = [(SSMemoryEntity *)self->_download valueForProperty:@"rate_limit"];
                    v178 = v177;
                    if (v177)
                    {
                      -[PrepareDownloadResponse setBytesPerSecondLimit:](v3, "setBytesPerSecondLimit:", [v177 integerValue]);
                    }

                    v214 = v22;
                    v179 = [(SSMemoryEntity *)self->_download valueForProperty:@"resource_timeout_interval", v199];
                    v180 = v179;
                    if (v179)
                    {
                      [v179 doubleValue];
                      [(PrepareDownloadResponse *)v3 setTimeoutIntervalForResource:?];
                    }

                    v210 = v5;
                    v181 = [(SSMemoryEntity *)self->_download valueForProperty:@"timeout_interval"];
                    v182 = v181;
                    if (v181)
                    {
                      [v181 doubleValue];
                      [(PrepareDownloadResponse *)v3 setTimeoutIntervalForRequest:?];
                    }

                    v183 = [(SSMemoryEntity *)self->_download valueForProperty:@"loading_priority"];
                    if (v183)
                    {
                      [(PrepareDownloadResponse *)v3 setLoadingPriority:v183];
                    }

                    v184 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
                    v185 = [v184 integerValue];

                    [(PrepareDownloadResponse *)v3 setAutomaticType:v185];
                    if (v185)
                    {
                      v186 = v170;
                    }

                    else
                    {
                      v186 = 1;
                    }

                    if ((v186 & 1) == 0)
                    {
                      [(PrepareDownloadResponse *)v3 setDiscretionary:1];
                      if (v185 == 2)
                      {
                        v187 = [(SSMemoryEntity *)self->_download valueForProperty:@"bundle_id"];
                        if (v187)
                        {
                          [(PrepareDownloadResponse *)v3 setClientSecondaryIdentifier:v187];
                        }
                      }
                    }

                    -[PrepareDownloadResponse setTaskPriority:](v3, "setTaskPriority:", [objc_opt_class() _URLSessionTaskPriorityForDownload:self->_download]);
                    if (v185 == 2)
                    {
                      v188 = 1;
                    }

                    else
                    {
                      v188 = v170;
                    }

                    v189 = v206;
                    if ((v188 & 1) == 0)
                    {
                      v190 = [(SSMemoryEntity *)self->_download valueForProperty:@"thumbnail_url"];
                      v191 = v190;
                      if (v220 && v190 && SSDownloadKindIsSoftwareKind())
                      {
                        v216 = [[ApplicationHandle alloc] initWithDownloadHandle:v219 bundleIdentifier:v220];
                        v192 = [[NSURL alloc] initWithString:v191];
                        v193 = v3;
                        v194 = [[LoadSoftwareThumbnailOperation alloc] initWithApplicationHandle:v216 thumbnailURL:v192];
                        v222 = v194;
                        v195 = [NSArray arrayWithObjects:&v222 count:1];
                        [(PrepareDownloadResponse *)v193 setBackgroundOperations:v195];

                        v3 = v193;
                        v189 = v206;
                      }
                    }

                    v5 = v210;
                    v136 = v211;
                    v22 = v214;
                    p_vtable = (DemoteApplicationOperation + 24);
                    v50 = v204;
                    goto LABEL_307;
                  }

                  v173 = [NSString stringWithCString:v175 encoding:4, &v223, v201];
                  free(v175);
                  v199 = v173;
                  SSFileLog();
                }

                goto LABEL_276;
              }
            }

            else
            {
              SSDownloadKindIsPodcastKind();
            }

            v176 = [(PrepareDownloadOperation *)self _clientIdentifier];
            [(PrepareDownloadResponse *)v3 setClientIdentifier:v176];

            v171 = [v22 valueForProperty:@"is_discretionary"];
            -[PrepareDownloadResponse setDiscretionary:](v3, "setDiscretionary:", [v171 BOOLValue]);
            goto LABEL_276;
          }

          if (SSDownloadKindIsMediaKind())
          {
            v137 = [v22 valueForProperty:@"avfoundation_blocked"];
            if ([v137 BOOLValue])
            {
            }

            else
            {
              v146 = [(PrepareDownloadOperation *)self _isPodcastRestore];

              if ((v146 & 1) == 0)
              {
                v153 = [(PrepareDownloadOperation *)self _newAVAssetDownloadSessionOptionsWithAsset:v22 URLRequest:v136];
                [(PrepareDownloadResponse *)v3 setAVAssetDownloadSessionOptions:v153];
                goto LABEL_249;
              }
            }
          }

          if (![(PrepareDownloadOperation *)self _isPodcastRestore])
          {
LABEL_236:
            v153 = [(PrepareDownloadOperation *)self _newDataConsumerWithAsset:v22 destinationPath:v124, v199];
            if (![objc_opt_class() _isDTServiceHubIssuedRequest:v136])
            {
LABEL_248:
              [(PrepareDownloadResponse *)v3 setDataConsumer:v153, v200];
LABEL_249:

              goto LABEL_250;
            }

            v154 = +[SSLogConfig sharedDaemonConfig];
            if (!v154)
            {
              v154 = +[SSLogConfig sharedConfig];
            }

            v155 = [v154 shouldLog];
            if ([v154 shouldLogToDisk])
            {
              v155 |= 2u;
            }

            v156 = [v154 OSLogObject];
            if (!os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
            {
              v155 &= 2u;
            }

            if (v155)
            {
              v157 = v22;
              v158 = objc_opt_class();
              v223 = 138412290;
              v224 = v158;
              LODWORD(v201) = 12;
              v200 = &v223;
              v159 = _os_log_send_and_compose_impl();

              v22 = v157;
              if (!v159)
              {
LABEL_247:

                [v153 setOverrideProgress:1];
                v136 = v211;
                goto LABEL_248;
              }

              v156 = [NSString stringWithCString:v159 encoding:4, &v223, v201];
              free(v159);
              v200 = v156;
              SSFileLog();
            }

            goto LABEL_247;
          }

          v147 = +[SSLogConfig sharedDaemonConfig];
          if (!v147)
          {
            v147 = +[SSLogConfig sharedConfig];
          }

          v148 = [v147 shouldLog];
          if ([v147 shouldLogToDisk])
          {
            v148 |= 2u;
          }

          v149 = [v147 OSLogObject];
          if (!os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            v148 &= 2u;
          }

          if (v148)
          {
            v150 = objc_opt_class();
            v151 = [v22 databaseID];
            v223 = 138543874;
            v224 = v150;
            v225 = 2048;
            v226 = v215;
            v227 = 2048;
            v228 = v151;
            LODWORD(v201) = 32;
            v199 = &v223;
            v152 = _os_log_send_and_compose_impl();

            if (!v152)
            {
LABEL_235:

              v136 = v211;
              goto LABEL_236;
            }

            v149 = [NSString stringWithCString:v152 encoding:4, &v223, v201];
            free(v152);
            v199 = v149;
            SSFileLog();
          }

          goto LABEL_235;
        }
      }

      else
      {
        v209 = 0;
        if (v124)
        {
          goto LABEL_189;
        }
      }

      v124 = +[ScratchManager directoryPathForDownloadID:assetID:kind:createIfNeeded:](ScratchManager, "directoryPathForDownloadID:assetID:kind:createIfNeeded:", v215, [v22 databaseID], v5, 1);
      goto LABEL_189;
    }

    if (SSDownloadKindIsSoftwareKind())
    {
      v96 = [(PrepareDownloadResponse *)v3 clientIdentifier];
      if (v96)
      {
        v97 = v96;
        v98 = [(PrepareDownloadResponse *)v3 clientIdentifier];
        if ([v98 isEqualToString:@"atc"])
        {
          v99 = [ApplicationWorkspace keepSafeHarborDataForBundleID:v220];

          if (v99)
          {
            v100 = +[SSLogConfig sharedDaemonConfig];
            if (!v100)
            {
              v100 = +[SSLogConfig sharedConfig];
            }

            v101 = [v100 shouldLog];
            if ([v100 shouldLogToDisk])
            {
              v101 |= 2u;
            }

            v102 = [v100 OSLogObject];
            if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
            {
              v101 &= 2u;
            }

            if (v101)
            {
              v103 = objc_opt_class();
              v223 = 138412802;
              v224 = v103;
              v225 = 2048;
              v226 = v215;
              v227 = 2112;
              v228 = v220;
              v104 = v103;
              LODWORD(v201) = 32;
              v199 = &v223;
              v105 = _os_log_send_and_compose_impl();

              if (!v105)
              {
                goto LABEL_144;
              }

              v102 = [NSString stringWithCString:v105 encoding:4, &v223, v201];
              free(v105);
              v199 = v102;
              SSFileLog();
            }

LABEL_144:
            [(PrepareDownloadResponse *)v3 setIsPerDeviceVPP:1];
            v106 = [NSNumber numberWithInteger:1];
            [(PrepareDownloadResponse *)v3 setDownloadRestoreState:v106];

            download = self->_download;
            v108 = [NSNumber numberWithInteger:1];
            [(SSMemoryEntity *)download setValue:v108 forProperty:@"download_state.restore_state"];

            v82 = +[SSLogConfig sharedDaemonConfig];
            if (!v82)
            {
              v82 = +[SSLogConfig sharedConfig];
            }

            v109 = [v82 shouldLog];
            if ([v82 shouldLogToDisk])
            {
              v110 = v109 | 2;
            }

            else
            {
              v110 = v109;
            }

            v85 = [v82 OSLogObject];
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v111 = v110;
            }

            else
            {
              v111 = v110 & 2;
            }

            if (!v111)
            {
              goto LABEL_178;
            }

            goto LABEL_153;
          }
        }

        else
        {
        }
      }
    }

    v59 = +[SSLogConfig sharedDaemonConfig];
    if (!v59)
    {
      v59 = +[SSLogConfig sharedConfig];
    }

    v138 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      v139 = v138 | 2;
    }

    else
    {
      v139 = v138;
    }

    v62 = [v59 OSLogObject];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v140 = v139;
    }

    else
    {
      v140 = v139 & 2;
    }

    if (v140)
    {
      goto LABEL_72;
    }

    goto LABEL_209;
  }

  [(PrepareDownloadResponse *)v3 setResult:4];
  v50 = +[SSLogConfig sharedDaemonConfig];
  if (!v50)
  {
    v50 = +[SSLogConfig sharedConfig];
  }

  v51 = [v50 shouldLog];
  if ([v50 shouldLogToDisk])
  {
    v52 = v51 | 2;
  }

  else
  {
    v52 = v51;
  }

  v53 = [v50 OSLogObject];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = v52;
  }

  else
  {
    v54 = v52 & 2;
  }

  if (!v54)
  {
    p_vtable = (DemoteApplicationOperation + 24);
    goto LABEL_86;
  }

  v55 = objc_opt_class();
  v223 = 138412546;
  v224 = v55;
  v225 = 2048;
  v226 = v215;
  v56 = v55;
  LODWORD(v201) = 22;
  v199 = &v223;
  v57 = _os_log_send_and_compose_impl();

  p_vtable = (DemoteApplicationOperation + 24);
  if (v57)
  {
    v53 = [NSString stringWithCString:v57 encoding:4, &v223, v201];
    free(v57);
    v199 = v53;
    SSFileLog();
LABEL_86:
  }

LABEL_87:

LABEL_213:
  v141 = [p_vtable + 287 defaultWorkspace];
  if ([v141 isMultiUser] && !-[PrepareDownloadResponse result](v3, "result"))
  {
    v142 = [p_vtable + 287 defaultWorkspace];
    v143 = [v142 shouldModifyQuota:v5];

    if (!v143)
    {
      goto LABEL_218;
    }

    v141 = [p_vtable + 287 defaultWorkspace];
    [v141 suspendQuotas];
  }

LABEL_218:
  v144 = [(PrepareDownloadOperation *)self outputBlock];
  v145 = v144;
  if (v144)
  {
    (*(v144 + 16))(v144, self, v3);
    [(PrepareDownloadOperation *)self setOutputBlock:0];
  }
}

+ (BOOL)_isDTServiceHubIssuedRequest:(id)a3
{
  v3 = [a3 URL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 host];
    v5 = [v4 isEqualToString:@"localhost"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_mediaAssetsForDownloadIdentifier:(int64_t)a3 session:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v28[0] = @"avfoundation_blocked";
  v28[1] = @"bytes_total";
  v28[2] = @"download_token";
  v28[3] = @"dpinfo_data";
  v28[4] = @"uncompressed_size";
  v28[5] = @"hash_array";
  v28[6] = @"hash_type";
  v28[7] = @"body_data";
  v28[8] = @"http_headers";
  v28[9] = @"http_method";
  v28[10] = @"initial_odr_size";
  v28[11] = @"is_discretionary";
  v28[12] = @"is_downloaded";
  v28[13] = @"is_drm_free";
  v28[14] = @"is_external";
  v28[15] = @"is_hls";
  v28[16] = @"is_local_cache_server";
  v28[17] = @"is_zip_streamable";
  v28[18] = @"local_path";
  v28[19] = @"bytes_to_hash";
  v28[20] = @"sinfs_data";
  v28[21] = @"store_download_key";
  v28[22] = @"timeout_interval";
  v28[23] = @"asset_type";
  v28[24] = @"url";
  v28[25] = @"url_session_task_id";
  v8 = [[NSArray alloc] initWithObjects:v28 count:26];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:a3];
  v10 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(asset.blocked_reason equalToLongLong:0)", 0];
  v27[0] = v9;
  v27[1] = v10;
  v11 = [NSArray arrayWithObjects:v27 count:2];
  v12 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  v22 = v5;
  v13 = [v5 database];
  v26 = @"asset_order";
  v14 = [NSArray arrayWithObjects:&v26 count:1];
  v15 = [DownloadAssetEntity queryWithDatabase:v13 predicate:v12 orderingProperties:v14];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001D7834;
  v23[3] = &unk_10032BD38;
  v16 = v7;
  v24 = v16;
  v17 = v6;
  v25 = v17;
  [v15 enumerateMemoryEntitiesWithProperties:v8 usingBlock:v23];
  if ([v17 count])
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18;

  for (i = 25; i != -1; --i)
  {
  }

  return v19;
}

- (BOOL)_allowsCellularAccessForAsset:(id)a3
{
  v4 = a3;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0);
  v74 = self;
  v6 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
  v7 = [v6 integerValue];

  if (v7)
  {
    v8 = AppBooleanValue == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = &CFDictionaryGetValue_ptr;
  v71 = v4;
  if (v8)
  {
    LOBYTE(v13) = 0;
    goto LABEL_82;
  }

  v10 = [v4 valueForProperty:@"bytes_total"];
  v75 = [v10 longLongValue];

  v11 = [v4 valueForProperty:@"initial_odr_size"];
  if (objc_opt_respondsToSelector())
  {
    v75 = &v75[[v11 unsignedLongLongValue]];
  }

  v70 = v11;
  v12 = [(SSDownloadPolicy *)v74->_policy policyRules];
  v82 = 0u;
  v83 = 0u;
  v13 = [v12 count] == 0;
  v84 = 0u;
  v85 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v83;
    v73 = SSDownloadSizeLimitDisabled;
    v72 = SSDownloadSizeLimitNoLimit;
    v76 = AppBooleanValue;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v83 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v82 + 1) + 8 * i);
        if ([v19 cellularDataStates] == 2)
        {
          if (!AppBooleanValue)
          {
            goto LABEL_41;
          }

          v13 |= AppBooleanValue != 0;
        }

        else if ([v19 isCellularAllowed])
        {
          v20 = v14;
          v21 = [v19 userDefaultStates];
          v77 = [v21 count];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v78 objects:v93 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v79;
            while (2)
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v79 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                if ([*(*(&v78 + 1) + 8 * j) currentBoolValue])
                {

                  goto LABEL_27;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v78 objects:v93 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          if (v77)
          {
            v14 = v20;
          }

          else
          {
LABEL_27:
            v27 = [v19 downloadSizeLimit];
            v14 = v20;
            if (v27 == v73)
            {

LABEL_41:
              LOBYTE(v13) = 0;
              goto LABEL_42;
            }

            v29 = v27 == v72 || v75 <= v27;
            v13 |= v29;
          }

          AppBooleanValue = v76;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v82 objects:v94 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_42:

  v30 = [v71 valueForProperty:@"is_hls"];
  v9 = &CFDictionaryGetValue_ptr;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v30 BOOLValue])
  {
    v31 = [(SSMemoryEntity *)v74->_download valueForProperty:@"kind"];
    if (!SSDownloadKindIsVideosAppKind())
    {
LABEL_62:
      LOBYTE(v13) = 0;
      goto LABEL_63;
    }

    if ([v14 count])
    {
LABEL_63:

      v40 = 0;
      goto LABEL_64;
    }

    v32 = +[SSLogConfig sharedDaemonConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    v33 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = v33 | 2;
    }

    else
    {
      v34 = v33;
    }

    v35 = [v32 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 2;
    }

    if (v36)
    {
      LOWORD(v86[0]) = 0;
      LODWORD(v69) = 2;
      v68 = v86;
      v37 = _os_log_send_and_compose_impl();

      if (!v37)
      {
        goto LABEL_58;
      }

      v35 = [NSString stringWithCString:v37 encoding:4, v86, v69];
      free(v37);
      v68 = v35;
      SSFileLog();
    }

LABEL_58:
    if (CFPreferencesGetAppBooleanValue(@"CellularDataModeDownload", @"com.apple.videos-preferences", 0))
    {
      v38 = +[ISNetworkObserver sharedInstance];
      [v38 networkType];
      IsCellularType = SSNetworkTypeIsCellularType();

      if (IsCellularType)
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        v65 = CFPreferencesCopyAppValue(@"DownloadQualityWifi", @"com.apple.videos-preferences");
        v66 = [v65 isEqualToString:@"BestQualityDownload"];
        v67 = CFPreferencesCopyAppValue(@"DownloadQualityCellular", @"com.apple.videos-preferences");
        v13 = [v67 isEqualToString:@"BestQualityDownload"] | v66 ^ 1;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v40 = 1;
LABEL_64:
  v41 = [(SSMemoryEntity *)v74->_download valueForProperty:@"is_restore", v68];
  v42 = [v41 BOOLValue];

  if (v42)
  {
    v43 = +[RestoreManager sharedInstance];
    v44 = [v43 isCellularAllowed];
    v40 &= v44 ^ 1;
    LOBYTE(v13) = v44 | v13;
  }

  v45 = [(SSDownloadPolicy *)v74->_policy downloadKind];
  v46 = v45;
  if ((v13 & 1) != 0 && v40)
  {
    v47 = v70;
    if (v45)
    {
      v48 = [SSURLBagContext contextWithBagType:[(SSDownloadPolicy *)v74->_policy URLBagType]];
      v49 = [(PrepareDownloadOperation *)v74 loadedURLBagWithContext:v48 returningError:0];
      v50 = [v49 networkConstraintsForDownloadKind:v46];
      v51 = v50;
      if (v50)
      {
        v52 = [v50 sizeLimitForNetworkType:1];
        LOBYTE(v13) = v52 != SSDownloadSizeLimitDisabled && (v52 == SSDownloadSizeLimitNoLimit || v75 <= v52);
      }

      else
      {
        LOBYTE(v13) = 1;
      }
    }
  }

  else
  {
    v47 = v70;
  }

  v4 = v71;
LABEL_82:
  v54 = [v9[412] sharedDaemonConfig];
  if (!v54)
  {
    v54 = [v9[412] sharedConfig];
  }

  v55 = [v54 shouldLog];
  if ([v54 shouldLogToDisk])
  {
    v56 = v55 | 2;
  }

  else
  {
    v56 = v55;
  }

  v57 = [v54 OSLogObject];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = v56;
  }

  else
  {
    v58 = v56 & 2;
  }

  if (!v58)
  {
    goto LABEL_93;
  }

  v59 = [v4 databaseID];
  v60 = [v4 valueForProperty:@"bytes_total"];
  v61 = [v60 longLongValue];
  v62 = [(SSMemoryEntity *)v74->_download databaseID];
  v86[0] = 67109888;
  v86[1] = v13 & 1;
  v87 = 2048;
  v88 = v59;
  v89 = 2048;
  v90 = v61;
  v91 = 2048;
  v92 = v62;
  LODWORD(v69) = 38;
  v63 = _os_log_send_and_compose_impl();

  v4 = v71;
  if (v63)
  {
    v57 = [NSString stringWithCString:v63 encoding:4, v86, v69];
    free(v63);
    SSFileLog();
LABEL_93:
  }

  return v13 & 1;
}

- (BOOL)_isPodcastRestore
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
  v4 = [v3 BOOLValue];

  return [(PrepareDownloadOperation *)self _isPodcast]& v4;
}

- (BOOL)_isPodcast
{
  v2 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  IsPodcastKind = SSDownloadKindIsPodcastKind();

  return IsPodcastKind;
}

- (BOOL)_assetNeedsDecryption:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForProperty:@"is_drm_free"];
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 valueForProperty:@"dpinfo_data"];
    v5 = v6 != 0;
  }

  return v5;
}

- (int64_t)_assetSizeFromURLResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 statusCode];
    if (v5 == 206)
    {
      v6 = [v4 allHeaderFields];
      v7 = [v6 objectForKey:@"Content-Range"];

      if (!v7 || (+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"/"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 rangeOfCharacterFromSet:v8], v8, v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9 + 1, v10 >= objc_msgSend(v7, "length")))
      {
        v12 = -1;
      }

      else
      {
        v11 = [v7 substringFromIndex:v10];
        v12 = [v11 longLongValue];
      }
    }

    else if ((v5 - 200) > 0x63)
    {
      v12 = -1;
    }

    else
    {
      v12 = [v4 expectedContentLength];
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)_bestMediaAsset
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
  v4 = [v3 BOOLValue];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_mediaAssets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v34 = v4;
    v8 = *v37;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v36 + 1) + 8 * v9);
      v11 = [v10 valueForProperty:@"url"];
      if (v11)
      {
        v12 = [[NSURL alloc] initWithString:v11];
        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = v12;
    v15 = [v10 valueForProperty:@"is_local_cache_server"];
    v16 = [v15 BOOLValue];

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v33 = v22;
      v23 = [v10 databaseID];
      v24 = self;
      v25 = v16;
      v26 = v23;
      v27 = [(SSMemoryEntity *)v24->_download databaseID];
      v40 = 138413314;
      v41 = v22;
      v42 = 2048;
      v43 = v26;
      v16 = v25;
      v44 = 2048;
      v45 = v27;
      v46 = 1024;
      v47 = v25;
      v48 = 2112;
      v49 = v14;
      LODWORD(v32) = 48;
      v28 = _os_log_send_and_compose_impl();

      v29 = v34;
      if (!v28)
      {
LABEL_24:

        if ((v29 & v16) == 1)
        {
          v35 = dispatch_semaphore_create(0);
          v30 = v35;
          ACSLocateCachingServer();
          dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
        }

        v13 = v10;

        goto LABEL_27;
      }

      v20 = [NSString stringWithCString:v28 encoding:4, &v40, v32];
      free(v28);
      SSFileLog();
    }

    else
    {
      v29 = v34;
    }

    goto LABEL_24;
  }

LABEL_10:
  v13 = 0;
LABEL_27:

  return v13;
}

- (id)_clientIdentifier
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"application_id.bundle_id"];
  if (!v3)
  {
    v4 = [(SSMemoryEntity *)self->_download valueForProperty:@"override_audit_token_data"];
    if ([v4 length] != 32)
    {
      v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"client.audit_token_data"];

      v4 = v5;
    }

    if ([v4 length] == 32)
    {
      v12 = 0u;
      v13 = 0u;
      [v4 getBytes:&v12 length:32];
      v10 = v12;
      v11 = v13;
      CPCopyBundleIdentifierAndTeamFromAuditToken();
    }

    v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"client_id", v10, v11];
    if (!v3)
    {
      v6 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
      v7 = [v6 integerValue];

      if (v7)
      {
        v8 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
        if (SSDownloadKindIsSoftwareKind())
        {
          v3 = @"com.apple.AppStore";
        }

        else if (SSDownloadKindIsMediaKind())
        {
          v3 = @"com.apple.MobileStore";
        }

        else if (SSDownloadKindIsEBookKind())
        {
          v3 = @"com.apple.iBooks";
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (BOOL)_itemIsInMediaLibrary
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
  if (v2)
  {
    v3 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreItemID equalToValue:v2];
    v4 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreFamilyAccountID equalToInt64:0];
    v17[0] = v3;
    v17[1] = v4;
    v5 = [NSArray arrayWithObjects:v17 count:2];
    v6 = [ML3AllCompoundPredicate predicateMatchingPredicates:v5];

    v7 = +[ML3MusicLibrary sharedLibrary];
    v8 = [ML3Track queryWithLibrary:v7 predicate:v6];

    v9 = [NSArray arrayWithObject:ML3TrackPropertyLocationFileName];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001D8F10;
    v12[3] = &unk_100327328;
    v12[4] = &v13;
    [v8 enumeratePersistentIDsAndProperties:v9 usingBlock:v12];
  }

  v10 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v10 & 1;
}

- (BOOL)_itemIsInSoftwareLibrary
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
  v4 = [(SSMemoryEntity *)self->_download valueForProperty:@"bundle_id"];
  v5 = objc_autoreleasePoolPush();
  if (v3)
  {
    v6 = [LSApplicationProxy applicationProxyForItemID:v3];
  }

  else
  {
    if (!v4)
    {
      LOBYTE(v8) = 0;
      goto LABEL_9;
    }

    v6 = [LSApplicationProxy applicationProxyForIdentifier:v4];
  }

  v7 = v6;
  if (v6)
  {
    v8 = [v6 isPlaceholder] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

LABEL_9:
  objc_autoreleasePoolPop(v5);

  return v8;
}

- (int64_t)_loadSizeIfNecessaryForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:@"bytes_total"];
  v6 = [v5 longLongValue];

  if (v6 > 0 || [(PrepareDownloadOperation *)self _isPodcast])
  {
    v7 = -1;
  }

  else
  {
    v7 = [(PrepareDownloadOperation *)self _loadSizeForAsset:v4 error:0];
  }

  return v7;
}

- (int64_t)_loadSizeForAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 valueForProperty:@"url"];
  if (v7)
  {
    v52 = a4;
    v8 = [SSMutableURLRequestProperties alloc];
    v9 = [NSURL URLWithString:v7];
    v10 = [v8 initWithURL:v9];

    [v10 setAllowedRetryCount:0];
    [v10 setCachePolicy:1];
    [v10 setTimeoutInterval:30.0];
    [v10 setHTTPMethod:@"HEAD"];
    v11 = [v6 valueForProperty:@"http_headers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1001D9784;
        v54[3] = &unk_100327658;
        v55 = v10;
        [v12 enumerateKeysAndObjectsUsingBlock:v54];
      }
    }

    v50 = v11;
    v51 = v7;
    v13 = objc_alloc_init(ISURLOperation);
    [v13 setRequestProperties:v10];
    [v13 setDelegate:self];
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [v6 databaseID];
      v56 = 138412546;
      v57 = v18;
      v58 = 2048;
      v59 = v20;
      LODWORD(v48) = 22;
      v47 = &v56;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
        goto LABEL_17;
      }

      v17 = [NSString stringWithCString:v21 encoding:4, &v56, v48];
      free(v21);
      v47 = v17;
      SSFileLog();
    }

LABEL_17:
    v53 = 0;
    v22 = [(PrepareDownloadOperation *)self runSubOperation:v13 returningError:&v53];
    v23 = v53;
    v49 = v22;
    if (v22)
    {
      v24 = [v13 response];
      v25 = [v24 expectedContentLength];

      if (v25 >= 1)
      {
        v26 = +[SSLogConfig sharedDaemonConfig];
        if (!v26)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        v27 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          v28 = v27 | 2;
        }

        else
        {
          v28 = v27;
        }

        v29 = [v26 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 2;
        }

        if (v30)
        {
          v31 = objc_opt_class();
          v32 = v31;
          v33 = [v6 databaseID];
          v56 = 138412802;
          v57 = v31;
          v58 = 2048;
          v59 = v25;
          v60 = 2048;
          v61 = v33;
          LODWORD(v48) = 32;
          v34 = _os_log_send_and_compose_impl();

          v7 = v51;
          if (!v34)
          {
LABEL_48:

            v36 = [NSNumber numberWithLongLong:v25];
            [v6 setValue:v36 forProperty:@"bytes_total"];
LABEL_49:

            [v13 setDelegate:0];
            v35 = v49 ^ 1;
            a4 = v52;
            if (!v52)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }

          v29 = [NSString stringWithCString:v34 encoding:4, &v56, v48];
          free(v34);
          SSFileLog();
        }

        else
        {
          v7 = v51;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v25 = -1;
    }

    v36 = +[SSLogConfig sharedDaemonConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = objc_opt_class();
      v42 = v41;
      v43 = [v6 databaseID];
      v56 = 138412802;
      v57 = v41;
      v58 = 2048;
      v59 = v43;
      v60 = 2112;
      v61 = v23;
      LODWORD(v48) = 32;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
        v7 = v51;
        goto LABEL_49;
      }

      v39 = [NSString stringWithCString:v44 encoding:4, &v56, v48];
      free(v44);
      SSFileLog();
    }

    v7 = v51;

    goto LABEL_49;
  }

  v23 = 0;
  v35 = 1;
  v25 = -1;
  if (!a4)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (v35)
  {
    v45 = v23;
    *a4 = v23;
  }

LABEL_52:

  return v25;
}

- (id)_newAVAssetDownloadSessionOptionsWithAsset:(id)a3 URLRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_10034C108 forKey:AVAssetDownloadSessionPriorityKey];
  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"client_id"];
  if (v9)
  {
    [v8 setObject:v9 forKey:AVAssetDownloadSessionClientBundleIdentifierKey];
  }

  if ([(PrepareDownloadOperation *)self _sendsStoreHeadersForAsset:v6])
  {
    v10 = [(PrepareDownloadOperation *)self _newAVContentInfoDictionary];
    [v8 setObject:v10 forKey:AVAssetDownloadSessioniTunesStoreContentInfoKey];
  }

  v65 = v9;
  if (([v7 allowsCellularAccess] & 1) == 0)
  {
    [v8 setObject:&off_10034C120 forKey:AVAssetDownloadSessionMaxSizeAllowedForCellularAccessKey];
    goto LABEL_37;
  }

  if (![(PrepareDownloadOperation *)self _isPodcast])
  {
    goto LABEL_37;
  }

  v63 = v7;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
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
    goto LABEL_18;
  }

  v16 = [(SSMemoryEntity *)self->_download databaseID];
  v71 = 134217984;
  v72 = v16;
  LODWORD(v58) = 12;
  v57 = &v71;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, &v71, v58];
    free(v17);
    v57 = v14;
    SSFileLog();
LABEL_18:
  }

  v18 = [SSURLBagContext contextWithBagType:[(SSDownloadPolicy *)self->_policy URLBagType]];
  v19 = [(PrepareDownloadOperation *)self loadedURLBagWithContext:v18 returningError:0];
  v20 = [(SSDownloadPolicy *)self->_policy downloadKind];
  v21 = [v19 networkConstraintsForDownloadKind:v20];

  if (!v21)
  {
    goto LABEL_36;
  }

  v22 = [v21 sizeLimitForNetworkType:1];
  if (v22 == SSDownloadSizeLimitDisabled)
  {
    goto LABEL_36;
  }

  v59 = v22;
  v61 = v6;
  v23 = +[SSLogConfig sharedDaemonConfig];
  if (!v23)
  {
    v23 = +[SSLogConfig sharedConfig];
  }

  v24 = [v23 shouldLog];
  if ([v23 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v23 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 & 2;
  }

  if (!v27)
  {
    v29 = v59;
    goto LABEL_34;
  }

  v28 = [(SSMemoryEntity *)self->_download databaseID];
  v71 = 134218240;
  v29 = v59;
  v72 = v59;
  v73 = 2048;
  v74 = v28;
  LODWORD(v58) = 22;
  v57 = &v71;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v26 = [NSString stringWithCString:v30 encoding:4, &v71, v58];
    free(v30);
    v57 = v26;
    SSFileLog();
LABEL_34:
  }

  v31 = [NSNumber numberWithLongLong:v29];
  [v8 setObject:v31 forKey:AVAssetDownloadSessionMaxSizeAllowedForCellularAccessKey];

  v6 = v61;
LABEL_36:

  v7 = v63;
LABEL_37:
  v32 = objc_alloc_init(NSMutableDictionary);
  v33 = [v6 valueForProperty:@"hash_array"];
  v34 = [v6 valueForProperty:@"bytes_to_hash"];
  v35 = [v34 integerValue];

  if (v35 >= 1 && v33 != 0)
  {
    v37 = [NSPropertyListSerialization propertyListWithData:v33 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_55:

      goto LABEL_56;
    }

    v62 = v6;
    v64 = v7;
    v60 = v8;
    v38 = objc_alloc_init(NSMutableArray);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v67;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v67 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = ISCopyDigestFromString();
          [v38 addObject:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v41);
    }

    if ([v38 count] == 1)
    {
      v45 = [v38 firstObject];
      v46 = sub_1000AEC68();
      [v32 setObject:v45 forKey:v46];

      v8 = v60;
      v6 = v62;
      v7 = v64;
    }

    else
    {
      v8 = v60;
      v6 = v62;
      v7 = v64;
      if ([v38 count] < 2)
      {
LABEL_54:

        goto LABEL_55;
      }

      v47 = [NSNumber numberWithInteger:v35];
      v48 = sub_1000AEC78();
      [v32 setObject:v47 forKey:v48];

      v45 = sub_1000AEC58();
      [v32 setObject:v38 forKey:v45];
    }

    goto LABEL_54;
  }

LABEL_56:
  v49 = [v6 valueForProperty:{@"sinfs_data", v57}];
  if (v49)
  {
    v50 = [NSPropertyListSerialization propertyListWithData:v49 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = sub_1000AECC8();
      [v32 setObject:v50 forKey:v51];
    }
  }

  if ([v32 count])
  {
    [v8 setObject:v32 forKey:AVAssetDownloadSessionPurchaseBundleKey];
  }

  v52 = [v7 allHTTPHeaderFields];
  v53 = objc_alloc_init(NSMutableDictionary);
  v54 = kISCookieHeader;
  v55 = [v52 objectForKey:kISCookieHeader];
  if (v55)
  {
    [v53 setObject:v55 forKey:v54];
  }

  if ([v53 count])
  {
    [v8 setObject:v53 forKey:AVAssetDownloadSessionHTTPHeaderFieldsKey];
  }

  return v8;
}

- (id)_newAVContentInfoDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_saga_id"];
  if ([v4 longLongValue])
  {
    v5 = @"match";
  }

  else
  {
    v6 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];

    v5 = @"purchaseHistory";
    v4 = v6;
  }

  v7 = AVAssetDownloadSessioniTunesStoreContentTypeKey;
  [v3 setObject:v5 forKey:AVAssetDownloadSessioniTunesStoreContentTypeKey];
  if (v4)
  {
    [v3 setObject:v4 forKey:AVAssetDownloadSessioniTunesStoreContentIDKey];
  }

  v8 = [(SSMemoryEntity *)self->_download valueForProperty:@"airplay_content_type"];
  if (v8)
  {
    [v3 setObject:v8 forKey:v7];
  }

  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_account_id"];

  if (v9)
  {
    [v3 setObject:v9 forKey:AVAssetDownloadSessioniTunesStoreContentDSIDKey];
  }

  v10 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_redownload_parameters"];

  if (v10)
  {
    [v3 setObject:v10 forKey:AVAssetDownloadSessioniTunesStoreContentDownloadParametersKey];
  }

  v11 = [(SSMemoryEntity *)self->_download valueForProperty:@"client_id"];
  if (v11)
  {
    v12 = +[SSDevice currentDevice];
    v13 = [v12 userAgentWithBundleIdentifier:v11 version:@"1.0"];

    if (v13)
    {
      [v3 setObject:v13 forKey:AVAssetDownloadSessioniTunesStoreContentUserAgentKey];
    }
  }

  v14 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    if (([(__CFString *)v16 isEqualToString:SSDownloadKindMovie]& 1) != 0)
    {
      v17 = @"movie";
    }

    else if (([(__CFString *)v16 isEqualToString:SSDownloadKindMusic]& 1) != 0)
    {
      v17 = @"music";
    }

    else if (([(__CFString *)v16 isEqualToString:SSDownloadKindMusicVideo]& 1) != 0)
    {
      v17 = @"musicvideo";
    }

    else
    {
      if (![(__CFString *)v16 isEqualToString:SSDownloadKindTelevisionEpisode])
      {
LABEL_26:
        [v3 setObject:v16 forKey:AVAssetDownloadSessioniTunesStoreContentPurchasedMediaKindKey];

        goto LABEL_27;
      }

      v17 = @"tvshow";
    }

    v16 = v17;
    goto LABEL_26;
  }

LABEL_27:

  return v3;
}

- (id)_newDataConsumerWithAsset:(id)a3 destinationPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForProperty:@"bytes_to_hash"];
  v9 = [v8 integerValue];

  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v6 valueForProperty:@"hash_array"];
    if (v10)
    {
      v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:0];
    }

    else
    {
      v11 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 count])
    {

      v9 = 0;
      v11 = 0;
    }
  }

  if ([(PrepareDownloadOperation *)self _usesStreamingZipDataConsumerForAsset:v6])
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    if (v11)
    {
      v13 = ISWeakLinkedStringConstantForString();
      v14 = [v6 valueForProperty:@"hash_type"];
      v15 = [v14 integerValue];

      if (v15 <= 1)
      {
        v17 = ISWeakLinkedStringConstantForString();
        [v12 setObject:v17 forKey:v13];
      }

      v18 = ISWeakLinkedStringConstantForString();

      [v12 setObject:v11 forKey:v18];
      v19 = ISWeakLinkedStringConstantForString();

      v20 = [NSNumber numberWithInteger:v9];
      [v12 setObject:v20 forKey:v19];

      v21 = ISWeakLinkedStringConstantForString();

      [v12 setObject:&__kCFBooleanTrue forKey:v21];
    }

    v16 = [[StreamingZipDownloadDataConsumer alloc] initWithPath:v7 options:v12];
  }

  else
  {
    v16 = [[FilesystemDownloadDataConsumer alloc] initWithPath:v7 MD5Hashes:v11 numberOfBytesToHash:v9];
  }

  return v16;
}

- (id)_newURLRequestWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:@"url"];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_36;
  }

  v6 = [[NSURL alloc] initWithString:v5];
  v7 = [[NSMutableURLRequest alloc] initWithURL:v6];
  [v7 setCachePolicy:1];
  v8 = [(PrepareDownloadOperation *)self _allowsCellularAccessForAsset:v4];
  [v7 setAllowsCellularAccess:v8];
  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
  v10 = [v9 BOOLValue];

  if (v8 && v10)
  {
    [v7 setAllowsExpensiveNetworkAccess:0];
  }

  v11 = [v4 valueForProperty:@"timeout_interval"];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    [v7 setTimeoutInterval:?];
  }

  if ([(PrepareDownloadOperation *)self _isPodcastRestore])
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = v17;
      v35 = 138412802;
      v36 = v17;
      v37 = 1024;
      v38 = 172800;
      v39 = 2048;
      v40 = [v4 databaseID];
      LODWORD(v32) = 28;
      v31 = &v35;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_19:

        [v7 setTimeoutInterval:172800.0];
        goto LABEL_20;
      }

      v16 = [NSString stringWithCString:v19 encoding:4, &v35, v32];
      free(v19);
      v31 = v16;
      SSFileLog();
    }

    goto LABEL_19;
  }

LABEL_20:
  v20 = [v4 valueForProperty:{@"body_data", v31}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setHTTPBody:v20];
  }

  v21 = [v4 valueForProperty:@"http_headers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [NSPropertyListSerialization propertyListWithData:v21 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001DA9F0;
      v33[3] = &unk_100327658;
      v34 = v7;
      [v22 enumerateKeysAndObjectsUsingBlock:v33];
    }
  }

  v23 = [v4 valueForProperty:@"http_method"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setHTTPMethod:v23];
  }

  v24 = SSHTTPHeaderUserAgent;
  v25 = [v7 valueForHTTPHeaderField:SSHTTPHeaderUserAgent];

  if (!v25)
  {
    v26 = +[SSDevice currentDevice];
    v27 = [v26 userAgent];

    if (v27)
    {
      [v7 setValue:v27 forHTTPHeaderField:v24];
    }
  }

  v28 = [v4 valueForProperty:@"is_local_cache_server"];
  v29 = [v28 BOOLValue];

  if (v29)
  {
    [v7 _setRequiresShortConnectionTimeout:1];
  }

LABEL_36:
  return v7;
}

- (void)_recordCoreAnalyticsEventForClient:(id)a3 downloadKind:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[SSDevice deviceIsInternalBuild])
  {
    v11 = @"No Client";
    if (v8)
    {
      v11 = v8;
    }

    v12 = v11;
    v13 = @"No Download Kind";
    if (v9)
    {
      v13 = v9;
    }

    v14 = v13;
    v15 = @"No Download URL";
    if (v10)
    {
      v15 = v10;
    }

    v16 = v15;
    v17 = [(SSMemoryEntity *)self->_download valueForProperty:SSDownloadPropertyIsInStoreQueue];
    [v17 BOOLValue];

    v21 = v12;
    v22 = v14;
    v18 = v16;
    v19 = v14;
    v20 = v12;
    AnalyticsSendEventLazy();
  }
}

- (BOOL)_requiresPoweredPluggedIn
{
  v2 = [(SSDownloadPolicy *)self->_policy policyRules];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) powerStates] == 2)
        {
          ++v4;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
    LOBYTE(v3) = v4 >= 1 && v4 == [v2 count];
  }

  return v3;
}

- (BOOL)_sendsStoreHeadersForAsset:(id)a3
{
  v4 = a3;
  v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
  if ([v5 BOOLValue])
  {
    v6 = [v4 valueForProperty:@"is_external"];
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_shouldCancelAsDuplicate
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"cancel_if_duplicate"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
    if (SSDownloadKindIsMediaKind())
    {
      v6 = [(PrepareDownloadOperation *)self _itemIsInMediaLibrary];
    }

    else
    {
      if (!SSDownloadKindIsSoftwareKind())
      {
        v7 = 0;
        goto LABEL_9;
      }

      v6 = [(PrepareDownloadOperation *)self _itemIsInSoftwareLibrary];
    }

    v7 = v6;
LABEL_9:

    return v7;
  }

  return 0;
}

- (BOOL)_shouldCancelAutomaticDownload
{
  if (SSDeviceSupportsDownload())
  {
    v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
    if (!SSDownloadKindIsSoftwareKind() || (-[SSMemoryEntity valueForProperty:](self->_download, "valueForProperty:", @"is_restore"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLValue], v4, (v5 & 1) == 0))
    {
      v6 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
      v7 = [v6 integerValue];

      if (v7 == 1)
      {
        v8 = +[StoreDownloadQueue sharedDownloadQueue];
        v9 = [v8 automaticDownloadKinds];
        v10 = [v9 containsObject:v3];

        if (!v10)
        {
          LOBYTE(v12) = 1;
LABEL_18:

          return v12;
        }

        if (SSDownloadKindIsSoftwareKind())
        {
          v11 = [ISWeakLinkedClassForString() sharedConnection];
          if ([v11 isAppInstallationAllowed])
          {
            LODWORD(v12) = [v11 isAutomaticAppDownloadsAllowed] ^ 1;
          }

          else
          {
            LOBYTE(v12) = 1;
          }

          goto LABEL_16;
        }

        if (SSDownloadKindIsMediaKind() || SSDownloadKindIsEBookKind())
        {
          v12 = ISWeakLinkedClassForString();
          v11 = ISWeakLinkedStringConstantForString();
          v13 = [v12 sharedConnection];
          LOBYTE(v12) = [v13 effectiveBoolValueForSetting:v11] == 2;

LABEL_16:
          goto LABEL_18;
        }
      }
    }

    LOBYTE(v12) = 0;
    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
  return v12;
}

- (BOOL)_shouldFailForFinishedDownload
{
  v2 = [(SSMemoryEntity *)self->_download valueForProperty:@"IFNULL(download_state.phase, SSDownloadPhaseWaiting)"];
  IsFinishedPhase = SSDownloadPhaseIsFinishedPhase();

  return IsFinishedPhase;
}

- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)a3 dataConsumer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v7 = [v5 valueForProperty:@"uncompressed_size"];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 unsignedLongLongValue];
  }

  else
  {
    v8 = 0;
  }

  v63 = [v5 valueForProperty:@"bytes_total"];
  v62 = v6;

  if (objc_opt_respondsToSelector())
  {
    v9 = [v63 unsignedLongLongValue];
    if (v9 > v8)
    {
      v8 = v9;
    }
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  v12 = [v10 shouldLogToDisk];
  v13 = [v10 OSLogObject];
  v14 = v13;
  if (v12)
  {
    v11 |= 2u;
  }

  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v15 = objc_opt_class();
    v73 = 138412546;
    v74 = v15;
    v75 = 2048;
    v76 = v8;
    v16 = v15;
    LODWORD(v61) = 22;
    v59 = &v73;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_17;
    }

    v14 = [NSString stringWithCString:v17 encoding:4, &v73, v61];
    free(v17);
    v59 = v14;
    SSFileLog();
  }

LABEL_17:
  if (!v62)
  {
    goto LABEL_32;
  }

  v18 = [v62 diskUsage];
  v19 = v18;
  if (v18 <= v8)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  v23 = [v21 shouldLogToDisk];
  v24 = [v21 OSLogObject];
  v25 = v24;
  if (v23)
  {
    v22 |= 2u;
  }

  if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_30;
  }

  v26 = objc_opt_class();
  v73 = 138412546;
  v74 = v26;
  v75 = 2048;
  v76 = v19;
  v27 = v26;
  LODWORD(v61) = 22;
  v59 = &v73;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    v25 = [NSString stringWithCString:v28 encoding:4, &v73, v61];
    free(v28);
    v59 = v25;
    SSFileLog();
LABEL_30:
  }

  v8 -= v20;
LABEL_32:
  v29 = [v5 valueForProperty:{@"initial_odr_size", v59}];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_44;
  }

  v30 = [v29 unsignedLongLongValue];
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  v32 = [v31 shouldLog];
  v33 = [v31 shouldLogToDisk];
  v34 = [v31 OSLogObject];
  v35 = v34;
  if (v33)
  {
    v32 |= 2u;
  }

  if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v32 &= 2u;
  }

  if (!v32)
  {
    goto LABEL_42;
  }

  v36 = objc_opt_class();
  v73 = 138412546;
  v74 = v36;
  v75 = 2048;
  v76 = v30;
  v37 = v36;
  LODWORD(v61) = 22;
  v60 = &v73;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v35 = [NSString stringWithCString:v38 encoding:4, &v73, v61];
    free(v38);
    v60 = v35;
    SSFileLog();
LABEL_42:
  }

  v8 = &v8[v30];
LABEL_44:
  v39 = [v5 valueForProperty:{@"local_path", v60}];
  if (!v39)
  {
    v40 = [v5 valueForProperty:@"is_hls"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v40 BOOLValue])
    {
      v41 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
      v42 = sub_10020F36C(v41);

      v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v5 databaseID]);
      v44 = [v43 stringByAppendingPathExtension:SSDownloadMetadataKeyFileExtensionMoviePackage];

      v39 = [v42 stringByAppendingPathComponent:v44];
    }

    else
    {
      v45 = [(SSMemoryEntity *)self->_download databaseID];
      v46 = [v5 databaseID];
      v42 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
      v39 = [ScratchManager directoryPathForDownloadID:v45 assetID:v46 kind:v42 createIfNeeded:1];
    }
  }

  if (v8 && v39)
  {
    v47 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
    if (((SSDownloadKindIsSoftwareKind() & 1) != 0 || SSDownloadKindIsVideosAppKind()) && (-[SSMemoryEntity valueForProperty:](self->_download, "valueForProperty:", @"is_restore"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v48 BOOLValue], v48, (v49 & 1) == 0))
    {
      v51 = [NSDictionary alloc];
      v52 = [NSNumber numberWithInteger:1];
      v50 = [v51 initWithObjectsAndKeys:{v52, kCPFreeSpaceEffortLevelKey, 0}];
    }

    else
    {
      v50 = 0;
    }

    v53 = [NSURL fileURLWithPath:v39];
    v54 = dispatch_semaphore_create(0);
    v55 = +[ISDevice sharedInstance];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1001DBA08;
    v65[3] = &unk_10032BDB0;
    v68 = &v69;
    v65[4] = self;
    v66 = v5;
    v56 = v54;
    v67 = v56;
    [v55 requestFreeSpace:v8 atPath:v53 withOptions:v50 completionBlock:v65];

    dispatch_semaphore_wait(v56, 0xFFFFFFFFFFFFFFFFLL);
  }

  v57 = *(v70 + 24);

  _Block_object_dispose(&v69, 8);
  return v57 & 1;
}

- (double)_transferProgressFractionWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  if (SSDownloadKindIsMediaKind())
  {
    v6 = ![(PrepareDownloadOperation *)self _assetNeedsDecryption:v4];
    v7 = 0.8;
    goto LABEL_7;
  }

  if (!SSDownloadKindIsEBookKind())
  {
    v6 = [v5 isEqualToString:SSDownloadKindInAppContent] == 0;
    v7 = 0.6;
LABEL_7:
    if (v6)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_10;
  }

  if ([(PrepareDownloadOperation *)self _assetNeedsDecryption:v4])
  {
    v8 = 0.6;
  }

  else
  {
    v19 = [v4 valueForProperty:@"is_zip_streamable"];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.8;
    }
  }

LABEL_10:
  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [v4 valueForProperty:@"bytes_total"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [(SSMemoryEntity *)self->_download valueForProperty:@"IFNULL(download_state.restore_data_size, 0)"];
    [v14 doubleValue];
    v16 = v15;

    if (v16 > 2.22044605e-16 && v13 > 2.22044605e-16)
    {
      v8 = v8 * (v13 / v16);
    }
  }

  return v8;
}

+ (int64_t)_URLSessionTaskPriorityForDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:@"is_restore"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = -2;
  }

  else
  {
    v8 = [v4 valueForProperty:@"is_automatic"];
    v9 = [v8 integerValue];

    if (v9)
    {
      v7 = -1;
    }

    else
    {
      v10 = [v4 valueForProperty:@"priority"];
      v11 = v10;
      v12 = &off_10034C138;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v7 = [v13 integerValue];
    }
  }

  v14 = [a1 _URLSessionTaskPriorityForDownloadPriority:v7];

  return v14;
}

+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)a3
{
  if ((a3 + 2) >= 4)
  {
    return 400;
  }

  else
  {
    return -100 * a3 + 300;
  }
}

- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:@"is_zip_streamable"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v8 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
      v7 = (SSDownloadKindIsSoftwareKind() & 1) != 0 || SSDownloadKindIsEBookKind();
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = ![(PrepareDownloadOperation *)self _assetNeedsDecryption:v4];

  return v11 & v7;
}

@end