@interface TSUZipFileArchive
+ (BOOL)isZipArchiveAtFD:(int)a3;
+ (BOOL)isZipArchiveAtURL:(id)a3 error:(id *)a4;
+ (BOOL)isZipSignatureAllZerosAtURL:(id)a3;
+ (id)zipArchiveFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (void)readArchiveFromURL:(id)a3 options:(unint64_t)a4 queue:(id)a5 completion:(id)a6;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)a3 error:(id *)a4;
- (BOOL)isValid;
- (BOOL)openWithURL:(id)a3 error:(id *)a4;
- (BOOL)reopenWithTemporaryURL:(id)a3 error:(id *)a4;
- (TSUZipFileArchive)initWithWriter:(id)a3 forReadingFromURL:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)debugDescription;
- (id)initForReadingFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newArchiveReadChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)a3;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation TSUZipFileArchive

+ (BOOL)isZipArchiveAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  if (![v7 length])
  {
    v11 = 0;
    goto LABEL_7;
  }

  v8 = [v6 path];
  v9 = open([v8 fileSystemRepresentation], 0, 0);

  if ((v9 & 0x80000000) != 0)
  {
    v11 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
LABEL_7:
    v10 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = [a1 isZipArchiveAtFD:v9];
  close(v9);
  v11 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v12 = v11;
      *a4 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      *a4 = v13;
    }
  }

LABEL_12:

  return v10;
}

+ (BOOL)isZipSignatureAllZerosAtURL:(id)a3
{
  v3 = [a3 path];
  v4 = open([v3 fileSystemRepresentation], 0, 0);

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

+ (BOOL)isZipArchiveAtFD:(int)a3
{
  v4 = lseek(a3, 0, 1);
  v5 = v4;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (lseek(a3, 0, 0) == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v4 != -1)
  {
LABEL_5:
    if (read(a3, &v9, 4uLL) == 4)
    {
      v7 = v9 == 67324752 || v9 == 101010256;
      return lseek(a3, v5, 0) != -1 && v7;
    }

LABEL_12:
    v7 = 0;
    return lseek(a3, v5, 0) != -1 && v7;
  }

  return 0;
}

+ (void)readArchiveFromURL:(id)a3 options:(unint64_t)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v18 = 0;
  v13 = [[a1 alloc] initForReadingFromURL:v12 options:a4 error:&v18];

  v14 = v18;
  if (v13)
  {
    [v13 readArchiveWithQueue:v11 completion:v10];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770D3824;
    block[3] = &unk_27A702378;
    v17 = v10;
    v16 = v14;
    dispatch_async(v11, block);

    v11 = v17;
  }
}

+ (id)zipArchiveFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
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
  v9 = [a1 isZipArchiveAtURL:v8 error:&obj];
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
    [a1 readArchiveFromURL:v8 options:a4 queue:v11 completion:v17];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a5 && !v29[5])
  {
    v13 = v23[5];
    if (v13)
    {
      *a5 = v13;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      *a5 = v14;
    }
  }

  v15 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v15;
}

- (id)initForReadingFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (([v8 isFileURL] & 1) == 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initForReadingFromURL:options:error:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:173 isFatal:0 description:"Need a file URL"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v16.receiver = self;
  v16.super_class = TSUZipFileArchive;
  v11 = [(TSUZipArchive *)&v16 initWithOptions:a4];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("TSUZipFileArchive.Access", v12);
    accessQueue = v11->_accessQueue;
    v11->_accessQueue = v13;

    if (![(TSUZipFileArchive *)v11 openWithURL:v8 error:a5])
    {

      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)openWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_fdWrapper)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive openWithURL:error:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:191 isFatal:0 description:"Shouldn't open the archive if it's already open."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [v6 copy];
  URL = self->_URL;
  self->_URL = v9;

  v11 = *MEMORY[0x277CBE838];
  [v6 removeCachedResourceValueForKey:*MEMORY[0x277CBE838]];
  v25 = 0;
  v26 = 0;
  v12 = [v6 getResourceValue:&v26 forKey:v11 error:&v25];
  v13 = v26;
  v14 = v25;
  if (v12)
  {
    self->_archiveLength = [v13 unsignedLongLongValue];
    v15 = [v6 path];
    v16 = open([v15 fileSystemRepresentation], 0, 0);

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
          if (!a4)
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
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (TSUDefaultCat_init_token == -1)
  {
    v19 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_277114E3C();
    v19 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (v14)
  {
    v23 = v14;
    *a4 = v14;
  }

LABEL_22:

  return v19;
}

- (TSUZipFileArchive)initWithWriter:(id)a3 forReadingFromURL:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(TSUZipFileArchive *)self initForReadingFromURL:v11 options:a5 error:a6];
  v13 = v12;
  if (v12)
  {
    archiveLength = v12->_archiveLength;
    if (archiveLength == [v10 archiveLength])
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2770D420C;
      v19[3] = &unk_27A702FB0;
      v13 = v13;
      v20 = v13;
      [v10 enumerateEntriesUsingBlock:v19];
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initWithWriter:forReadingFromURL:options:error:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
      v17 = [v11 path];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, v16, 253, 0, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", v17, v13->_archiveLength, [v10 archiveLength]);

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

- (void)createTemporaryDirectoryRelativeToURL:(id)a3
{
  v4 = a3;
  if (!self->_temporaryDirectoryURL)
  {
    v11 = v4;
    if (!v4 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "URLForDirectory:inDomain:appropriateForURL:create:error:", 99, 1, v11, 1, 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_temporaryDirectoryURL, self->_temporaryDirectoryURL = v6, v7, v5, v4 = v11, !self->_temporaryDirectoryURL))
    {
      v8 = [[TSUTemporaryDirectory alloc] initWithSignature:@"ZipFile" error:0];
      [(TSUTemporaryDirectory *)v8 leakTemporaryDirectory];
      v9 = [(TSUTemporaryDirectory *)v8 URL];
      temporaryDirectoryURL = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v9;

      v4 = v11;
    }
  }
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    v8 = 0;
    v5 = [v3 removeItemAtURL:temporaryDirectoryURL error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0 && TSUDefaultCat_init_token != -1)
    {
      sub_277114E8C();
    }

    v7 = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

- (BOOL)reopenWithTemporaryURL:(id)a3 error:(id *)a4
{
  archiveLength = self->_archiveLength;
  fdWrapper = self->_fdWrapper;
  v9 = fdWrapper;
  self->_archiveLength = 0;
  v10 = self->_fdWrapper;
  self->_fdWrapper = 0;
  v11 = a3;

  v12 = [(TSUZipFileArchive *)self openWithURL:v11 error:a4];
  if (!v12)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_fdWrapper, fdWrapper);
  }

  return v12;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v17 = self;
  v8 = v6;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  dispatch_sync(accessQueue, &v13);
  if (a4 && (v28[3] & 1) == 0)
  {
    v9 = v22[5];
    if (v9)
    {
      *a4 = v9;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:{0, v13, v14, v15, v16, v17}];
      *a4 = v10;
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

  v6 = [v3 descriptionString];

  return v6;
}

@end