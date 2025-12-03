@interface TSUZipFileArchive
+ (BOOL)isZipArchiveAtFD:(int)d;
+ (BOOL)isZipArchiveAtURL:(id)l error:(id *)error;
+ (BOOL)isZipSignatureAllZerosAtURL:(id)l;
+ (id)zipArchiveFromURL:(id)l options:(unint64_t)options error:(id *)error;
+ (void)readArchiveFromURL:(id)l options:(unint64_t)options queue:(id)queue completion:(id)completion;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l error:(id *)error;
- (BOOL)isValid;
- (BOOL)openWithURL:(id)l error:(id *)error;
- (BOOL)reopenWithTemporaryURL:(id)l error:(id *)error;
- (TSUZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)debugDescription;
- (id)initForReadingFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newArchiveReadChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)l;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation TSUZipFileArchive

+ (BOOL)isZipArchiveAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  if (![path length])
  {
    v11 = 0;
    goto LABEL_7;
  }

  path2 = [lCopy path];
  v9 = open([path2 fileSystemRepresentation], 0, 0);

  if ((v9 & 0x80000000) != 0)
  {
    v11 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
LABEL_7:
    v10 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = [self isZipArchiveAtFD:v9];
  close(v9);
  v11 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v12 = v11;
      *error = v11;
    }

    else
    {
      v13 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
      *error = v13;
    }
  }

LABEL_12:

  return v10;
}

+ (BOOL)isZipSignatureAllZerosAtURL:(id)l
{
  path = [l path];
  v4 = open([path fileSystemRepresentation], 0, 0);

  if (v4 < 0)
  {
    return 0;
  }

  v5 = read(v4, &v12, 4uLL);
  v6.i32[0] = v12;
  v7 = vmovl_u8(v6).u64[0];
  v8 = vuzp1_s8(v7, v7).u32[0];
  v10 = v5 == 4 && v8 == 0;
  close(v4);
  return v10;
}

+ (BOOL)isZipArchiveAtFD:(int)d
{
  v4 = lseek(d, 0, 1);
  v5 = v4;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (lseek(d, 0, 0) == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v4 != -1)
  {
LABEL_5:
    if (read(d, &v9, 4uLL) == 4)
    {
      v7 = v9 == 67324752 || v9 == 101010256;
      return lseek(d, v5, 0) != -1 && v7;
    }

LABEL_12:
    v7 = 0;
    return lseek(d, v5, 0) != -1 && v7;
  }

  return 0;
}

+ (void)readArchiveFromURL:(id)l options:(unint64_t)options queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  lCopy = l;
  v18 = 0;
  v13 = [[self alloc] initForReadingFromURL:lCopy options:options error:&v18];

  v14 = v18;
  if (v13)
  {
    [v13 readArchiveWithQueue:queueCopy completion:completionCopy];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007C7C0;
    block[3] = &unk_1001CC3D8;
    v17 = completionCopy;
    v16 = v14;
    dispatch_async(queueCopy, block);

    queueCopy = v17;
  }
}

+ (id)zipArchiveFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10007CAB0;
  v32 = sub_10007CAC0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10007CAB0;
  v26 = sub_10007CAC0;
  v27 = 0;
  obj = 0;
  v9 = [self isZipArchiveAtURL:lCopy error:&obj];
  objc_storeStrong(&v27, obj);
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007CAC8;
    v17[3] = &unk_1001CC400;
    v19 = &v28;
    v20 = &v22;
    v12 = v10;
    v18 = v12;
    [self readArchiveFromURL:lCopy options:options queue:v11 completion:v17];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (error && !v29[5])
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }

    else
    {
      v14 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
      *error = v14;
    }
  }

  v15 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v15;
}

- (id)initForReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015A25C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015A270();
    }

    v9 = [NSString stringWithUTF8String:"[TSUZipFileArchive initForReadingFromURL:options:error:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:173 isFatal:0 description:"Need a file URL"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v16.receiver = self;
  v16.super_class = TSUZipFileArchive;
  v11 = [(TSUZipArchive *)&v16 initWithOptions:options];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("TSUZipFileArchive.Access", v12);
    accessQueue = v11->_accessQueue;
    v11->_accessQueue = v13;

    if (![(TSUZipFileArchive *)v11 openWithURL:lCopy error:error])
    {

      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)openWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self->_fdWrapper)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015A2F8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015A30C();
    }

    v7 = [NSString stringWithUTF8String:"[TSUZipFileArchive openWithURL:error:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:191 isFatal:0 description:"Shouldn't open the archive if it's already open."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [lCopy copy];
  URL = self->_URL;
  self->_URL = v9;

  [lCopy removeCachedResourceValueForKey:NSURLFileSizeKey];
  v26 = 0;
  v27 = 0;
  v11 = [lCopy getResourceValue:&v27 forKey:NSURLFileSizeKey error:&v26];
  v12 = v27;
  v13 = v26;
  if (v11)
  {
    self->_archiveLength = [v12 unsignedLongLongValue];
    path = [lCopy path];
    v15 = open([path fileSystemRepresentation], 0, 0);

    if ((v15 & 0x80000000) != 0)
    {
      v21 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }

    else
    {
      if (([(TSUZipArchive *)self options]& 0x10) != 0 && fcntl(v15, 48, 1) == -1)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_10015A4AC();
        }

        v16 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10015A4D4(v16);
        }
      }

      v17 = [[TSUZipFileDescriptorWrapper alloc] initWithFileDescriptor:v15];
      fdWrapper = self->_fdWrapper;
      self->_fdWrapper = v17;

      if (self->_fdWrapper)
      {
        if ([objc_opt_class() isZipArchiveAtFD:v15])
        {
          v19 = 1;
          if (!error)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        v22 = self->_fdWrapper;
        self->_fdWrapper = 0;

        v21 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:0];
      }

      else
      {
        v21 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
      }
    }

    v23 = v21;

    v19 = 0;
    v13 = v23;
    if (!error)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_10015A394();
  }

  v20 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015A3BC(lCopy, v20, v13);
  }

  v19 = 0;
  if (error)
  {
LABEL_29:
    if (v13)
    {
      v24 = v13;
      *error = v13;
    }
  }

