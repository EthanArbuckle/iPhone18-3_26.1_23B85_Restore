@interface TSPPackageWriter
+ (id)newPackageWriterWithPackageType:(int64_t)a3 URL:(id)a4 documentTargetURL:(id)a5 relativeURLForExternalData:(id)a6 packageIdentifier:(unsigned __int8)a7 documentProperties:(id)a8 documentMetadata:(id)a9 fileFormatVersion:(unint64_t)a10 updateType:(int64_t)a11 cloneMode:(BOOL)a12 documentSaveValidationPolicy:(id)a13 encryptionKey:(id)a14 originalDocumentPackage:(id)a15 originalSupportPackage:(id)a16 fileCoordinatorDelegate:(id)a17 progress:(id)a18 error:(id *)a19;
- (BOOL)closeAndReturnError:(id *)a3;
- (BOOL)flushPendingWritesReturningError:(id *)a3;
- (BOOL)writeData:(id)a3 toRelativePath:(id)a4 allowEncryption:(BOOL)a5 error:(id *)a6;
- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)a3;
- (TSPPackage)originalPackage;
- (TSPPackageWriter)init;
- (TSPPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18;
- (id)copyData:(id)a3 withReadChannel:(id)a4 decryptionInfo:(id)a5 size:(unint64_t)a6 calculateCRC:(BOOL)a7 preferredFilename:(id)a8 error:(id *)a9;
- (id)dataForZipEntry:(id)a3 inDataToWrite:(id)a4;
- (id)filenameForData:(id)a3 preferredFilename:(id)a4;
- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8;
- (id)newCompressionComponentWriteChannelWithComponentWriteChannel:(id)a3 compressionAlgorithm:(int64_t)a4;
- (id)newPackageWithPackageIdentifier:(unsigned __int8)a3 documentProperties:(id)a4 fileFormatVersion:(unint64_t)a5 decryptionKey:(id)a6 fileCoordinatorDelegate:(id)a7;
- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7;
- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5;
- (id)writtenPackageWithURL:(id)a3;
- (void)closeCurrentChannel;
- (void)closeWithQueue:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)a3;
- (void)setError:(id)a3;
@end

@implementation TSPPackageWriter

+ (id)newPackageWriterWithPackageType:(int64_t)a3 URL:(id)a4 documentTargetURL:(id)a5 relativeURLForExternalData:(id)a6 packageIdentifier:(unsigned __int8)a7 documentProperties:(id)a8 documentMetadata:(id)a9 fileFormatVersion:(unint64_t)a10 updateType:(int64_t)a11 cloneMode:(BOOL)a12 documentSaveValidationPolicy:(id)a13 encryptionKey:(id)a14 originalDocumentPackage:(id)a15 originalSupportPackage:(id)a16 fileCoordinatorDelegate:(id)a17 progress:(id)a18 error:(id *)a19
{
  v37 = a7;
  v38 = a4;
  v43 = a5;
  v42 = a6;
  v41 = a8;
  v40 = a9;
  v23 = a3;
  v39 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v28 = a18;
  if (a3 == 2)
  {
    v29 = v38;
    v33 = objc_opt_class();
    v30 = a12;
LABEL_11:
    if (v33)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v29 = v38;
  v30 = a12;
  if (v23 == 1)
  {
LABEL_9:
    v33 = objc_opt_class();
    v30 = 0;
    goto LABEL_11;
  }

  if (!v23)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014F704();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014F718();
    }

    v31 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPPackageWriter newPackageWriterWithPackageType:URL:documentTargetURL:relativeURLForExternalData:packageIdentifier:documentProperties:documentMetadata:fileFormatVersion:updateType:cloneMode:documentSaveValidationPolicy:encryptionKey:originalDocumentPackage:originalSupportPackage:fileCoordinatorDelegate:progress:error:]");
    v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:97 isFatal:0 description:"Specify a package type other than TSPPackageTypeDefault for new package writer"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_9;
  }

LABEL_12:
  if (UnsafePointer != -1)
  {
    sub_10014F7A8();
  }

  if (os_log_type_enabled(UnsafePointer, OS_LOG_TYPE_ERROR))
  {
    sub_10014F7D0();
  }

  v33 = 0;
