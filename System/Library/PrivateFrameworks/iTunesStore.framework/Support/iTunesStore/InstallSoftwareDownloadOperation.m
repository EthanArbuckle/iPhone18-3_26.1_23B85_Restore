@interface InstallSoftwareDownloadOperation
- (BOOL)_downloadSecondaryAssets:(id *)a3;
- (id)_newSoftwarePropertiesWithDownload:(id)a3;
- (void)_monitorForTerminationOfBundleID:(id)a3;
- (void)operation:(id)a3 updatedProgress:(id)a4;
- (void)run;
@end

@implementation InstallSoftwareDownloadOperation

- (void)run
{
  v2 = self;
  v3 = [(FinishDownloadStepOperation *)self download];
  v4 = [v3 mediaAsset];
  v5 = objc_alloc_init(FinishDownloadResponse);
  -[FinishDownloadResponse setDownloadIdentifier:](v5, "setDownloadIdentifier:", [v3 databaseID]);
  -[FinishDownloadResponse setMediaAssetIdentifier:](v5, "setMediaAssetIdentifier:", [v4 databaseID]);
  [(FinishDownloadResponse *)v5 setResult:4];
  v6 = [v3 automaticType];
  v7 = [v3 bundleIdentifier];
  v8 = [v3 databaseID];
  v9 = [v3 transactionID];
  v114 = v8;
  v113 = [[DownloadHandle alloc] initWithTransactionIdentifier:v9 downloadIdentifier:v8];
  [(FinishDownloadResponse *)v5 setDownloadHandle:?];
  v116 = +[ApplicationWorkspace defaultWorkspace];
  if ([v116 isMultiUser])
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v11 |= 2u;
    }

    v12 = [v10 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v126 = 138412802;
      v127 = objc_opt_class();
      v128 = 2048;
      v129 = v114;
      v130 = 2112;
      v131 = v7;
      cfa = v9;
      v13 = v6;
      v14 = v5;
      v15 = v3;
      v16 = v7;
      v17 = v2;
      v18 = v4;
      v19 = v127;
      LODWORD(v102) = 32;
      v99 = &v126;
      v20 = _os_log_send_and_compose_impl();

      v4 = v18;
      v2 = v17;
      v7 = v16;
      v3 = v15;
      v5 = v14;
      v6 = v13;
      v9 = cfa;

      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4, &v126, v102];
        free(v20);
        v99 = v21;
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
    v122[4] = v2;
    v125 = v114;
    v123 = v7;
    v124 = v22;
    v23 = v22;
    [v116 waitForSyncBubbleToTerminateWithCompletionBlock:v122];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  }

  [v116 cancelPlaceholderInstallationForDownloadIdentifier:{v114, v99}];
  v121 = 0;
  v24 = [(InstallSoftwareDownloadOperation *)v2 _downloadSecondaryAssets:&v121];
  v25 = v121;
  if ((v24 & 1) == 0)
  {
    [(FinishDownloadResponse *)v5 setError:v25];
    [(FinishDownloadResponse *)v5 setResult:0];
    goto LABEL_121;
  }

  v120 = 0;
  cf = SBSApplicationTerminationAssertionCreateWithError();
  v110 = [(InstallSoftwareDownloadOperation *)v2 _newSoftwarePropertiesWithDownload:v3];
  v104 = [v3 isStoreDownload];
  if (!([v3 isTvTemplate] & 1 | ((v104 & 1) == 0)))
  {
    v26 = [v110 sinfData];
    v27 = [v26 length] == 0;

    if (v27)
    {
      v81 = +[SSLogConfig sharedDaemonConfig];
      if (!v81)
      {
        v81 = +[SSLogConfig sharedConfig];
      }

      v82 = [v81 shouldLog];
      if ([v81 shouldLogToDisk])
      {
        v82 |= 2u;
      }

      v83 = [v81 OSLogObject];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v82;
      }

      else
      {
        v84 = v82 & 2;
      }

      if (v84)
      {
        v85 = objc_opt_class();
        v126 = 138412802;
        v127 = v85;
        v128 = 2048;
        v129 = v114;
        v130 = 2112;
        v131 = v7;
        v115 = v25;
        v86 = v5;
        v87 = v3;
        v88 = v7;
        v89 = v2;
        v90 = v4;
        v91 = v85;
        LODWORD(v102) = 32;
        v100 = &v126;
        v92 = _os_log_send_and_compose_impl();

        v4 = v90;
        v2 = v89;
        v7 = v88;
        v3 = v87;
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

        v83 = [NSString stringWithCString:v92 encoding:4, &v126, v102];
        free(v92);
        v100 = v83;
        SSFileLog();
      }

      goto LABEL_102;
    }
  }

  if (v6 != 2)
  {
    goto LABEL_31;
  }

  v28 = [[ApplicationHandle alloc] initWithTransactionIdentifier:v9 downloadIdentifier:v114 bundleIdentifier:v7];
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
  if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
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
    v32 = [NSString stringWithCString:v35 encoding:4, &v126, v102];
    free(v35);
    v100 = v32;
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

  v37 = [v36 shouldLog];
  v38 = [v36 shouldLogToDisk];
  v39 = [v36 OSLogObject];
  v40 = v39;
  if (v38)
  {
    v37 |= 2u;
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v41 = v37;
  }

  else
  {
    v41 = v37 & 2;
  }

  if (v41)
  {
    v103 = v4;
    v42 = objc_opt_class();
    v126 = 138412802;
    v127 = v42;
    v128 = 2048;
    v129 = v114;
    v130 = 2112;
    v131 = v7;
    v43 = v42;
    LODWORD(v102) = 32;
    v100 = &v126;
    v44 = _os_log_send_and_compose_impl();

    v4 = v103;
    if (!v44)
    {
      goto LABEL_42;
    }

    v40 = [NSString stringWithCString:v44 encoding:4, &v126, v102];
    free(v44);
    v100 = v40;
    SSFileLog();
  }

