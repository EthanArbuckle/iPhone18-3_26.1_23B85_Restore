@interface BRDiskCheckerValidateTreeConsistencyOperation
+ (id)_classesForZoneState;
- (BOOL)_processNextRootURL;
- (BOOL)isEnhancedDrivePrivacyEnabledForZoneRowID:(id)a3 db:(id)a4;
- (BRDiskCheckerValidateTreeConsistencyOperation)initWithDatabase:(id)a3 rootURLWrappers:(id)a4 fileChecksumRatePerThousand:(unsigned int)a5 packageChecksumRatePerThousand:(unsigned int)a6 maxEventCount:(unsigned int)a7;
- (id)_directoryFileObjectIDFromURL:(id)a3;
- (id)_injectionForFileObjectID:(id)a3;
- (id)_mangledIDFromZoneRowID:(id)a3 db:(id)a4;
- (id)_metricsFromDirectoryFileObjectID:(id)a3 db:(id)a4;
- (id)keysToFetch;
- (id)telemetryEventForFileReadErrorWithDocumentFileObjectID:(id)a3 error:(id)a4 db:(id)a5;
- (id)telemetryEventFromChecksummingFile:(id)a3 db:(id)a4;
- (id)telemetryEventValidatingSignature:(id)a3 againstDocumentFileObjectID:(id)a4 db:(id)a5;
- (void)_processURLs;
- (void)cancel;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
- (void)validateDirectoryTelemetry:(id)a3 directoryStack:(id)a4 db:(id)a5 telemetryErrorEvents:(id)a6 telemetryWarningEvents:(id)a7;
@end

@implementation BRDiskCheckerValidateTreeConsistencyOperation

- (BRDiskCheckerValidateTreeConsistencyOperation)initWithDatabase:(id)a3 rootURLWrappers:(id)a4 fileChecksumRatePerThousand:(unsigned int)a5 packageChecksumRatePerThousand:(unsigned int)a6 maxEventCount:(unsigned int)a7
{
  v13 = a3;
  v14 = a4;
  v35.receiver = self;
  v35.super_class = BRDiskCheckerValidateTreeConsistencyOperation;
  v15 = [(BRDiskCheckerValidateTreeConsistencyOperation *)&v35 initWithName:@"check-tree-consistency"];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_db, a3);
    v17 = [v14 mutableCopy];
    rootURLWrappers = v16->_rootURLWrappers;
    v16->_rootURLWrappers = v17;

    currentRootURL = v16->_currentRootURL;
    v16->_currentRootURL = 0;

    v16->_fileChecksumRate = a5;
    v16->_packageChecksumRate = a6;
    v16->_maxEventCount = a7;
    v20 = [(BRCPQLConnection *)v16->_db serialQueue];
    v21 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v20);
    signalSource = v16->_signalSource;
    v16->_signalSource = v21;

    objc_initWeak(&location, v16);
    v23 = v16->_signalSource;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100002D04;
    v32[3] = &unk_1000103A8;
    objc_copyWeak(&v33, &location);
    v24 = v23;
    v25 = v32;
    v26 = v24;
    v27 = v25;
    v28 = v27;
    v29 = v27;
    if (brc_block_remember_persona)
    {
      v29 = brc_block_remember_persona(v27);
    }

    v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v29);
    dispatch_source_set_event_handler(v26, v30);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (BOOL)_processNextRootURL
{
  [(NSURL *)self->_currentRootURL stopAccessingSecurityScopedResource];
  v3 = [(NSMutableArray *)self->_rootURLWrappers count];
  if (v3)
  {
    v4 = [(NSMutableArray *)self->_rootURLWrappers lastObject];
    [(NSMutableArray *)self->_rootURLWrappers removeLastObject];
    v5 = [v4 url];
    [v5 startAccessingSecurityScopedResource];
    objc_storeStrong(&self->_currentRootURL, v5);
    v6 = [[BRDiskCheckerFilesystemDirectory alloc] initWithURL:v5 parentIsShared:0 db:self->_db];
    [(NSMutableArray *)self->_directoryStack addObject:v6];
    self->_previousURLWasPackage = 0;
    v7 = objc_opt_new();
    directoryStack = self->_directoryStack;
    self->_directoryStack = v7;

    v9 = +[NSFileManager defaultManager];
    v10 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self keysToFetch];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002F10;
    v15[3] = &unk_1000103D0;
    v16 = v5;
    v17 = self;
    v11 = v5;
    v12 = [v9 enumeratorAtURL:v11 includingPropertiesForKeys:v10 options:2147483656 errorHandler:v15];
    directoryEnumerator = self->_directoryEnumerator;
    self->_directoryEnumerator = v12;
  }

  return v3 != 0;
}