LABEL_17:
  LOBYTE(v36) = v30;
  v34 = [[v33 alloc] initWithURL:v29 documentTargetURL:v43 relativeURLForExternalData:v42 packageIdentifier:v37 documentProperties:v41 documentMetadata:v40 fileFormatVersion:a10 updateType:a11 cloneMode:v36 documentSaveValidationPolicy:v39 encryptionKey:v24 originalDocumentPackage:v25 originalSupportPackage:v26 fileCoordinatorDelegate:v27 progress:v28 error:a19];

  return v34;
}

- (TSPPackageWriter)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C5200);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackageWriter init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm";
    v15 = 1024;
    v16 = 136;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackageWriter init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:136 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackageWriter init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18
{
  v73 = a6;
  v22 = a3;
  v83 = a4;
  v84 = a5;
  v23 = a7;
  v24 = a8;
  v82 = v23;
  v74 = a8;
  v75 = a12;
  v85 = a13;
  v76 = a14;
  v77 = a15;
  obj = a16;
  v78 = a17;
  v87 = v22;
  if ([v22 isFileURL])
  {
    v92.receiver = self;
    v92.super_class = TSPPackageWriter;
    v25 = [(TSPPackageWriter *)&v92 init];
    if (!v25)
    {
      v47 = 0;
LABEL_33:
      if (a18 && !v25)
      {
        *a18 = [NSError tsp_ensureSaveErrorWithError:v47];
      }

      v45 = v25;

      v46 = v45;
      goto LABEL_37;
    }

    v26 = [v22 copy];
    URL = v25->_URL;
    v25->_URL = v26;

    v28 = [v83 copy];
    documentTargetURL = v25->_documentTargetURL;
    v25->_documentTargetURL = v28;

    v30 = [v84 copy];
    relativeURLForExternalData = v25->_relativeURLForExternalData;
    v25->_relativeURLForExternalData = v30;

    objc_storeStrong(&v25->_documentMetadata, v24);
    objc_storeStrong(&v25->_documentSaveValidationPolicy, a12);
    objc_storeStrong(&v25->_encryptionKey, a13);
    objc_storeStrong(&v25->_originalDocumentPackage, a14);
    objc_storeStrong(&v25->_originalSupportPackage, a15);
    objc_storeWeak(&v25->_fileCoordinatorDelegate, obj);
    v32 = [(TSPPackageWriter *)v25 newPackageWithPackageIdentifier:v73 documentProperties:v82 fileFormatVersion:a9 decryptionKey:v85 fileCoordinatorDelegate:v25];
    writtenPackage = v25->_writtenPackage;
    v25->_writtenPackage = v32;

    v25->_updateType = a10;
    objc_storeStrong(&v25->_progress, a17);
    v34 = v25->_writtenPackage;
    v35 = [objc_opt_class() zipArchiveURLFromPackageURL:v22];
    v36 = v35;
    if (a11)
    {
      v91 = 0;
      v37 = [v35 checkResourceIsReachableAndReturnError:&v91];
      v38 = v91;
      if (!v37)
      {
LABEL_25:
        v88 = 0;
        v41 = &v88;
        v42 = [[TSUZipFileWriter alloc] initWithURL:v36 error:&v88];
        v39 = 0;
        goto LABEL_26;
      }

      v90 = v38;
      v39 = [TSUZipFileArchive zipArchiveFromURL:v36 options:0 error:&v90];
      v40 = v90;

      if (v39)
      {
        v89 = 0;
        v41 = &v89;
        v42 = [[TSUZipFileWriter alloc] initWithZipFileArchive:v39 error:&v89];
        v38 = v40;
LABEL_26:
        v47 = *v41;
        zipArchiveWriter = v25->_zipArchiveWriter;
        v25->_zipArchiveWriter = v42;

        v50 = v38;
        if (v25->_zipArchiveWriter)
        {
          v51 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v52 = dispatch_queue_create("TSPPackageWriter.Error", v51);
          errorQueue = v25->_errorQueue;
          v25->_errorQueue = v52;

          v25->_isOpened = 1;
        }

        else
        {
          if (UnsafePointer != -1)
          {
            sub_10014F9AC();
          }

          v54 = UnsafePointer;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v80 = v36;
            v56 = objc_opt_class();
            v57 = NSStringFromClass(v56);
            v58 = [v47 domain];
            v59 = [v47 code];
            v60 = [v47 tsp_isRecoverable];
            v61 = [v47 tsp_hintsDescription];
            v62 = v61;
            v63 = &stru_1001D3878;
            *buf = 138413826;
            v94 = v80;
            v64 = v60 == 0;
            v36 = v80;
            v95 = 2114;
            if (!v64)
            {
              v63 = @"recoverable=YES, ";
            }

            v96 = v57;
            v97 = 2114;
            v98 = v58;
            v99 = 2048;
            v100 = v59;
            v101 = 2114;
            v102 = v63;
            v103 = 2114;
            v104 = v61;
            v105 = 2112;
            v106 = v47;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to create ZIP archive writer. zipArchiveURL=%@, error=errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", buf, 0x48u);

            v50 = v38;
          }

          v25 = 0;
        }

        goto LABEL_33;
      }

      if (v40)
      {
        if (UnsafePointer != -1)
        {
          sub_10014F8E8();
        }

        v48 = UnsafePointer;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v81 = v36;
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v67 = [v40 domain];
          v68 = [v40 code];
          v69 = [v40 tsp_isRecoverable];
          v70 = [v40 tsp_hintsDescription];
          v71 = v70;
          v72 = &stru_1001D3878;
          *buf = 138413826;
          v94 = v81;
          v64 = v69 == 0;
          v36 = v81;
          v95 = 2114;
          if (!v64)
          {
            v72 = @"recoverable=YES, ";
          }

          v96 = v66;
          v97 = 2114;
          v98 = v67;
          v99 = 2048;
          v100 = v68;
          v101 = 2114;
          v102 = v72;
          v103 = 2114;
          v104 = v70;
          v105 = 2112;
          v106 = v40;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error reading zip archive, zipArchiveURL=%@, errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", buf, 0x48u);
        }

        v38 = v40;
        goto LABEL_25;
      }

      if (UnsafePointer != -1)
      {
        sub_10014F910();
      }

      if (os_log_type_enabled(UnsafePointer, OS_LOG_TYPE_ERROR))
      {
        sub_10014F938();
      }
    }

    v38 = 0;
    goto LABEL_25;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10014F844();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10014F858();
  }

  v43 = [NSString stringWithUTF8String:"[TSPPackageWriter initWithURL:documentTargetURL:relativeURLForExternalData:packageIdentifier:documentProperties:documentMetadata:fileFormatVersion:updateType:cloneMode:documentSaveValidationPolicy:encryptionKey:originalDocumentPackage:originalSupportPackage:fileCoordinatorDelegate:progress:error:]"];
  v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:156 isFatal:0 description:"Don't support writing to non-file URLs"];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (a18)
  {
    [NSError tsp_saveDocumentErrorWithUserInfo:0];
    v45 = self;
    *a18 = v46 = 0;
  }

  else
  {
    v46 = 0;
    v45 = self;
  }

