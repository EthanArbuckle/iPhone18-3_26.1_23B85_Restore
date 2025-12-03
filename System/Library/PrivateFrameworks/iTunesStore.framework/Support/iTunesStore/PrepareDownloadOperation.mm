@interface PrepareDownloadOperation
+ (BOOL)_isDTServiceHubIssuedRequest:(id)request;
+ (id)_mediaAssetsForDownloadIdentifier:(int64_t)identifier session:(id)session;
+ (int64_t)_URLSessionTaskPriorityForDownload:(id)download;
+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)priority;
+ (void)enumerateOperationsWithDownloadQuery:(id)query session:(id)session usingBlock:(id)block;
- (BOOL)_allowsCellularAccessForAsset:(id)asset;
- (BOOL)_assetNeedsDecryption:(id)decryption;
- (BOOL)_isPodcast;
- (BOOL)_isPodcastRestore;
- (BOOL)_itemIsInMediaLibrary;
- (BOOL)_itemIsInSoftwareLibrary;
- (BOOL)_requiresPoweredPluggedIn;
- (BOOL)_sendsStoreHeadersForAsset:(id)asset;
- (BOOL)_shouldCancelAsDuplicate;
- (BOOL)_shouldCancelAutomaticDownload;
- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)asset dataConsumer:(id)consumer;
- (BOOL)_shouldFailForFinishedDownload;
- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)asset;
- (BOOL)ignoresDownloadHandler;
- (double)_transferProgressFractionWithAsset:(id)asset;
- (id)_bestMediaAsset;
- (id)_clientIdentifier;
- (id)_initWithDownload:(id)download mediaAssets:(id)assets policy:(id)policy;
- (id)_newAVAssetDownloadSessionOptionsWithAsset:(id)asset URLRequest:(id)request;
- (id)_newAVContentInfoDictionary;
- (id)_newDataConsumerWithAsset:(id)asset destinationPath:(id)path;
- (id)_newURLRequestWithAsset:(id)asset;
- (id)outputBlock;
- (int64_t)_assetSizeFromURLResponse:(id)response;
- (int64_t)_loadSizeForAsset:(id)asset error:(id *)error;
- (int64_t)_loadSizeIfNecessaryForAsset:(id)asset;
- (void)_recordCoreAnalyticsEventForClient:(id)client downloadKind:(id)kind url:(id)url;
- (void)run;
- (void)setIgnoresDownloadHandler:(BOOL)handler;
- (void)setOutputBlock:(id)block;
@end

@implementation PrepareDownloadOperation

- (id)_initWithDownload:(id)download mediaAssets:(id)assets policy:(id)policy
{
  downloadCopy = download;
  assetsCopy = assets;
  policyCopy = policy;
  v17.receiver = self;
  v17.super_class = PrepareDownloadOperation;
  v12 = [(PrepareDownloadOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_download, download);
    v14 = [assetsCopy copy];
    mediaAssets = v13->_mediaAssets;
    v13->_mediaAssets = v14;

    objc_storeStrong(&v13->_policy, policy);
  }

  return v13;
}

