@interface TSPFilePackage
+ (BOOL)isValidOrEmptyPackageOrTangierEditingFormatAtURL:(id)a3 hasNativeUTI:(BOOL)a4;
+ (BOOL)isValidPackageAtURL:(id)a3;
+ (BOOL)isValidPackageAtZipArchive:(id)a3;
+ (BOOL)isValidTangierEditingFormatAtURL:(id)a3;
+ (BOOL)isValidTangierEditingFormatAtZipArchive:(id)a3;
- (BOOL)didReloadZipArchive:(id)a3 packageURL:(id)a4 error:(id *)a5;
- (BOOL)hasDataAtRelativePath:(id)a3;
- (id)componentZipArchive;
- (id)newDocumentPropertiesWithURL:(id)a3 zipProvider:(id)a4 error:(id *)a5;
- (id)newRawDataReadChannelAtRelativePath:(id)a3;
- (id)packageEntryInfoAtRelativePath:(id)a3 error:(id *)a4;
@end

@implementation TSPFilePackage

+ (BOOL)isValidPackageAtZipArchive:(id)a3
{
  v3 = a3;
  v4 = [TSPPackage objectArchiveEntryPathForPackageLocator:@"Metadata"];
  v5 = [v3 entryForName:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 entryForName:@"Index.zip"];
    v6 = v7 != 0;
  }

  return v6;
}