LABEL_31:

  return v19;
}

- (TSUZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  writerCopy = writer;
  lCopy = l;
  v12 = [(TSUZipFileArchive *)self initForReadingFromURL:lCopy options:options error:error];
  if (v12)
  {
    v13 = v12;
    archiveLength = v12->_archiveLength;
    if (archiveLength == [writerCopy archiveLength])
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10007D454;
      v25[3] = &unk_1001CC4A8;
      v15 = v13;
      v26 = v15;
      [writerCopy enumerateEntriesUsingBlock:v25];
      v13 = v26;
    }

    else
    {
      v16 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015A564();
      }

      v17 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        v22 = v17;
        path = [lCopy path];
        v24 = v13->_archiveLength;
        *buf = 67110658;
        v28 = v16;
        v29 = 2082;
        v30 = "[TSUZipFileArchive initWithWriter:forReadingFromURL:options:error:]";
        v31 = 2082;
        v32 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m";
        v33 = 1024;
        v34 = 253;
        v35 = 2112;
        v36 = path;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        archiveLength = [writerCopy archiveLength];
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Length of archive at %@ doesn't match archive length of writer. %llu != %llu", buf, 0x40u);
      }

      v18 = [NSString stringWithUTF8String:"[TSUZipFileArchive initWithWriter:forReadingFromURL:options:error:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m"];
      path2 = [lCopy path];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v18, v19, 253, 0, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", path2, v13->_archiveLength, [writerCopy archiveLength]);

      +[TSUAssertionHandler logBacktraceThrottled];
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  self->_archiveLength = 0;
  fdWrapper = self->_fdWrapper;
  self->_fdWrapper = 0;

  [(TSUZipFileArchive *)self removeTemporaryDirectory];
  v4.receiver = self;
  v4.super_class = TSUZipFileArchive;
  [(TSUZipFileArchive *)&v4 dealloc];
}

- (void)createTemporaryDirectoryRelativeToURL:(id)l
{
  lCopy = l;
  if (!self->_temporaryDirectoryURL)
  {
    v11 = lCopy;
    if (!lCopy)
    {
      goto LABEL_4;
    }

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:0];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = v6;

    lCopy = v11;
    if (!self->_temporaryDirectoryURL)
    {
LABEL_4:
      v8 = [[TSUTemporaryDirectory alloc] initWithSignature:@"ZipFile" error:0];
      [(TSUTemporaryDirectory *)v8 leakTemporaryDirectory];
      v9 = [(TSUTemporaryDirectory *)v8 URL];
      v10 = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v9;

      lCopy = v11;
    }
  }
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    v3 = +[NSFileManager defaultManager];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    v9 = 0;
    v5 = [v3 removeItemAtURL:temporaryDirectoryURL error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015A578();
      }

      v7 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015A5A0(v7, v6);
      }
    }

    v8 = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

- (BOOL)reopenWithTemporaryURL:(id)l error:(id *)error
{
  archiveLength = self->_archiveLength;
  fdWrapper = self->_fdWrapper;
  v9 = fdWrapper;
  self->_archiveLength = 0;
  v10 = self->_fdWrapper;
  self->_fdWrapper = 0;
  lCopy = l;

  v12 = [(TSUZipFileArchive *)self openWithURL:lCopy error:error];
  if (!v12)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_fdWrapper, fdWrapper);
  }

  return v12;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10007CAB0;
  v25 = sub_10007CAC0;
  v26 = 0;
  accessQueue = self->_accessQueue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10007D978;
  v16 = &unk_1001CC5C0;
  selfCopy = self;
  v8 = lCopy;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  dispatch_sync(accessQueue, &v13);
  if (error && (v28[3] & 1) == 0)
  {
    v9 = v22[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      selfCopy = [NSError tsu_fileReadUnknownErrorWithUserInfo:0, v13, v14, v15, v16, selfCopy];
      *error = selfCopy;
    }
  }

  v11 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007E20C;
  v5[3] = &unk_1001C5A40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)newArchiveReadChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10007CAB0;
  v10 = sub_10007CAC0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007E310;
  v5[3] = &unk_1001CC670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007E6BC;
  v5[3] = &unk_1001CC670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)debugDescription
{
  v3 = [TSUDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [NSString stringWithFormat:@"%qu", self->_archiveLength];
  [v3 addField:@"archiveLength" value:v4];

  v8.receiver = self;
  v8.super_class = TSUZipFileArchive;
  v5 = [(TSUZipArchive *)&v8 debugDescription];
  [v3 addFieldValue:v5];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end