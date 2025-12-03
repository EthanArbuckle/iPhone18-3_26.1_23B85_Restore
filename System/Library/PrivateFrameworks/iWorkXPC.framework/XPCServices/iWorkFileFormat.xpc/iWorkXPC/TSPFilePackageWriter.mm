@interface TSPFilePackageWriter
- (TSPFilePackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8;
- (id)componentZipArchiveWriter;
- (id)zipArchiveWriter;
- (void)closeWithQueue:(id)queue completion:(id)completion;
- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)handler;
- (void)truncateZipAtFirstDeletedData:(id)data;
- (void)willWriteData:(id)data;
@end

@implementation TSPFilePackageWriter

- (TSPFilePackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  propertiesCopy = properties;
  metadataCopy = metadata;
  policyCopy = policy;
  v27 = lCopy;
  keyCopy = key;
  packageCopy = package;
  supportPackageCopy = supportPackage;
  v79.receiver = self;
  v79.super_class = TSPFilePackageWriter;
  v80 = 0;
  delegateCopy = delegate;
  progressCopy = progress;
  v64 = packageCopy;
  v65 = supportPackageCopy;
  v61 = keyCopy;
  v62 = policyCopy;
  v63 = keyCopy;
  v31 = v27;
  v32 = rLCopy;
  v73 = dataCopy;
  v33 = [(TSPPackageWriter *)&v79 initWithURL:v31 documentTargetURL:rLCopy relativeURLForExternalData:dataCopy packageIdentifier:identifierCopy documentProperties:propertiesCopy documentMetadata:metadataCopy fileFormatVersion:version updateType:type cloneMode:mode documentSaveValidationPolicy:policyCopy encryptionKey:v61 originalDocumentPackage:packageCopy originalSupportPackage:supportPackageCopy fileCoordinatorDelegate:delegateCopy progress:progressCopy error:&v80];
  v34 = v80;
  v35 = v34;
  if (v33 && mode)
  {

    v78 = 0;
    v36 = [[TSUSafeSaveAssistant alloc] initForSavingToURL:v31 error:&v78];
    v37 = v78;
    safeSaveAssistant = v33->_safeSaveAssistant;
    v33->_safeSaveAssistant = v36;

    if (v33->_safeSaveAssistant)
    {
      v39 = [TSUZipFileWriter alloc];
      writeURL = [(TSUSafeSaveAssistant *)v33->_safeSaveAssistant writeURL];
      v77 = v37;
      v41 = [(TSUZipFileWriter *)v39 initWithURL:writeURL error:&v77];
      v35 = v77;

      delayedZipArchiveWriter = v33->_delayedZipArchiveWriter;
      v33->_delayedZipArchiveWriter = v41;

      if (v33->_delayedZipArchiveWriter)
      {
        goto LABEL_19;
      }

      if (UnsafePointer != -1)
      {
        sub_100152BA8();
      }

      v43 = UnsafePointer;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        domain = [v35 domain];
        code = [v35 code];
        tsp_isRecoverable = [v35 tsp_isRecoverable];
        tsp_hintsDescription = [v35 tsp_hintsDescription];
        v49 = tsp_hintsDescription;
        v50 = &stru_1001D3878;
        *buf = 138544642;
        v82 = v45;
        v83 = 2114;
        if (tsp_isRecoverable)
        {
          v50 = @"recoverable=YES, ";
        }

        v84 = domain;
        v85 = 2048;
        v86 = code;
        v87 = 2114;
        v88 = v50;
        v89 = 2114;
        v90 = tsp_hintsDescription;
        v91 = 2112;
        v92 = v35;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to create delayed zip writer. error=errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", buf, 0x3Eu);
      }
    }

    else
    {
      if (UnsafePointer != -1)
      {
        sub_100152BD0();
      }

      v43 = UnsafePointer;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v55 = objc_opt_class();
        v72 = NSStringFromClass(v55);
        domain2 = [v37 domain];
        code2 = [v37 code];
        tsp_isRecoverable2 = [v37 tsp_isRecoverable];
        tsp_hintsDescription2 = [v37 tsp_hintsDescription];
        v59 = tsp_hintsDescription2;
        v60 = &stru_1001D3878;
        *buf = 138544642;
        v82 = v72;
        v83 = 2114;
        if (tsp_isRecoverable2)
        {
          v60 = @"recoverable=YES, ";
        }

        v84 = domain2;
        v85 = 2048;
        v86 = code2;
        v87 = 2114;
        v88 = v60;
        v89 = 2114;
        v90 = tsp_hintsDescription2;
        v91 = 2112;
        v92 = v37;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to create safe save assistant. error=errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", buf, 0x3Eu);
      }

      v35 = v37;
    }

    v51 = v33;
    v52 = dispatch_get_global_queue(0, 0);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10001C4F0;
    v75[3] = &unk_1001C6710;
    v53 = v51;
    v76 = v53;
    [(TSPFilePackageWriter *)v53 closeWithQueue:v52 completion:v75];

    v33 = 0;
  }

  if (error && !v33)
  {
    [NSError tsp_ensureSaveErrorWithError:v35];
    *error = v33 = 0;
  }

LABEL_19:

  return v33;
}

- (id)componentZipArchiveWriter
{
  delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
  if (delayedZipArchiveWriter)
  {
    componentZipArchiveWriter = delayedZipArchiveWriter;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSPFilePackageWriter;
    componentZipArchiveWriter = [(TSPPackageWriter *)&v5 componentZipArchiveWriter];
  }

  return componentZipArchiveWriter;
}