LABEL_42:
  v45 = [[InstallSoftwareOperation alloc] initWithSoftwareProperties:v110];
  [(InstallSoftwareOperation *)v45 setDelegate:v2];
  v117 = v25;
  v109 = [(InstallSoftwareDownloadOperation *)v2 runSubOperation:v45 returningError:&v117];
  v107 = v117;

  [(InstallSoftwareOperation *)v45 setDelegate:0];
  [v116 endExternalInstallationForDownloadIdentifier:v114];
  v46 = v109;
  if (!v7)
  {
    v46 = 0;
  }

  if (v46 == 1)
  {
    if (!v104)
    {
      goto LABEL_61;
    }

    v47 = [v110 appReceiptData];
    v48 = [v47 length] == 0;

    if (!v48)
    {
      goto LABEL_61;
    }

    v49 = +[SSLogConfig sharedDaemonConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    v50 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v50 |= 2u;
    }

    v51 = [v49 OSLogObject];
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v50 &= 2u;
    }

    if (v50)
    {
      v52 = objc_opt_class();
      v126 = 138412546;
      v127 = v52;
      v128 = 2112;
      v129 = v7;
      v53 = v52;
      LODWORD(v102) = 22;
      v100 = &v126;
      v54 = _os_log_send_and_compose_impl();

      if (!v54)
      {
        goto LABEL_57;
      }

      v51 = [NSString stringWithCString:v54 encoding:4, &v126, v102];
      free(v54);
      v100 = v51;
      SSFileLog();
    }

LABEL_57:
    v55 = objc_alloc_init(AppReceiptRefreshOperationOptions);
    [(AppReceiptRefreshOperationOptions *)v55 setBundleIdentifier:v7];
    v56 = [LSApplicationProxy applicationProxyForIdentifier:v7];
    v57 = v56;
    if (v56 && [v56 hasMIDBasedSINF])
    {
      [(AppReceiptRefreshOperationOptions *)v55 setReceiptFlags:8];
    }

    v58 = [[AppReceiptRefreshOperation alloc] initWithOptions:v55];
    [(InstallSoftwareDownloadOperation *)v2 runSubOperation:v58 returningError:0];

LABEL_61:
    v59 = +[SSLogConfig sharedDaemonConfig];
    if (!v59)
    {
      v59 = +[SSLogConfig sharedConfig];
    }

    v60 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      v60 |= 2u;
    }

    v61 = [v59 OSLogObject];
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v60 &= 2u;
    }

    if (v60)
    {
      v62 = objc_opt_class();
      v126 = 138412546;
      v127 = v62;
      v128 = 2112;
      v129 = v7;
      v63 = v62;
      LODWORD(v102) = 22;
      v64 = _os_log_send_and_compose_impl();

      if (!v64)
      {
LABEL_71:

        v105 = [[NSMutableSet alloc] initWithObjects:{v7, 0}];
        v65 = +[KeyValueStore defaultKeyValueStore];
        v66 = kSSLockdownDomainITunesStore;
        v67 = kSSLockdownKeyDownloadedApps;
        v68 = [v65 valueForDomain:kSSLockdownDomainITunesStore key:kSSLockdownKeyDownloadedApps];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v105 addObjectsFromArray:v68];
        }

        v69 = [v105 allObjects];
        [v65 setValue:v69 forDomain:v66 key:v67];

        goto LABEL_74;
      }

      v61 = [NSString stringWithCString:v64 encoding:4, &v126, v102];
      free(v64);
      SSFileLog();
    }

    goto LABEL_71;
  }