+ (void)enumerateOperationsWithDownloadQuery:(id)query session:(id)session usingBlock:(id)block
{
  queryCopy = query;
  sessionCopy = session;
  blockCopy = block;
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
  policyManager = [sessionCopy policyManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D4E44;
  v17[3] = &unk_10032BD10;
  selfCopy = self;
  v13 = sessionCopy;
  v18 = v13;
  v19 = policyManager;
  v14 = blockCopy;
  v20 = v14;
  v15 = policyManager;
  [queryCopy enumerateMemoryEntitiesWithProperties:v11 usingBlock:v17];

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

- (void)setIgnoresDownloadHandler:(BOOL)handler
{
  [(PrepareDownloadOperation *)self lock];
  self->_ignoresDownloadHandler = handler;

  [(PrepareDownloadOperation *)self unlock];
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(PrepareDownloadOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
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
  databaseID = [(SSMemoryEntity *)self->_download databaseID];
  [(PrepareDownloadResponse *)v3 setDownloadIdentifier:databaseID];
  v11 = [(SSMemoryEntity *)self->_download valueForProperty:@"transaction_id"];
  longLongValue = [v11 longLongValue];

  v219 = [[DownloadHandle alloc] initWithTransactionIdentifier:longLongValue downloadIdentifier:databaseID];
  [(PrepareDownloadResponse *)v3 setDownloadHandle:?];
  v13 = [(SSMemoryEntity *)self->_download valueForProperty:@"rental_id"];
  longLongValue2 = [v13 longLongValue];

  [(PrepareDownloadResponse *)v3 setRentalIdentifier:longLongValue2];
  v15 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
  longLongValue3 = [v15 longLongValue];

  [(PrepareDownloadResponse *)v3 setStoreItemIdentifier:longLongValue3];
  v218 = [(SSMemoryEntity *)self->_download valueForProperty:@"title"];
  [(PrepareDownloadResponse *)v3 setTitle:?];
  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v17 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    shouldLog &= 2u;
  }

  v215 = databaseID;
  if (shouldLog)
  {
    v20 = objc_opt_class();
    v223 = 138412546;
    v224 = v20;
    v225 = 2048;
    v226 = databaseID;
    LODWORD(v201) = 22;
    v198 = &v223;
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_16;
    }

    oSLogObject = [NSString stringWithCString:v21 encoding:4, &v223, v201];
    free(v21);
    v198 = oSLogObject;
    SSFileLog();
  }

LABEL_16:
  _bestMediaAsset = [(PrepareDownloadOperation *)self _bestMediaAsset];
  -[PrepareDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [_bestMediaAsset databaseID]);
  v23 = [_bestMediaAsset valueForProperty:@"url_session_task_id"];
  [(PrepareDownloadResponse *)v3 setTaskIdentifier:v23];

  v24 = [_bestMediaAsset valueForProperty:@"url"];
  v217 = v24;
  if (!v24)
  {
    v29 = 0;
    v221 = 0;
    goto LABEL_40;
  }

  _clientIdentifier = [(PrepareDownloadOperation *)self _clientIdentifier];
  [(PrepareDownloadOperation *)self _recordCoreAnalyticsEventForClient:_clientIdentifier downloadKind:v5 url:v24];

  v221 = [[NSURL alloc] initWithString:v24];
  v26 = [_bestMediaAsset valueForProperty:@"is_downloaded"];
  bOOLValue = [v26 BOOLValue];

  if (!bOOLValue)
  {
    v29 = 0;
    LODWORD(v24) = 0;
    goto LABEL_40;
  }

  v207 = v5;
  v28 = +[NSFileManager defaultManager];
  v29 = [v28 fileExistsAtPath:v24];
  v212 = _bestMediaAsset;
  if (v29)
  {
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v30 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    [_bestMediaAsset setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject2 = [v30 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      shouldLog3 &= 2u;
    }

    if (!shouldLog3)
    {
      goto LABEL_38;
    }
  }

  v34 = v3;
  v35 = objc_opt_class();
  databaseID2 = [v212 databaseID];
  v223 = 138412802;
  v224 = v35;
  v225 = 2048;
  v226 = v215;
  v227 = 2048;
  v228 = databaseID2;
  LODWORD(v201) = 32;
  v198 = &v223;
  v37 = _os_log_send_and_compose_impl();

  v3 = v34;
  if (v37)
  {
    oSLogObject2 = [NSString stringWithCString:v37 encoding:4, &v223, v201];
    free(v37);
    v198 = oSLogObject2;
    SSFileLog();
LABEL_38:
  }

  LODWORD(v24) = 1;
  v5 = v207;
  _bestMediaAsset = v212;
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
    bOOLValue2 = [v40 BOOLValue];

    if (bOOLValue2)
    {
      v213 = _bestMediaAsset;
      v205 = v3;
      v208 = v5;
      v38 = +[EBookManifest sharedPurchasedBookManifest];
      v42 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_publication_version"];
      v43 = [(SSMemoryEntity *)self->_download valueForProperty:@"store_item_id"];
      v44 = [(SSMemoryEntity *)self->_download valueForProperty:@"download_permalink"];
      v45 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
      bOOLValue3 = [v45 BOOLValue];

      if (bOOLValue3)
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
      _bestMediaAsset = v213;
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

      shouldLog4 = [v59 shouldLog];
      if ([v59 shouldLogToDisk])
      {
        v61 = shouldLog4 | 2;
      }

      else
      {
        v61 = shouldLog4;
      }

      oSLogObject3 = [v59 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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

        oSLogObject3 = [NSString stringWithCString:v66 encoding:4, &v223, v201];
        free(v66);
        v199 = oSLogObject3;
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

      shouldLog5 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v69 = shouldLog5 | 2;
      }

      else
      {
        v69 = shouldLog5;
      }

      oSLogObject4 = [v67 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
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

        oSLogObject4 = [NSString stringWithCString:v77 encoding:4, &v223, v201];
        free(v77);
        v199 = oSLogObject4;
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

      shouldLog6 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v73 = shouldLog6 | 2;
      }

      else
      {
        v73 = shouldLog6;
      }

      oSLogObject4 = [v67 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
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
    integerValue = [v80 integerValue];

    if (integerValue == 1)
    {
      v82 = +[SSLogConfig sharedDaemonConfig];
      if (!v82)
      {
        v82 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v82 shouldLog];
      if ([v82 shouldLogToDisk])
      {
        v84 = shouldLog7 | 2;
      }

      else
      {
        v84 = shouldLog7;
      }

      oSLogObject5 = [v82 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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

        oSLogObject5 = [NSString stringWithCString:v89 encoding:4, &v223, v201];
        free(v89);
        v199 = oSLogObject5;
        SSFileLog();
LABEL_179:

        goto LABEL_180;
      }

LABEL_178:
      p_vtable = (DemoteApplicationOperation + 24);
      goto LABEL_179;
    }

    if (_bestMediaAsset)
    {
      if ((v24 & v29) == 1)
      {
        v82 = +[SSLogConfig sharedDaemonConfig];
        if (!v82)
        {
          v82 = +[SSLogConfig sharedConfig];
        }

        shouldLog8 = [v82 shouldLog];
        if ([v82 shouldLogToDisk])
        {
          v91 = shouldLog8 | 2;
        }

        else
        {
          v91 = shouldLog8;
        }

        oSLogObject5 = [v82 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
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
          databaseID3 = [_bestMediaAsset databaseID];
          v223 = 138412802;
          v224 = v93;
          v225 = 2048;
          v226 = v215;
          v227 = 2048;
          v228 = databaseID3;
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

        shouldLog9 = [v82 shouldLog];
        if ([v82 shouldLogToDisk])
        {
          v114 = shouldLog9 | 2;
        }

        else
        {
          v114 = shouldLog9;
        }

        oSLogObject5 = [v82 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
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
          clientIdentifier = [(PrepareDownloadResponse *)v3 clientIdentifier];
          if (clientIdentifier)
          {
            v117 = clientIdentifier;
            clientIdentifier2 = [(PrepareDownloadResponse *)v3 clientIdentifier];
            v119 = [clientIdentifier2 isEqualToString:@"atc"];

            if (v119)
            {
              v82 = +[SSLogConfig sharedDaemonConfig];
              if (!v82)
              {
                v82 = +[SSLogConfig sharedConfig];
              }

              shouldLog10 = [v82 shouldLog];
              if ([v82 shouldLogToDisk])
              {
                v121 = shouldLog10 | 2;
              }

              else
              {
                v121 = shouldLog10;
              }

              oSLogObject5 = [v82 OSLogObject];
              if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
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

      v123 = [(PrepareDownloadOperation *)self _loadSizeIfNecessaryForAsset:_bestMediaAsset];
      if (v123 >= 1)
      {
        [(PrepareDownloadResponse *)v3 setMediaAssetSize:v123];
      }

      v124 = [_bestMediaAsset valueForProperty:@"local_path"];
      v125 = [_bestMediaAsset valueForProperty:@"is_hls"];
      v206 = v125;
      if (objc_opt_respondsToSelector())
      {
        bOOLValue4 = [v125 BOOLValue];
        if (!v124 && bOOLValue4)
        {
          v127 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
          v128 = sub_10020F36C(v127);

          v129 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [_bestMediaAsset databaseID]);
          v130 = [v129 stringByAppendingPathExtension:SSDownloadMetadataKeyFileExtensionMoviePackage];

          v131 = [v128 stringByAppendingPathComponent:v130];

          v124 = v131;
          v209 = 1;
          goto LABEL_189;
        }

        v209 = bOOLValue4;
        if (v124)
        {
LABEL_189:
          [(PrepareDownloadResponse *)v3 setDestinationPath:v124];
          v132 = [(SSMemoryEntity *)self->_download valueForProperty:@"has_hdr"];
          v203 = v132;
          if (objc_opt_respondsToSelector())
          {
            bOOLValue5 = [v132 BOOLValue];
          }

          else
          {
            bOOLValue5 = 0;
          }

          v134 = [(SSMemoryEntity *)self->_download valueForProperty:@"has_4k"];
          v202 = v134;
          if (objc_opt_respondsToSelector())
          {
            bOOLValue6 = [v134 BOOLValue];
          }

          else
          {
            bOOLValue6 = 0;
          }

          [(PrepareDownloadResponse *)v3 setHasHDR:bOOLValue5];
          [(PrepareDownloadResponse *)v3 setHas4K:bOOLValue6];
          v136 = [(PrepareDownloadOperation *)self _newURLRequestWithAsset:_bestMediaAsset];
          v204 = v124;
          v211 = v136;
          if (!v136)
          {
LABEL_250:
            [(PrepareDownloadResponse *)v3 setHLS:v209];
            [(PrepareDownloadResponse *)v3 setRequiresDownloadHandler:v136 == 0];
            [(PrepareDownloadResponse *)v3 setURLRequest:v136];
            dataConsumer = [(PrepareDownloadResponse *)v3 dataConsumer];
            v161 = [(PrepareDownloadOperation *)self _shouldFailForDiskSpaceWithAsset:_bestMediaAsset dataConsumer:dataConsumer];

            if (v161)
            {
              v162 = +[SSLogConfig sharedDaemonConfig];
              if (!v162)
              {
                v162 = +[SSLogConfig sharedConfig];
              }

              shouldLog11 = [v162 shouldLog];
              if ([v162 shouldLogToDisk])
              {
                v164 = shouldLog11 | 2;
              }

              else
              {
                v164 = shouldLog11;
              }

              oSLogObject6 = [v162 OSLogObject];
              if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
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
                  dataConsumer2 = [(PrepareDownloadResponse *)v3 dataConsumer];
                  v178 = dataConsumer2;
                  if (dataConsumer2)
                  {
                    [dataConsumer2 suspend];
                    [(PrepareDownloadResponse *)v3 setDataConsumer:0];
                  }

                  v50 = v204;
                  v189 = v206;
LABEL_307:

                  goto LABEL_87;
                }

                oSLogObject6 = [NSString stringWithCString:v168 encoding:4, &v223, v201];
                free(v168);
                v199 = oSLogObject6;
                SSFileLog();
              }

              else
              {
                p_vtable = (DemoteApplicationOperation + 24);
              }

              goto LABEL_304;
            }

            v169 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
            bOOLValue7 = [v169 BOOLValue];

            if (bOOLValue7)
            {
              [(PrepareDownloadResponse *)v3 setRestore:1];
              -[PrepareDownloadResponse setCellularAllowed:](v3, "setCellularAllowed:", [v136 allowsCellularAccess]);
              if ((SSDownloadKindIsPodcastKind() & bOOLValue7) == 1)
              {
                [(PrepareDownloadResponse *)v3 setInfersDiscretionary:1];
                [(PrepareDownloadResponse *)v3 setClientIdentifier:@"com.apple.podcasts"];
                v171 = +[SSLogConfig sharedDaemonConfig];
                if (!v171)
                {
                  v171 = +[SSLogConfig sharedConfig];
                }

                shouldLog12 = [v171 shouldLog];
                if ([v171 shouldLogToDisk])
                {
                  shouldLog12 |= 2u;
                }

                oSLogObject7 = [v171 OSLogObject];
                if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
                {
                  shouldLog12 &= 2u;
                }

                if (shouldLog12)
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
                    [(PrepareDownloadOperation *)self _transferProgressFractionWithAsset:_bestMediaAsset];
                    [(PrepareDownloadResponse *)v3 setTransferProgressFraction:?];
                    v177 = [(SSMemoryEntity *)self->_download valueForProperty:@"rate_limit"];
                    v178 = v177;
                    if (v177)
                    {
                      -[PrepareDownloadResponse setBytesPerSecondLimit:](v3, "setBytesPerSecondLimit:", [v177 integerValue]);
                    }

                    v214 = _bestMediaAsset;
                    v199 = [(SSMemoryEntity *)self->_download valueForProperty:@"resource_timeout_interval", v199];
                    v180 = v199;
                    if (v199)
                    {
                      [v199 doubleValue];
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
                    integerValue2 = [v184 integerValue];

                    [(PrepareDownloadResponse *)v3 setAutomaticType:integerValue2];
                    if (integerValue2)
                    {
                      v186 = bOOLValue7;
                    }

                    else
                    {
                      v186 = 1;
                    }

                    if ((v186 & 1) == 0)
                    {
                      [(PrepareDownloadResponse *)v3 setDiscretionary:1];
                      if (integerValue2 == 2)
                      {
                        v187 = [(SSMemoryEntity *)self->_download valueForProperty:@"bundle_id"];
                        if (v187)
                        {
                          [(PrepareDownloadResponse *)v3 setClientSecondaryIdentifier:v187];
                        }
                      }
                    }

                    -[PrepareDownloadResponse setTaskPriority:](v3, "setTaskPriority:", [objc_opt_class() _URLSessionTaskPriorityForDownload:self->_download]);
                    if (integerValue2 == 2)
                    {
                      v188 = 1;
                    }

                    else
                    {
                      v188 = bOOLValue7;
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
                    _bestMediaAsset = v214;
                    p_vtable = (DemoteApplicationOperation + 24);
                    v50 = v204;
                    goto LABEL_307;
                  }

                  oSLogObject7 = [NSString stringWithCString:v175 encoding:4, &v223, v201];
                  free(v175);
                  v199 = oSLogObject7;
                  SSFileLog();
                }

                goto LABEL_276;
              }
            }

            else
            {
              SSDownloadKindIsPodcastKind();
            }

            _clientIdentifier2 = [(PrepareDownloadOperation *)self _clientIdentifier];
            [(PrepareDownloadResponse *)v3 setClientIdentifier:_clientIdentifier2];

            v171 = [_bestMediaAsset valueForProperty:@"is_discretionary"];
            -[PrepareDownloadResponse setDiscretionary:](v3, "setDiscretionary:", [v171 BOOLValue]);
            goto LABEL_276;
          }

          if (SSDownloadKindIsMediaKind())
          {
            v137 = [_bestMediaAsset valueForProperty:@"avfoundation_blocked"];
            if ([v137 BOOLValue])
            {
            }

            else
            {
              _isPodcastRestore = [(PrepareDownloadOperation *)self _isPodcastRestore];

              if ((_isPodcastRestore & 1) == 0)
              {
                v1992 = [(PrepareDownloadOperation *)self _newAVAssetDownloadSessionOptionsWithAsset:_bestMediaAsset URLRequest:v136];
                [(PrepareDownloadResponse *)v3 setAVAssetDownloadSessionOptions:v1992];
                goto LABEL_249;
              }
            }
          }

          if (![(PrepareDownloadOperation *)self _isPodcastRestore])
          {
LABEL_236:
            v1992 = [(PrepareDownloadOperation *)self _newDataConsumerWithAsset:_bestMediaAsset destinationPath:v124, v199];
            if (![objc_opt_class() _isDTServiceHubIssuedRequest:v136])
            {
LABEL_248:
              [(PrepareDownloadResponse *)v3 setDataConsumer:v1992, v200];
LABEL_249:

              goto LABEL_250;
            }

            v154 = +[SSLogConfig sharedDaemonConfig];
            if (!v154)
            {
              v154 = +[SSLogConfig sharedConfig];
            }

            shouldLog13 = [v154 shouldLog];
            if ([v154 shouldLogToDisk])
            {
              shouldLog13 |= 2u;
            }

            oSLogObject8 = [v154 OSLogObject];
            if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
            {
              shouldLog13 &= 2u;
            }

            if (shouldLog13)
            {
              v157 = _bestMediaAsset;
              v158 = objc_opt_class();
              v223 = 138412290;
              v224 = v158;
              LODWORD(v201) = 12;
              v200 = &v223;
              v159 = _os_log_send_and_compose_impl();

              _bestMediaAsset = v157;
              if (!v159)
              {
LABEL_247:

                [v1992 setOverrideProgress:1];
                v136 = v211;
                goto LABEL_248;
              }

              oSLogObject8 = [NSString stringWithCString:v159 encoding:4, &v223, v201];
              free(v159);
              v200 = oSLogObject8;
              SSFileLog();
            }

            goto LABEL_247;
          }

          v147 = +[SSLogConfig sharedDaemonConfig];
          if (!v147)
          {
            v147 = +[SSLogConfig sharedConfig];
          }

          shouldLog14 = [v147 shouldLog];
          if ([v147 shouldLogToDisk])
          {
            shouldLog14 |= 2u;
          }

          oSLogObject9 = [v147 OSLogObject];
          if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
          {
            shouldLog14 &= 2u;
          }

          if (shouldLog14)
          {
            v150 = objc_opt_class();
            databaseID4 = [_bestMediaAsset databaseID];
            v223 = 138543874;
            v224 = v150;
            v225 = 2048;
            v226 = v215;
            v227 = 2048;
            v228 = databaseID4;
            LODWORD(v201) = 32;
            v199 = &v223;
            v152 = _os_log_send_and_compose_impl();

            if (!v152)
            {
LABEL_235:

              v136 = v211;
              goto LABEL_236;
            }

            oSLogObject9 = [NSString stringWithCString:v152 encoding:4, &v223, v201];
            free(v152);
            v199 = oSLogObject9;
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

      v124 = +[ScratchManager directoryPathForDownloadID:assetID:kind:createIfNeeded:](ScratchManager, "directoryPathForDownloadID:assetID:kind:createIfNeeded:", v215, [_bestMediaAsset databaseID], v5, 1);
      goto LABEL_189;
    }

    if (SSDownloadKindIsSoftwareKind())
    {
      clientIdentifier3 = [(PrepareDownloadResponse *)v3 clientIdentifier];
      if (clientIdentifier3)
      {
        v97 = clientIdentifier3;
        clientIdentifier4 = [(PrepareDownloadResponse *)v3 clientIdentifier];
        if ([clientIdentifier4 isEqualToString:@"atc"])
        {
          v99 = [ApplicationWorkspace keepSafeHarborDataForBundleID:v220];

          if (v99)
          {
            v100 = +[SSLogConfig sharedDaemonConfig];
            if (!v100)
            {
              v100 = +[SSLogConfig sharedConfig];
            }

            shouldLog15 = [v100 shouldLog];
            if ([v100 shouldLogToDisk])
            {
              shouldLog15 |= 2u;
            }

            oSLogObject10 = [v100 OSLogObject];
            if (!os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEBUG))
            {
              shouldLog15 &= 2u;
            }

            if (shouldLog15)
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

              oSLogObject10 = [NSString stringWithCString:v105 encoding:4, &v223, v201];
              free(v105);
              v199 = oSLogObject10;
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

            shouldLog16 = [v82 shouldLog];
            if ([v82 shouldLogToDisk])
            {
              v110 = shouldLog16 | 2;
            }

            else
            {
              v110 = shouldLog16;
            }

            oSLogObject5 = [v82 OSLogObject];
            if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
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

    shouldLog17 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      v139 = shouldLog17 | 2;
    }

    else
    {
      v139 = shouldLog17;
    }

    oSLogObject3 = [v59 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
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

  shouldLog18 = [v50 shouldLog];
  if ([v50 shouldLogToDisk])
  {
    v52 = shouldLog18 | 2;
  }

  else
  {
    v52 = shouldLog18;
  }

  oSLogObject11 = [v50 OSLogObject];
  if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_INFO))
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
    oSLogObject11 = [NSString stringWithCString:v57 encoding:4, &v223, v201];
    free(v57);
    v199 = oSLogObject11;
    SSFileLog();
LABEL_86:
  }

LABEL_87:

LABEL_213:
  defaultWorkspace = [p_vtable + 287 defaultWorkspace];
  if ([defaultWorkspace isMultiUser] && !-[PrepareDownloadResponse result](v3, "result"))
  {
    defaultWorkspace2 = [p_vtable + 287 defaultWorkspace];
    v143 = [defaultWorkspace2 shouldModifyQuota:v5];

    if (!v143)
    {
      goto LABEL_218;
    }

    defaultWorkspace = [p_vtable + 287 defaultWorkspace];
    [defaultWorkspace suspendQuotas];
  }

LABEL_218:
  outputBlock = [(PrepareDownloadOperation *)self outputBlock];
  v145 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, self, v3);
    [(PrepareDownloadOperation *)self setOutputBlock:0];
  }
}

+ (BOOL)_isDTServiceHubIssuedRequest:(id)request
{
  v3 = [request URL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    host = [v3 host];
    v5 = [host isEqualToString:@"localhost"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_mediaAssetsForDownloadIdentifier:(int64_t)identifier session:(id)session
{
  sessionCopy = session;
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
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:identifier];
  v10 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(asset.blocked_reason equalToLongLong:0)", 0];
  v27[0] = v9;
  v27[1] = v10;
  v11 = [NSArray arrayWithObjects:v27 count:2];
  v12 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  v22 = sessionCopy;
  database = [sessionCopy database];
  v26 = @"asset_order";
  v14 = [NSArray arrayWithObjects:&v26 count:1];
  v15 = [DownloadAssetEntity queryWithDatabase:database predicate:v12 orderingProperties:v14];

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

- (BOOL)_allowsCellularAccessForAsset:(id)asset
{
  assetCopy = asset;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAutoDownloadOnCellular", kSSUserDefaultsIdentifier, 0);
  selfCopy = self;
  v6 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_automatic"];
  integerValue = [v6 integerValue];

  if (integerValue)
  {
    v8 = AppBooleanValue == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = &CFDictionaryGetValue_ptr;
  v71 = assetCopy;
  if (v8)
  {
    LOBYTE(v13) = 0;
    goto LABEL_82;
  }

  v10 = [assetCopy valueForProperty:@"bytes_total"];
  longLongValue = [v10 longLongValue];

  v11 = [assetCopy valueForProperty:@"initial_odr_size"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = &longLongValue[[v11 unsignedLongLongValue]];
  }

  v70 = v11;
  policyRules = [(SSDownloadPolicy *)selfCopy->_policy policyRules];
  v82 = 0u;
  v83 = 0u;
  v13 = [policyRules count] == 0;
  v84 = 0u;
  v85 = 0u;
  v14 = policyRules;
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
          userDefaultStates = [v19 userDefaultStates];
          v77 = [userDefaultStates count];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v22 = userDefaultStates;
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
            downloadSizeLimit = [v19 downloadSizeLimit];
            v14 = v20;
            if (downloadSizeLimit == v73)
            {

LABEL_41:
              LOBYTE(v13) = 0;
              goto LABEL_42;
            }

            v29 = downloadSizeLimit == v72 || longLongValue <= downloadSizeLimit;
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
    v31 = [(SSMemoryEntity *)selfCopy->_download valueForProperty:@"kind"];
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

    shouldLog = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = shouldLog | 2;
    }

    else
    {
      v34 = shouldLog;
    }

    oSLogObject = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [NSString stringWithCString:v37 encoding:4, v86, v69];
      free(v37);
      v68 = oSLogObject;
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
  v41 = [(SSMemoryEntity *)selfCopy->_download valueForProperty:@"is_restore", v68];
  bOOLValue = [v41 BOOLValue];

  if (bOOLValue)
  {
    v43 = +[RestoreManager sharedInstance];
    isCellularAllowed = [v43 isCellularAllowed];
    v40 &= isCellularAllowed ^ 1;
    LOBYTE(v13) = isCellularAllowed | v13;
  }

  downloadKind = [(SSDownloadPolicy *)selfCopy->_policy downloadKind];
  v46 = downloadKind;
  if ((v13 & 1) != 0 && v40)
  {
    v47 = v70;
    if (downloadKind)
    {
      v48 = [SSURLBagContext contextWithBagType:[(SSDownloadPolicy *)selfCopy->_policy URLBagType]];
      v49 = [(PrepareDownloadOperation *)selfCopy loadedURLBagWithContext:v48 returningError:0];
      v50 = [v49 networkConstraintsForDownloadKind:v46];
      v51 = v50;
      if (v50)
      {
        v52 = [v50 sizeLimitForNetworkType:1];
        LOBYTE(v13) = v52 != SSDownloadSizeLimitDisabled && (v52 == SSDownloadSizeLimitNoLimit || longLongValue <= v52);
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

  assetCopy = v71;
LABEL_82:
  sharedDaemonConfig = [v9[412] sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = [v9[412] sharedConfig];
  }

  shouldLog2 = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    v56 = shouldLog2 | 2;
  }

  else
  {
    v56 = shouldLog2;
  }

  oSLogObject2 = [sharedDaemonConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

  databaseID = [assetCopy databaseID];
  v60 = [assetCopy valueForProperty:@"bytes_total"];
  longLongValue2 = [v60 longLongValue];
  databaseID2 = [(SSMemoryEntity *)selfCopy->_download databaseID];
  v86[0] = 67109888;
  v86[1] = v13 & 1;
  v87 = 2048;
  v88 = databaseID;
  v89 = 2048;
  v90 = longLongValue2;
  v91 = 2048;
  v92 = databaseID2;
  LODWORD(v69) = 38;
  v63 = _os_log_send_and_compose_impl();

  assetCopy = v71;
  if (v63)
  {
    oSLogObject2 = [NSString stringWithCString:v63 encoding:4, v86, v69];
    free(v63);
    SSFileLog();
LABEL_93:
  }

  return v13 & 1;
}

- (BOOL)_isPodcastRestore
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
  bOOLValue = [v3 BOOLValue];

  return [(PrepareDownloadOperation *)self _isPodcast]& bOOLValue;
}

- (BOOL)_isPodcast
{
  v2 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  IsPodcastKind = SSDownloadKindIsPodcastKind();

  return IsPodcastKind;
}

- (BOOL)_assetNeedsDecryption:(id)decryption
{
  decryptionCopy = decryption;
  v4 = [decryptionCopy valueForProperty:@"is_drm_free"];
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [decryptionCopy valueForProperty:@"dpinfo_data"];
    v5 = v6 != 0;
  }

  return v5;
}

- (int64_t)_assetSizeFromURLResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = responseCopy;
    statusCode = [v4 statusCode];
    if (statusCode == 206)
    {
      allHeaderFields = [v4 allHeaderFields];
      v7 = [allHeaderFields objectForKey:@"Content-Range"];

      if (!v7 || (+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"/"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 rangeOfCharacterFromSet:v8], v8, v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9 + 1, v10 >= objc_msgSend(v7, "length")))
      {
        longLongValue = -1;
      }

      else
      {
        v11 = [v7 substringFromIndex:v10];
        longLongValue = [v11 longLongValue];
      }
    }

    else if ((statusCode - 200) > 0x63)
    {
      longLongValue = -1;
    }

    else
    {
      longLongValue = [v4 expectedContentLength];
    }
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

- (id)_bestMediaAsset
{
  v3 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
  bOOLValue = [v3 BOOLValue];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_mediaAssets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v34 = bOOLValue;
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
    bOOLValue2 = [v15 BOOLValue];

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog | 2;
    }

    else
    {
      v19 = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      databaseID = [v10 databaseID];
      selfCopy = self;
      v25 = bOOLValue2;
      v26 = databaseID;
      databaseID2 = [(SSMemoryEntity *)selfCopy->_download databaseID];
      v40 = 138413314;
      v41 = v22;
      v42 = 2048;
      v43 = v26;
      bOOLValue2 = v25;
      v44 = 2048;
      v45 = databaseID2;
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

        if ((v29 & bOOLValue2) == 1)
        {
          v35 = dispatch_semaphore_create(0);
          v30 = v35;
          ACSLocateCachingServer();
          dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
        }

        v13 = v10;

        goto LABEL_27;
      }

      oSLogObject = [NSString stringWithCString:v28 encoding:4, &v40, v32];
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
      integerValue = [v6 integerValue];

      if (integerValue)
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

- (int64_t)_loadSizeIfNecessaryForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [assetCopy valueForProperty:@"bytes_total"];
  longLongValue = [v5 longLongValue];

  if (longLongValue > 0 || [(PrepareDownloadOperation *)self _isPodcast])
  {
    v7 = -1;
  }

  else
  {
    v7 = [(PrepareDownloadOperation *)self _loadSizeForAsset:assetCopy error:0];
  }

  return v7;
}

- (int64_t)_loadSizeForAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v7 = [assetCopy valueForProperty:@"url"];
  if (v7)
  {
    errorCopy = error;
    v8 = [SSMutableURLRequestProperties alloc];
    v9 = [NSURL URLWithString:v7];
    v10 = [v8 initWithURL:v9];

    [v10 setAllowedRetryCount:0];
    [v10 setCachePolicy:1];
    [v10 setTimeoutInterval:30.0];
    [v10 setHTTPMethod:@"HEAD"];
    v11 = [assetCopy valueForProperty:@"http_headers"];
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

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v19 = v18;
      databaseID = [assetCopy databaseID];
      v56 = 138412546;
      v57 = v18;
      v58 = 2048;
      v59 = databaseID;
      LODWORD(v48) = 22;
      v47 = &v56;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v56, v48];
      free(v21);
      v47 = oSLogObject;
      SSFileLog();
    }

LABEL_17:
    v53 = 0;
    v22 = [(PrepareDownloadOperation *)self runSubOperation:v13 returningError:&v53];
    v23 = v53;
    v49 = v22;
    if (v22)
    {
      response = [v13 response];
      expectedContentLength = [response expectedContentLength];

      if (expectedContentLength >= 1)
      {
        v26 = +[SSLogConfig sharedDaemonConfig];
        if (!v26)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          v28 = shouldLog2 | 2;
        }

        else
        {
          v28 = shouldLog2;
        }

        oSLogObject2 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
          databaseID2 = [assetCopy databaseID];
          v56 = 138412802;
          v57 = v31;
          v58 = 2048;
          v59 = expectedContentLength;
          v60 = 2048;
          v61 = databaseID2;
          LODWORD(v48) = 32;
          v34 = _os_log_send_and_compose_impl();

          v7 = v51;
          if (!v34)
          {
LABEL_48:

            v36 = [NSNumber numberWithLongLong:expectedContentLength];
            [assetCopy setValue:v36 forProperty:@"bytes_total"];
LABEL_49:

            [v13 setDelegate:0];
            v35 = v49 ^ 1;
            error = errorCopy;
            if (!errorCopy)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }

          oSLogObject2 = [NSString stringWithCString:v34 encoding:4, &v56, v48];
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
      expectedContentLength = -1;
    }

    v36 = +[SSLogConfig sharedDaemonConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = shouldLog3 | 2;
    }

    else
    {
      v38 = shouldLog3;
    }

    oSLogObject3 = [v36 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
      databaseID3 = [assetCopy databaseID];
      v56 = 138412802;
      v57 = v41;
      v58 = 2048;
      v59 = databaseID3;
      v60 = 2112;
      v61 = v23;
      LODWORD(v48) = 32;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
        v7 = v51;
        goto LABEL_49;
      }

      oSLogObject3 = [NSString stringWithCString:v44 encoding:4, &v56, v48];
      free(v44);
      SSFileLog();
    }

    v7 = v51;

    goto LABEL_49;
  }

  v23 = 0;
  v35 = 1;
  expectedContentLength = -1;
  if (!error)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (v35)
  {
    v45 = v23;
    *error = v23;
  }

LABEL_52:

  return expectedContentLength;
}

- (id)_newAVAssetDownloadSessionOptionsWithAsset:(id)asset URLRequest:(id)request
{
  assetCopy = asset;
  requestCopy = request;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_10034C108 forKey:AVAssetDownloadSessionPriorityKey];
  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"client_id"];
  if (v9)
  {
    [v8 setObject:v9 forKey:AVAssetDownloadSessionClientBundleIdentifierKey];
  }

  if ([(PrepareDownloadOperation *)self _sendsStoreHeadersForAsset:assetCopy])
  {
    _newAVContentInfoDictionary = [(PrepareDownloadOperation *)self _newAVContentInfoDictionary];
    [v8 setObject:_newAVContentInfoDictionary forKey:AVAssetDownloadSessioniTunesStoreContentInfoKey];
  }

  v65 = v9;
  if (([requestCopy allowsCellularAccess] & 1) == 0)
  {
    [v8 setObject:&off_10034C120 forKey:AVAssetDownloadSessionMaxSizeAllowedForCellularAccessKey];
    goto LABEL_37;
  }

  if (![(PrepareDownloadOperation *)self _isPodcast])
  {
    goto LABEL_37;
  }

  v63 = requestCopy;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

  databaseID = [(SSMemoryEntity *)self->_download databaseID];
  v71 = 134217984;
  v72 = databaseID;
  LODWORD(v58) = 12;
  v57 = &v71;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v71, v58];
    free(v17);
    v57 = oSLogObject;
    SSFileLog();
LABEL_18:
  }

  v18 = [SSURLBagContext contextWithBagType:[(SSDownloadPolicy *)self->_policy URLBagType]];
  v19 = [(PrepareDownloadOperation *)self loadedURLBagWithContext:v18 returningError:0];
  downloadKind = [(SSDownloadPolicy *)self->_policy downloadKind];
  v21 = [v19 networkConstraintsForDownloadKind:downloadKind];

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
  v61 = assetCopy;
  v23 = +[SSLogConfig sharedDaemonConfig];
  if (!v23)
  {
    v23 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v23 shouldLog];
  if ([v23 shouldLogToDisk])
  {
    v25 = shouldLog2 | 2;
  }

  else
  {
    v25 = shouldLog2;
  }

  oSLogObject2 = [v23 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

  databaseID2 = [(SSMemoryEntity *)self->_download databaseID];
  v71 = 134218240;
  v29 = v59;
  v72 = v59;
  v73 = 2048;
  v74 = databaseID2;
  LODWORD(v58) = 22;
  v57 = &v71;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    oSLogObject2 = [NSString stringWithCString:v30 encoding:4, &v71, v58];
    free(v30);
    v57 = oSLogObject2;
    SSFileLog();
LABEL_34:
  }

  v31 = [NSNumber numberWithLongLong:v29];
  [v8 setObject:v31 forKey:AVAssetDownloadSessionMaxSizeAllowedForCellularAccessKey];

  assetCopy = v61;
LABEL_36:

  requestCopy = v63;
LABEL_37:
  v32 = objc_alloc_init(NSMutableDictionary);
  v33 = [assetCopy valueForProperty:@"hash_array"];
  v34 = [assetCopy valueForProperty:@"bytes_to_hash"];
  integerValue = [v34 integerValue];

  if (integerValue >= 1 && v33 != 0)
  {
    v37 = [NSPropertyListSerialization propertyListWithData:v33 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_55:

      goto LABEL_56;
    }

    v62 = assetCopy;
    v64 = requestCopy;
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
      firstObject = [v38 firstObject];
      v46 = sub_1000AEC68();
      [v32 setObject:firstObject forKey:v46];

      v8 = v60;
      assetCopy = v62;
      requestCopy = v64;
    }

    else
    {
      v8 = v60;
      assetCopy = v62;
      requestCopy = v64;
      if ([v38 count] < 2)
      {
LABEL_54:

        goto LABEL_55;
      }

      v47 = [NSNumber numberWithInteger:integerValue];
      v48 = sub_1000AEC78();
      [v32 setObject:v47 forKey:v48];

      firstObject = sub_1000AEC58();
      [v32 setObject:v38 forKey:firstObject];
    }

    goto LABEL_54;
  }

LABEL_56:
  v49 = [assetCopy valueForProperty:{@"sinfs_data", v57}];
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

  allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
  v53 = objc_alloc_init(NSMutableDictionary);
  v54 = kISCookieHeader;
  v55 = [allHTTPHeaderFields objectForKey:kISCookieHeader];
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

- (id)_newDataConsumerWithAsset:(id)asset destinationPath:(id)path
{
  assetCopy = asset;
  pathCopy = path;
  v8 = [assetCopy valueForProperty:@"bytes_to_hash"];
  integerValue = [v8 integerValue];

  if (integerValue < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = [assetCopy valueForProperty:@"hash_array"];
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

      integerValue = 0;
      v11 = 0;
    }
  }

  if ([(PrepareDownloadOperation *)self _usesStreamingZipDataConsumerForAsset:assetCopy])
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    if (v11)
    {
      v13 = ISWeakLinkedStringConstantForString();
      v14 = [assetCopy valueForProperty:@"hash_type"];
      integerValue2 = [v14 integerValue];

      if (integerValue2 <= 1)
      {
        v17 = ISWeakLinkedStringConstantForString();
        [v12 setObject:v17 forKey:v13];
      }

      v18 = ISWeakLinkedStringConstantForString();

      [v12 setObject:v11 forKey:v18];
      v19 = ISWeakLinkedStringConstantForString();

      v20 = [NSNumber numberWithInteger:integerValue];
      [v12 setObject:v20 forKey:v19];

      v21 = ISWeakLinkedStringConstantForString();

      [v12 setObject:&__kCFBooleanTrue forKey:v21];
    }

    v16 = [[StreamingZipDownloadDataConsumer alloc] initWithPath:pathCopy options:v12];
  }

  else
  {
    v16 = [[FilesystemDownloadDataConsumer alloc] initWithPath:pathCopy MD5Hashes:v11 numberOfBytesToHash:integerValue];
  }

  return v16;
}

