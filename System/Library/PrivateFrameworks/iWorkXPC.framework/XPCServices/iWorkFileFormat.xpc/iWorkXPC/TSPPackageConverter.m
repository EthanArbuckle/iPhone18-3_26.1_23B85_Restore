@interface TSPPackageConverter
+ (BOOL)convertDocumentAtURL:(id)a3 toPackageType:(int64_t)a4 removeEntriesMatchingFilter:(id)a5 error:(id *)a6;
+ (NSArray)regularRexpressionsForCachedCollaborationData;
- (BOOL)enumeratePackageEntriesWithZipArchive:(id)a3 needsReadChannel:(BOOL)a4 accessor:(id)a5;
- (BOOL)hasEntriesMatchingFilter:(id)a3;
- (BOOL)isDataPath:(id)a3;
- (BOOL)isDocumentPropertiesPath:(id)a3;
- (BOOL)isObjectArchivePath:(id)a3;
- (BOOL)isValid;
- (BOOL)path:(id)a3 matchesFilter:(id)a4;
- (BOOL)writeToURL:(id)a3 packageType:(int64_t)a4 removeEntriesMatchingFilter:(id)a5 error:(id *)a6;
- (TSPPackageConverter)init;
- (TSPPackageConverter)initWithURL:(id)a3 package:(id)a4 fileCoordinatorDelegate:(id)a5 preserveExtendedAttributes:(BOOL)a6 error:(id *)a7;
- (unint64_t)progressTotalUnitCountWithZipArchive:(id)a3;
@end

@implementation TSPPackageConverter

