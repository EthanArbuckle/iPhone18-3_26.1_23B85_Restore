@interface TSPPackage
+ (BOOL)isValidPackageAtURL:(id)l;
+ (BOOL)isZeroLengthFileOrEmptyDirectory:(id)directory isDirectory:(BOOL *)isDirectory;
+ (id)dataEntryPathForFilename:(id)filename;
+ (id)objectArchiveEntryPathForPackageLocator:(id)locator;
+ (id)zipArchiveURLFromPackageURL:(id)l;
+ (unint64_t)zipArchiveOptions;
- (BOOL)checkPassword:(id)password;
- (BOOL)hasDataAtRelativePath:(id)path;
- (BOOL)reloadZipArchiveIfNeededWithURLImpl:(id)impl isLazyLoading:(BOOL)loading forceReload:(BOOL)reload error:(id *)error;
- (NSError)lastReloadError;
- (NSString)passwordHint;
- (TSPDocumentProperties)documentProperties;
- (TSPFileCoordinatorDelegate)fileCoordinatorDelegate;
- (TSPPackage)init;
- (TSPPackage)initWithPackageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties fileFormatVersion:(unint64_t)version decryptionKey:(id)key fileCoordinatorDelegate:(id)delegate isLazyLoading:(BOOL)loading;
- (TSUZipFileArchive)zipArchive;
- (id)componentLocators;
- (id)keyFromPassword:(id)password;
- (id)keyFromPassword:(id)password passwordVerifier:(id)verifier;
- (id)newCompressionReadChannelWithReadChannel:(id)channel compressionAlgorithm:(int64_t)algorithm;
- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error;
- (id)newRawDataReadChannelAtRelativePath:(id)path;
- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error;
- (id)newZipArchiveFromPackageURL:(id)l isLazyLoading:(BOOL)loading error:(id *)error;
- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive;
- (int64_t)packageType;
- (void)copyComponent:(id)component toPackageURL:(id)l packageLocator:(id)locator zipFileWriter:(id)writer encryptionKey:(id)key canLink:(BOOL)link completion:(id)completion;
- (void)didReadFileFormatVersion:(unint64_t)version;
- (void)didRetrieveDecryptionKey:(id)key;
- (void)enumerateDataUsingBlock:(id)block;
- (void)peformSynchronousAccessToZipArchive:(id)archive;
- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l;
- (void)setZipArchive:(id)archive fileCoordinatorDelegate:(id)delegate;
@end

@implementation TSPPackage

+ (BOOL)isValidPackageAtURL:(id)l
{
  lCopy = l;
  v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6E28);
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v18 = v4;
    v19 = 2082;
    v20 = "+[TSPPackage isValidPackageAtURL:]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v23 = 1024;
    v24 = 56;
    v25 = 2114;
    v26 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPPackage isValidPackageAtURL:]");
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:56 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  +[TSUAssertionHandler logBacktraceThrottled];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Abstract method not overridden by %@: %s", v13, "+[TSPPackage isValidPackageAtURL:]");
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

+ (id)objectArchiveEntryPathForPackageLocator:(id)locator
{
  v3 = [@"Index" stringByAppendingPathComponent:locator];
  v4 = [v3 stringByAppendingPathExtension:@"iwa"];

  return v4;
}

+ (id)dataEntryPathForFilename:(id)filename
{
  v3 = [@"Data" stringByAppendingPathComponent:filename];

  return v3;
}

- (TSPPackage)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6E48);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackage init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v15 = 1024;
    v16 = 168;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackage init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:168 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackage init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPPackage)initWithPackageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties fileFormatVersion:(unint64_t)version decryptionKey:(id)key fileCoordinatorDelegate:(id)delegate isLazyLoading:(BOOL)loading
{
  loadingCopy = loading;
  propertiesCopy = properties;
  keyCopy = key;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = TSPPackage;
  v18 = [(TSPPackage *)&v26 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("TSPPackage.Access", v19);
    accessQueue = v18->_accessQueue;
    v18->_accessQueue = v20;

    v18->_packageIdentifier = identifier;
    objc_storeStrong(&v18->_documentProperties, properties);
    v18->_fileFormatVersion = version;
    objc_storeStrong(&v18->_decryptionKey, key);
    objc_storeWeak(&v18->_fileCoordinatorDelegate, delegateCopy);
    v22 = [[NSHashTable alloc] initWithOptions:512 capacity:0];
    packageDatas = v18->_packageDatas;
    v18->_packageDatas = v22;

    if (loadingCopy)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    *&v18->_flags = v24 | loadingCopy | *&v18->_flags & 0xFC;
  }

  return v18;
}