- (id)_newURLRequestWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [assetCopy valueForProperty:@"url"];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_36;
  }

  v6 = [[NSURL alloc] initWithString:v5];
  v7 = [[NSMutableURLRequest alloc] initWithURL:v6];
  [v7 setCachePolicy:1];
  v8 = [(PrepareDownloadOperation *)self _allowsCellularAccessForAsset:assetCopy];
  [v7 setAllowsCellularAccess:v8];
  v9 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_restore"];
  bOOLValue = [v9 BOOLValue];

  if (v8 && bOOLValue)
  {
    [v7 setAllowsExpensiveNetworkAccess:0];
  }

  v11 = [assetCopy valueForProperty:@"timeout_interval"];
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

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      databaseID = [assetCopy databaseID];
      LODWORD(v32) = 28;
      v31 = &v35;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_19:

        [v7 setTimeoutInterval:172800.0];
        goto LABEL_20;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4, &v35, v32];
      free(v19);
      v31 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_19;
  }

LABEL_20:
  v20 = [assetCopy valueForProperty:{@"body_data", v31}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setHTTPBody:v20];
  }

  v21 = [assetCopy valueForProperty:@"http_headers"];

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

  v23 = [assetCopy valueForProperty:@"http_method"];

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
    userAgent = [v26 userAgent];

    if (userAgent)
    {
      [v7 setValue:userAgent forHTTPHeaderField:v24];
    }
  }

  v28 = [assetCopy valueForProperty:@"is_local_cache_server"];
  bOOLValue2 = [v28 BOOLValue];

  if (bOOLValue2)
  {
    [v7 _setRequiresShortConnectionTimeout:1];
  }

