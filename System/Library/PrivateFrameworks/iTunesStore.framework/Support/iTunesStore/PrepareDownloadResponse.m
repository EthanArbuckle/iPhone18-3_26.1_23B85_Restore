@interface PrepareDownloadResponse
- (BOOL)_isMediaSelectionOptionSDHSubtitle:(id)a3;
- (NSString)URLSessionIdentifier;
- (id)_getExistingTaskInSession:(id)a3;
- (id)_hlsDownloadTaskOptionsForMediaSelections:(id)a3;
- (id)_mediaSelectionsForHLSDownloadFromLoadedAVAsset:(id)a3 outNumAudioSelectionsToBeDownloaded:(unint64_t *)a4 outNumSubtitleSelectionsToBeDownloaded:(unint64_t *)a5;
- (id)_reuseExistingTaskInSession:(id)a3;
- (id)sessionConfiguration;
- (id)sessionTaskWithSession:(id)a3 error:(id *)a4;
- (void)_addMediaSelectionOptionsIfNotAlreadyAdded:(id)a3 toMediaSelections:(id)a4 forMediaSelectionGroup:(id)a5 baseMediaSelection:(id)a6;
@end

@implementation PrepareDownloadResponse

- (id)sessionConfiguration
{
  AVAssetDownloadSessionOptions = self->_AVAssetDownloadSessionOptions;
  v4 = [(PrepareDownloadResponse *)self URLSessionIdentifier];
  if (AVAssetDownloadSessionOptions)
  {
    [NSURLSessionConfiguration _AVBackgroundSessionConfigurationWithIdentifier:v4];
  }

  else
  {
    [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v4];
  }
  v5 = ;

  [v5 setAllowsCellularAccess:{-[NSURLRequest allowsCellularAccess](self->_URLRequest, "allowsCellularAccess")}];
  [v5 setAllowsExpensiveNetworkAccess:{-[NSURLRequest allowsExpensiveNetworkAccess](self->_URLRequest, "allowsExpensiveNetworkAccess")}];
  [v5 setHTTPCookieAcceptPolicy:1];
  [v5 setHTTPShouldSetCookies:0];
  [v5 setHTTPShouldUsePipelining:1];
  [v5 setRequestCachePolicy:1];
  [v5 setSessionSendsLaunchEvents:1];
  [v5 set_allowsRetryForBackgroundDataTasks:1];
  [v5 set_requiresPowerPluggedIn:self->_requiresPowerPluggedIn];
  [v5 set_sourceApplicationBundleIdentifier:self->_clientIdentifier];
  [v5 set_sourceApplicationSecondaryIdentifier:self->_clientSecondaryIdentifier];
  if ([(PrepareDownloadResponse *)self infersDiscretionary])
  {
    [v5 setDiscretionary:0];
    [v5 set_infersDiscretionaryFromOriginatingClient:1];
  }

  else
  {
    [v5 setDiscretionary:self->_discretionary];
  }

  [v5 setTimeoutIntervalForRequest:self->_timeoutIntervalForRequest];
  [v5 setTimeoutIntervalForResource:self->_timeoutIntervalForResource];

  return v5;
}

