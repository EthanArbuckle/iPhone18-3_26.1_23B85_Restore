@interface InstallSoftwareDownloadOperation
- (BOOL)_downloadSecondaryAssets:(id *)assets;
- (id)_newSoftwarePropertiesWithDownload:(id)download;
- (void)_monitorForTerminationOfBundleID:(id)d;
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)run;
@end

@implementation InstallSoftwareDownloadOperation

- (void)run
{
  selfCopy = self;
  download = [(FinishDownloadStepOperation *)self download];
  mediaAsset = [download mediaAsset];
  v5 = objc_alloc_init(FinishDownloadResponse);
  -[FinishDownloadResponse setDownloadIdentifier:](v5, "setDownloadIdentifier:", [download databaseID]);
  -[FinishDownloadResponse setMediaAssetIdentifier:](v5, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  [(FinishDownloadResponse *)v5 setResult:4];
  automaticType = [download automaticType];
  bundleIdentifier = [download bundleIdentifier];
  databaseID = [download databaseID];
  transactionID = [download transactionID];
  v114 = databaseID;
  v113 = [[DownloadHandle alloc] initWithTransactionIdentifier:transactionID downloadIdentifier:databaseID];
  [(FinishDownloadResponse *)v5 setDownloadHandle:?];
  v116 = +[ApplicationWorkspace defaultWorkspace];
  if ([v116 isMultiUser])
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v126 = 138412802;
      v127 = objc_opt_class();
      v128 = 2048;
      v129 = v114;
      v130 = 2112;
      v131 = bundleIdentifier;
      cfa = transactionID;
      v13 = automaticType;
      v14 = v5;
      v15 = download;
      v16 = bundleIdentifier;
      v17 = selfCopy;
      v18 = mediaAsset;
      v19 = v127;
      LODWORD(v102) = 32;
      v99 = &v126;
      v20 = _os_log_send_and_compose_impl();

      mediaAsset = v18;
      selfCopy = v17;
      bundleIdentifier = v16;
      download = v15;
      v5 = v14;
      automaticType = v13;
      transactionID = cfa;

      if (v20)
      {
        v102 = [NSString stringWithCString:v20 encoding:4, &v126, v102];
        free(v20);
        v99 = v102;
        SSFileLog();
      }
    }

    else
    {
    }

    v22 = dispatch_semaphore_create(0);
    v122[0] = _NSConcreteStackBlock;
    v122[1] = 3221225472;
    v122[2] = sub_100232230;
    v122[3] = &unk_100329530;
    v122[4] = selfCopy;
    v125 = v114;
    v123 = bundleIdentifier;
    v124 = v22;
    v23 = v22;
    [v116 waitForSyncBubbleToTerminateWithCompletionBlock:v122];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  }

  [v116 cancelPlaceholderInstallationForDownloadIdentifier:{v114, v99}];
  v121 = 0;
  v24 = [(InstallSoftwareDownloadOperation *)selfCopy _downloadSecondaryAssets:&v121];
  v25 = v121;
  if ((v24 & 1) == 0)
  {
    [(FinishDownloadResponse *)v5 setError:v25];
    [(FinishDownloadResponse *)v5 setResult:0];
    goto LABEL_121;
  }

  v120 = 0;
  cf = SBSApplicationTerminationAssertionCreateWithError();
  v110 = [(InstallSoftwareDownloadOperation *)selfCopy _newSoftwarePropertiesWithDownload:download];
  isStoreDownload = [download isStoreDownload];
  if (!([download isTvTemplate] & 1 | ((isStoreDownload & 1) == 0)))
  {
    sinfData = [v110 sinfData];
    v27 = [sinfData length] == 0;

    if (v27)
    {
      v81 = +[SSLogConfig sharedDaemonConfig];
      if (!v81)
      {
        v81 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v81 shouldLog];
      if ([v81 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v81 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v84 = shouldLog2;
      }

      else
      {
        v84 = shouldLog2 & 2;
      }

      if (v84)
      {
        v85 = objc_opt_class();
        v126 = 138412802;
        v127 = v85;
        v128 = 2048;
        v129 = v114;
        v130 = 2112;
        v131 = bundleIdentifier;
        v115 = v25;
        v86 = v5;
        v87 = download;
        v88 = bundleIdentifier;
        v89 = selfCopy;
        v90 = mediaAsset;
        v91 = v85;
        LODWORD(v102) = 32;
        v100 = &v126;
        v92 = _os_log_send_and_compose_impl();

        mediaAsset = v90;
        selfCopy = v89;
        bundleIdentifier = v88;
        download = v87;
        v5 = v86;
        v25 = v115;

        if (!v92)
        {
LABEL_102:

          v93 = SSError();
          [(FinishDownloadResponse *)v5 setError:v93];

          [(FinishDownloadResponse *)v5 setResult:3];
          goto LABEL_119;
        }

        oSLogObject2 = [NSString stringWithCString:v92 encoding:4, &v126, v102];
        free(v92);
        v100 = oSLogObject2;
        SSFileLog();
      }

      goto LABEL_102;
    }
  }

  if (automaticType != 2)
  {
    goto LABEL_31;
  }

  v28 = [[ApplicationHandle alloc] initWithTransactionIdentifier:transactionID downloadIdentifier:v114 bundleIdentifier:bundleIdentifier];
  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    v31 = shouldLog3 | 2;
  }

  else
  {
    v31 = shouldLog3;
  }

  oSLogObject3 = [v29 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v31 &= 2u;
  }

  if (!v31)
  {
    goto LABEL_29;
  }

  v33 = objc_opt_class();
  v126 = 138412546;
  v127 = v33;
  v128 = 2112;
  v129 = v28;
  v108 = v28;
  v34 = v33;
  LODWORD(v102) = 22;
  v100 = &v126;
  v35 = _os_log_send_and_compose_impl();

  v28 = v108;
  if (v35)
  {
    oSLogObject3 = [NSString stringWithCString:v35 encoding:4, &v126, v102];
    free(v35);
    v100 = oSLogObject3;
    SSFileLog();
LABEL_29:
  }

  [v116 installPlaceholderForApplicationHandle:v28];
