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
    v11 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
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
      v13 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
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
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770D3824;
    block[3] = &unk_27A702378;
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
  v31 = sub_2770D3B14;
  v32 = sub_2770D3B24;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_2770D3B14;
  v26 = sub_2770D3B24;
  v27 = 0;
  obj = 0;
  v9 = [self isZipArchiveAtURL:lCopy error:&obj];
  objc_storeStrong(&v27, obj);
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2770D3B2C;
    v17[3] = &unk_27A702F88;
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
      v14 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
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
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initForReadingFromURL:options:error:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
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
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive openWithURL:error:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:191 isFatal:0 description:"Shouldn't open the archive if it's already open."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [lCopy copy];
  URL = self->_URL;
  self->_URL = v9;

  v11 = *MEMORY[0x277CBE838];
  [lCopy removeCachedResourceValueForKey:*MEMORY[0x277CBE838]];
  v25 = 0;
  v26 = 0;
  v12 = [lCopy getResourceValue:&v26 forKey:v11 error:&v25];
  v13 = v26;
  v14 = v25;
  if (v12)
  {
    self->_archiveLength = [v13 unsignedLongLongValue];
    path = [lCopy path];
    v16 = open([path fileSystemRepresentation], 0, 0);

    if ((v16 & 0x80000000) != 0)
    {
      v20 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }

    else
    {
      if (([(TSUZipArchive *)self options]& 0x10) != 0 && fcntl(v16, 48, 1) == -1 && TSUDefaultCat_init_token != -1)
      {
        sub_277114E64();
      }

      v17 = [[TSUZipFileDescriptorWrapper alloc] initWithFileDescriptor:v16];
      fdWrapper = self->_fdWrapper;
      self->_fdWrapper = v17;

      if (self->_fdWrapper)
      {
        if ([objc_opt_class() isZipArchiveAtFD:v16])
        {
          v19 = 1;
          if (!error)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        v21 = self->_fdWrapper;
        self->_fdWrapper = 0;

        v20 = [MEMORY[0x277CCA9B8] tsu_fileReadCorruptedFileErrorWithUserInfo:0];
      }

      else
      {
        v20 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      }
    }

    v22 = v20;

    v19 = 0;
    v14 = v22;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (TSUDefaultCat_init_token == -1)
  {
    v19 = 0;
    if (!error)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_277114E3C();
    v19 = 0;
    if (!error)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (v14)
  {
    v23 = v14;
    *error = v14;
  }

LABEL_22:

  return v19;
}

- (TSUZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  writerCopy = writer;
  lCopy = l;
  v12 = [(TSUZipFileArchive *)self initForReadingFromURL:lCopy options:options error:error];
  v13 = v12;
  if (v12)
  {
    archiveLength = v12->_archiveLength;
    if (archiveLength == [writerCopy archiveLength])
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2770D420C;
      v19[3] = &unk_27A702FB0;
      v13 = v13;
      v20 = v13;
      [writerCopy enumerateEntriesUsingBlock:v19];
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initWithWriter:forReadingFromURL:options:error:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
      path = [lCopy path];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, v16, 253, 0, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", path, v13->_archiveLength, [writerCopy archiveLength]);

      +[TSUAssertionHandler logBacktraceThrottled];
      v13 = 0;
    }
  }

  return v13;
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
    if (!lCopy || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "URLForDirectory:inDomain:appropriateForURL:create:error:", 99, 1, v11, 1, 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_temporaryDirectoryURL, self->_temporaryDirectoryURL = v6, v7, v5, lCopy = v11, !self->_temporaryDirectoryURL))
    {
      v8 = [[TSUTemporaryDirectory alloc] initWithSignature:@"ZipFile" error:0];
      [(TSUTemporaryDirectory *)v8 leakTemporaryDirectory];
      v9 = [(TSUTemporaryDirectory *)v8 URL];
      temporaryDirectoryURL = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v9;

      lCopy = v11;
    }
  }
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    v8 = 0;
    v5 = [defaultManager removeItemAtURL:temporaryDirectoryURL error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0 && TSUDefaultCat_init_token != -1)
    {
      sub_277114E8C();
    }

    v7 = self->_temporaryDirectoryURL;
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
  v24 = sub_2770D3B14;
  v25 = sub_2770D3B24;
  v26 = 0;
  accessQueue = self->_accessQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_2770D46C0;
  v16 = &unk_27A703000;
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
      v10 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:{0, v13, v14, v15, v16, selfCopy}];
      *error = v10;
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
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770D4D40;
  v5[3] = &unk_27A702428;
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
  v9 = sub_2770D3B14;
  v10 = sub_2770D3B24;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770D4E44;
  v5[3] = &unk_27A702560;
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
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770D517C;
  v5[3] = &unk_27A702560;
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
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%qu", self->_archiveLength];
  [v3 addField:@"archiveLength" value:v4];

  v8.receiver = self;
  v8.super_class = TSUZipFileArchive;
  v5 = [(TSUZipArchive *)&v8 debugDescription];
  [v3 addFieldValue:v5];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end