- (id)sessionTaskWithSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(PrepareDownloadResponse *)self _reuseExistingTaskInSession:v6];
  if (!v7)
  {
    if (self->_isHLS)
    {
      v70 = v6;
      v8 = +[NSMutableDictionary dictionary];
      [v8 setObject:&__kCFBooleanTrue forKey:AVURLAssetInheritURIQueryComponentFromReferencingURIKey];
      v9 = [NSNumber numberWithBool:[(NSURLRequest *)self->_URLRequest allowsCellularAccess]];
      [v8 setObject:v9 forKey:AVURLAssetAllowsCellularAccessKey];

      v10 = +[SSDevice currentDevice];
      v11 = [v10 userAgent];

      if (v11)
      {
        v79 = @"User-Agent";
        v80 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        [v8 setObject:v12 forKey:AVURLAssetHTTPHeaderFieldsKey];
      }

      v68 = v11;
      v13 = +[SSAccountStore defaultStore];
      v14 = [v13 activeAccount];
      v15 = [v14 uniqueIdentifier];

      v71 = v15;
      if (v15)
      {
        v16 = +[SSVCookieStorage sharedStorage];
        v17 = [v16 allCookiesForUserIdentifier:v15];

        if (v17)
        {
          [v8 setObject:v17 forKey:AVURLAssetHTTPCookiesKey];
        }
      }

      v18 = [(PrepareDownloadResponse *)self kind];
      IsVideosAppKind = SSDownloadKindIsVideosAppKind();

      if (IsVideosAppKind)
      {
        v20 = objc_alloc_init(NSMutableDictionary);
        v21 = [(PrepareDownloadResponse *)self storeItemIdentifier];
        v22 = [(PrepareDownloadResponse *)self rentalIdentifier];
        v23 = [(PrepareDownloadResponse *)self kind];
        if ([v23 isEqualToString:SSDownloadKindMovie])
        {
          if (v22)
          {
            v24 = @"com.apple.videos.movies.rental";
          }

          else
          {
            v24 = @"com.apple.videos.movies.purchase";
          }

          v25 = @"movie";
        }

        else
        {
          v28 = [v23 isEqualToString:SSDownloadKindTelevisionEpisode];
          if (v28)
          {
            v24 = @"com.apple.videos.tvshows.purchase";
          }

          else
          {
            v24 = 0;
          }

          if (v28)
          {
            v25 = @"episode";
          }

          else
          {
            v25 = 0;
          }
        }

        if (v21)
        {
          if ([@"tvs.sbd.9001" length] && -[__CFString length](v25, "length"))
          {
            v21 = [NSString stringWithFormat:@"a=%lld:s=%@:e=%@", v21, @"tvs.sbd.9001", v25];
          }

          else
          {
            v21 = 0;
          }
        }

        if ([(__CFString *)v24 length])
        {
          [v20 setObject:v24 forKey:AVURLAssetAlternativeConfigurationServiceIdentifierKey];
        }

        if ([v21 length])
        {
          [v20 setObject:v21 forKey:AVURLAssetAlternativeConfigurationMediaIdentifierKey];
        }

        if ([@"tvs.sbd.9001" length])
        {
          [v20 setObject:@"tvs.sbd.9001" forKey:AVURLAssetAlternativeConfigurationContentProviderKey];
        }

        [v20 setObject:&__kCFBooleanTrue forKey:AVURLAssetAlternativeConfigurationiTunesServiceMonitoringKey];
        [v8 setObject:v20 forKey:AVURLAssetAlternativeConfigurationOptionsKey];
      }

      v29 = [AVURLAsset alloc];
      v30 = [(NSURLRequest *)self->_URLRequest URL];
      v31 = [v29 initWithURL:v30 options:v8];

      title = self->_title;
      if (!title)
      {
        title = &stru_10033CC30;
      }

      v67 = title;
      v33 = +[SSLogConfig sharedDaemonConfig];
      if (!v33)
      {
        v33 = +[SSLogConfig sharedConfig];
      }

      v34 = [v33 shouldLog];
      if ([v33 shouldLogToDisk])
      {
        v34 |= 2u;
      }

      v35 = [v33 OSLogObject];
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
        LOWORD(v77) = 0;
        LODWORD(v66) = 2;
        v64 = &v77;
        v37 = _os_log_send_and_compose_impl();

        if (!v37)
        {
          goto LABEL_52;
        }

        v35 = [NSString stringWithCString:v37 encoding:4, &v77, v66];
        free(v37);
        v64 = v35;
        SSFileLog();
      }

LABEL_52:
      v69 = v8;

      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_1001DCC20;
      v75[3] = &unk_100327110;
      v38 = dispatch_semaphore_create(0);
      v76 = v38;
      [v31 loadValuesAsynchronouslyForKeys:&off_10034CCB0 completionHandler:v75];
      dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
      v74 = 0;
      v39 = [v31 statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:&v74];
      v40 = v74;
      v41 = +[SSLogConfig sharedDaemonConfig];
      v42 = v41;
      if (v39 == 2)
      {
        if (!v41)
        {
          v42 = +[SSLogConfig sharedConfig];
        }

        v43 = [v42 shouldLog];
        if ([v42 shouldLogToDisk])
        {
          v43 |= 2u;
        }

        v44 = [v42 OSLogObject];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v43;
        }

        else
        {
          v45 = v43 & 2;
        }

        if (v45)
        {
          LOWORD(v77) = 0;
          LODWORD(v66) = 2;
          v65 = &v77;
          v46 = _os_log_send_and_compose_impl();

          if (!v46)
          {
            goto LABEL_64;
          }

          v44 = [NSString stringWithCString:v46 encoding:4, &v77, v66];
          free(v46);
          v65 = v44;
          SSFileLog();
        }

LABEL_64:
        v72 = 0;
        v73 = 0;
        v47 = [(PrepareDownloadResponse *)self _mediaSelectionsForHLSDownloadFromLoadedAVAsset:v31 outNumAudioSelectionsToBeDownloaded:&v73 outNumSubtitleSelectionsToBeDownloaded:&v72];
        v48 = v72;
        self->_numAudioSelectionsToBeDownloaded = v73;
        self->_numSubtitleSelectionsToBeDownloaded = v48;
        v49 = [(PrepareDownloadResponse *)self _hlsDownloadTaskOptionsForMediaSelections:v47];
        v50 = +[SSLogConfig sharedDaemonConfig];
        if (!v50)
        {
          v50 = +[SSLogConfig sharedConfig];
        }

        v51 = [v50 shouldLog];
        if ([v50 shouldLogToDisk])
        {
          v51 |= 2u;
        }

        v52 = [v50 OSLogObject];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v51;
        }

        else
        {
          v53 = v51 & 2;
        }

        if (v53)
        {
          v77 = 138412290;
          v78 = v49;
          LODWORD(v66) = 12;
          v64 = &v77;
          v54 = _os_log_send_and_compose_impl();

          if (!v54)
          {
LABEL_75:

            v55 = v70;
            v56 = v67;
            v7 = [v70 aggregateAssetDownloadTaskWithURLAsset:v31 mediaSelections:v47 assetTitle:v67 assetArtworkData:0 options:v49];

LABEL_92:
            goto LABEL_93;
          }

          v52 = [NSString stringWithCString:v54 encoding:4, &v77, v66];
          free(v54);
          v64 = v52;
          SSFileLog();
        }

        goto LABEL_75;
      }

      if (!v41)
      {
        v42 = +[SSLogConfig sharedConfig];
      }

      v57 = [v42 shouldLog];
      if ([v42 shouldLogToDisk])
      {
        v57 |= 2u;
      }

      v58 = [v42 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 2;
      }

      if (v59)
      {
        v77 = 138412290;
        v78 = v40;
        LODWORD(v66) = 12;
        v64 = &v77;
        v60 = _os_log_send_and_compose_impl();

        v56 = v67;
        if (!v60)
        {
LABEL_88:

          if (a4)
          {
            v61 = v40;
            v7 = 0;
            *a4 = v40;
          }

          else
          {
            v7 = 0;
          }

          v55 = v70;
          goto LABEL_92;
        }

        v58 = [NSString stringWithCString:v60 encoding:4, &v77, v66];
        free(v60);
        v64 = v58;
        SSFileLog();
      }

      else
      {
        v56 = v67;
      }

      goto LABEL_88;
    }

    if (self->_AVAssetDownloadSessionOptions)
    {
      v26 = [(NSURLRequest *)self->_URLRequest URL];
      v27 = [NSURL fileURLWithPath:self->_destinationPath];
      v7 = [v6 _AVAssetDownloadTaskWithURL:v26 destinationURL:v27 options:self->_AVAssetDownloadSessionOptions];
    }

    else if (self->_URLRequest)
    {
      v7 = [v6 dataTaskWithRequest:?];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_93:
  if (!self->_AVAssetDownloadSessionOptions)
  {
    [v7 setITunesStoreDataConsumer:self->_dataConsumer];
  }

  [v7 set_priority:{self->_taskPriority, v64}];
  [v7 set_bytesPerSecondLimit:self->_bytesPerSecondLimit];
  loadingPriority = self->_loadingPriority;
  if (loadingPriority)
  {
    [(NSNumber *)loadingPriority doubleValue];
    [v7 set_loadingPriority:?];
  }

  return v7;
}