- (id)keysToFetch
{
  v4[0] = NSURLIsPackageKey;
  v4[1] = NSURLIsRegularFileKey;
  v4[2] = NSURLIsSymbolicLinkKey;
  v4[3] = NSURLIsDirectoryKey;
  v4[4] = NSURLUbiquitousItemDownloadingStatusKey;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (void)_processURLs
{
  v3 = [(NSDirectoryEnumerator *)self->_directoryEnumerator nextObject];
  if (v3)
  {
    v4 = v3;
    if (self->_previousURLWasPackage)
    {
      self->_previousURLWasPackage = 0;
      v5 = [(NSDirectoryEnumerator *)self->_directoryEnumerator nextObject];

      v4 = v5;
    }

    if ([(NSMutableArray *)self->_telemetryErrorEvents count]>= self->_maxEventCount)
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] We've reached our cap of telemetry events.  Finishing early%@", buf, 0xCu);
      }

      [(BRDiskCheckerValidateTreeConsistencyOperation *)self completedWithResult:0 error:self->_processingError];
    }

    if ([(BRDiskCheckerValidateTreeConsistencyOperation *)self isCancelled])
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] The operation is cancelled so finishing early%@", buf, 0xCu);
      }

      v10 = +[NSError brc_errorOperationCancelled];
      [(BRDiskCheckerValidateTreeConsistencyOperation *)self completedWithResult:0 error:v10];
      goto LABEL_53;
    }

    v12 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self keysToFetch];
    v10 = [v4 resourceValuesForKeys:v12 error:0];

    v13 = [v10 objectForKeyedSubscript:NSURLIsDirectoryKey];
    v14 = [v13 BOOLValue];

    if ([v4 br_wouldBeExcludedFromSync])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100007A54();
      }

      if (v14)
      {
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_100007AF0();
        }

        [(NSDirectoryEnumerator *)self->_directoryEnumerator skipDescendants];
      }

      dispatch_source_merge_data(self->_signalSource, 1uLL);
      goto LABEL_53;
    }

    v20 = [(NSMutableArray *)self->_directoryStack lastObject];
    v21 = [v10 objectForKeyedSubscript:NSURLIsPackageKey];
    v22 = [v21 BOOLValue];

    if (v22)
    {
      [(NSDirectoryEnumerator *)self->_directoryEnumerator skipDescendants];
      [v20 addPackage:v4];
      self->_previousURLWasPackage = 1;
      v23 = [v10 objectForKeyedSubscript:NSURLUbiquitousItemDownloadingStatusKey];
      v24 = v20;
      if ([(BRDiskCheckerFilesystemDirectory *)v23 isEqualToString:NSURLUbiquitousItemDownloadingStatusCurrent])
      {
        v25 = arc4random() % 0x3E8;
        packageChecksumRate = self->_packageChecksumRate;

        if (v25 < packageChecksumRate)
        {
          v23 = brc_bread_crumbs();
          v27 = brc_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            sub_1000079B8();
          }

          goto LABEL_51;
        }

LABEL_52:
        dispatch_source_merge_data(self->_signalSource, 1uLL);

LABEL_53:
        return;
      }