+ (BOOL)isValidTangierEditingFormatAtZipArchive:(id)a3
{
  v3 = [a3 entryForName:@"index.db"];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isValidPackageAtURL:(id)a3
{
  v4 = a3;
  if ([v4 checkResourceIsReachableAndReturnError:0])
  {
    v5 = [TSUZipFileArchive zipArchiveFromURL:v4 options:5 error:0];
    v6 = [a1 isValidPackageAtZipArchive:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isValidTangierEditingFormatAtURL:(id)a3
{
  v4 = a3;
  if ([v4 checkResourceIsReachableAndReturnError:0])
  {
    v5 = [TSUZipFileArchive zipArchiveFromURL:v4 options:5 error:0];
    if (v5)
    {
      v6 = [a1 isValidTangierEditingFormatAtZipArchive:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isValidOrEmptyPackageOrTangierEditingFormatAtURL:(id)a3 hasNativeUTI:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 checkResourceIsReachableAndReturnError:0])
  {
    v7 = [TSUZipFileArchive zipArchiveFromURL:v6 options:5 error:0];
    if (v7)
    {
      if ([a1 isValidPackageAtZipArchive:v7])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v8 = [a1 isValidTangierEditingFormatAtZipArchive:v7];
        if (((v8 | !v4) & 1) == 0)
        {
          v8 = [v7 hasNonEmptyEntries] ^ 1;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)didReloadZipArchive:(id)a3 packageURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v47.receiver = self;
  v47.super_class = TSPFilePackage;
  v48 = 0;
  v10 = [(TSPPackage *)&v47 didReloadZipArchive:v8 packageURL:v9 error:&v48];
  v11 = v48;
  v12 = !v10;
  if (!v8)
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v13 = [TSPPackage objectArchiveEntryPathForPackageLocator:@"Metadata"];
    v14 = [v8 entryForName:v13];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = v8;
      componentZipArchive = self->_componentZipArchive;
      self->_componentZipArchive = v16;
LABEL_6:
      v10 = 1;
LABEL_33:

      goto LABEL_34;
    }

    v18 = [v8 entryForName:@"Index.zip"];
    componentZipArchive = v18;
    if (v18)
    {
      if ([(TSUZipArchive *)v18 isCompressed])
      {
        v46 = v11;
        v19 = [[TSUTemporaryDirectory alloc] initWithError:&v46];
        v41 = v46;

        componentZipArchiveTemporaryDirectory = self->_componentZipArchiveTemporaryDirectory;
        self->_componentZipArchiveTemporaryDirectory = v19;

        v21 = self->_componentZipArchiveTemporaryDirectory;
        if (v21)
        {
          v22 = [(TSUTemporaryDirectory *)v21 URL];
          v42 = [v22 URLByAppendingPathComponent:@"Index.zip"];

          if (UnsafePointer != -1)
          {
            sub_100152244();
          }

          v23 = UnsafePointer;
          if (os_log_type_enabled(UnsafePointer, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v9;
            v51 = 2112;
            v52 = v42;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Extracting compressed Index.zip from zipped package. url=%@, targetURL=%@", buf, 0x16u);
          }

          v45 = v41;
          v24 = [v8 tsp_writeZipEntry:componentZipArchive toURL:v42 validateCRC:0 error:&v45];
          v25 = v45;

          if (v24)
          {
            v44 = v25;
            v26 = [TSUZipFileArchive zipArchiveFromURL:v42 options:0 error:&v44];
            v11 = v44;

            if (v26)
            {
              v27 = self->_componentZipArchive;
              self->_componentZipArchive = v26;

              goto LABEL_6;
            }
          }

          else
          {
            v11 = v25;
          }

          v32 = self->_componentZipArchiveTemporaryDirectory;
          self->_componentZipArchiveTemporaryDirectory = 0;
        }

        else
        {
          v11 = v41;
        }
      }

      else
      {
        v43 = v11;
        v29 = [v8 containedZipArchiveForEntry:componentZipArchive options:0 error:&v43];
        v30 = v43;

        if (v29)
        {
          v31 = self->_componentZipArchive;
          self->_componentZipArchive = v29;

          v10 = 1;
          v11 = v30;
          goto LABEL_33;
        }

        v11 = v30;
      }

      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015226C();
      }

      v33 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = [v11 domain];
        v40 = [v11 code];
        *buf = 138544130;
        v50 = v38;
        v51 = 2114;
        v52 = v39;
        v53 = 2048;
        v54 = v40;
        v55 = 2112;
        v56 = v11;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to load contained Index.zip with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
      }
    }

    else
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_100152294();
      }

      v28 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001522BC(v28);
      }
    }

    v10 = 0;
    goto LABEL_33;
  }

LABEL_34:
  if (a5 && !v10)
  {
    if (v11)
    {
      v34 = v11;
      *a5 = v11;
    }

    else
    {
      v35 = [NSError tsp_unknownReadErrorWithUserInfo:0];
      *a5 = v35;
    }
  }

  return v10;
}

- (id)componentZipArchive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000164A0;
  v9 = sub_1000164B0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000164B8;
  v4[3] = &unk_1001C6288;
  v4[4] = self;
  v4[5] = &v5;
  [(TSPPackage *)self peformSynchronousAccessToZipArchive:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)packageEntryInfoAtRelativePath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100152300();
    }

    v8 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100152314(v7, v8);
    }

    v9 = [NSString stringWithUTF8String:"[TSPFilePackage packageEntryInfoAtRelativePath:error:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPFilePackage.mm"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:186 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "path"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [(TSPPackage *)self zipArchive];
  v12 = [v11 entryForName:v6];
  if (v12)
  {
    v13 = [TSPPackageEntryInfo alloc];
    v14 = [v12 size];
    v15 = [v12 lastModificationDate];
    v16 = -[TSPPackageEntryInfo initWithEncodedLength:lastModificationDate:CRC:](v13, "initWithEncodedLength:lastModificationDate:CRC:", v14, v15, [v12 CRC]);
  }

  else if (a4)
  {
    [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)newRawDataReadChannelAtRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(TSPPackage *)self zipArchive];
  v6 = [v5 entryForName:v4];
  if (v6)
  {
    v7 = [v5 streamReadChannelForEntry:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasDataAtRelativePath:(id)a3
{
  v4 = a3;
  v5 = [(TSPPackage *)self zipArchive];
  v6 = [v5 entryForName:v4];
  v7 = v6 != 0;

  return v7;
}

- (id)newDocumentPropertiesWithURL:(id)a3 zipProvider:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8[2](v8, a5);
  if (v9)
  {
    v10 = [[TSPDocumentProperties alloc] initWithFilePackageURL:v7 zipArchive:v9 allowMissingPropertyList:0 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end