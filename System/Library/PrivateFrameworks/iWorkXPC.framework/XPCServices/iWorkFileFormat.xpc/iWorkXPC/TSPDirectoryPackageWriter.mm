@interface TSPDirectoryPackageWriter
- (TSPDirectoryPackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8;
- (id)linkOrCopyData:(id)data fromURL:(id)l fromTemporaryLocation:(BOOL)location decryptionInfo:(id)info preferredFilename:(id)filename error:(id *)error;
- (id)newRawComponentWriteChannelWithPackageLocator:(id)locator storeOutsideObjectArchive:(BOOL)archive;
- (id)newRawDataWriteChannelForRelativePath:(id)path originalLastModificationDate:(id)date originalSize:(unint64_t)size originalCRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive packageURL:(id)l;
- (id)targetDataURLForPath:(id)path;
@end

@implementation TSPDirectoryPackageWriter

- (TSPDirectoryPackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  propertiesCopy = properties;
  metadataCopy = metadata;
  policyCopy = policy;
  keyCopy = key;
  packageCopy = package;
  supportPackageCopy = supportPackage;
  delegateCopy = delegate;
  progressCopy = progress;
  v26 = +[NSFileManager defaultManager];
  v63 = 0;
  v27 = lCopy;
  LODWORD(lCopy) = [v26 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v63];
  v28 = v63;
  if (!lCopy)
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
      domain = [v28 domain];
      code = [v28 code];
      *buf = 138413314;
      v65 = v27;
      v66 = 2114;
      v67 = v48;
      v68 = 2114;
      v69 = domain;
      v70 = 2048;
      v71 = code;
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
      domain2 = [v28 domain];
      code2 = [v28 code];
      *buf = 138413314;
      v65 = v29;
      v66 = 2114;
      v67 = v49;
      v68 = 2114;
      v69 = domain2;
      v70 = 2048;
      v71 = code2;
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
      domain3 = [v28 domain];
      code3 = [v28 code];
      *buf = 138413314;
      v65 = v29;
      v66 = 2114;
      v67 = v50;
      v68 = 2114;
      v69 = domain3;
      v70 = 2048;
      v71 = code3;
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
  v32 = [(TSPPackageWriter *)&v59 initWithURL:v27 documentTargetURL:rLCopy relativeURLForExternalData:dataCopy packageIdentifier:identifierCopy documentProperties:propertiesCopy documentMetadata:metadataCopy fileFormatVersion:version updateType:type cloneMode:mode documentSaveValidationPolicy:policyCopy encryptionKey:keyCopy originalDocumentPackage:packageCopy originalSupportPackage:supportPackageCopy fileCoordinatorDelegate:delegateCopy progress:progressCopy error:&v60];
  v28 = v60;
  if (v32)
  {
    v33 = [[TSPDirectoryPackageDataWriter alloc] initWithURL:v27];
    dataWriter = v32->_dataWriter;
    v32->_dataWriter = v33;

    goto LABEL_24;
  }

LABEL_21:
  if (error)
  {
    [NSError tsp_ensureSaveErrorWithError:v28];
    *error = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_24:

  return v32;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive packageURL:(id)l
{
  archiveCopy = archive;
  locatorCopy = locator;
  lCopy = l;
  if (!archiveCopy)
  {
    v29.receiver = self;
    v29.super_class = TSPDirectoryPackageWriter;
    v21 = [(TSPPackageWriter *)&v29 packageEntryInfoForComponentLocator:locatorCopy isStoredOutsideObjectArchive:0 packageURL:lCopy];
    goto LABEL_26;
  }

  if (!locatorCopy)
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

  if (!lCopy)
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

  v14 = [TSPDirectoryPackage componentFileURLForPackageURL:lCopy packageLocator:locatorCopy];
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
      path = [v14 path];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      domain = [v17 domain];
      code = [v17 code];
      *buf = 138413314;
      v35 = path;
      v36 = 2114;
      v37 = v26;
      v38 = 2114;
      v39 = domain;
      v40 = 2048;
      v41 = code;
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

- (id)newRawComponentWriteChannelWithPackageLocator:(id)locator storeOutsideObjectArchive:(BOOL)archive
{
  archiveCopy = archive;
  locatorCopy = locator;
  v7 = locatorCopy;
  if (archiveCopy)
  {
    if (!locatorCopy)
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
    uRLByDeletingLastPathComponent = [v11 URLByDeletingLastPathComponent];
    v25 = 0;
    v14 = [v12 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
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
        domain = [v15 domain];
        code = [v15 code];
        *buf = 138413314;
        v27 = v7;
        v28 = 2114;
        v29 = v20;
        v30 = 2114;
        v31 = domain;
        v32 = 2048;
        v33 = code;
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
    v16 = [(TSPPackageWriter *)&v23 newRawComponentWriteChannelWithPackageLocator:locatorCopy storeOutsideObjectArchive:0];
  }

  return v16;
}

- (id)targetDataURLForPath:(id)path
{
  pathCopy = path;
  v5 = [(TSPPackageWriter *)self URL];
  v6 = [v5 URLByAppendingPathComponent:pathCopy isDirectory:0];

  return v6;
}

- (id)linkOrCopyData:(id)data fromURL:(id)l fromTemporaryLocation:(BOOL)location decryptionInfo:(id)info preferredFilename:(id)filename error:(id *)error
{
  locationCopy = location;
  dataCopy = data;
  lCopy = l;
  infoCopy = info;
  v48 = dataCopy;
  filenameCopy = filename;
  v16 = [(TSPPackageWriter *)self filenameForData:dataCopy preferredFilename:filenameCopy];
  [@"Data" stringByAppendingPathComponent:v16];
  v50 = v17 = locationCopy;
  v18 = [(TSPDirectoryPackageWriter *)self targetDataURLForPath:?];
  v54 = 0;
  encryptionKey = [(TSPPackageWriter *)self encryptionKey];
  if (UnsafePointer(infoCopy, encryptionKey, 0x100000))
  {
    mutableCryptoInfoCopy = UnsafePointer(encryptionKey, 0x100000);
  }

  else
  {
    mutableCryptoInfoCopy = [infoCopy mutableCryptoInfoCopy];
  }

  v21 = mutableCryptoInfoCopy;
  if (![TSPFileManager linkOrCopyItemAtURL:lCopy decryptionInfo:infoCopy toURL:v18 encryptionInfo:mutableCryptoInfoCopy canLink:[(TSPPackageWriter *)self canLinkData] encodedLength:&v54 error:error])
  {
    goto LABEL_24;
  }

  documentSaveValidationPolicy = [(TSPPackageWriter *)self documentSaveValidationPolicy];
  updateDataModificationDate = [documentSaveValidationPolicy updateDataModificationDate];

  if (updateDataModificationDate)
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
      documentSaveValidationPolicy2 = [(TSPPackageWriter *)self documentSaveValidationPolicy];
      failToSaveIfUpdateDataModificationDateFails = [documentSaveValidationPolicy2 failToSaveIfUpdateDataModificationDateFails];

      v26 = failToSaveIfUpdateDataModificationDateFails ^ 1;
      if (error)
      {
        v29 = failToSaveIfUpdateDataModificationDateFails ^ 1;
      }

      else
      {
        v29 = 1;
      }

      if ((v29 & 1) == 0)
      {
        v30 = v47;
        *error = v47;
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
        domain = [v47 domain];
        code = [v47 code];
        *buf = 67110402;
        *v56 = failToSaveIfUpdateDataModificationDateFails ^ 1;
        *&v56[4] = 2112;
        *&v56[6] = v18;
        *&v56[14] = 2114;
        *&v56[16] = v46;
        *&v56[24] = 2114;
        *&v56[26] = domain;
        *&v56[34] = 2048;
        *&v56[36] = code;
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

  if (v26 && v17 && (UnsafePointer(infoCopy, v21) & 1) == 0)
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
        path = [v18 path];
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        domain2 = [v34 domain];
        code2 = [v34 code];
        *buf = 138413314;
        *v56 = path;
        *&v56[8] = 2114;
        *&v56[10] = v42;
        *&v56[18] = 2114;
        *&v56[20] = domain2;
        *&v56[28] = 2048;
        *&v56[30] = code2;
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

- (id)newRawDataWriteChannelForRelativePath:(id)path originalLastModificationDate:(id)date originalSize:(unint64_t)size originalCRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  pathCopy = path;
  dateCopy = date;
  if (!pathCopy)
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

  v13 = [(TSPDirectoryPackageWriter *)self targetDataURLForPath:pathCopy];
  uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
  v15 = +[NSFileManager defaultManager];
  v25 = 0;
  v16 = [v15 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
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
      domain = [v17 domain];
      code = [v17 code];
      *buf = 138413314;
      v27 = uRLByDeletingLastPathComponent;
      v28 = 2114;
      v29 = v22;
      v30 = 2114;
      v31 = domain;
      v32 = 2048;
      v33 = code;
      v34 = 2112;
      v35 = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't create directory at URL %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

    v18 = 0;
  }

  return v18;
}

@end