LABEL_51:

      goto LABEL_52;
    }

    v28 = v20;
    v29 = [v10 objectForKeyedSubscript:NSURLIsRegularFileKey];
    v30 = [v29 BOOLValue];

    if (v30)
    {
      v24 = v20;
      [v20 addFlatFile:v4];
      v23 = [v10 objectForKeyedSubscript:NSURLUbiquitousItemDownloadingStatusKey];
      if (![(BRDiskCheckerFilesystemDirectory *)v23 isEqualToString:NSURLUbiquitousItemDownloadingStatusCurrent])
      {
        goto LABEL_51;
      }

      v31 = arc4random() % 0x3E8;
      fileChecksumRate = self->_fileChecksumRate;

      if (v31 >= fileChecksumRate)
      {
        goto LABEL_52;
      }

      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_10000791C();
      }

      v23 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self telemetryEventFromChecksummingFile:v4 db:self->_db];
      if (!v23)
      {
        goto LABEL_51;
      }

      telemetryErrorEvents = self->_telemetryErrorEvents;
    }

    else
    {
      v36 = [v10 objectForKeyedSubscript:NSURLIsSymbolicLinkKey];
      v37 = [v36 BOOLValue];

      if (v37)
      {
        v24 = v20;
        [v20 addSymlink:v4];
        goto LABEL_52;
      }

      v24 = v20;
      if (!v14)
      {
        goto LABEL_52;
      }

      v38 = [v20 url];
      v39 = [v38 isEqual:v4];

      if (v39)
      {
        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v44 = [v4 path];
          v45 = [v44 fp_obfuscatedPath];
          v46 = [v28 recursiveItemCount];
          v47 = [v28 directChildCount];
          *buf = 138413058;
          v49 = v45;
          v50 = 1024;
          v51 = v46;
          v24 = v28;
          v52 = 1024;
          v53 = v47;
          v54 = 2112;
          v55 = v40;
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] Finishing processing %@ (rcc: %d, cc: %d)%@", buf, 0x22u);
        }

        [(NSMutableArray *)self->_directoryStack removeLastObject];
        [(BRDiskCheckerValidateTreeConsistencyOperation *)self validateDirectoryTelemetry:v24 directoryStack:self->_directoryStack db:self->_db telemetryErrorEvents:self->_telemetryErrorEvents telemetryWarningEvents:self->_telemetryWarningEvents];
        v23 = [(NSMutableArray *)self->_directoryStack lastObject];
        [(BRDiskCheckerFilesystemDirectory *)v23 addSubdirectory:v24];
        goto LABEL_51;
      }

      v42 = brc_bread_crumbs();
      v43 = brc_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        sub_100007880();
      }

      v23 = -[BRDiskCheckerFilesystemDirectory initWithURL:parentIsShared:db:]([BRDiskCheckerFilesystemDirectory alloc], "initWithURL:parentIsShared:db:", v4, [v20 isShared], self->_db);
      telemetryErrorEvents = self->_directoryStack;
    }

    [(NSMutableArray *)telemetryErrorEvents addObject:v23];
    goto LABEL_51;
  }

  if ([(BRDiskCheckerValidateTreeConsistencyOperation *)self _processNextRootURL])
  {
    signalSource = self->_signalSource;

    dispatch_source_merge_data(signalSource, 1uLL);
  }

  else
  {
    processingError = self->_processingError;

    [(BRDiskCheckerValidateTreeConsistencyOperation *)self completedWithResult:0 error:processingError];
  }
}