- (int64_t)packageType
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6E68);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v16 = v2;
    v17 = 2082;
    v18 = "[TSPPackage packageType]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v21 = 1024;
    v22 = 211;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v6 = [NSString stringWithUTF8String:"[TSPPackage packageType]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:211 isFatal:0 description:"Abstract method not overridden by %{public}@", v9];

  +[TSUAssertionHandler logBacktraceThrottled];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "[TSPPackage packageType]"];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPFileCoordinatorDelegate)fileCoordinatorDelegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100025EB8;
  v10 = sub_100025EC8;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025ED0;
  v5[3] = &unk_1001C5458;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (TSPDocumentProperties)documentProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100025EB8;
  v10 = sub_100025EC8;
  v11 = 0;
  if (*&self->_flags)
  {
    accessQueue = self->_accessQueue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100026024;
    v5[3] = &unk_1001C6EE0;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(accessQueue, v5);
  }

  else
  {
    objc_storeStrong(&v11, self->_documentProperties);
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)didRetrieveDecryptionKey:(id)key
{
  keyCopy = key;
  if (self->_decryptionKey)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153DC0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153DD4();
    }

    v5 = [NSString stringWithUTF8String:"[TSPPackage didRetrieveDecryptionKey:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:264 isFatal:0 description:"expected nil value for '%{public}s'", "_decryptionKey"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!keyCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153E70();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153E98();
    }

    v7 = [NSString stringWithUTF8String:"[TSPPackage didRetrieveDecryptionKey:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:265 isFatal:0 description:"invalid nil value for '%{public}s'", "decryptionKey"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  decryptionKey = self->_decryptionKey;
  self->_decryptionKey = keyCopy;
}

- (void)didReadFileFormatVersion:(unint64_t)version
{
  if (self->_fileFormatVersion)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153F34();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153F48();
    }

    v5 = [NSString stringWithUTF8String:"[TSPPackage didReadFileFormatVersion:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:275 isFatal:0 description:"File format version shouldn't have been set."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  self->_fileFormatVersion = version;
}

