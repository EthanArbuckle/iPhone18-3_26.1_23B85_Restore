@interface TSPDirectoryPackage
+ (BOOL)isValidPackageAtURL:(id)l;
+ (id)componentFileURLForPackageURL:(id)l packageLocator:(id)locator;
+ (id)objectArchiveURLForPackageURL:(id)l;
+ (id)zipArchiveURLFromPackageURL:(id)l;
- (BOOL)hasDataAtRelativePath:(id)path;
- (id)dataAtRelativePath:(id)path allowDecryption:(BOOL)decryption error:(id *)error;
- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error;
- (id)newRawDataReadChannelAtRelativePath:(id)path;
- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error;
- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive;
- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l;
@end

@implementation TSPDirectoryPackage

+ (id)objectArchiveURLForPackageURL:(id)l
{
  v3 = [l URLByAppendingPathComponent:@"Index.zip" isDirectory:0];

  return v3;
}

+ (id)componentFileURLForPackageURL:(id)l packageLocator:(id)locator
{
  lCopy = l;
  v6 = [locator stringByAppendingPathExtension:@"iwa"];
  v7 = [lCopy URLByAppendingPathComponent:v6];

  return v7;
}

+ (BOOL)isValidPackageAtURL:(id)l
{
  v3 = [self objectArchiveURLForPackageURL:l];
  v4 = [v3 checkResourceIsReachableAndReturnError:0];

  return v4;
}