- (NSString)URLSessionIdentifier
{
  v3 = [NSMutableString stringWithString:@"com.apple.itunesstored."];
  v4 = v3;
  if (self->_clientIdentifier)
  {
    [v3 appendString:?];
    [v4 appendString:@"."];
  }

  if (self->_clientSecondaryIdentifier)
  {
    [v4 appendString:?];
    [v4 appendString:@"."];
  }

  if (self->_discretionary)
  {
    [v4 appendString:@"discretionary."];
  }

  if ([(PrepareDownloadResponse *)self infersDiscretionary])
  {
    [v4 appendString:@"infersdiscretionary."];
  }

  if (self->_requiresPowerPluggedIn)
  {
    [v4 appendString:@"powered."];
  }

  if (![(NSURLRequest *)self->_URLRequest allowsCellularAccess])
  {
    [v4 appendString:@"wifi."];
  }

  if (![(NSURLRequest *)self->_URLRequest allowsExpensiveNetworkAccess])
  {
    [v4 appendString:@"inexpensive."];
  }

  if (self->_timeoutIntervalForResource > 0.0)
  {
    v5 = [NSString stringWithFormat:@"resource_timeout_%f.", *&self->_timeoutIntervalForResource];
    [v4 appendString:v5];
  }

  if (self->_timeoutIntervalForRequest > 0.0)
  {
    v6 = [NSString stringWithFormat:@"timeout_%f.", *&self->_timeoutIntervalForRequest];
    [v4 appendString:v6];
  }

  if (self->_isHLS)
  {
    v7 = @"hls";
  }

  else if (self->_AVAssetDownloadSessionOptions)
  {
    v7 = @"av";
  }

  else
  {
    v7 = @"default";
  }

  [v4 appendString:v7];

  return v4;
}

- (id)_getExistingTaskInSession:(id)a3
{
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1001DD22C;
  v36 = sub_1001DD23C;
  v37 = 0;
  v5 = [(NSNumber *)self->_taskIdentifier unsignedIntegerValue];
  if (v5)
  {
    v6 = +[SSLogConfig sharedConfig];
    v7 = [v6 shouldLog];
    v8 = [v6 shouldLogToDisk];
    v9 = [v6 OSLogObject];
    v10 = v9;
    if (v8)
    {
      v7 |= 2u;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 & 2;
    }

    if (v11)
    {
      downloadIdentifier = self->_downloadIdentifier;
      v13 = [(PrepareDownloadResponse *)self URLSessionIdentifier];
      v38 = 134218498;
      v39 = v5;
      v40 = 2048;
      v41 = downloadIdentifier;
      v42 = 2114;
      v43 = v13;
      LODWORD(v27) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_11;
      }

      v10 = [NSString stringWithCString:v14 encoding:4, &v38, v27];
      free(v14);
      SSFileLog();
    }

LABEL_11:
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001DD244;
    v28[3] = &unk_10032BDD8;
    v30 = &v32;
    v31 = v5;
    v15 = dispatch_semaphore_create(0);
    v29 = v15;
    [v4 getAllTasksWithCompletionHandler:v28];
    v16 = dispatch_time(0, 60000000000);
    if (!dispatch_semaphore_wait(v15, v16))
    {
LABEL_21:

      goto LABEL_22;
    }

    v17 = +[SSLogConfig sharedConfig];
    v18 = [v17 shouldLog];
    v19 = [v17 shouldLogToDisk];
    v20 = [v17 OSLogObject];
    v21 = v20;
    if (v19)
    {
      v18 |= 2u;
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v22 = self->_downloadIdentifier;
      v23 = [(PrepareDownloadResponse *)self URLSessionIdentifier];
      v38 = 134218498;
      v39 = v5;
      v40 = 2048;
      v41 = v22;
      v42 = 2114;
      v43 = v23;
      LODWORD(v27) = 32;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_20:

        goto LABEL_21;
      }

      v21 = [NSString stringWithCString:v24 encoding:4, &v38, v27];
      free(v24);
      SSFileLog();
    }

    goto LABEL_20;
  }

LABEL_22:
  v25 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v25;
}

- (id)_reuseExistingTaskInSession:(id)a3
{
  v4 = a3;
  if (!self->_taskIdentifier)
  {
    v5 = 0;
    goto LABEL_61;
  }

  v5 = [(PrepareDownloadResponse *)self _getExistingTaskInSession:v4];
  if (!v5)
  {
    goto LABEL_61;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v43 = 134217984;
    v44 = [v5 taskIdentifier];
    LODWORD(v42) = 12;
    v40 = &v43;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_14;
    }

    v9 = [NSString stringWithCString:v10 encoding:4, &v43, v42];
    free(v10);
    v40 = v9;
    SSFileLog();
  }

LABEL_14:
  v11 = [v5 conformsToProtocol:&OBJC_PROTOCOL___AVAssetDownloadDelegate];
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v16 = [v5 taskIdentifier];
    v43 = 134218240;
    v44 = v16;
    v45 = 1024;
    LODWORD(v46) = v11;
    LODWORD(v42) = 18;
    v41 = &v43;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_25;
    }

    v15 = [NSString stringWithCString:v17 encoding:4, &v43, v42];
    free(v17);
    v41 = v15;
    SSFileLog();
  }