LABEL_74:
  if ((v109 & 1) == 0)
  {
    v70 = [v107 userInfo];
    v71 = [v70 objectForKey:@"Error"];

    v72 = [v4 assetType];
    v73 = [v72 isEqualToString:SSDownloadAssetTypeDeltaPackage];

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

      v76 = [v75 shouldLog];
      if ([v75 shouldLogToDisk])
      {
        v76 |= 2u;
      }

      v77 = [v75 OSLogObject];
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v76 &= 2u;
      }

      if (v76)
      {
        v78 = objc_opt_class();
        v126 = 138412546;
        v127 = v78;
        v128 = 2112;
        v129 = v7;
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

        v77 = [NSString stringWithCString:v80 encoding:4, &v126, v102];
        free(v80);
        v101 = v77;
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

    v95 = [v94 shouldLog];
    if ([v94 shouldLogToDisk])
    {
      v95 |= 2u;
    }

    v96 = [v94 OSLogObject];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      v97 = v95;
    }

    else
    {
      v97 = v95 & 2;
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

      v96 = [NSString stringWithCString:v98 encoding:4, &v126, v102];
      free(v98);
      v101 = v96;
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
  [(FinishDownloadStepOperation *)v2 finishWithDownloadResponse:v5, v100];
}

- (void)operation:(id)a3 updatedProgress:(id)a4
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [a4 copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    v8 = [(InstallSoftwareDownloadOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

- (BOOL)_downloadSecondaryAssets:(id *)a3
{
  v17[0] = SSDownloadAssetTypeArtwork;
  v17[1] = SSDownloadAssetTypeNewsstandArtwork;
  v17[2] = SSDownloadAssetTypeTransitMapsData;
  v5 = [(FinishDownloadStepOperation *)self download];
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v7;
    while (1)
    {
      v9 = [v5 secondaryAssetForType:v17[v6]];
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

  else if (*a3)
  {
    v15 = v7;
    v12 = 0;
    *a3 = v7;
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

- (void)_monitorForTerminationOfBundleID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(EventMonitorBlockEvent);
  [(EventMonitorEvent *)v5 setPollInterval:30];
  [(EventMonitorEvent *)v5 setShouldKeepDaemonAlive:1];
  v6 = [(FinishDownloadStepOperation *)self download];
  v7 = [v6 databaseID];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100232798;
  v14[3] = &unk_100329108;
  v16 = v7;
  v8 = v4;
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

- (id)_newSoftwarePropertiesWithDownload:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SoftwareProperties);
  v5 = [v3 bundleIdentifier];
  [(SoftwareProperties *)v4 setBundleIdentifier:v5];

  -[SoftwareProperties setIsFromStore:](v4, "setIsFromStore:", [v3 isStoreDownload]);
  v6 = [v3 bundleVersion];
  [(SoftwareProperties *)v4 setBundleVersion:v6];

  v7 = [v3 storeMetadata];
  v8 = [v7 appReceiptData];
  [(SoftwareProperties *)v4 setAppReceiptData:v8];

  v9 = [DownloadDRM alloc];
  v10 = [v7 sinfs];
  v11 = [(DownloadDRM *)v9 initWithSinfArray:v10];

  v12 = [(DownloadDRM *)v11 firstDataForSinfDataKey:off_100382E78];
  [(SoftwareProperties *)v4 setSinfData:v12];

  v13 = [v3 newITunesMetadataDictionary];
  [(SoftwareProperties *)v4 setITunesMetadata:v13];
  v14 = [v3 mediaAsset];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 localPath];
    [(SoftwareProperties *)v4 setPackagePath:v16];
  }

  v17 = [v3 secondaryAssetForType:SSDownloadAssetTypeArtwork];
  v18 = [v17 localPath];

  if (v18)
  {
    v19 = [[NSData alloc] initWithContentsOfFile:v18];
    [(SoftwareProperties *)v4 setArtworkData:v19];
  }

  v20 = [v3 secondaryAssetForType:SSDownloadAssetTypeNewsstandArtwork];
  v21 = [v20 localPath];

  if (v21)
  {
    v22 = [[NSData alloc] initWithContentsOfFile:v21];
    [(SoftwareProperties *)v4 setNewsstandArtworkData:v22];
  }

  v23 = [v3 secondaryAssetForType:SSDownloadAssetTypeTransitMapsData];
  v24 = [v23 localPath];

  if (v24)
  {
    v25 = [[NSData alloc] initWithContentsOfFile:v24];
    [(SoftwareProperties *)v4 setTransitMapData:v25];
  }

  if ([v3 isRestoreDownload])
  {
    v26 = &off_10034C240;
  }

  else
  {
    v27 = [v3 automaticType];
    v28 = &off_10034C288;
    if (v27 == 2)
    {
      v28 = &off_10034C270;
    }

    if (v27 == 1)
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