+ (BOOL)convertDocumentAtURL:(id)a3 toPackageType:(int64_t)a4 removeEntriesMatchingFilter:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [TSPPackageConverter newPackageConverterWithURL:v9 preserveExtendedAttributes:0 error:a6];
  v12 = v11;
  if (v11)
  {
    if ([v11 packageType] == a4)
    {
      v13 = 1;
    }

    else
    {
      v14 = [[TSUSafeSaveAssistant alloc] initForSavingToURL:v9 error:a6];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 writeURL];
        v17 = [v12 writeToURL:v16 packageType:a4 removeEntriesMatchingFilter:v10 error:a6];

        v13 = [v15 endSaveWithSuccess:v17 addingAttributes:0 error:a6];
      }

      else
      {
        v13 = 0;
      }

      [v9 removeAllCachedResourceValues];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TSPPackageConverter)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6408);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPPackageConverter init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
    v15 = 1024;
    v16 = 122;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPPackageConverter init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:122 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPPackageConverter init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPPackageConverter)initWithURL:(id)a3 package:(id)a4 fileCoordinatorDelegate:(id)a5 preserveExtendedAttributes:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([v12 isFileURL])
  {
    v24.receiver = self;
    v24.super_class = TSPPackageConverter;
    v15 = [(TSPPackageConverter *)&v24 init];
    if (!v15)
    {
      goto LABEL_5;
    }

    v16 = [v12 copy];
    URL = v15->_URL;
    v15->_URL = v16;

    objc_storeStrong(&v15->_package, a4);
    objc_storeStrong(&v15->_fileCoordinatorDelegate, a5);
    if (!v8)
    {
      goto LABEL_5;
    }

    v18 = [TSUExtendedAttributeCollection alloc];
    v19 = [v12 path];
    v20 = [(TSUExtendedAttributeCollection *)v18 initWithPath:v19 options:0 error:a7];
    extendedAttributeCollection = v15->_extendedAttributeCollection;
    v15->_extendedAttributeCollection = v20;

    if (!v15->_extendedAttributeCollection)
    {
      v22 = 0;
      self = v15;
    }

    else
    {
LABEL_5:
      self = v15;
      v22 = self;
    }
  }

  else if (a7)
  {
    [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:0];
    *a7 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (NSArray)regularRexpressionsForCachedCollaborationData
{
  if (qword_1001EA9E8 != -1)
  {
    sub_1001529D4();
  }

  v3 = qword_1001EA9E0;

  return v3;
}

- (BOOL)isValid
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6488);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v16 = v2;
    v17 = 2082;
    v18 = "[TSPPackageConverter isValid]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
    v21 = 1024;
    v22 = 173;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v6 = [NSString stringWithUTF8String:"[TSPPackageConverter isValid]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:173 isFatal:0 description:"Abstract method not overridden by %{public}@", v9];

  +[TSUAssertionHandler logBacktraceThrottled];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "[TSPPackageConverter isValid]"];
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)path:(id)a3 matchesFilter:(id)a4
{
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length", v11)}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)hasEntriesMatchingFilter:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(TSPPackage *)self->_package zipArchive];
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000191F8;
    v8[3] = &unk_1001C64B0;
    v8[4] = self;
    v9 = v4;
    v10 = &v11;
    [(TSPPackageConverter *)self enumeratePackageEntriesWithZipArchive:v5 needsReadChannel:0 accessor:v8];
  }

  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (BOOL)writeToURL:(id)a3 packageType:(int64_t)a4 removeEntriesMatchingFilter:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (([v10 isFileURL] & 1) == 0)
  {
    if (a6)
    {
      [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:0];
      *a6 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_37;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_100019804;
  v53 = sub_100019814;
  v54 = 0;
  v12 = [(TSPPackage *)self->_package zipArchive];
  if (!v12)
  {
    package = self->_package;
    if (([objc_opt_class() hasZipArchive] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v19 = [(TSPPackage *)self->_package lastReloadError];
    v24 = v19;
    if (!v19)
    {
      v24 = [NSError tsp_unknownReadErrorWithUserInfo:0];
    }

    objc_storeStrong(v50 + 5, v24);
    v28 = 0;
    v15 = 0;
    if (v19)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v13 = [TSPPackage objectArchiveEntryPathForPackageLocator:@"Metadata"];
  v14 = [v12 entryForName:v13];

  if (!v14)
  {
    if ([(TSPPackageConverter *)self packageType]== 2)
    {
      v17 = [(TSPPackage *)self->_package componentZipArchive];
      v18 = [v17 entryForName:v13];

      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

LABEL_12:
  v38 = v11;
  v19 = +[NSProgress currentProgress];

  if (v19)
  {
    v19 = [NSProgress progressWithTotalUnitCount:[(TSPPackageConverter *)self progressTotalUnitCountWithZipArchive:v12]];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10001981C;
    v48[3] = &unk_1001C5710;
    v48[4] = self;
    [v19 setCancellationHandler:v48];
  }

  v20 = [(TSPPackage *)self->_package documentProperties];
  v21 = self->_package;
  fileCoordinatorDelegate = self->_fileCoordinatorDelegate;
  v23 = v50;
  v47 = v50[5];
  LOBYTE(v37) = 0;
  v24 = [TSPPackageWriter newPackageWriterWithPackageType:a4 URL:v10 documentTargetURL:v10 relativeURLForExternalData:v10 packageIdentifier:1 documentProperties:v20 documentMetadata:0 fileFormatVersion:0 updateType:2 cloneMode:v37 documentSaveValidationPolicy:0 encryptionKey:0 originalDocumentPackage:v21 originalSupportPackage:0 fileCoordinatorDelegate:fileCoordinatorDelegate progress:0 error:&v47];
  objc_storeStrong(v23 + 5, v47);

  if (v24)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10001982C;
    v42[3] = &unk_1001C64D8;
    v42[4] = self;
    v43 = v11;
    v24 = v24;
    v44 = v24;
    v46 = &v49;
    v19 = v19;
    v45 = v19;
    if ([(TSPPackageConverter *)self enumeratePackageEntriesWithZipArchive:v12 needsReadChannel:1 accessor:v42])
    {
      v25 = [(TSPPackage *)self->_package documentProperties];
      v26 = v50;
      obj = v50[5];
      v27 = [v25 writeToPackageWriter:v24 error:&obj];
      objc_storeStrong(v26 + 5, obj);
    }

    else
    {
      v27 = 0;
    }

    v29 = v50;
    v40 = v50[5];
    v30 = [v24 closeAndReturnError:&v40];
    objc_storeStrong(v29 + 5, v40);
    if ((v30 & v27) == 1)
    {
      extendedAttributeCollection = self->_extendedAttributeCollection;
      if (extendedAttributeCollection)
      {
        v32 = [v10 path];
        v33 = v50;
        v39 = v50[5];
        v28 = [(TSUExtendedAttributeCollection *)extendedAttributeCollection setAttributeCollectionToPath:v32 intent:2 options:0 error:&v39];
        objc_storeStrong(v33 + 5, v39);
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }

    v11 = v38;
  }

  else
  {
    v28 = 0;
  }

LABEL_30:

  v15 = v28;
LABEL_31:

  if (a6 && !v15)
  {
    v34 = v50[5];
    if (v34)
    {
      *a6 = v34;
    }

    else
    {
      v35 = [NSError tsp_unknownWriteErrorWithUserInfo:0];
      *a6 = v35;
    }
  }

  _Block_object_dispose(&v49, 8);
LABEL_37:

  return v15;
}

- (BOOL)isDocumentPropertiesPath:(id)a3
{
  v3 = a3;
  v4 = +[TSPDocumentProperties documentPropertiesRelativePath];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[TSPDocumentProperties shareIdentifierRelativePath];
    v5 = [v3 isEqualToString:v6];
  }

  return v5;
}

- (BOOL)isObjectArchivePath:(id)a3
{
  v3 = a3;
  if (qword_1001EA9F8 != -1)
  {
    sub_100152A38();
  }

  v4 = [v3 hasPrefix:qword_1001EA9F0];

  return v4;
}

- (BOOL)isDataPath:(id)a3
{
  v3 = a3;
  if (qword_1001EAA08 != -1)
  {
    sub_100152A4C();
  }

  v4 = [v3 hasPrefix:qword_1001EAA00];

  return v4;
}

- (unint64_t)progressTotalUnitCountWithZipArchive:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019C94;
  v5[3] = &unk_1001C6540;
  v5[4] = &v6;
  [a3 enumerateEntriesUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enumeratePackageEntriesWithZipArchive:(id)a3 needsReadChannel:(BOOL)a4 accessor:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100019EB0;
  v19[3] = &unk_1001C6568;
  v19[4] = self;
  v10 = [v8 sortedEntriesUsingComparator:v19];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001A090;
  v14[3] = &unk_1001C6590;
  v14[4] = self;
  v17 = &v20;
  v18 = a4;
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v15 = v12;
  [v10 enumerateObjectsUsingBlock:v14];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

@end