LABEL_25:
  if (objc_opt_respondsToSelector())
  {
    v18 = [v5 URL];
    if (v11)
    {
      goto LABEL_36;
    }

LABEL_33:
    v20 = [(NSURLRequest *)self->_URLRequest URL];
    v21 = v20;
    if (v20 && v18)
    {
      v22 = [(NSURLRequest *)self->_URLRequest URL];
      v23 = [v22 isEqual:v18];

      if (v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v32 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v33 = v32 | 2;
    }

    else
    {
      v33 = v32;
    }

    v34 = [v27 OSLogObject];
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v33 &= 2u;
    }

    if (v33)
    {
      v35 = [v5 taskIdentifier];
      downloadIdentifier = self->_downloadIdentifier;
      v37 = [(PrepareDownloadResponse *)self URLSessionIdentifier];
      v43 = 134218498;
      v44 = v35;
      v45 = 2048;
      v46 = downloadIdentifier;
      v47 = 2114;
      v48 = v37;
      LODWORD(v42) = 32;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_58:
        v24 = v5;
        v5 = 0;
        goto LABEL_59;
      }

      v34 = [NSString stringWithCString:v38 encoding:4, &v43, v42];
      free(v38);
      SSFileLog();
    }

    goto LABEL_58;
  }

  if (!(v11 & 1 | ((objc_opt_respondsToSelector() & 1) == 0)))
  {
    v19 = [v5 originalRequest];
    v18 = [v19 URL];

    if (v11)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v18 = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  v24 = +[SSLogConfig sharedDaemonConfig];
  if (!v24)
  {
    v24 = +[SSLogConfig sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v24 OSLogObject];
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_59;
  }

  v28 = [v5 taskIdentifier];
  v29 = self->_downloadIdentifier;
  v30 = [(PrepareDownloadResponse *)self URLSessionIdentifier];
  v43 = 134218498;
  v44 = v28;
  v45 = 2048;
  v46 = v29;
  v47 = 2114;
  v48 = v30;
  LODWORD(v42) = 32;
  v31 = _os_log_send_and_compose_impl();

  if (v31)
  {
    v27 = [NSString stringWithCString:v31 encoding:4, &v43, v42];
    free(v31);
    SSFileLog();
LABEL_59:
  }

LABEL_61:

  return v5;
}

- (id)_hlsDownloadTaskOptionsForMediaSelections:(id)a3
{
  v4 = a3;
  v5 = [(PrepareDownloadResponse *)self kind];
  IsVideosAppKind = SSDownloadKindIsVideosAppKind();

  v7 = [NSURL fileURLWithPath:self->_destinationPath];
  if (IsVideosAppKind)
  {
    v8 = +[ISNetworkObserver sharedInstance];
    v9 = [v8 networkType];

    if (v9 == 1000)
    {
      v10 = @"DownloadQualityWifi";
    }

    else
    {
      v10 = @"DownloadQualityCellular";
    }

    v11 = CFPreferencesCopyAppValue(v10, @"com.apple.videos-preferences");
    v12 = [v11 isEqualToString:@"BestQualityDownload"];

    v13 = [SSDevice deviceIsiPad:*&CGSizeZero.width];
    if (v12)
    {
      if (v13)
      {
        goto LABEL_7;
      }

      v26 = MGGetSInt32Answer();
      if (v26 > 8)
      {
        if (v26 == 9)
        {
          v14 = 0;
          *&v36 = 0x409C700000000000;
          v15 = &off_10034C168;
          goto LABEL_8;
        }

        if (v26 == 19)
        {
          v16 = 0;
          v15 = &off_10034C198;
          *&v36 = 0x4092700000000000;
          v14 = 1;
          v17 = 1180.0;
          v18 = 620.0;
          goto LABEL_30;
        }

LABEL_7:
        v14 = 0;
        *&v36 = 0x409C700000000000;
        v15 = &off_10034C180;
LABEL_8:
        v16 = &off_10034C150;
        v17 = 1820.0;
        v18 = 980.0;
LABEL_30:
        v28 = [NSMutableDictionary dictionary:v36];
        v25 = v28;
        if ((v14 & 1) == 0)
        {
          [v28 setObject:v16 forKey:AVAssetDownloadTaskMinimumRequiredMediaBitrateKey];
        }

        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DownloadsCompatibleWithAVAdapter", @"com.apple.videos-preferences", 0);
        if (AppBooleanValue)
        {
          [v25 setObject:&__kCFBooleanTrue forKey:AVAssetDownloadTaskPrefersMostCompatibleRenditionKey];
        }

        [v25 setObject:v15 forKey:AVAssetDownloadTaskMinimumRequiredMediaBitrateForHEVCKey];
        v30 = [v4 firstObject];
        if (!v30)
        {
          sub_10027259C();
        }

        v31 = v30;
        v39 = v30;
        v32 = [NSArray arrayWithObjects:&v39 count:1];
        [v25 setObject:v32 forKey:AVAssetDownloadTaskMediaSelectionsForMultichannelKey];

        [v25 setObject:v7 forKey:AVAssetDownloadTaskDestinationURLKey];
        v33 = [NSNumber numberWithBool:AppBooleanValue == 0];
        [v25 setObject:v33 forKey:AVAssetDownloadTaskAllowHighDynamicRangeKey];

        if (v17 != CGSizeZero.width || v18 != CGSizeZero.height)
        {
          v34 = [NSValue value:&v36 withObjCType:"{CGSize=dd}"];
          [v25 setObject:v34 forKey:AVAssetDownloadTaskMinimumRequiredPresentationSizeKey];
        }

        goto LABEL_39;
      }

      if (v26 != 5)
      {
        if (v26 != 8)
        {
          goto LABEL_7;
        }

LABEL_26:
        v16 = 0;
        v15 = &off_10034C198;
        *&v36 = 0x4089A00000000000;
        v14 = 1;
        v17 = 820.0;
        v18 = 420.0;
        goto LABEL_30;
      }
    }

    else
    {
      if (v13)
      {
        v16 = 0;
        v15 = &off_10034C198;
        *&v36 = 0x408CE00000000000;
        v14 = 1;
        v17 = 924.0;
        v18 = 476.0;
        goto LABEL_30;
      }

      v27 = MGGetSInt32Answer();
      if (v27 != 8)
      {
        if (v27 == 5)
        {
          v16 = 0;
          v15 = &off_10034C198;
          *&v36 = 0x4084A00000000000;
          v14 = 1;
          v17 = 660.0;
          v18 = 250.0;
          goto LABEL_30;
        }

        goto LABEL_26;
      }
    }

    v16 = 0;
    v15 = &off_10034C198;
    *&v36 = 0x4087700000000000;
    v14 = 1;
    v17 = 750.0;
    v18 = 350.0;
    goto LABEL_30;
  }

  v19 = SSDeviceSupportsHDRDownload();
  v36 = 0uLL;
  if (SSIsiPhoneWithExpandedScreen())
  {
    v20 = 0x4086D00000000000;
    v21 = 0x4097600000000000;
  }

  else
  {
    v22 = +[SSDevice deviceIsiPad];
    v21 = 0x4090280000000000;
    if (v22)
    {
      v21 = 0x4097600000000000;
    }

    v20 = 0x4082080000000000;
    if (v22)
    {
      v20 = 0x4086D00000000000;
    }
  }

  *&v36 = v21;
  *(&v36 + 1) = v20;
  v23 = [NSValue value:&v36 withObjCType:"{CGSize=dd}"];
  v38[0] = v7;
  v37[0] = AVAssetDownloadTaskDestinationURLKey;
  v37[1] = AVAssetDownloadTaskAllowHighDynamicRangeKey;
  v24 = [NSNumber numberWithBool:v19];
  v37[2] = AVAssetDownloadTaskMinimumRequiredPresentationSizeKey;
  v38[1] = v24;
  v38[2] = v23;
  v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];