- (void)main
{
  v3 = objc_opt_new();
  telemetryErrorEvents = self->_telemetryErrorEvents;
  self->_telemetryErrorEvents = v3;

  v5 = objc_opt_new();
  telemetryWarningEvents = self->_telemetryWarningEvents;
  self->_telemetryWarningEvents = v5;

  dispatch_source_merge_data(self->_signalSource, 1uLL);
  signalSource = self->_signalSource;

  dispatch_resume(signalSource);
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  checkTelemetryCompletionBlock = self->_checkTelemetryCompletionBlock;
  telemetryErrorEvents = self->_telemetryErrorEvents;
  telemetryWarningEvents = self->_telemetryWarningEvents;
  v9 = checkTelemetryCompletionBlock[2];
  v10 = a4;
  v11 = a3;
  v9(checkTelemetryCompletionBlock, telemetryErrorEvents, telemetryWarningEvents, v10);
  v12.receiver = self;
  v12.super_class = BRDiskCheckerValidateTreeConsistencyOperation;
  [(BRDiskCheckerValidateTreeConsistencyOperation *)&v12 finishWithResult:v11 error:v10];
}

+ (id)_classesForZoneState
{
  if (qword_100015688 != -1)
  {
    sub_100007B8C();
  }

  v3 = qword_100015690;

  return v3;
}

- (void)validateDirectoryTelemetry:(id)a3 directoryStack:(id)a4 db:(id)a5 telemetryErrorEvents:(id)a6 telemetryWarningEvents:(id)a7
{
  v12 = a3;
  v13 = a4;
  v44 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 url];
  v17 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _directoryFileObjectIDFromURL:v16];

  if (v17)
  {
    v18 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _metricsFromDirectoryFileObjectID:v17 db:v44];
    v41 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _injectionForFileObjectID:v17];
    v19 = [v44 fetch:{@"SELECT item_id, zone_rowid FROM client_items WHERE %@ AND item_state IN (0)", v41}];
    v43 = v15;
    v40 = v19;
    if ([v19 next])
    {
      v20 = [v19 objectOfClass:objc_opt_class() atIndex:0];
      v21 = [v19 numberAtIndex:1];
      [(BRDiskCheckerValidateTreeConsistencyOperation *)self isEnhancedDrivePrivacyEnabledForZoneRowID:v21 db:v44];
      [(BRDiskCheckerValidateTreeConsistencyOperation *)self _mangledIDFromZoneRowID:v21 db:v44];
      v22 = v14;
      v23 = v12;
      v25 = v24 = v13;

      v26 = v25;
      v13 = v24;
      v12 = v23;
      v14 = v22;
    }

    else
    {
      v26 = 0;
      v20 = 0;
    }

    v42 = v18;
    v38 = v26;
    v39 = v20;
    v27 = [v12 generateTelemetryErrorEventsWithMetrics:v18 itemID:v20 zoneMangledID:? enhancedDrivePrivacyEnabled:?];
    v28 = [v12 telemetryWarningEvents];
    if ([v27 count])
    {
      v36 = v14;
      v37 = v13;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v29 = v13;
      v30 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v46;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v46 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [*(*(&v45 + 1) + 8 * i) setChildHasProblem:1];
          }

          v31 = [v29 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v31);
      }

      v14 = v36;
      [v36 addObjectsFromArray:v27];
      v13 = v37;
    }

    if ([v28 count])
    {
      [v43 addObjectsFromArray:v28];
      v34 = [v43 count];
      maxEventCount = self->_maxEventCount;
      if (v34 > maxEventCount)
      {
        [v43 removeObjectsInRange:{maxEventCount, objc_msgSend(v43, "count") - self->_maxEventCount}];
      }
    }

    v15 = v43;
  }
}

