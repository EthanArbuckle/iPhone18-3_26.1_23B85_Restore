@interface TSPDirectoryPackageWriter
- (TSPDirectoryPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18;
- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8;
- (id)newRawComponentWriteChannelWithPackageLocator:(id)a3 storeOutsideObjectArchive:(BOOL)a4;
- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7;
- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5;
- (id)targetDataURLForPath:(id)a3;
@end

@implementation TSPDirectoryPackageWriter

- (TSPDirectoryPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18
{
  v45 = a6;
  v22 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a7;
  v54 = a8;
  v55 = a12;
  v56 = a13;
  v57 = a14;
  v23 = a15;
  v24 = a16;
  v25 = a17;
  v26 = +[NSFileManager defaultManager];
  v63 = 0;
  v27 = v22;
  LODWORD(v22) = [v26 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v63];
  v28 = v63;
  if (!v22)
  {
    if (UnsafePointer != -1)
    {
      sub_100153060();
    }

    v29 = UnsafePointer;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v48 = NSStringFromClass(v35);
      v36 = [v28 domain];
      v37 = [v28 code];
      *buf = 138413314;
      v65 = v27;
      v66 = 2114;
      v67 = v48;
      v68 = 2114;
      v69 = v36;
      v70 = 2048;
      v71 = v37;
      v72 = 2112;
      v73 = v28;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to create document directory. URL=%@, error=errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

    goto LABEL_20;
  }

  v29 = [v27 URLByAppendingPathComponent:@"Data" isDirectory:1];

  v62 = 0;
  v30 = [v26 createDirectoryAtURL:v29 withIntermediateDirectories:0 attributes:0 error:&v62];
  v28 = v62;
  if ((v30 & 1) == 0)
  {
    if (UnsafePointer != -1)
    {
      sub_100153088();
    }

    v38 = UnsafePointer;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v49 = NSStringFromClass(v41);
      v46 = [v28 domain];
      v42 = [v28 code];
      *buf = 138413314;
      v65 = v29;
      v66 = 2114;
      v67 = v49;
      v68 = 2114;
      v69 = v46;
      v70 = 2048;
      v71 = v42;
      v72 = 2112;
      v73 = v28;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to create data directory in document package. URL=%@, error=errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

    goto LABEL_20;
  }

  v29 = [v27 URLByAppendingPathComponent:@"Metadata" isDirectory:1];

  v61 = 0;
  v31 = [v26 createDirectoryAtURL:v29 withIntermediateDirectories:0 attributes:0 error:&v61];
  v28 = v61;
  if ((v31 & 1) == 0)
  {
    if (UnsafePointer != -1)
    {
      sub_1001530B0();
    }

    v39 = UnsafePointer;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v50 = NSStringFromClass(v43);
      v47 = [v28 domain];
      v44 = [v28 code];
      *buf = 138413314;
      v65 = v29;
      v66 = 2114;
      v67 = v50;
      v68 = 2114;
      v69 = v47;
      v70 = 2048;
      v71 = v44;
      v72 = 2112;
      v73 = v28;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to create metadata directory in document package. URL=%@, error=errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

LABEL_20:
    goto LABEL_21;
  }

  v59.receiver = self;
  v59.super_class = TSPDirectoryPackageWriter;
  v60 = 0;
  v32 = [(TSPPackageWriter *)&v59 initWithURL:v27 documentTargetURL:v51 relativeURLForExternalData:v52 packageIdentifier:v45 documentProperties:v53 documentMetadata:v54 fileFormatVersion:a9 updateType:a10 cloneMode:a11 documentSaveValidationPolicy:v55 encryptionKey:v56 originalDocumentPackage:v57 originalSupportPackage:v23 fileCoordinatorDelegate:v24 progress:v25 error:&v60];
  v28 = v60;
  if (v32)
  {
    v33 = [[TSPDirectoryPackageDataWriter alloc] initWithURL:v27];
    dataWriter = v32->_dataWriter;
    v32->_dataWriter = v33;

    goto LABEL_24;
  }

LABEL_21:
  if (a18)
  {
    [NSError tsp_ensureSaveErrorWithError:v28];
    *a18 = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_24:

  return v32;
}

- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v6)
  {
    v29.receiver = self;
    v29.super_class = TSPDirectoryPackageWriter;
    v21 = [(TSPPackageWriter *)&v29 packageEntryInfoForComponentLocator:v8 isStoredOutsideObjectArchive:0 packageURL:v9];
    goto LABEL_26;
  }

  if (!v8)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001530D8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001530EC();
    }

    v10 = [NSString stringWithUTF8String:"[TSPDirectoryPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:117 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "locator"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v9)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153180();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001531A8();
    }

    v12 = [NSString stringWithUTF8String:"[TSPDirectoryPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:118 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "packageURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v14 = [TSPDirectoryPackage componentFileURLForPackageURL:v9 packageLocator:v8];
  v33 = 0;
  v32 = 0;
  v15 = [v14 getResourceValue:&v33 forKey:NSURLFileSizeKey error:&v32];
  v16 = v33;
  v17 = v32;
  if (!v15)
  {
    v19 = 0;
LABEL_20:
    if (UnsafePointer != -1)
    {
      sub_10015323C();
    }

    v22 = UnsafePointer;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = [v14 path];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v17 domain];
      v28 = [v17 code];
      *buf = 138413314;
      v35 = v24;
      v36 = 2114;
      v37 = v26;
      v38 = 2114;
      v39 = v27;
      v40 = 2048;
      v41 = v28;
      v42 = 2112;
      v43 = v17;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to retrieve encoded length and last modification date for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

    v21 = 0;
    v20 = v17;
    goto LABEL_25;
  }

  v31 = 0;
  v30 = 0;
  v18 = [v14 getResourceValue:&v31 forKey:NSURLContentModificationDateKey error:&v30];
  v19 = v31;
  v20 = v30;

  if (!v18)
  {
    v17 = v20;
    goto LABEL_20;
  }

  v21 = -[TSPPackageEntryInfo initWithEncodedLength:lastModificationDate:CRC:]([TSPPackageEntryInfo alloc], "initWithEncodedLength:lastModificationDate:CRC:", [v16 unsignedLongLongValue], v19, 0);
LABEL_25:

LABEL_26:

  return v21;
}