LABEL_39:

  return v25;
}

- (void)_addMediaSelectionOptionsIfNotAlreadyAdded:(id)a3 toMediaSelections:(id)a4 forMediaSelectionGroup:(id)a5 baseMediaSelection:(id)a6
{
  v9 = a3;
  v26 = a4;
  v10 = a5;
  v23 = a6;
  obj = v9;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v25 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = v26;
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
LABEL_8:
          v19 = 0;
          while (1)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v27 + 1) + 8 * v19) selectedMediaOptionInMediaSelectionGroup:v10];
            v21 = [v14 isEqual:v20];

            if (v21)
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v17)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          v22 = [v23 mutableCopy];
          [v22 selectMediaOption:v14 inMediaSelectionGroup:v10];
          [v15 addObject:v22];
          v15 = v22;
        }

        v13 = v13 + 1;
      }

      while (v13 != v12);
      v12 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }
}

- (id)_mediaSelectionsForHLSDownloadFromLoadedAVAsset:(id)a3 outNumAudioSelectionsToBeDownloaded:(unint64_t *)a4 outNumSubtitleSelectionsToBeDownloaded:(unint64_t *)a5
{
  v8 = a3;
  if ([v8 statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:0] == 2)
  {
    v179 = a4;
    v187 = self;
    v9 = [(PrepareDownloadResponse *)self kind];
    IsVideosAppKind = SSDownloadKindIsVideosAppKind();

    if (IsVideosAppKind)
    {
      v11 = CFPreferencesCopyAppValue(@"PreferredAudioLanguages", @"com.apple.videos-preferences");
      v12 = [v11 mutableCopy];

      if ([v12 count])
      {
        v13 = [v12 containsObject:@"DEFAULT_LANGUAGE"];
        if (v13)
        {
          [v12 removeObject:@"DEFAULT_LANGUAGE"];
        }

        v14 = v13;
        if ([v12 containsObject:@"ORIGINAL_AUDIO_LANGUAGE"])
        {
          [v12 removeObject:@"ORIGINAL_AUDIO_LANGUAGE"];
          v14 = 1;
        }

        if ([v12 containsObject:@"DEVICE_AUDIO_LANGUAGE"])
        {
          [v12 removeObject:@"DEVICE_AUDIO_LANGUAGE"];
          v13 = 1;
        }
      }

      else
      {
        v13 = 1;
        v14 = 1;
      }

      v27 = [v8 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicAudible];
      v28 = [v8 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];
      v29 = [v27 options];
      v262[0] = AVMediaCharacteristicIsMainProgramContent;
      v262[1] = AVMediaCharacteristicIsOriginalContent;
      v30 = [NSArray arrayWithObjects:v262 count:2];
      v176 = v29;
      v178 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v29 withMediaCharacteristics:v30];

      v185 = [v8 preferredMediaSelection];
      v186 = objc_alloc_init(NSMutableArray);
      v174 = a5;
      v175 = v8;
      v192 = v27;
      v184 = v28;
      if (v185)
      {
        v31 = SSVURLProtocolConsumer_ptr;
        if (v14)
        {
          v261 = AVMediaCharacteristicDescribesVideoForAccessibility;
          v32 = [NSArray arrayWithObjects:&v261 count:1];
          v33 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v178 withoutMediaCharacteristics:v32];

          [(PrepareDownloadResponse *)v187 _addMediaSelectionOptionsIfNotAlreadyAdded:v33 toMediaSelections:v186 forMediaSelectionGroup:v27 baseMediaSelection:v185];
        }

        if (v13)
        {
          v34 = +[NSLocale preferredLanguages];
          v35 = [v34 firstObject];

          if (v35)
          {
            if (!v12)
            {
              v12 = objc_alloc_init(NSMutableArray);
            }

            if (([v12 containsObject:v35] & 1) == 0)
            {
              [v12 insertObject:v35 atIndex:0];
            }
          }
        }

        v177 = v12;
        if ([v12 count])
        {
          v260 = AVMediaCharacteristicIsMainProgramContent;
          v36 = [NSArray arrayWithObjects:&v260 count:1];
          v37 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v29 withMediaCharacteristics:v36];

          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          obj = v12;
          v38 = [obj countByEnumeratingWithState:&v237 objects:v259 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v238;
            do
            {
              for (i = 0; i != v39; i = i + 1)
              {
                if (*v238 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v258 = *(*(&v237 + 1) + 8 * i);
                v42 = [v31[470] arrayWithObjects:&v258 count:1];
                v43 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v37 filteredAndSortedAccordingToPreferredLanguages:v42];

                v257 = AVMediaCharacteristicDescribesVideoForAccessibility;
                [v31[470] arrayWithObjects:&v257 count:1];
                v45 = v44 = v31;
                v46 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v43 withoutMediaCharacteristics:v45];

                v47 = [v46 firstObject];
                v48 = v47;
                if (v47)
                {
                  v256 = v47;
                  v49 = [v44[470] arrayWithObjects:&v256 count:1];
                  [(PrepareDownloadResponse *)v187 _addMediaSelectionOptionsIfNotAlreadyAdded:v49 toMediaSelections:v186 forMediaSelectionGroup:v192 baseMediaSelection:v185];
                }

                v31 = v44;
              }

              v39 = [obj countByEnumeratingWithState:&v237 objects:v259 count:16];
            }

            while (v39);
          }

          v27 = v192;
          v28 = v184;
        }

        if (![v186 count])
        {
          [v186 addObject:v185];
        }

        v50 = ISWeakLinkedSymbolForString();
        if (v50)
        {
          v51 = v50();
        }

        else
        {
          v51 = 0;
        }

        v170 = ISWeakLinkedStringConstantForString();
        v171 = v51;
        if ([v51 containsObject:?])
        {
          v57 = objc_alloc_init(NSMutableSet);
          v233 = 0u;
          v234 = 0u;
          v235 = 0u;
          v236 = 0u;
          v58 = v186;
          v59 = [v58 countByEnumeratingWithState:&v233 objects:v255 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v234;
            do
            {
              for (j = 0; j != v60; j = j + 1)
              {
                if (*v234 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = [*(*(&v233 + 1) + 8 * j) selectedMediaOptionInMediaSelectionGroup:v27];
                v64 = [v63 extendedLanguageTag];

                if (v64)
                {
                  [v57 addObject:v64];
                }
              }

              v60 = [v58 countByEnumeratingWithState:&v233 objects:v255 count:16];
            }

            while (v60);
          }

          v254 = AVMediaCharacteristicIsMainProgramContent;
          v65 = [NSArray arrayWithObjects:&v254 count:1];
          v66 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v176 withMediaCharacteristics:v65];

          v67 = [v57 allObjects];
          obja = v66;
          v68 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v66 filteredAndSortedAccordingToPreferredLanguages:v67];

          v253 = AVMediaCharacteristicDescribesVideoForAccessibility;
          v69 = [NSArray arrayWithObjects:&v253 count:1];
          v70 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v68 withMediaCharacteristics:v69];

          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v71 = v70;
          v72 = [v71 countByEnumeratingWithState:&v229 objects:v252 count:16];
          if (v72)
          {
            v73 = v72;
            v74 = *v230;
            do
            {
              for (k = 0; k != v73; k = k + 1)
              {
                if (*v230 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                v76 = *(*(&v229 + 1) + 8 * k);
                v77 = [v58 firstObject];
                v78 = [v77 mutableCopy];

                [v78 selectMediaOption:v76 inMediaSelectionGroup:v192];
                [v58 addObject:v78];
              }

              v73 = [v71 countByEnumeratingWithState:&v229 objects:v252 count:16];
            }

            while (v73);
          }

          v12 = v177;
          v27 = v192;
          v28 = v184;
          v31 = SSVURLProtocolConsumer_ptr;
        }

        v169 = [v186 count];
        v79 = [v28 options];
        v173 = objc_alloc_init(NSMutableSet);
        v193 = objc_alloc_init(NSMutableSet);
        v251 = AVMediaCharacteristicContainsOnlyForcedSubtitles;
        v80 = [v31[470] arrayWithObjects:&v251 count:1];
        v172 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v79 withoutMediaCharacteristics:v80];

        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v189 = v79;
        v81 = [v189 countByEnumeratingWithState:&v225 objects:v250 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v226;
          do
          {
            for (m = 0; m != v82; m = m + 1)
            {
              if (*v226 != v83)
              {
                objc_enumerationMutation(v189);
              }

              v85 = *(*(&v225 + 1) + 8 * m);
              v86 = [v85 mediaType];
              v87 = [v86 isEqualToString:AVMediaTypeClosedCaption];

              if (v87)
              {
                [v193 addObject:v85];
              }
            }

            v82 = [v189 countByEnumeratingWithState:&v225 objects:v250 count:16];
          }

          while (v82);
        }

        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v191 = v186;
        v88 = [v191 countByEnumeratingWithState:&v221 objects:v249 count:16];
        if (v88)
        {
          v89 = v88;
          v90 = *v222;
          do
          {
            for (n = 0; n != v89; n = n + 1)
            {
              if (*v222 != v90)
              {
                objc_enumerationMutation(v191);
              }

              v92 = [*(*(&v221 + 1) + 8 * n) selectedMediaOptionInMediaSelectionGroup:v27];
              v93 = [v92 associatedMediaSelectionOptionInMediaSelectionGroup:v28];
              if (v93)
              {
                [v193 addObject:v93];
              }

              v94 = [v92 extendedLanguageTag];
              if (v94)
              {
                [v173 addObject:v94];
              }
            }

            v89 = [v191 countByEnumeratingWithState:&v221 objects:v249 count:16];
          }

          while (v89);
        }

        if ([v12 count])
        {
          [v173 addObjectsFromArray:v12];
        }

        v95 = objc_alloc_init(NSMutableSet);
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v96 = v178;
        v97 = [v96 countByEnumeratingWithState:&v217 objects:v248 count:16];
        v98 = v191;
        if (v97)
        {
          v99 = v97;
          v100 = *v218;
          do
          {
            for (ii = 0; ii != v99; ii = ii + 1)
            {
              if (*v218 != v100)
              {
                objc_enumerationMutation(v96);
              }

              v102 = [*(*(&v217 + 1) + 8 * ii) extendedLanguageTag];
              if (v102)
              {
                [v95 addObject:v102];
              }
            }

            v99 = [v96 countByEnumeratingWithState:&v217 objects:v248 count:16];
          }

          while (v99);
        }

        v103 = [v95 allObjects];
        [v173 addObjectsFromArray:v103];

        v104 = +[NSLocale preferredLanguages];
        if (v104)
        {
          [v173 addObjectsFromArray:v104];
        }

        keyExistsAndHasValidFormat[0] = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseDefaultSubtitleLanguages", @"com.apple.videos-preferences", keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat[0])
        {
          if (!AppBooleanValue)
          {
            v106 = CFPreferencesCopyAppValue(@"PreferredSubtitleLanguages", @"com.apple.videos-preferences");
            if (v106)
            {
              v107 = v106;
              [v173 addObjectsFromArray:v106];
            }
          }
        }

        if ([v173 containsObject:@"yue"])
        {
          [v173 addObject:@"yue-Hant"];
        }

        v108 = ISWeakLinkedStringConstantForString();
        v109 = ISWeakLinkedStringConstantForString();
        v110 = ISWeakLinkedSymbolForString();
        if (v110)
        {
          v111 = v110(1);
        }

        else
        {
          v111 = 0;
        }

        v167 = v104;
        v168 = v95;
        v165 = v109;
        v166 = v108;
        v164 = v111;
        if ([v111 containsObject:v108])
        {
          v180 = 1;
        }

        else
        {
          v180 = [v111 containsObject:v109];
        }

        v112 = [v173 allObjects];
        v113 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v172 filteredAndSortedAccordingToPreferredLanguages:v112];

        v114 = objc_alloc_init(NSMutableSet);
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v216 = 0u;
        v115 = v113;
        v116 = [v115 countByEnumeratingWithState:&v213 objects:v247 count:16];
        v182 = v115;
        v183 = v114;
        if (v116)
        {
          v117 = v116;
          v118 = *v214;
          v181 = *v214;
          do
          {
            v119 = 0;
            v188 = v117;
            do
            {
              if (*v214 != v118)
              {
                objc_enumerationMutation(v115);
              }

              v120 = *(*(&v213 + 1) + 8 * v119);
              v121 = [v120 extendedLanguageTag];
              if (!v121)
              {
                goto LABEL_166;
              }

              objb = v121;
              v122 = [v114 containsObject:v121];
              v121 = objb;
              if (v122)
              {
                goto LABEL_166;
              }

              v123 = [v120 mediaType];
              v124 = [v123 isEqualToString:AVMediaTypeSubtitle];

              v121 = objb;
              v117 = v188;
              if (!v124)
              {
                goto LABEL_166;
              }

              v211 = 0u;
              v212 = 0u;
              v209 = 0u;
              v210 = 0u;
              v125 = v115;
              v126 = [v125 countByEnumeratingWithState:&v209 objects:v246 count:16];
              if (!v126)
              {
LABEL_146:

LABEL_162:
                [v193 addObject:v120];
                v114 = v183;
                v28 = v184;
                v98 = v191;
                goto LABEL_165;
              }

              v127 = v126;
              v128 = *v210;
LABEL_136:
              v129 = 0;
              while (1)
              {
                if (*v210 != v128)
                {
                  objc_enumerationMutation(v125);
                }

                v130 = *(*(&v209 + 1) + 8 * v129);
                if (v130 != v120)
                {
                  v131 = [*(*(&v209 + 1) + 8 * v129) mediaType];
                  v132 = [v131 isEqualToString:AVMediaTypeSubtitle];

                  if (v132)
                  {
                    break;
                  }
                }

LABEL_144:
                if (v127 == ++v129)
                {
                  v127 = [v125 countByEnumeratingWithState:&v209 objects:v246 count:16];
                  if (!v127)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_136;
                }
              }

              v133 = [v130 extendedLanguageTag];
              v134 = v133;
              if (!v133 || ([v133 isEqualToString:objb] & 1) == 0)
              {

                goto LABEL_144;
              }

              v135 = v130;

              if (!v135)
              {
                goto LABEL_162;
              }

              v114 = v183;
              v28 = v184;
              v98 = v191;
              if ([(PrepareDownloadResponse *)v187 _isMediaSelectionOptionSDHSubtitle:v120]&& [(PrepareDownloadResponse *)v187 _isMediaSelectionOptionSDHSubtitle:v135]|| ![(PrepareDownloadResponse *)v187 _isMediaSelectionOptionSDHSubtitle:v120]&& ![(PrepareDownloadResponse *)v187 _isMediaSelectionOptionSDHSubtitle:v135])
              {
                [v193 addObject:v120];
                [v193 addObject:v135];
              }

              else
              {
                if ([(PrepareDownloadResponse *)v187 _isMediaSelectionOptionSDHSubtitle:v120])
                {
                  v136 = v120;
                }

                else
                {
                  v136 = v135;
                }

                v137 = v136;
                if ([(PrepareDownloadResponse *)v187 _isMediaSelectionOptionSDHSubtitle:v120])
                {
                  v138 = v135;
                }

                else
                {
                  v138 = v120;
                }

                v139 = v138;
                v140 = v139;
                if (v180)
                {
                  v141 = v137;
                }

                else
                {
                  v141 = v139;
                }

                [v193 addObject:v141];
              }

LABEL_165:
              [v114 addObject:objb];
              v121 = objb;
              v118 = v181;
              v115 = v182;
              v117 = v188;
LABEL_166:

              v119 = v119 + 1;
            }

            while (v119 != v117);
            v117 = [v115 countByEnumeratingWithState:&v213 objects:v247 count:16];
          }

          while (v117);
        }

        v190 = v169 + 1;

        [v193 allObjects];
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        v142 = v208 = 0u;
        v143 = [v142 countByEnumeratingWithState:&v205 objects:v245 count:16];
        if (v143)
        {
          v144 = v143;
          v15 = 0;
          v145 = *v206;
          do
          {
            for (jj = 0; jj != v144; jj = jj + 1)
            {
              if (*v206 != v145)
              {
                objc_enumerationMutation(v142);
              }

              v147 = *(*(&v205 + 1) + 8 * jj);
              v148 = [v98 firstObject];
              v149 = [v148 mutableCopy];

              [v149 selectMediaOption:v147 inMediaSelectionGroup:v28];
              [v98 addObject:v149];
            }

            v15 += v144;
            v144 = [v142 countByEnumeratingWithState:&v205 objects:v245 count:16];
          }

          while (v144);
        }

        else
        {
          v15 = 0;
        }

        v56 = v98;
        v54 = v170;
        v52 = v171;
      }

      else
      {
        v52 = +[SSLogConfig sharedDaemonConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        v53 = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          v53 |= 2u;
        }

        v54 = [v52 OSLogObject];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = v53;
        }

        else
        {
          v55 = v53 & 2;
        }

        v177 = v12;
        if (v55)
        {
          *keyExistsAndHasValidFormat = 0;
          LODWORD(v163) = 2;
          v162 = keyExistsAndHasValidFormat;
          v56 = _os_log_send_and_compose_impl();

          if (!v56)
          {
            v15 = 0;
            v190 = 0;
            goto LABEL_179;
          }

          v54 = [NSString stringWithCString:v56 encoding:4, keyExistsAndHasValidFormat, v163];
          free(v56);
          v162 = v54;
          SSFileLog();
        }

        v15 = 0;
        v190 = 0;
        v56 = 0;
      }