- (id)telemetryEventValidatingSignature:(id)a3 againstDocumentFileObjectID:(id)a4 db:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _injectionForFileObjectID:v9];
  v12 = [v10 fetch:{@"SELECT version_content_signature, item_id, zone_rowid FROM client_items WHERE %@", v11}];
  if (![v12 next])
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      sub_100007BA0(v9, v14, v15);
    }

    goto LABEL_7;
  }

  v13 = [v12 objectOfClass:objc_opt_class() atIndex:0];
  if ([v8 isEqualToData:v13])
  {

LABEL_7:
    v16 = 0;
    v17 = 0;
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v17 = [v12 objectOfClass:objc_opt_class() atIndex:1];
  v21 = [v12 numberAtIndex:2];
  v16 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _mangledIDFromZoneRowID:v21 db:v10];
  v26 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self isEnhancedDrivePrivacyEnabledForZoneRowID:v21 db:v10];
  v27 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, 0x90u))
  {
    *buf = 138413314;
    v29 = v9;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v27;
    _os_log_error_impl(&_mh_execute_header, v22, 0x90u, "[ERROR] File checksum at %@ for %@ doesn't match %@ vs %@%@", buf, 0x34u);
  }

  if (!v17)
  {
    goto LABEL_8;
  }

  v23 = [v8 brc_signatureIsPackage];
  v24 = [v17 itemIDString];
  if (v23)
  {
    v25 = [AppTelemetryTimeSeriesEvent newPackageChecksumMismatchEventWithZoneMangledID:v16 enhancedDrivePrivacyEnabled:v26 itemIDString:v24];
  }

  else
  {
    v25 = [AppTelemetryTimeSeriesEvent newFileChecksumMismatchEventWithZoneMangledID:v16 enhancedDrivePrivacyEnabled:v26 itemIDString:v24];
  }

  v18 = v25;

LABEL_9:
  v19 = v18;

  return v18;
}

- (BOOL)isEnhancedDrivePrivacyEnabledForZoneRowID:(id)a3 db:(id)a4
{
  v4 = [a4 fetch:{@"SELECT zone_plist FROM client_zones WHERE rowid = %@", a3}];
  if ([v4 next])
  {
    v5 = _BRCClassesForContainerState();
    v6 = [v4 unarchivedObjectOfClasses:v5 atIndex:0];

    if (v6)
    {
      v7 = [v6 objectForKeyedSubscript:@"state"];

      if (v7)
      {
        v8 = [v6 objectForKeyedSubscript:@"state"];
        v9 = [v8 unsignedLongLongValue];

        v7 = ((v9 >> 22) & 1);
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)telemetryEventForFileReadErrorWithDocumentFileObjectID:(id)a3 error:(id)a4 db:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _injectionForFileObjectID:a3];
  v11 = [v8 fetch:{@"SELECT item_id, zone_rowid FROM client_items WHERE %@", v10}];
  if ([v11 next])
  {
    v12 = [v11 objectOfClass:objc_opt_class() atIndex:0];
    v13 = [v11 numberAtIndex:1];
    v14 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _mangledIDFromZoneRowID:v13 db:v8];
    v15 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self isEnhancedDrivePrivacyEnabledForZoneRowID:v13 db:v8];
  }

  else
  {
    v12 = 0;
    v15 = 0;
    v14 = 0;
  }

  v16 = [v12 itemIDString];
  v17 = [AppTelemetryTimeSeriesEvent newFileReadErrorWithError:v9 zoneMangledID:v14 enhancedDrivePrivacyEnabled:v15 itemIDString:v16];

  return v17;
}