LABEL_37:

  return v46;
}

- (void)dealloc
{
  if (self->_isOpened)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014F9D4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014F9E8();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Didn't close", v2, v3, v4, v5, v6, v7, v8, "[TSPPackageWriter dealloc]");
    v9 = [NSString stringWithUTF8String:"[TSPPackageWriter dealloc]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:229 isFatal:1 description:"Didn't close"];

    TSUCrashBreakpoint();
    abort();
  }

  v11.receiver = self;
  v11.super_class = TSPPackageWriter;
  [(TSPPackageWriter *)&v11 dealloc];
}

- (TSPPackage)originalPackage
{
  v3 = [(TSPPackage *)self->_writtenPackage packageIdentifier];
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 24;
LABEL_5:
    v5 = *(&self->super.isa + v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)setError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    errorQueue = self->_errorQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004104;
    v7[3] = &unk_1001C52C8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(errorQueue, v7);
  }
}

- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014FA78();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014FA8C();
    }

    v10 = [NSString stringWithUTF8String:"[TSPPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:269 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "locator"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (v6)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014FB38();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014FB60();
    }

    v12 = [NSString stringWithUTF8String:"[TSPPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:270 isFatal:0 description:"Components outside the object archive are not supported"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v14 = [(TSPPackageWriter *)self componentZipArchiveWriter];
  v15 = [TSPPackage objectArchiveEntryPathForPackageLocator:v8];
  v16 = [v14 entryWithName:v15];

  if (v16)
  {
    v17 = [TSPPackageEntryInfo alloc];
    v18 = [v16 size];
    v19 = [v16 lastModificationDate];
    v20 = -[TSPPackageEntryInfo initWithEncodedLength:lastModificationDate:CRC:](v17, "initWithEncodedLength:lastModificationDate:CRC:", v18, v19, [v16 CRC]);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)closeCurrentChannel
{
  [(TSPComponentWriteChannel *)self->_componentWriteChannel close];
  componentWriteChannel = self->_componentWriteChannel;
  self->_componentWriteChannel = 0;
}

- (id)newCompressionComponentWriteChannelWithComponentWriteChannel:(id)a3 compressionAlgorithm:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        if (a4 == 2)
        {
          v8 = [TSPCompressionComponentWriteChannel alloc];
          v9 = 256;
LABEL_14:
          v10 = [(TSPCompressionComponentWriteChannel *)v8 initWithWriteChannel:v6 compressionAlgorithm:v9 operation:0];
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v10 = v5;
    }

    else
    {
      v10 = [[TSPSnappyComponentWriteChannel alloc] initWithWriteChannel:v5];
    }

LABEL_15:
    v7 = v10;
    goto LABEL_16;
  }

  switch(a4)
  {
    case 3:
      v8 = [TSPCompressionComponentWriteChannel alloc];
      v9 = 517;
      goto LABEL_14;
    case 4:
      v8 = [TSPCompressionComponentWriteChannel alloc];
      v9 = 774;
      goto LABEL_14;
    case 5:
      v8 = [TSPCompressionComponentWriteChannel alloc];
      v9 = 2049;
      goto LABEL_14;
  }