LABEL_31:
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_1002323D8;
  v118[3] = &unk_100327110;
  dsema = dispatch_semaphore_create(0);
  v119 = dsema;
  [v116 waitForInstallOfDownloadIdentifier:v114 completionBlock:v118];
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  [v116 beginExternalInstallationForDownloadIdentifier:v114];
  v36 = +[SSLogConfig sharedDaemonConfig];
  if (!v36)
  {
    v36 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v36 shouldLog];
  shouldLogToDisk = [v36 shouldLogToDisk];
  oSLogObject4 = [v36 OSLogObject];
  v1022 = oSLogObject4;
  if (shouldLogToDisk)
  {
    shouldLog4 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
  {
    v41 = shouldLog4;
  }

  else
  {
    v41 = shouldLog4 & 2;
  }

  if (v41)
  {
    v103 = mediaAsset;
    v42 = objc_opt_class();
    v126 = 138412802;
    v127 = v42;
    v128 = 2048;
    v129 = v114;
    v130 = 2112;
    v131 = bundleIdentifier;
    v43 = v42;
    LODWORD(v102) = 32;
    v100 = &v126;
    v44 = _os_log_send_and_compose_impl();

    mediaAsset = v103;
    if (!v44)
    {
      goto LABEL_42;
    }

    v1022 = [NSString stringWithCString:v44 encoding:4, &v126, v102];
    free(v44);
    v100 = v1022;
    SSFileLog();
  }

LABEL_42:
  v45 = [[InstallSoftwareOperation alloc] initWithSoftwareProperties:v110];
  [(InstallSoftwareOperation *)v45 setDelegate:selfCopy];
  v117 = v25;
  v109 = [(InstallSoftwareDownloadOperation *)selfCopy runSubOperation:v45 returningError:&v117];
  v107 = v117;

  [(InstallSoftwareOperation *)v45 setDelegate:0];
  [v116 endExternalInstallationForDownloadIdentifier:v114];
  v46 = v109;
  if (!bundleIdentifier)
  {
    v46 = 0;
  }

  if (v46 == 1)
  {
    if (!isStoreDownload)
    {
      goto LABEL_61;
    }

    appReceiptData = [v110 appReceiptData];
    v48 = [appReceiptData length] == 0;

    if (!v48)
    {
      goto LABEL_61;
    }

    v49 = +[SSLogConfig sharedDaemonConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [v49 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      shouldLog5 &= 2u;
    }

    if (shouldLog5)
    {
      v52 = objc_opt_class();
      v126 = 138412546;
      v127 = v52;
      v128 = 2112;
      v129 = bundleIdentifier;
      v53 = v52;
      LODWORD(v102) = 22;
      v100 = &v126;
      v54 = _os_log_send_and_compose_impl();

      if (!v54)
      {
        goto LABEL_57;
      }

      oSLogObject5 = [NSString stringWithCString:v54 encoding:4, &v126, v102];
      free(v54);
      v100 = oSLogObject5;
      SSFileLog();
    }

LABEL_57:
    v55 = objc_alloc_init(AppReceiptRefreshOperationOptions);
    [(AppReceiptRefreshOperationOptions *)v55 setBundleIdentifier:bundleIdentifier];
    v56 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
    v57 = v56;
    if (v56 && [v56 hasMIDBasedSINF])
    {
      [(AppReceiptRefreshOperationOptions *)v55 setReceiptFlags:8];
    }

    v58 = [[AppReceiptRefreshOperation alloc] initWithOptions:v55];
    [(InstallSoftwareDownloadOperation *)selfCopy runSubOperation:v58 returningError:0];

LABEL_61:
    v59 = +[SSLogConfig sharedDaemonConfig];
    if (!v59)
    {
      v59 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject6 = [v59 OSLogObject];
    if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
    {
      shouldLog6 &= 2u;
    }

    if (shouldLog6)
    {
      v62 = objc_opt_class();
      v126 = 138412546;
      v127 = v62;
      v128 = 2112;
      v129 = bundleIdentifier;
      v63 = v62;
      LODWORD(v102) = 22;
      v64 = _os_log_send_and_compose_impl();

      if (!v64)
      {
LABEL_71:

        v105 = [[NSMutableSet alloc] initWithObjects:{bundleIdentifier, 0}];
        v65 = +[KeyValueStore defaultKeyValueStore];
        v66 = kSSLockdownDomainITunesStore;
        v67 = kSSLockdownKeyDownloadedApps;
        v68 = [v65 valueForDomain:kSSLockdownDomainITunesStore key:kSSLockdownKeyDownloadedApps];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v105 addObjectsFromArray:v68];
        }

        allObjects = [v105 allObjects];
        [v65 setValue:allObjects forDomain:v66 key:v67];

        goto LABEL_74;
      }

      oSLogObject6 = [NSString stringWithCString:v64 encoding:4, &v126, v102];
      free(v64);
      SSFileLog();
    }

    goto LABEL_71;
  }

LABEL_74:
  if ((v109 & 1) == 0)
  {
    userInfo = [v107 userInfo];
    v71 = [userInfo objectForKey:@"Error"];

    assetType = [mediaAsset assetType];
    v73 = [assetType isEqualToString:SSDownloadAssetTypeDeltaPackage];

    if (v73 && (([v71 isEqualToString:@"PackagePatchFailed"] & 1) != 0 || objc_msgSend(v71, "isEqualToString:", @"ApplicationVerificationFailed")))
    {
      [(FinishDownloadResponse *)v5 setAssetBlockedReason:1, v100];
      v74 = 1;
LABEL_117:
      [(FinishDownloadResponse *)v5 setResult:v74, v101];
      [(FinishDownloadResponse *)v5 setError:v107];

      goto LABEL_118;
    }

    if ([v71 isEqualToString:{@"AppBlacklisted", v100}])
    {
      v75 = +[SSLogConfig sharedDaemonConfig];
      if (!v75)
      {
        v75 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v75 shouldLog];
      if ([v75 shouldLogToDisk])
      {
        shouldLog7 |= 2u;
      }

      oSLogObject7 = [v75 OSLogObject];
      if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog7 &= 2u;
      }

      if (shouldLog7)
      {
        v78 = objc_opt_class();
        v126 = 138412546;
        v127 = v78;
        v128 = 2112;
        v129 = bundleIdentifier;
        v79 = v78;
        LODWORD(v102) = 22;
        v101 = &v126;
        v80 = _os_log_send_and_compose_impl();

        if (!v80)
        {
LABEL_90:

          v74 = 3;
          goto LABEL_117;
        }

        oSLogObject7 = [NSString stringWithCString:v80 encoding:4, &v126, v102];
        free(v80);
        v101 = oSLogObject7;
        SSFileLog();
      }

      goto LABEL_90;
    }

    if (![v71 isEqualToString:@"BundleiTunesMetadataVersionMismatch"])
    {
      v74 = 0;
      goto LABEL_117;
    }

    v94 = +[SSLogConfig sharedDaemonConfig];
    if (!v94)
    {
      v94 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [v94 shouldLog];
    if ([v94 shouldLogToDisk])
    {
      shouldLog8 |= 2u;
    }

    oSLogObject8 = [v94 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
    {
      v97 = shouldLog8;
    }

    else
    {
      v97 = shouldLog8 & 2;
    }

    if (v97)
    {
      v126 = 134217984;
      v127 = v114;
      LODWORD(v102) = 12;
      v101 = &v126;
      v98 = _os_log_send_and_compose_impl();

      if (!v98)
      {
LABEL_115:

        v74 = 6;
        goto LABEL_117;
      }

      oSLogObject8 = [NSString stringWithCString:v98 encoding:4, &v126, v102];
      free(v98);
      v101 = oSLogObject8;
      SSFileLog();
    }

    goto LABEL_115;
  }

LABEL_118:

  v25 = v107;
LABEL_119:

  if (cf)
  {
    SBSApplicationTerminationAssertionInvalidate();
    CFRelease(cf);
  }

LABEL_121:
  [(FinishDownloadStepOperation *)selfCopy finishWithDownloadResponse:v5, v100];
}

- (void)operation:(id)operation updatedProgress:(id)progress
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [progress copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    delegate = [(InstallSoftwareDownloadOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

- (BOOL)_downloadSecondaryAssets:(id *)assets
{
  v17[0] = SSDownloadAssetTypeArtwork;
  v17[1] = SSDownloadAssetTypeNewsstandArtwork;
  v17[2] = SSDownloadAssetTypeTransitMapsData;
  download = [(FinishDownloadStepOperation *)self download];
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v7;
    while (1)
    {
      v9 = [download secondaryAssetForType:v17[v6]];
      if (v9)
      {
        break;
      }

      if (v6++ >= 2)
      {
        v12 = 1;
        goto LABEL_11;
      }
    }

    v16 = v7;
    v11 = [(FinishDownloadStepOperation *)self downloadAsset:v9 error:&v16];
    v7 = v16;

    if (v6 > 1)
    {
      break;
    }

    ++v6;
  }

  while (v11);
  if (v11)
  {
    v12 = 1;
  }

  else if (*assets)
  {
    v15 = v7;
    v12 = 0;
    *assets = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  for (i = 2; i != -1; --i)
  {
  }

  return v12;
}

- (void)_monitorForTerminationOfBundleID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(EventMonitorBlockEvent);
  [(EventMonitorEvent *)v5 setPollInterval:30];
  [(EventMonitorEvent *)v5 setShouldKeepDaemonAlive:1];
  download = [(FinishDownloadStepOperation *)self download];
  databaseID = [download databaseID];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100232798;
  v14[3] = &unk_100329108;
  v16 = databaseID;
  v8 = dCopy;
  v15 = v8;
  [(EventMonitorBlockEvent *)v5 setEventBlock:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002329D8;
  v12[3] = &unk_1003270E8;
  v13 = v8;
  v9 = v8;
  [(EventMonitorBlockEvent *)v5 setTestBlock:v12];
  v10 = +[EventMonitor sharedEventMonitor];
  v11 = [v10 monitorEvent:v5];
}

- (id)_newSoftwarePropertiesWithDownload:(id)download
{
  downloadCopy = download;
  v4 = objc_alloc_init(SoftwareProperties);
  bundleIdentifier = [downloadCopy bundleIdentifier];
  [(SoftwareProperties *)v4 setBundleIdentifier:bundleIdentifier];

  -[SoftwareProperties setIsFromStore:](v4, "setIsFromStore:", [downloadCopy isStoreDownload]);
  bundleVersion = [downloadCopy bundleVersion];
  [(SoftwareProperties *)v4 setBundleVersion:bundleVersion];

  storeMetadata = [downloadCopy storeMetadata];
  appReceiptData = [storeMetadata appReceiptData];
  [(SoftwareProperties *)v4 setAppReceiptData:appReceiptData];

  v9 = [DownloadDRM alloc];
  sinfs = [storeMetadata sinfs];
  v11 = [(DownloadDRM *)v9 initWithSinfArray:sinfs];

  v12 = [(DownloadDRM *)v11 firstDataForSinfDataKey:off_100382E78];
  [(SoftwareProperties *)v4 setSinfData:v12];

  newITunesMetadataDictionary = [downloadCopy newITunesMetadataDictionary];
  [(SoftwareProperties *)v4 setITunesMetadata:newITunesMetadataDictionary];
  mediaAsset = [downloadCopy mediaAsset];
  v15 = mediaAsset;
  if (mediaAsset)
  {
    localPath = [mediaAsset localPath];
    [(SoftwareProperties *)v4 setPackagePath:localPath];
  }

  v17 = [downloadCopy secondaryAssetForType:SSDownloadAssetTypeArtwork];
  localPath2 = [v17 localPath];

  if (localPath2)
  {
    v19 = [[NSData alloc] initWithContentsOfFile:localPath2];
    [(SoftwareProperties *)v4 setArtworkData:v19];
  }

  v20 = [downloadCopy secondaryAssetForType:SSDownloadAssetTypeNewsstandArtwork];
  localPath3 = [v20 localPath];

  if (localPath3)
  {
    v22 = [[NSData alloc] initWithContentsOfFile:localPath3];
    [(SoftwareProperties *)v4 setNewsstandArtworkData:v22];
  }

  v23 = [downloadCopy secondaryAssetForType:SSDownloadAssetTypeTransitMapsData];
  localPath4 = [v23 localPath];

  if (localPath4)
  {
    v25 = [[NSData alloc] initWithContentsOfFile:localPath4];
    [(SoftwareProperties *)v4 setTransitMapData:v25];
  }

  if ([downloadCopy isRestoreDownload])
  {
    v26 = &off_10034C240;
  }

  else
  {
    automaticType = [downloadCopy automaticType];
    v28 = &off_10034C288;
    if (automaticType == 2)
    {
      v28 = &off_10034C270;
    }

    if (automaticType == 1)
    {
      v26 = &off_10034C258;
    }

    else
    {
      v26 = v28;
    }
  }

  [(SoftwareProperties *)v4 setInstallType:v26];

  return v4;
}

@end