- (id)telemetryEventFromChecksummingFile:(id)a3 db:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = open([v6 fileSystemRepresentation], 0x8000);
  if ((v8 & 0x80000000) != 0)
  {
    v12 = +[NSError br_errorFromErrno];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      sub_100007C28();
    }

    v16 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self telemetryEventForFileReadErrorWithDocumentFileObjectID:0 error:v12 db:v7];
  }

  else
  {
    v9 = v8;
    v10 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _directoryFileObjectIDFromURL:v6];
    v22 = 0;
    v11 = [CKSignatureGenerator signatureWithFileDescriptor:v9 error:&v22];
    v12 = v22;
    close(v9);
    if (v11)
    {
      v13 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self telemetryEventValidatingSignature:v11 againstDocumentFileObjectID:v10 db:v7];
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v20 = [v6 path];
        v21 = [v20 fp_obfuscatedPath];
        *buf = 138412802;
        v24 = v21;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v17;
        _os_log_error_impl(&_mh_execute_header, v18, 0x90u, "[ERROR] Failed to generate a signature for file at %@ - %@%@", buf, 0x20u);
      }

      v13 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self telemetryEventForFileReadErrorWithDocumentFileObjectID:v10 error:v12 db:v7];
    }

    v16 = v13;
  }

  return v16;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = BRDiskCheckerValidateTreeConsistencyOperation;
  [(BRDiskCheckerValidateTreeConsistencyOperation *)&v4 cancel];
  dispatch_source_cancel(self->_signalSource);
  v3 = +[NSError brc_errorOperationCancelled];
  [(BRDiskCheckerValidateTreeConsistencyOperation *)self completedWithResult:0 error:v3];
}

- (id)_mangledIDFromZoneRowID:(id)a3 db:(id)a4
{
  v4 = [a4 fetch:{@"SELECT zone_name, zone_owner FROM client_zones WHERE rowid = %@", a3}];
  if ([v4 next])
  {
    v5 = [BRMangledID alloc];
    v6 = [v4 stringAtIndex:0];
    v7 = [v4 stringAtIndex:1];
    v8 = [v5 initWithZoneName:v6 ownerName:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_metricsFromDirectoryFileObjectID:(id)a3 db:(id)a4
{
  v6 = a4;
  v7 = [(BRDiskCheckerValidateTreeConsistencyOperation *)self _injectionForFileObjectID:a3];
  v8 = [v6 fetchObject:&stru_100010450 sql:{@"SELECT si.item_id IS NULL, (SELECT sz.zone_owner = %@ FROM server_zones AS sz WHERE sz.rowid = si.zone_rowid), si.quota_used, si.recursive_child_count, si.shared_children_count, si.shared_alias_count, si.child_count FROM client_items AS ci LEFT JOIN server_items AS si ON (si.item_id = ci.item_id AND si.zone_rowid = ci.zone_rowid) WHERE ci.%@ AND ci.item_state IN (0)", CKCurrentUserDefaultName, v7}];

  return v8;
}

- (id)_directoryFileObjectIDFromURL:(id)a3
{
  v3 = a3;
  v4 = +[FPItemManager defaultManager];
  v18 = 0;
  v5 = [v4 itemForURL:v3 error:&v18];
  v6 = v18;

  v7 = [v5 providerItemIdentifier];

  if (v7)
  {
    v8 = [v5 providerItemIdentifier];
    v9 = [BRFileObjectID fileObjectIDWithString:v8];

    if ([v9 isAppLibraryRoot])
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v11 = *__error();
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      v15 = [v3 path];
      v16 = [v15 fp_obfuscatedPath];
      v17 = [v6 fp_prettyDescription];
      *buf = 138413058;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 1024;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_error_impl(&_mh_execute_header, v13, 0x90u, "[ERROR] failed to fetch item identifier for %@: %@ %{errno}d%@", buf, 0x26u);
    }

    v10 = 0;
    *__error() = v11;
  }

  return v10;
}

- (id)_injectionForFileObjectID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 type] == 4)
    {
      v5 = [BRCItemID alloc];
      v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 rawID]);
      v7 = [v5 initAsDocumentsWithAppLibraryRowID:v6];

      v8 = [PQLFormatInjection formatInjection:@"item_id = %@", v7];

      goto LABEL_10;
    }

    if ([v4 type] != 2 && objc_msgSend(v4, "type") != 3)
    {
      sub_100007CD4();
    }

    v9 = +[PQLFormatInjection formatInjection:](PQLFormatInjection, "formatInjection:", @"rowid = %llu", [v4 rawID]);
  }

  else
  {
    v9 = [PQLRawInjection rawInjection:"0" length:1];
  }

  v8 = v9;
LABEL_10:

  return v8;
}

@end