- (id)zipArchiveWriter
{
  if (self->_onlyWriteToDelayedZipArchive)
  {
    delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
    if (delayedZipArchiveWriter)
    {
      v3 = delayedZipArchiveWriter;
      goto LABEL_7;
    }

    [(TSPPackageWriter *)&v6 zipArchiveWriter:v5.receiver];
  }

  else
  {
    [(TSPPackageWriter *)&v5 zipArchiveWriter:self];
  }
  v3 = ;
LABEL_7:

  return v3;
}

- (void)truncateZipAtFirstDeletedData:(id)data
{
  dataCopy = data;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001CDE8;
  v18[3] = &unk_1001C6778;
  v18[4] = self;
  v5 = [dataCopy mutableCopy];
  v19 = v5;
  [dataCopy enumerateKeysAndObjectsUsingBlock:v18];
  v6 = v5;

  v17.receiver = self;
  v17.super_class = TSPFilePackageWriter;
  zipArchiveWriter = [(TSPPackageWriter *)&v17 zipArchiveWriter];
  entriesCount = [zipArchiveWriter entriesCount];
  LOBYTE(v5) = self->_onlyWriteToDelayedZipArchive;
  sortedEntries = [zipArchiveWriter sortedEntries];
  v9 = 0;
  if ((v5 & (entriesCount != 0)) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while (v9 < [sortedEntries count] && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [sortedEntries objectAtIndexedSubscript:v9];
    v12 = [(TSPPackageWriter *)self dataForZipEntry:v11 inDataToWrite:v6];
    v13 = v12 == 0;

    if (v13)
    {
      if (UnsafePointer != -1)
      {
        sub_100152CC4();
      }

      v14 = UnsafePointer;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        name = [v11 name];
        *buf = 138412546;
        v21 = name;
        v22 = 2048;
        v23 = v9;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "TSPData %@ not found in existing zip, will truncate at index %lu", buf, 0x16u);
      }

      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    ++v9;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [zipArchiveWriter truncateToNumberOfEntries:v10 completion:&stru_1001C67D8];
  }
}

- (void)willWriteData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_delayedZipArchiveWriter)
  {
    v18 = dataCopy;
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(dataCopy, "count")}];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v17 = 144;
    v9 = 0;
    if (v8)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          lengthIfLocal = [v12 lengthIfLocal];
          packageLocator = [v12 packageLocator];
          v15 = packageLocator == 0;

          if (!v15)
          {
            packageLocator2 = [v12 packageLocator];
            [v6 setObject:v12 forKeyedSubscript:packageLocator2];
          }

          v9 += lengthIfLocal;
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if (v9 < [*(&self->super.super.isa + v17) archiveLength])
    {
      self->_onlyWriteToDelayedZipArchive = 1;
      [v6 removeAllObjects];
    }

    [(TSPFilePackageWriter *)self truncateZipAtFirstDeletedData:v6, v17];

    v5 = v18;
  }
}

- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(TSPPackageWriter *)self closeCurrentChannel];
  delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
  if (delayedZipArchiveWriter && [(TSUZipWriter *)delayedZipArchiveWriter entriesCount])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    progress = [(TSPPackageWriter *)self progress];
    if (progress)
    {
      componentZipArchiveWriter = [(TSPFilePackageWriter *)self componentZipArchiveWriter];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10001D7D4;
      v21[3] = &unk_1001C6820;
      v21[4] = self;
      v21[5] = &v22;
      [componentZipArchiveWriter enumerateEntriesUsingBlock:v21];

      if (self->_onlyWriteToDelayedZipArchive)
      {
        [progress becomeCurrentWithPendingUnitCount:{objc_msgSend(progress, "tsu_pendingUnitCountForIncompleteProgress:", v23[3])}];
        v8 = [NSProgress progressWithTotalUnitCount:1];
        [v8 setCompletedUnitCount:1];
        [progress resignCurrent];

LABEL_9:
        v20.receiver = self;
        v20.super_class = TSPFilePackageWriter;
        zipArchiveWriter = [(TSPPackageWriter *)&v20 zipArchiveWriter];
        entriesCount = [zipArchiveWriter entriesCount];

        if (entriesCount)
        {
          +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100152D6C();
          }

          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_100152D94();
          }

          v11 = [NSString stringWithUTF8String:"[TSPFilePackageWriter finalizeComponentAndDataSectionWithCompletionHandler:]"];
          v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPFilePackageWriter.mm"];
          [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:247 isFatal:0 description:"Only the delayed zip archive writer should have entries"];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_18;
      }
    }

    else if (self->_onlyWriteToDelayedZipArchive)
    {
      goto LABEL_9;
    }

    v13 = self->_delayedZipArchiveWriter;
    v14 = dispatch_get_global_queue(0, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001D918;
    v15[3] = &unk_1001C6890;
    v16 = progress;
    v19 = &v22;
    selfCopy = self;
    v18 = handlerCopy;
    [(TSUZipWriter *)v13 closeWithQueue:v14 completion:v15];

LABEL_18:
    _Block_object_dispose(&v22, 8);
    goto LABEL_19;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_19:
}

- (void)closeWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001DC50;
  v12[3] = &unk_1001C6940;
  v13 = queueCopy;
  v14 = completionCopy;
  v12[4] = self;
  v11.receiver = self;
  v11.super_class = TSPFilePackageWriter;
  v9 = queueCopy;
  v10 = completionCopy;
  [(TSPPackageWriter *)&v11 closeWithQueue:v8 completion:v12];
}

@end