LABEL_16:

  return v7;
}

- (BOOL)flushPendingWritesReturningError:(id *)a3
{
  [(TSPPackageWriter *)self closeCurrentChannel];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100004C44;
  v20 = sub_100004C54;
  v21 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(TSPPackageWriter *)self componentZipArchiveWriter];
  v7 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004C5C;
  v13[3] = &unk_1001C5370;
  v15 = &v16;
  v8 = v5;
  v14 = v8;
  [v6 flushCurrentEntryWithQueue:v7 completion:v13];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v17;
  if (a3)
  {
    v10 = v17[5];
    if (v10)
    {
      *a3 = v10;
      v9 = v17;
    }
  }

  v11 = v9[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (id)filenameForData:(id)a3 preferredFilename:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 stringByDeletingPathExtension];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"-%llu", [v5 identifier]);
  v9 = [v6 pathExtension];
  v10 = [v9 length];
  if ([(__CFString *)v7 hasPrefix:@"~"])
  {
    v11 = [@"x" stringByAppendingString:v7];

    v7 = v11;
  }

  v12 = [v8 length];
  if (v10)
  {
    v13 = 247 - v10;
  }

  else
  {
    v13 = 248;
  }

  v14 = [(__CFString *)v7 length];
  v15 = @"data";
  if (v14)
  {
    v15 = v7;
  }

  v16 = v15;

  v17 = v16;
  v18 = [(__CFString *)v16 fileSystemRepresentation];
  if (v18)
  {
    v19 = +[NSFileManager defaultManager];
    v20 = [v19 stringWithFileSystemRepresentation:v18 length:strlen(v18)];
    v21 = [v20 tsu_substringWithComposedCharacterSequencesTruncatedToLength:v13 - v12];

    v17 = v21;
  }

  v22 = [v17 stringByAppendingString:v8];
  v23 = v22;
  if (v10)
  {
    v24 = [v22 stringByAppendingPathExtension:v9];

    v23 = v24;
  }

  return v23;
}

- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8
{
  v28 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [[TSUFileIOChannel alloc] initForReadingURL:v13 error:a8];
  if (v16)
  {
    v30 = 0;
    v29 = 0;
    v17 = [v13 getResourceValue:&v30 forKey:NSURLFileSizeKey error:&v29];
    v18 = v30;
    v19 = v29;
    if ((v17 & 1) == 0)
    {

      if (UnsafePointer != -1)
      {
        sub_10014FD68();
      }

      v20 = UnsafePointer;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = [v13 path];
        v24 = objc_opt_class();
        v27 = NSStringFromClass(v24);
        v26 = [v19 domain];
        v25 = [v19 code];
        *buf = 138413314;
        v32 = v23;
        v33 = 2114;
        v34 = v27;
        v35 = 2114;
        v36 = v26;
        v37 = 2048;
        v38 = v25;
        v39 = 2112;
        v40 = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to retrieve file size for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }

      v18 = 0;
    }

    v21 = -[TSPPackageWriter copyData:withReadChannel:decryptionInfo:size:calculateCRC:preferredFilename:error:](self, "copyData:withReadChannel:decryptionInfo:size:calculateCRC:preferredFilename:error:", v28, v16, v14, [v18 unsignedLongLongValue], 1, v15, a8);
    [v16 close];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyData:(id)a3 withReadChannel:(id)a4 decryptionInfo:(id)a5 size:(unint64_t)a6 calculateCRC:(BOOL)a7 preferredFilename:(id)a8 error:(id *)a9
{
  v10 = a7;
  v15 = a3;
  v42 = a4;
  v16 = a5;
  v39 = a8;
  v40 = v16;
  [(TSPPackageWriter *)self closeCurrentChannel];
  v41 = [(TSPPackageWriter *)self filenameForData:v15 preferredFilename:v39];
  v44 = [@"Data" stringByAppendingPathComponent:v41];
  if (UnsafePointer(v16, self->_encryptionKey, 0x100000))
  {
    v43 = UnsafePointer(self->_encryptionKey, 0x100000);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v43 = [v16 mutableCryptoInfoCopy];
    v19 = [v15 storage];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v19 CRC];
    }

    else
    {
      v17 = 0;
    }

    v18 = a6;
  }

  v20 = [(TSPPackageWriter *)self zipArchiveWriter];
  v21 = [v20 entryWithName:v44];

  v45 = [v21 size];
  v22 = [v15 packageLocator];
  if (v22)
  {
    v23 = [v15 packageLocator];
    v24 = [v23 isEqualToString:v44];
    if (v21)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1 && (v26 = [v15 encodedLength], v26 == objc_msgSend(v21, "size")))
    {
      v27 = [v21 CRC];

      if (v17 == v27)
      {
        if (UnsafePointer != -1)
        {
          sub_10014FD90();
        }

        v28 = UnsafePointer;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = [v15 packageLocator];
          sub_10014FDA4(v29, buf, v28);
        }

        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  v30 = [v15 lastModificationDate];
  if (v10)
  {
    v31 = 0;
  }

  else
  {
    v31 = v17;
  }

  v32 = [(TSPPackageWriter *)self newRawDataWriteChannelForRelativePath:v44 originalLastModificationDate:v30 originalSize:v18 originalCRC:v31 forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];

  v34 = v39;
  v33 = v40;
  if (v32)
  {
    v35 = [TSPFileManager copyDataFromReadChannel:v42 decryptionInfo:v40 size:a6 toWriteChannel:v32 encryptionInfo:v43 encodedLength:&v45 error:a9];
  }

  else
  {
    v35 = 0;
  }

  [v32 close];

  if (!v35)
  {
    v37 = 0;
    goto LABEL_29;
  }

LABEL_27:
  v36 = [TSPPackageWriterCopyDataResult alloc];
  v37 = [(TSPPackageWriterCopyDataResult *)v36 initWithFilename:v41 encryptionInfo:v43 encodedLength:v45];
  v34 = v39;
  v33 = v40;
LABEL_29:

  return v37;
}