+ (id)zipArchiveURLFromPackageURL:(id)l
{
  v3 = [self objectArchiveURLForPackageURL:l];

  return v3;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive
{
  archiveCopy = archive;
  locatorCopy = locator;
  v7 = locatorCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100009E9C;
  v23 = sub_100009EAC;
  v24 = 0;
  if (archiveCopy)
  {
    if (!locatorCopy)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_1001507C8();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001507F0();
      }

      v8 = [NSString stringWithUTF8String:"[TSPDirectoryPackage packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackage.mm"];
      [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:59 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "locator"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    fileCoordinatorDelegate = [(TSPPackage *)self fileCoordinatorDelegate];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100009EF8;
    v16[3] = &unk_1001C5810;
    v17 = v7;
    v18 = &v19;
    [fileCoordinatorDelegate performReadUsingAccessor:v16];

    v11 = v17;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSPDirectoryPackage;
    v12 = [(TSPPackage *)&v15 packageEntryInfoForComponentLocator:locatorCopy isStoredOutsideObjectArchive:0];
    v11 = v20[5];
    v20[5] = v12;
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error
{
  archiveCopy = archive;
  locatorCopy = locator;
  v9 = locatorCopy;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100009E9C;
  v34 = sub_100009EAC;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100009E9C;
  v28 = sub_100009EAC;
  v29 = 0;
  if (archiveCopy)
  {
    if (!locatorCopy)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_1001508AC();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001508D4();
      }

      v10 = [NSString stringWithUTF8String:"[TSPDirectoryPackage newRawReadChannelForComponentLocator:isStoredOutsideObjectArchive:error:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackage.mm"];
      [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:87 isFatal:0 description:"invalid nil value for '%{public}s'", "locator"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    fileCoordinatorDelegate = [(TSPPackage *)self fileCoordinatorDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A5A4;
    v20[3] = &unk_1001C5878;
    v21 = v9;
    v22 = &v30;
    v23 = &v24;
    [fileCoordinatorDelegate performReadUsingAccessor:v20];

    v13 = v21;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TSPDirectoryPackage;
    obj = 0;
    v14 = [(TSPPackage *)&v18 newRawReadChannelForComponentLocator:locatorCopy isStoredOutsideObjectArchive:0 error:&obj];
    objc_storeStrong(&v29, obj);
    v13 = v31[5];
    v31[5] = v14;
  }

  v15 = v31[5];
  if (error && !v15)
  {
    *error = v25[5];
    v15 = v31[5];
  }

  v16 = v15;
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v16;
}

- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150B3C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150B50();
    }

    v7 = [NSString stringWithUTF8String:"[TSPDirectoryPackage packageEntryInfoAtRelativePath:error:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:180 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "path"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100009E9C;
  v28 = sub_100009EAC;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100009E9C;
  v22 = sub_100009EAC;
  v23 = 0;
  fileCoordinatorDelegate = [(TSPPackage *)self fileCoordinatorDelegate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B5DC;
  v14[3] = &unk_1001C5878;
  v10 = pathCopy;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [fileCoordinatorDelegate performReadUsingAccessor:v14];

  v11 = v25[5];
  if (error && !v11)
  {
    *error = v19[5];
    v11 = v25[5];
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (id)dataAtRelativePath:(id)path allowDecryption:(BOOL)decryption error:(id *)error
{
  decryptionCopy = decryption;
  pathCopy = path;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100009E9C;
  v34 = sub_100009EAC;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100009E9C;
  v28 = sub_100009EAC;
  v29 = 0;
  if (decryptionCopy && ([(TSPPackage *)self decryptionKey], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v11 = (v25 + 5);
    v10 = v25[5];
    v18.receiver = self;
    v18.super_class = TSPDirectoryPackage;
    obj = v10;
    v12 = [(TSPPackage *)&v18 dataAtRelativePath:pathCopy allowDecryption:1 error:&obj];
    objc_storeStrong(v11, obj);
    v13 = v31[5];
    v31[5] = v12;
  }

  else
  {
    fileCoordinatorDelegate = [(TSPPackage *)self fileCoordinatorDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000B994;
    v20[3] = &unk_1001C5878;
    v21 = pathCopy;
    v22 = &v30;
    v23 = &v24;
    [fileCoordinatorDelegate performReadUsingAccessor:v20];

    v13 = v21;
  }

  v15 = v31[5];
  if (error && !v15)
  {
    *error = v25[5];
    v15 = v31[5];
  }

  v16 = v15;
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v16;
}

- (id)newRawDataReadChannelAtRelativePath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100009E9C;
  v16 = sub_100009EAC;
  v17 = 0;
  fileCoordinatorDelegate = [(TSPPackage *)self fileCoordinatorDelegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BBA8;
  v9[3] = &unk_1001C5810;
  v6 = pathCopy;
  v10 = v6;
  v11 = &v12;
  [fileCoordinatorDelegate performReadUsingAccessor:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)hasDataAtRelativePath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  fileCoordinatorDelegate = [(TSPPackage *)self fileCoordinatorDelegate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BD60;
  v8[3] = &unk_1001C5810;
  v6 = pathCopy;
  v9 = v6;
  v10 = &v11;
  [fileCoordinatorDelegate performReadUsingAccessor:v8];

  LOBYTE(pathCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return pathCopy;
}

- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error
{
  lCopy = l;
  v7 = [[TSPDocumentProperties alloc] initWithDocumentURL:lCopy allowMissingPropertyList:0 error:error];

  return v7;
}

- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l
{
  successCopy = success;
  lCopy = l;
  v8 = lCopy;
  if (successCopy && [lCopy tsu_volumeRenameOpenFail])
  {
    zipArchive = [(TSPPackage *)self zipArchive];
    v27 = 0;
    v10 = [zipArchive copyToTemporaryLocationRelativeToURL:v8 error:&v27];
    v11 = v27;

    if ((v10 & 1) == 0)
    {
      v12 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100150C0C();
      }

      v13 = TSUAssertCat_log_t;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = [TSPDirectoryPackage objectArchiveURLForPackageURL:v8];
        path = [v21 path];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        domain = [v11 domain];
        code = [v11 code];
        *buf = 67111170;
        v29 = v12;
        v30 = 2082;
        v31 = "[TSPDirectoryPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackage.mm";
        v34 = 1024;
        v35 = 261;
        v36 = 2112;
        v37 = path;
        v38 = 2114;
        v39 = v24;
        v40 = 2114;
        v41 = domain;
        v42 = 2048;
        v43 = code;
        v44 = 2112;
        v45 = v11;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to copy object archive %@ to temporary location. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x54u);
      }

      v14 = [NSString stringWithUTF8String:"[TSPDirectoryPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackage.mm"];
      v16 = [TSPDirectoryPackage objectArchiveURLForPackageURL:v8];
      path2 = [v16 path];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      domain2 = [v11 domain];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v14, v15, 261, 0, "Failed to copy object archive %@ to temporary location. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", path2, v19, domain2, [v11 code], v11);

      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }
}

@end