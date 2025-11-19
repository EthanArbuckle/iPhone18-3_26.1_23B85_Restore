@interface TSPFilePackageWriter
- (TSPFilePackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18;
- (id)componentZipArchiveWriter;
- (id)zipArchiveWriter;
- (void)closeWithQueue:(id)a3 completion:(id)a4;
- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)a3;
- (void)truncateZipAtFirstDeletedData:(id)a3;
- (void)willWriteData:(id)a3;
@end

@implementation TSPFilePackageWriter

- (TSPFilePackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18
{
  v74 = a6;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v69 = a8;
  v26 = a12;
  v27 = v22;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v79.receiver = self;
  v79.super_class = TSPFilePackageWriter;
  v80 = 0;
  v66 = a16;
  v68 = a17;
  v64 = v29;
  v65 = v30;
  v61 = v28;
  v62 = v26;
  v63 = v28;
  v31 = v27;
  v32 = v23;
  v73 = v24;
  v33 = [(TSPPackageWriter *)&v79 initWithURL:v31 documentTargetURL:v23 relativeURLForExternalData:v24 packageIdentifier:v74 documentProperties:v25 documentMetadata:v69 fileFormatVersion:a9 updateType:a10 cloneMode:a11 documentSaveValidationPolicy:v26 encryptionKey:v61 originalDocumentPackage:v29 originalSupportPackage:v30 fileCoordinatorDelegate:v66 progress:v68 error:&v80];
  v34 = v80;
  v35 = v34;
  if (v33 && a11)
  {

    v78 = 0;
    v36 = [[TSUSafeSaveAssistant alloc] initForSavingToURL:v31 error:&v78];
    v37 = v78;
    safeSaveAssistant = v33->_safeSaveAssistant;
    v33->_safeSaveAssistant = v36;

    if (v33->_safeSaveAssistant)
    {
      v39 = [TSUZipFileWriter alloc];
      v40 = [(TSUSafeSaveAssistant *)v33->_safeSaveAssistant writeURL];
      v77 = v37;
      v41 = [(TSUZipFileWriter *)v39 initWithURL:v40 error:&v77];
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
        v46 = [v35 domain];
        v71 = [v35 code];
        v47 = [v35 tsp_isRecoverable];
        v48 = [v35 tsp_hintsDescription];
        v49 = v48;
        v50 = &stru_1001D3878;
        *buf = 138544642;
        v82 = v45;
        v83 = 2114;
        if (v47)
        {
          v50 = @"recoverable=YES, ";
        }

        v84 = v46;
        v85 = 2048;
        v86 = v71;
        v87 = 2114;
        v88 = v50;
        v89 = 2114;
        v90 = v48;
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
        v56 = [v37 domain];
        v70 = [v37 code];
        v57 = [v37 tsp_isRecoverable];
        v58 = [v37 tsp_hintsDescription];
        v59 = v58;
        v60 = &stru_1001D3878;
        *buf = 138544642;
        v82 = v72;
        v83 = 2114;
        if (v57)
        {
          v60 = @"recoverable=YES, ";
        }

        v84 = v56;
        v85 = 2048;
        v86 = v70;
        v87 = 2114;
        v88 = v60;
        v89 = 2114;
        v90 = v58;
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

  if (a18 && !v33)
  {
    [NSError tsp_ensureSaveErrorWithError:v35];
    *a18 = v33 = 0;
  }

LABEL_19:

  return v33;
}

- (id)componentZipArchiveWriter
{
  delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
  if (delayedZipArchiveWriter)
  {
    v3 = delayedZipArchiveWriter;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSPFilePackageWriter;
    v3 = [(TSPPackageWriter *)&v5 componentZipArchiveWriter];
  }

  return v3;
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

- (void)truncateZipAtFirstDeletedData:(id)a3
{
  v4 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001CDE8;
  v18[3] = &unk_1001C6778;
  v18[4] = self;
  v5 = [v4 mutableCopy];
  v19 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  v6 = v5;

  v17.receiver = self;
  v17.super_class = TSPFilePackageWriter;
  v16 = [(TSPPackageWriter *)&v17 zipArchiveWriter];
  v7 = [v16 entriesCount];
  LOBYTE(v5) = self->_onlyWriteToDelayedZipArchive;
  v8 = [v16 sortedEntries];
  v9 = 0;
  if ((v5 & (v7 != 0)) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while (v9 < [v8 count] && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v8 objectAtIndexedSubscript:v9];
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
        v15 = [v11 name];
        *buf = 138412546;
        v21 = v15;
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
    [v16 truncateToNumberOfEntries:v10 completion:&stru_1001C67D8];
  }
}

- (void)willWriteData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delayedZipArchiveWriter)
  {
    v18 = v4;
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
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
          v13 = [v12 lengthIfLocal];
          v14 = [v12 packageLocator];
          v15 = v14 == 0;

          if (!v15)
          {
            v16 = [v12 packageLocator];
            [v6 setObject:v12 forKeyedSubscript:v16];
          }

          v9 += v13;
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

- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(TSPPackageWriter *)self closeCurrentChannel];
  delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
  if (delayedZipArchiveWriter && [(TSUZipWriter *)delayedZipArchiveWriter entriesCount])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v6 = [(TSPPackageWriter *)self progress];
    if (v6)
    {
      v7 = [(TSPFilePackageWriter *)self componentZipArchiveWriter];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10001D7D4;
      v21[3] = &unk_1001C6820;
      v21[4] = self;
      v21[5] = &v22;
      [v7 enumerateEntriesUsingBlock:v21];

      if (self->_onlyWriteToDelayedZipArchive)
      {
        [v6 becomeCurrentWithPendingUnitCount:{objc_msgSend(v6, "tsu_pendingUnitCountForIncompleteProgress:", v23[3])}];
        v8 = [NSProgress progressWithTotalUnitCount:1];
        [v8 setCompletedUnitCount:1];
        [v6 resignCurrent];

LABEL_9:
        v20.receiver = self;
        v20.super_class = TSPFilePackageWriter;
        v9 = [(TSPPackageWriter *)&v20 zipArchiveWriter];
        v10 = [v9 entriesCount];

        if (v10)
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

        if (v4)
        {
          v4[2](v4, 0);
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
    v16 = v6;
    v19 = &v22;
    v17 = self;
    v18 = v4;
    [(TSUZipWriter *)v13 closeWithQueue:v14 completion:v15];

LABEL_18:
    _Block_object_dispose(&v22, 8);
    goto LABEL_19;
  }

  if (v4)
  {
    v4[2](v4, 0);
  }

LABEL_19:
}

- (void)closeWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001DC50;
  v12[3] = &unk_1001C6940;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v11.receiver = self;
  v11.super_class = TSPFilePackageWriter;
  v9 = v6;
  v10 = v7;
  [(TSPPackageWriter *)&v11 closeWithQueue:v8 completion:v12];
}

@end