- (id)dataForZipEntry:(id)a3 inDataToWrite:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v8 storage];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 CRC];
  }

  else
  {
    v10 = 0;
  }

  if ([v8 lengthIfLocal] && (v11 = objc_msgSend(v8, "encodedLength"), v11 == objc_msgSend(v5, "size")) && v10 == objc_msgSend(v5, "CRC"))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (BOOL)writeData:(id)a3 toRelativePath:(id)a4 allowEncryption:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  [(TSPPackageWriter *)self closeCurrentChannel];
  if (v11)
  {
    if (v10)
    {
      v12 = [(TSPPackageWriter *)self originalPackage];
      v13 = v12;
      if (v7)
      {
        v14 = [v12 decryptionKey];
        v15 = UnsafePointer(v14, self->_encryptionKey, 0x100000);
      }

      else
      {
        v15 = 0;
      }

      v19 = 0;
      if (!v15 && v13)
      {
        v38 = 0;
        v20 = [v13 packageEntryInfoAtRelativePath:v11 error:&v38];
        v21 = v38;
        v22 = v21;
        if (!v20 && ([v21 tsu_isNoSuchFileError] & 1) == 0)
        {
          if (UnsafePointer != -1)
          {
            sub_10014FDFC();
          }

          v23 = UnsafePointer;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v30 = objc_opt_class();
            v36 = NSStringFromClass(v30);
            v37 = [v22 domain];
            v34 = [v22 code];
            v31 = [v22 tsp_isRecoverable];
            v32 = [v22 tsp_hintsDescription];
            v33 = &stru_1001D3878;
            *buf = 138413826;
            v40 = v11;
            v41 = 2114;
            if (v31)
            {
              v33 = @"recoverable=YES, ";
            }

            v42 = v36;
            v43 = 2114;
            v44 = v37;
            v45 = 2048;
            v46 = v34;
            v47 = 2114;
            v48 = v33;
            v49 = 2114;
            v50 = v32;
            v51 = 2112;
            v52 = v22;
            v35 = v32;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to retrieve encoded length and last modification date, path=%@, errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", buf, 0x48u);
          }
        }

        v19 = v20;
      }

      v24 = [[TSPMemoryReadChannel alloc] initWithNSData:v10];
      v25 = [v19 lastModificationDate];
      v26 = -[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:](self, "newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:", v11, v25, [v19 encodedLength], objc_msgSend(v19, "CRC"), 1);

      v27 = [v10 length];
      if (v7)
      {
        encryptionKey = self->_encryptionKey;
      }

      else
      {
        encryptionKey = 0;
      }

      v18 = [TSPFileManager copyDataFromReadChannel:v24 decryptionInfo:0 size:v27 toWriteChannel:v26 encryptionInfo:encryptionKey encodedLength:0 error:a6];
      [v26 close];
      [(TSPMemoryReadChannel *)v24 close];
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014FE24();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014FE38();
    }

    v16 = [NSString stringWithUTF8String:"[TSPPackageWriter writeData:toRelativePath:allowEncryption:error:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:704 isFatal:0 description:"Path should be defined."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v18 = 0;
  }

  return v18;
}

- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)a3
{
  v4 = a3;
  [(TSPPackageWriter *)self closeCurrentChannel];
  if (v4)
  {
    v5 = [(TSPPackageWriter *)self originalPackage];
    v6 = v5;
    if (v5)
    {
      v25 = 0;
      v7 = [v5 packageEntryInfoAtRelativePath:v4 error:&v25];
      v8 = v25;
      v9 = v8;
      if (!v7 && ([v8 tsu_isNoSuchFileError] & 1) == 0)
      {
        if (UnsafePointer != -1)
        {
          sub_10014FEC8();
        }

        v10 = UnsafePointer;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          v24 = NSStringFromClass(v17);
          v18 = [v9 domain];
          v19 = [v9 code];
          v20 = [v9 tsp_isRecoverable];
          v21 = [v9 tsp_hintsDescription];
          v22 = v21;
          v23 = &stru_1001D3878;
          *buf = 138413826;
          v27 = v4;
          v28 = 2114;
          if (v20)
          {
            v23 = @"recoverable=YES, ";
          }

          v29 = v24;
          v30 = 2114;
          v31 = v18;
          v32 = 2048;
          v33 = v19;
          v34 = 2114;
          v35 = v23;
          v36 = 2114;
          v37 = v21;
          v38 = 2112;
          v39 = v9;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve encoded length and last modification date, path=%@, errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", buf, 0x48u);
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v14 = [v7 lastModificationDate];
    v15 = -[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:](self, "newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:", v4, v14, [v7 encodedLength], objc_msgSend(v7, "CRC"), 1);

    v13 = [TSPCGDataConsumer newCGDataConsumerForWriteChannel:v15];
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014FEF0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014FF04();
    }

    v11 = [NSString stringWithUTF8String:"[TSPPackageWriter newCGDataConsumerAtRelativePath:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:740 isFatal:0 description:"Path should be defined."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v13 = 0;
  }

  return v13;
}

- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)closeWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TSPPackageWriter *)self closeCurrentChannel];
  v8 = objc_retainBlock(v7);
  if (v7)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100004C44;
    v23 = sub_100004C54;
    v24 = 0;
    errorQueue = self->_errorQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006420;
    block[3] = &unk_1001C5458;
    block[4] = self;
    block[5] = &v19;
    dispatch_sync(errorQueue, block);
    if (v20[5])
    {
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100006434;
      v15 = &unk_1001C5480;
      v16 = v7;
      v17 = &v19;
      v10 = objc_retainBlock(&v12);

      v8 = v10;
    }

    _Block_object_dispose(&v19, 8);
  }

  v11 = [(TSPPackageWriter *)self zipArchiveWriter:v12];
  [v11 closeWithQueue:v6 completion:v8];

  self->_isOpened = 0;
}