LABEL_179:
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v17 = v56;
      v150 = [v17 countByEnumeratingWithState:&v201 objects:v244 count:16];
      if (!v150)
      {
        goto LABEL_197;
      }

      v151 = v150;
      v152 = *v202;
      while (1)
      {
        for (kk = 0; kk != v151; kk = kk + 1)
        {
          if (*v202 != v152)
          {
            objc_enumerationMutation(v17);
          }

          v154 = *(*(&v201 + 1) + 8 * kk);
          v155 = [SSLogConfig sharedDaemonConfig:v162];
          if (!v155)
          {
            v155 = +[SSLogConfig sharedConfig];
          }

          v156 = [v155 shouldLog];
          if ([v155 shouldLogToDisk])
          {
            v156 |= 2u;
          }

          v157 = [v155 OSLogObject];
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
          {
            v158 = v156;
          }

          else
          {
            v158 = v156 & 2;
          }

          if (v158)
          {
            *keyExistsAndHasValidFormat = 138412290;
            v243 = v154;
            LODWORD(v163) = 12;
            v162 = keyExistsAndHasValidFormat;
            v159 = _os_log_send_and_compose_impl();

            if (!v159)
            {
              goto LABEL_195;
            }

            v157 = [NSString stringWithCString:v159 encoding:4, keyExistsAndHasValidFormat, v163];
            free(v159);
            v162 = v157;
            SSFileLog();
          }

LABEL_195:
        }

        v151 = [v17 countByEnumeratingWithState:&v201 objects:v244 count:16];
        if (!v151)
        {
LABEL_197:

          a5 = v174;
          v8 = v175;
          v19 = v177;
          v16 = v190;
          v20 = v192;
          goto LABEL_198;
        }
      }
    }

    v18 = [v8 allMediaSelections];
    v19 = [v8 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v197 objects:v241 count:16];
    if (v21)
    {
      v22 = v21;
      v15 = 0;
      v23 = 0;
      v24 = *v198;
      do
      {
        for (mm = 0; mm != v22; mm = mm + 1)
        {
          if (*v198 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = [*(*(&v197 + 1) + 8 * mm) selectedMediaOptionInMediaSelectionGroup:v19];

          if (v26)
          {
            ++v15;
          }

          else
          {
            ++v23;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v197 objects:v241 count:16];
      }

      while (v22);
      v16 = 2 * v23;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v17 = v20;
LABEL_198:

    a4 = v179;
    if (v179)
    {
      goto LABEL_199;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (a4)
    {
LABEL_199:
      *a4 = v16;
    }
  }

  if (a5)
  {
    *a5 = v15;
  }

  v160 = v17;

  return v17;
}

- (BOOL)_isMediaSelectionOptionSDHSubtitle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaType];
    if ([v5 isEqualToString:AVMediaTypeSubtitle])
    {
      if ([v4 hasMediaCharacteristic:AVMediaCharacteristicDescribesMusicAndSoundForAccessibility])
      {
        v6 = 1;
      }

      else
      {
        v6 = [v4 hasMediaCharacteristic:AVMediaCharacteristicTranscribesSpokenDialogForAccessibility];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end