LABEL_36:
  return v7;
}

- (void)_recordCoreAnalyticsEventForClient:(id)client downloadKind:(id)kind url:(id)url
{
  clientCopy = client;
  kindCopy = kind;
  urlCopy = url;
  if (+[SSDevice deviceIsInternalBuild])
  {
    v11 = @"No Client";
    if (clientCopy)
    {
      v11 = clientCopy;
    }

    v12 = v11;
    v13 = @"No Download Kind";
    if (kindCopy)
    {
      v13 = kindCopy;
    }

    v14 = v13;
    v15 = @"No Download URL";
    if (urlCopy)
    {
      v15 = urlCopy;
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
  policyRules = [(SSDownloadPolicy *)self->_policy policyRules];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [policyRules countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(policyRules);
        }

        if ([*(*(&v8 + 1) + 8 * i) powerStates] == 2)
        {
          ++v4;
        }
      }

      v3 = [policyRules countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
    LOBYTE(v3) = v4 >= 1 && v4 == [policyRules count];
  }

  return v3;
}

- (BOOL)_sendsStoreHeadersForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
  if ([v5 BOOLValue])
  {
    v6 = [assetCopy valueForProperty:@"is_external"];
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
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
    if (SSDownloadKindIsMediaKind())
    {
      _itemIsInMediaLibrary = [(PrepareDownloadOperation *)self _itemIsInMediaLibrary];
    }

    else
    {
      if (!SSDownloadKindIsSoftwareKind())
      {
        v7 = 0;
        goto LABEL_9;
      }

      _itemIsInMediaLibrary = [(PrepareDownloadOperation *)self _itemIsInSoftwareLibrary];
    }

    v7 = _itemIsInMediaLibrary;
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
      integerValue = [v6 integerValue];

      if (integerValue == 1)
      {
        v8 = +[StoreDownloadQueue sharedDownloadQueue];
        automaticDownloadKinds = [v8 automaticDownloadKinds];
        v10 = [automaticDownloadKinds containsObject:v3];

        if (!v10)
        {
          LOBYTE(v12) = 1;
LABEL_18:

          return v12;
        }

        if (SSDownloadKindIsSoftwareKind())
        {
          iSWeakLinkedClassForString() = [ISWeakLinkedClassForString() sharedConnection];
          if ([iSWeakLinkedClassForString() isAppInstallationAllowed])
          {
            LODWORD(v12) = [iSWeakLinkedClassForString() isAutomaticAppDownloadsAllowed] ^ 1;
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
          iSWeakLinkedClassForString() = ISWeakLinkedStringConstantForString();
          sharedConnection = [v12 sharedConnection];
          LOBYTE(v12) = [sharedConnection effectiveBoolValueForSetting:iSWeakLinkedClassForString()] == 2;

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

- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)asset dataConsumer:(id)consumer
{
  assetCopy = asset;
  consumerCopy = consumer;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v7 = [assetCopy valueForProperty:@"uncompressed_size"];
  if (objc_opt_respondsToSelector())
  {
    unsignedLongLongValue = [v7 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v63 = [assetCopy valueForProperty:@"bytes_total"];
  v62 = consumerCopy;

  if (objc_opt_respondsToSelector())
  {
    unsignedLongLongValue2 = [v63 unsignedLongLongValue];
    if (unsignedLongLongValue2 > unsignedLongLongValue)
    {
      unsignedLongLongValue = unsignedLongLongValue2;
    }
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  shouldLogToDisk = [v10 shouldLogToDisk];
  oSLogObject = [v10 OSLogObject];
  v14 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    shouldLog &= 2u;
  }

  if (shouldLog)
  {
    v15 = objc_opt_class();
    v73 = 138412546;
    v74 = v15;
    v75 = 2048;
    v76 = unsignedLongLongValue;
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

  diskUsage = [v62 diskUsage];
  v19 = diskUsage;
  if (diskUsage <= unsignedLongLongValue)
  {
    v20 = diskUsage;
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

  shouldLog2 = [v21 shouldLog];
  shouldLogToDisk2 = [v21 shouldLogToDisk];
  oSLogObject2 = [v21 OSLogObject];
  v25 = oSLogObject2;
  if (shouldLogToDisk2)
  {
    shouldLog2 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    shouldLog2 &= 2u;
  }

  if (!shouldLog2)
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

  unsignedLongLongValue -= v20;
LABEL_32:
  v29 = [assetCopy valueForProperty:{@"initial_odr_size", v59}];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_44;
  }

  unsignedLongLongValue3 = [v29 unsignedLongLongValue];
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v31 shouldLog];
  shouldLogToDisk3 = [v31 shouldLogToDisk];
  oSLogObject3 = [v31 OSLogObject];
  v35 = oSLogObject3;
  if (shouldLogToDisk3)
  {
    shouldLog3 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    shouldLog3 &= 2u;
  }

  if (!shouldLog3)
  {
    goto LABEL_42;
  }

  v36 = objc_opt_class();
  v73 = 138412546;
  v74 = v36;
  v75 = 2048;
  v76 = unsignedLongLongValue3;
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

  unsignedLongLongValue = &unsignedLongLongValue[unsignedLongLongValue3];
LABEL_44:
  v39 = [assetCopy valueForProperty:{@"local_path", v60}];
  if (!v39)
  {
    v40 = [assetCopy valueForProperty:@"is_hls"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v40 BOOLValue])
    {
      v41 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
      v42 = sub_10020F36C(v41);

      v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [assetCopy databaseID]);
      v44 = [v43 stringByAppendingPathExtension:SSDownloadMetadataKeyFileExtensionMoviePackage];

      v39 = [v42 stringByAppendingPathComponent:v44];
    }

    else
    {
      databaseID = [(SSMemoryEntity *)self->_download databaseID];
      databaseID2 = [assetCopy databaseID];
      v42 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
      v39 = [ScratchManager directoryPathForDownloadID:databaseID assetID:databaseID2 kind:v42 createIfNeeded:1];
    }
  }

  if (unsignedLongLongValue && v39)
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
    v66 = assetCopy;
    v56 = v54;
    v67 = v56;
    [v55 requestFreeSpace:unsignedLongLongValue atPath:v53 withOptions:v50 completionBlock:v65];

    dispatch_semaphore_wait(v56, 0xFFFFFFFFFFFFFFFFLL);
  }

  v57 = *(v70 + 24);

  _Block_object_dispose(&v69, 8);
  return v57 & 1;
}

- (double)_transferProgressFractionWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
  if (SSDownloadKindIsMediaKind())
  {
    v6 = ![(PrepareDownloadOperation *)self _assetNeedsDecryption:assetCopy];
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

  if ([(PrepareDownloadOperation *)self _assetNeedsDecryption:assetCopy])
  {
    v8 = 0.6;
  }

  else
  {
    v19 = [assetCopy valueForProperty:@"is_zip_streamable"];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
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
  bOOLValue2 = [v9 BOOLValue];

  if (bOOLValue2)
  {
    v11 = [assetCopy valueForProperty:@"bytes_total"];
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

+ (int64_t)_URLSessionTaskPriorityForDownload:(id)download
{
  downloadCopy = download;
  v5 = [downloadCopy valueForProperty:@"is_restore"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    integerValue2 = -2;
  }

  else
  {
    v8 = [downloadCopy valueForProperty:@"is_automatic"];
    integerValue = [v8 integerValue];

    if (integerValue)
    {
      integerValue2 = -1;
    }

    else
    {
      v10 = [downloadCopy valueForProperty:@"priority"];
      v11 = v10;
      v12 = &off_10034C138;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      integerValue2 = [v13 integerValue];
    }
  }

  v14 = [self _URLSessionTaskPriorityForDownloadPriority:integerValue2];

  return v14;
}

+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)priority
{
  if ((priority + 2) >= 4)
  {
    return 400;
  }

  else
  {
    return -100 * priority + 300;
  }
}

- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [assetCopy valueForProperty:@"is_zip_streamable"];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v8 = [(SSMemoryEntity *)self->_download valueForProperty:@"is_from_store"];
    bOOLValue2 = [v8 BOOLValue];

    if (bOOLValue2)
    {
      v10 = [(SSMemoryEntity *)self->_download valueForProperty:@"kind"];
      bOOLValue = (SSDownloadKindIsSoftwareKind() & 1) != 0 || SSDownloadKindIsEBookKind();
    }

    else
    {
      bOOLValue = 0;
    }
  }

  v11 = ![(PrepareDownloadOperation *)self _assetNeedsDecryption:assetCopy];

  return v11 & bOOLValue;
}

@end