- (BOOL)closeAndReturnError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004C44;
  v18 = sub_100004C54;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006644;
  v11[3] = &unk_1001C5370;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  [(TSPPackageWriter *)self closeWithQueue:v6 completion:v11];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v15[5];
  if (a3 && v8 && !*a3)
  {
    *a3 = v8;
    v8 = v15[5];
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (id)writtenPackageWithURL:(id)a3
{
  v4 = a3;
  writtenPackage = self->_writtenPackage;
  v6 = objc_opt_class();
  v7 = [TSUZipFileArchive alloc];
  v8 = [(TSPPackageWriter *)self zipArchiveWriter];
  v9 = [v6 zipArchiveURLFromPackageURL:v4];
  v23 = 0;
  v10 = -[TSUZipFileArchive initWithWriter:forReadingFromURL:options:error:](v7, "initWithWriter:forReadingFromURL:options:error:", v8, v9, [v6 zipArchiveOptions], &v23);
  v11 = v23;

  if (!v10)
  {
    if (UnsafePointer != -1)
    {
      sub_10014FF94();
    }

    v12 = UnsafePointer;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 path];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v11 domain];
      v22 = [v11 code];
      *buf = 138413314;
      v25 = v18;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      v32 = 2112;
      v33 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to load written zip archive: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }
  }

  v13 = self->_writtenPackage;
  WeakRetained = objc_loadWeakRetained(&self->_fileCoordinatorDelegate);
  [(TSPPackage *)v13 setZipArchive:v10 fileCoordinatorDelegate:WeakRetained];

  v15 = self->_writtenPackage;
  v16 = v15;

  return v15;
}

- (id)newPackageWithPackageIdentifier:(unsigned __int8)a3 documentProperties:(id)a4 fileFormatVersion:(unint64_t)a5 decryptionKey:(id)a6 fileCoordinatorDelegate:(id)a7
{
  v9 = a4;
  v10 = a6;
  v11 = a7;
  v12 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C54C0);
  }

  v13 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 67110146;
    v26 = v12;
    v27 = 2082;
    v28 = "[TSPPackageWriter newPackageWithPackageIdentifier:documentProperties:fileFormatVersion:decryptionKey:fileCoordinatorDelegate:]";
    v29 = 2082;
    v30 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm";
    v31 = 1024;
    v32 = 833;
    v33 = 2114;
    v34 = v15;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v16 = [NSString stringWithUTF8String:"[TSPPackageWriter newPackageWithPackageIdentifier:documentProperties:fileFormatVersion:decryptionKey:fileCoordinatorDelegate:]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
  v18 = objc_opt_class();
  v24 = NSStringFromClass(v18);
  [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:833 isFatal:0 description:"Abstract method not overridden by %{public}@", v24];

  +[TSUAssertionHandler logBacktraceThrottled];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v20, "[TSPPackageWriter newPackageWithPackageIdentifier:documentProperties:fileFormatVersion:decryptionKey:fileCoordinatorDelegate:]"];
  v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v21 userInfo:0];
  v23 = v22;

  objc_exception_throw(v22);
}

- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7
{
  v8 = a3;
  v9 = a4;
  v10 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C54E0);
  }

  v11 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 67110146;
    v24 = v10;
    v25 = 2082;
    v26 = "[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]";
    v27 = 2082;
    v28 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm";
    v29 = 1024;
    v30 = 837;
    v31 = 2114;
    v32 = v13;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v14 = [NSString stringWithUTF8String:"[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriter.mm"];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:837 isFatal:0 description:"Abstract method not overridden by %{public}@", v17];

  +[TSUAssertionHandler logBacktraceThrottled];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v19, "[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
  v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v20 userInfo:0];
  v22 = v21;

  objc_exception_throw(v21);
}

@end