- (id)newRawComponentWriteChannelWithPackageLocator:(id)a3 storeOutsideObjectArchive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    if (!v6)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100153264();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100153278();
      }

      v8 = [NSString stringWithUTF8String:"[TSPDirectoryPackageWriter newRawComponentWriteChannelWithPackageLocator:storeOutsideObjectArchive:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageWriter.mm"];
      [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:140 isFatal:0 description:"invalid nil value for '%{public}s'", "packageLocator"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v10 = [(TSPPackageWriter *)self URL];
    v11 = [TSPDirectoryPackage componentFileURLForPackageURL:v10 packageLocator:v7];

    v12 = +[NSFileManager defaultManager];
    v13 = [v11 URLByDeletingLastPathComponent];
    v25 = 0;
    v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v25];
    v15 = v25;

    if (v14)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10001F794;
      v24[3] = &unk_1001C6A70;
      v24[4] = self;
      v16 = [[TSPDirectoryPackageWriterComponentFileWriteChannel alloc] initWithURL:v11 handler:v24];
    }

    else
    {
      [(TSPPackageWriter *)self setError:v15];
      if (UnsafePointer != -1)
      {
        sub_10015330C();
      }

      v17 = UnsafePointer;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v15 domain];
        v22 = [v15 code];
        *buf = 138413314;
        v27 = v7;
        v28 = 2114;
        v29 = v20;
        v30 = 2114;
        v31 = v21;
        v32 = 2048;
        v33 = v22;
        v34 = 2112;
        v35 = v15;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create intermediate directories for component file %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }

      v16 = 0;
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = TSPDirectoryPackageWriter;
    v16 = [(TSPPackageWriter *)&v23 newRawComponentWriteChannelWithPackageLocator:v6 storeOutsideObjectArchive:0];
  }

  return v16;
}

- (id)targetDataURLForPath:(id)a3
{
  v4 = a3;
  v5 = [(TSPPackageWriter *)self URL];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  return v6;
}

- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8
{
  v11 = a5;
  v14 = a3;
  v51 = a4;
  v15 = a6;
  v48 = v14;
  v49 = a7;
  v16 = [(TSPPackageWriter *)self filenameForData:v14 preferredFilename:v49];
  [@"Data" stringByAppendingPathComponent:v16];
  v50 = v17 = v11;
  v18 = [(TSPDirectoryPackageWriter *)self targetDataURLForPath:?];
  v54 = 0;
  v19 = [(TSPPackageWriter *)self encryptionKey];
  if (UnsafePointer(v15, v19, 0x100000))
  {
    v20 = UnsafePointer(v19, 0x100000);
  }

  else
  {
    v20 = [v15 mutableCryptoInfoCopy];
  }

  v21 = v20;
  if (![TSPFileManager linkOrCopyItemAtURL:v51 decryptionInfo:v15 toURL:v18 encryptionInfo:v20 canLink:[(TSPPackageWriter *)self canLinkData] encodedLength:&v54 error:a8])
  {
    goto LABEL_24;
  }

  v22 = [(TSPPackageWriter *)self documentSaveValidationPolicy];
  v23 = [v22 updateDataModificationDate];

  if (v23)
  {
    v24 = +[NSDate date];
    v53 = 0;
    v25 = [v18 setResourceValue:v24 forKey:NSURLContentModificationDateKey error:&v53];
    v47 = v53;

    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v27 = [(TSPPackageWriter *)self documentSaveValidationPolicy];
      v28 = [v27 failToSaveIfUpdateDataModificationDateFails];

      v26 = v28 ^ 1;
      if (a8)
      {
        v29 = v28 ^ 1;
      }

      else
      {
        v29 = 1;
      }

      if ((v29 & 1) == 0)
      {
        v30 = v47;
        *a8 = v47;
      }

      if (UnsafePointer != -1)
      {
        sub_100153334();
      }

      v31 = UnsafePointer;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v46 = NSStringFromClass(v38);
        v45 = [v47 domain];
        v39 = [v47 code];
        *buf = 67110402;
        *v56 = v28 ^ 1;
        *&v56[4] = 2112;
        *&v56[6] = v18;
        *&v56[14] = 2114;
        *&v56[16] = v46;
        *&v56[24] = 2114;
        *&v56[26] = v45;
        *&v56[34] = 2048;
        *&v56[36] = v39;
        *&v56[44] = 2112;
        *&v56[46] = v47;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not set modificationDate. success=%d targetURL=%@ errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x3Au);
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v26 && v17 && (UnsafePointer(v15, v21) & 1) == 0)
  {
    v52 = 0;
    v33 = [v18 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:&v52];
    v34 = v52;
    if ((v33 & 1) == 0)
    {
      if (UnsafePointer != -1)
      {
        sub_10015335C();
      }

      v35 = UnsafePointer;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v40 = [v18 path];
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = [v34 domain];
        v44 = [v34 code];
        *buf = 138413314;
        *v56 = v40;
        *&v56[8] = 2114;
        *&v56[10] = v42;
        *&v56[18] = 2114;
        *&v56[20] = v43;
        *&v56[28] = 2048;
        *&v56[30] = v44;
        *&v56[38] = 2112;
        *&v56[40] = v34;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to update attributes for data at URL %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }
    }
  }

  else if (!v26)
  {
LABEL_24:
    v32 = 0;
    goto LABEL_33;
  }

  v36 = [TSPPackageWriterCopyDataResult alloc];
  v32 = [(TSPPackageWriterCopyDataResult *)v36 initWithFilename:v16 encryptionInfo:v21 encodedLength:v54];
LABEL_33:

  return v32;
}

- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153384();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153398();
    }

    v11 = [NSString stringWithUTF8String:"[TSPDirectoryPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:236 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v13 = [(TSPDirectoryPackageWriter *)self targetDataURLForPath:v9];
  v14 = [v13 URLByDeletingLastPathComponent];
  v15 = +[NSFileManager defaultManager];
  v25 = 0;
  v16 = [v15 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v25];
  v17 = v25;

  if (v16)
  {
    v18 = [[TSUFileIOChannel alloc] initForStreamWritingURL:v13 error:0];
  }

  else
  {
    if (UnsafePointer != -1)
    {
      sub_10015342C();
    }

    v19 = UnsafePointer;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v17 domain];
      v24 = [v17 code];
      *buf = 138413314;
      v27 = v14;
      v28 = 2114;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      v34 = 2112;
      v35 = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't create directory at URL %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

    v18 = 0;
  }

  return v18;
}

@end