+ (BOOL)isZeroLengthFileOrEmptyDirectory:(id)directory isDirectory:(BOOL *)isDirectory
{
  directoryCopy = directory;
  *isDirectory = 0;
  v15 = 0;
  v6 = [directoryCopy getResourceValue:&v15 forKey:NSURLIsDirectoryKey error:0];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    *isDirectory = [v7 BOOLValue];
    if ([v8 BOOLValue])
    {
      v9 = +[NSFileManager defaultManager];
      v10 = [v9 contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:1 error:0];

      if (!v10)
      {
        LOBYTE(v6) = 0;
        goto LABEL_9;
      }

      longLongValue = [v10 count];
    }

    else
    {
      v14 = 0;
      v6 = [directoryCopy getResourceValue:&v14 forKey:NSURLFileSizeKey error:0];
      v12 = v14;
      v10 = v12;
      if (!v6)
      {
LABEL_9:

        goto LABEL_10;
      }

      longLongValue = [v12 longLongValue];
    }

    LOBYTE(v6) = longLongValue == 0;
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (id)newZipArchiveFromPackageURL:(id)l isLazyLoading:(BOOL)loading error:(id *)error
{
  lCopy = l;
  v9 = [objc_opt_class() zipArchiveURLFromPackageURL:lCopy];
  v10 = [objc_opt_class() zipArchiveOptions] | self->_additionalZipArchiveOptions;
  v28 = 0;
  v11 = [TSUZipFileArchive zipArchiveFromURL:v9 options:v10 | 4 error:&v28];
  v12 = v28;
  if (v11)
  {
    goto LABEL_24;
  }

  if (!loading)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100153FD8();
    }

    v14 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      domain = [v12 domain];
      code = [v12 code];
      *buf = 138413314;
      v30 = v9;
      v31 = 2114;
      v32 = v25;
      v33 = 2114;
      v34 = domain;
      v35 = 2048;
      v36 = code;
      v37 = 2112;
      v38 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Couldn't read zip file archive from URL %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }

    if (([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v13 = [NSError tsp_errorWithError:v12 hints:&off_1001D7160];

      goto LABEL_21;
    }

    if (![v9 tsu_fileSize])
    {
      if ([v12 tsp_isReadError])
      {
        userInfo = [v12 userInfo];
        v21 = [NSError tsp_readCorruptedDocumentErrorWithUserInfo:userInfo];

        v12 = v21;
      }

      v13 = [NSError tsp_errorWithError:v12 hints:&off_1001D7178];

      goto LABEL_21;
    }

    if (![TSUZipFileArchive isZipArchiveAtURL:v9 error:0])
    {
      buf[0] = 0;
      v15 = +[NSFileManager defaultManager];
      path = [v9 path];
      v17 = [v15 fileExistsAtPath:path isDirectory:buf];

      if (v17 && (buf[0] & 1) == 0 && [TSUZipFileArchive isZipSignatureAllZerosAtURL:v9])
      {
        userInfo2 = [v12 userInfo];
        v19 = [NSError tsp_readCorruptedDocumentErrorWithUserInfo:userInfo2];

        v13 = [NSError tsp_errorWithError:v19 hints:&off_1001D7190];
      }

      else
      {
        v13 = [NSError tsp_errorWithError:v12 hints:&off_1001D71A8];
        v19 = v12;
      }

      goto LABEL_21;
    }
  }

  v13 = v12;
LABEL_21:
  if (error)
  {
    v22 = v13;
    *error = v13;
  }

  v12 = v13;
LABEL_24:

  return v11;
}

- (TSUZipFileArchive)zipArchive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100025EB8;
  v9 = sub_100025EC8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026D80;
  v4[3] = &unk_1001C6F88;
  v4[4] = &v5;
  [(TSPPackage *)self peformSynchronousAccessToZipArchive:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)peformSynchronousAccessToZipArchive:(id)archive
{
  archiveCopy = archive;
  v5 = archiveCopy;
  if (archiveCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100026E38;
    v7[3] = &unk_1001C6FB0;
    v7[4] = self;
    v8 = archiveCopy;
    dispatch_sync(accessQueue, v7);
  }
}

- (BOOL)reloadZipArchiveIfNeededWithURLImpl:(id)impl isLazyLoading:(BOOL)loading forceReload:(BOOL)reload error:(id *)error
{
  reloadCopy = reload;
  implCopy = impl;
  dispatch_assert_queue_V2(self->_accessQueue);
  if ([(TSUZipFileArchive *)self->_zipArchive isValid])
  {
    v11 = !reloadCopy;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || ([objc_opt_class() hasZipArchive] & 1) == 0)
  {
    v14 = 1;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100025EB8;
    v34 = sub_100025EC8;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100025EB8;
    v28 = sub_100025EC8;
    v29 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002716C;
    v22[3] = &unk_1001C7080;
    loadingCopy = loading;
    v22[4] = self;
    v22[5] = &v30;
    v22[6] = &v36;
    v22[7] = &v24;
    v12 = objc_retainBlock(v22);
    v13 = v12;
    if (implCopy)
    {
      (v12[2])(v12, implCopy);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_fileCoordinatorDelegate);
      [WeakRetained performReadUsingAccessor:v13];
    }

    v16 = v37;
    if (*(v37 + 24) == 1)
    {
      zipArchive = self->_zipArchive;
      v18 = v25[5];
      v19 = (v31 + 5);
      obj = v31[5];
      v14 = [(TSPPackage *)self didReloadZipArchive:zipArchive packageURL:v18 error:&obj];
      objc_storeStrong(v19, obj);
      v16 = v37;
    }

    else
    {
      v14 = 0;
    }

    *(v16 + 24) = v14;
    if (error && (v14 & 1) == 0)
    {
      *error = v31[5];
      v14 = *(v37 + 24);
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
  }

  return v14 & 1;
}

- (void)setZipArchive:(id)archive fileCoordinatorDelegate:(id)delegate
{
  archiveCopy = archive;
  delegateCopy = delegate;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000279D0;
  block[3] = &unk_1001C70A8;
  block[4] = self;
  v12 = archiveCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = archiveCopy;
  dispatch_async(accessQueue, block);
}

- (NSError)lastReloadError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100025EB8;
  v10 = sub_100025EC8;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027B24;
  v5[3] = &unk_1001C5458;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)componentLocators
{
  componentZipArchive = [(TSPPackage *)self componentZipArchive];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027C40;
  v6[3] = &unk_1001C70D0;
  v3 = objc_opt_new();
  v7 = v3;
  [componentZipArchive enumerateEntriesUsingBlock:v6];
  v4 = [NSArray arrayWithArray:v3];

  return v4;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive
{
  archiveCopy = archive;
  locatorCopy = locator;
  if (!locatorCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015417C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154190();
    }

    v7 = [NSString stringWithUTF8String:"[TSPPackage packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:504 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "locator"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (archiveCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015422C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154254();
    }

    v9 = [NSString stringWithUTF8String:"[TSPPackage packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:505 isFatal:0 description:"Components outside the object archive are not supported"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  componentZipArchive = [(TSPPackage *)self componentZipArchive];
  v12 = [TSPPackage objectArchiveEntryPathForPackageLocator:locatorCopy];
  v13 = [componentZipArchive entryForName:v12];
  if (v13)
  {
    v14 = [TSPPackageEntryInfo alloc];
    v15 = [v13 size];
    lastModificationDate = [v13 lastModificationDate];
    v17 = -[TSPPackageEntryInfo initWithEncodedLength:lastModificationDate:CRC:](v14, "initWithEncodedLength:lastModificationDate:CRC:", v15, lastModificationDate, [v13 CRC]);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)newCompressionReadChannelWithReadChannel:(id)channel compressionAlgorithm:(int64_t)algorithm
{
  channelCopy = channel;
  v6 = channelCopy;
  v7 = 0;
  if (algorithm <= 2)
  {
    if (algorithm)
    {
      if (algorithm != 1)
      {
        if (algorithm == 2)
        {
          v8 = [TSUCompressionReadChannel alloc];
          v9 = 256;
LABEL_14:
          v10 = [(TSUCompressionReadChannel *)v8 initWithReadChannel:v6 compressionAlgorithm:v9 operation:1];
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v10 = channelCopy;
    }

    else
    {
      v10 = [[TSPSnappyReadChannel alloc] initWithReadChannel:channelCopy];
    }

LABEL_15:
    v7 = v10;
    goto LABEL_16;
  }

  switch(algorithm)
  {
    case 3:
      v8 = [TSUCompressionReadChannel alloc];
      v9 = 517;
      goto LABEL_14;
    case 4:
      v8 = [TSUCompressionReadChannel alloc];
      v9 = 774;
      goto LABEL_14;
    case 5:
      v8 = [TSUCompressionReadChannel alloc];
      v9 = 2049;
      goto LABEL_14;
  }

LABEL_16:

  return v7;
}

- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error
{
  archiveCopy = archive;
  locatorCopy = locator;
  if (!locatorCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001543BC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001543D0();
    }

    v9 = [NSString stringWithUTF8String:"[TSPPackage newRawReadChannelForComponentLocator:isStoredOutsideObjectArchive:error:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:568 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "locator"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (archiveCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015446C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154494();
    }

    v11 = [NSString stringWithUTF8String:"[TSPPackage newRawReadChannelForComponentLocator:isStoredOutsideObjectArchive:error:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:569 isFatal:0 description:"Components outside the object archive are not supported"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  componentZipArchive = [(TSPPackage *)self componentZipArchive];
  v14 = [TSPPackage objectArchiveEntryPathForPackageLocator:locatorCopy];
  v15 = [componentZipArchive entryForName:v14];
  if (v15)
  {
    v16 = [componentZipArchive streamReadChannelForEntry:v15];
    if (v16)
    {
      v17 = 0;
      goto LABEL_27;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_100154524();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015454C();
    }
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001545BC();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001545E4();
    }
  }

  v18 = [NSError tsp_readCorruptedDocumentErrorWithUserInfo:0];
  v17 = v18;
  if (error)
  {
    v19 = v18;
    v16 = 0;
    *error = v17;
  }

  else
  {
    v16 = 0;
  }

LABEL_27:

  return v16;
}

- (void)copyComponent:(id)component toPackageURL:(id)l packageLocator:(id)locator zipFileWriter:(id)writer encryptionKey:(id)key canLink:(BOOL)link completion:(id)completion
{
  componentCopy = component;
  lCopy = l;
  locatorCopy = locator;
  writerCopy = writer;
  keyCopy = key;
  completionCopy = completion;
  v34 = lCopy;
  if (!componentCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154654();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154668();
    }

    v17 = [NSString stringWithUTF8String:"[TSPPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:598 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "component"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  isStoredOutsideObjectArchive = [componentCopy isStoredOutsideObjectArchive];
  if (isStoredOutsideObjectArchive)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154704();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015472C();
    }

    v20 = [NSString stringWithUTF8String:"[TSPPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:601 isFatal:0 description:"Components outside the object archive are not supported"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  locator = [componentCopy locator];
  if (!locator)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001547BC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001547E4();
    }

    v23 = [NSString stringWithUTF8String:"[TSPPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:604 isFatal:0 description:"invalid nil value for '%{public}s'", "packageLocator"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  componentZipArchive = [(TSPPackage *)self componentZipArchive];
  v26 = [TSPPackage objectArchiveEntryPathForPackageLocator:locator];
  v27 = [componentZipArchive entryForName:v26];
  v28 = v27;
  if (!componentZipArchive || v27)
  {
    if (componentZipArchive)
    {
      v29 = [componentZipArchive streamReadChannelForEntry:v27];
      v33 = 0;
      if (!v29)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v38 = 0;
      v29 = [(TSPPackage *)self newRawReadChannelForComponentLocator:locator isStoredOutsideObjectArchive:isStoredOutsideObjectArchive error:&v38];
      v33 = v38;
      if (!v29)
      {
        goto LABEL_33;
      }
    }

    if (SFUEqualCryptoKeys(keyCopy, self->_decryptionKey) || (v30 = [[TSPCryptoTranscodeReadChannel alloc] initWithReadChannel:v29 decryptionInfo:self->_decryptionKey encryptionInfo:keyCopy], v29, v28, v28 = 0, (v29 = v30) != 0))
    {
      v31 = [TSPPackage objectArchiveEntryPathForPackageLocator:locatorCopy];
      lastModificationDate = [componentCopy lastModificationDate];
      [writerCopy writeEntryWithName:v31 force32BitSize:1 lastModificationDate:lastModificationDate size:objc_msgSend(v28 CRC:"size") fromReadChannel:objc_msgSend(v28 completion:{"CRC"), v29, completionCopy}];

      goto LABEL_38;
    }

LABEL_33:
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001548A8();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001548D0();
      if (!completionCopy)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (completionCopy)
    {
LABEL_37:
      completionCopy[2](completionCopy, 0, v33);
    }

LABEL_38:

    goto LABEL_39;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_100154880();
  }

  if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_1001545E4();
    if (!completionCopy)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  if (completionCopy)
  {
LABEL_25:
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_39:
}

- (void)enumerateDataUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v13 = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_packageDatas;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v6)
    {
      v7 = *v10;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v9 + 1) + 8 * v8), &v13);
        if (v13)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error
{
  pathCopy = path;
  v5 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C7290);
  }

  v6 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 67110146;
    v19 = v5;
    v20 = 2082;
    v21 = "[TSPPackage packageEntryInfoAtRelativePath:error:]";
    v22 = 2082;
    v23 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v24 = 1024;
    v25 = 662;
    v26 = 2114;
    v27 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v9 = [NSString stringWithUTF8String:"[TSPPackage packageEntryInfoAtRelativePath:error:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:662 isFatal:0 description:"Abstract method not overridden by %{public}@", v12];

  +[TSUAssertionHandler logBacktraceThrottled];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v14, "[TSPPackage packageEntryInfoAtRelativePath:error:]"];
  v16 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)hasDataAtRelativePath:(id)path
{
  pathCopy = path;
  v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C72B0);
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v18 = v4;
    v19 = 2082;
    v20 = "[TSPPackage hasDataAtRelativePath:]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v23 = 1024;
    v24 = 684;
    v25 = 2114;
    v26 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v8 = [NSString stringWithUTF8String:"[TSPPackage hasDataAtRelativePath:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:684 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  +[TSUAssertionHandler logBacktraceThrottled];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "[TSPPackage hasDataAtRelativePath:]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (NSString)passwordHint
{
  v2 = [(TSPPackage *)self dataAtRelativePath:@".iwph" allowDecryption:0 error:0];
  v3 = [SFUCryptoUtils decodePassphraseHint:v2];

  return v3;
}

- (id)keyFromPassword:(id)password
{
  passwordCopy = password;
  passwordVerifier = [(TSPPackage *)self passwordVerifier];
  v6 = [(TSPPackage *)self keyFromPassword:passwordCopy passwordVerifier:passwordVerifier];

  return v6;
}

- (id)keyFromPassword:(id)password passwordVerifier:(id)verifier
{
  passwordCopy = password;
  verifierCopy = verifier;
  v7 = verifierCopy;
  v8 = 0;
  if (passwordCopy && verifierCopy)
  {
    v9 = [SFUCryptoKey alloc];
    v10 = [SFUCryptoUtils iterationCountFromPassphraseVerifier:v7];
    v11 = [SFUCryptoUtils saltFromVerifier:v7 saltLength:16];
    v8 = [(SFUCryptoKey *)v9 initAes128KeyFromPassphrase:passwordCopy iterationCount:v10 saltData:v11];
  }

  return v8;
}

- (BOOL)checkPassword:(id)password
{
  passwordCopy = password;
  passwordVerifier = [(TSPPackage *)self passwordVerifier];
  v6 = [(TSPPackage *)self keyFromPassword:passwordCopy passwordVerifier:passwordVerifier];
  if (v6)
  {
    v7 = [SFUCryptoUtils checkKey:v6 againstPassphraseVerifier:passwordVerifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)zipArchiveURLFromPackageURL:(id)l
{
  lCopy = l;
  v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C72D0);
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v18 = v4;
    v19 = 2082;
    v20 = "+[TSPPackage zipArchiveURLFromPackageURL:]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v23 = 1024;
    v24 = 726;
    v25 = 2114;
    v26 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPPackage zipArchiveURLFromPackageURL:]");
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:726 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  +[TSUAssertionHandler logBacktraceThrottled];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Abstract method not overridden by %@: %s", v13, "+[TSPPackage zipArchiveURLFromPackageURL:]");
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

+ (unint64_t)zipArchiveOptions
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C72F0);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v16 = v2;
    v17 = 2082;
    v18 = "+[TSPPackage zipArchiveOptions]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v21 = 1024;
    v22 = 730;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPPackage zipArchiveOptions]");
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:730 isFatal:0 description:"Abstract method not overridden by %{public}@", v9];

  +[TSUAssertionHandler logBacktraceThrottled];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Abstract method not overridden by %@: %s", v11, "+[TSPPackage zipArchiveOptions]");
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)newRawDataReadChannelAtRelativePath:(id)path
{
  pathCopy = path;
  v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C7310);
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v18 = v4;
    v19 = 2082;
    v20 = "[TSPPackage newRawDataReadChannelAtRelativePath:]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v23 = 1024;
    v24 = 740;
    v25 = 2114;
    v26 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v8 = [NSString stringWithUTF8String:"[TSPPackage newRawDataReadChannelAtRelativePath:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:740 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  +[TSUAssertionHandler logBacktraceThrottled];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "[TSPPackage newRawDataReadChannelAtRelativePath:]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error
{
  lCopy = l;
  providerCopy = provider;
  v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C7330);
  }

  v9 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 67110146;
    v22 = v8;
    v23 = 2082;
    v24 = "[TSPPackage newDocumentPropertiesWithURL:zipProvider:error:]";
    v25 = 2082;
    v26 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v27 = 1024;
    v28 = 744;
    v29 = 2114;
    v30 = v11;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v12 = [NSString stringWithUTF8String:"[TSPPackage newDocumentPropertiesWithURL:zipProvider:error:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:744 isFatal:0 description:"Abstract method not overridden by %{public}@", v15];

  +[TSUAssertionHandler logBacktraceThrottled];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v17, "[TSPPackage newDocumentPropertiesWithURL:zipProvider:error:]"];
  v19 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l
{
  lCopy = l;
  v6 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C7350);
  }

  v7 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 67110146;
    v20 = v6;
    v21 = 2082;
    v22 = "[TSPPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm";
    v25 = 1024;
    v26 = 748;
    v27 = 2114;
    v28 = v9;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v10 = [NSString stringWithUTF8String:"[TSPPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:748 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  +[TSUAssertionHandler logBacktraceThrottled];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[TSPPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

@end