@interface TSUZipFileArchive
+ (void)readArchiveFromURL:(id)l queue:(id)queue completion:(id)completion;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l;
- (BOOL)openWithURL:(id)l;
- (BOOL)reopenWithTemporaryURL:(id)l;
- (TSUZipFileArchive)initWithURL:(id)l;
- (TSUZipFileArchive)initWithWriter:(id)writer atURL:(id)l;
- (id)debugDescription;
- (id)readChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)l;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation TSUZipFileArchive

+ (void)readArchiveFromURL:(id)l queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  lCopy = l;
  v11 = [[self alloc] initWithURL:lCopy];

  if (v11)
  {
    [v11 readArchiveWithQueue:queueCopy completion:completionCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__TSUZipFileArchive_readArchiveFromURL_queue_completion___block_invoke;
    block[3] = &unk_279D663D8;
    v13 = completionCopy;
    dispatch_async(queueCopy, block);

    queueCopy = v13;
  }
}

void __57__TSUZipFileArchive_readArchiveFromURL_queue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsu_IOErrorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (TSUZipFileArchive)initWithURL:(id)l
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initWithURL:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:46 description:@"Need a file URL"];
  }

  v12.receiver = self;
  v12.super_class = TSUZipFileArchive;
  v8 = [(TSUZipArchive *)&v12 init];
  if (v8)
  {
    v9 = dispatch_queue_create("TSUZipFileArchive.Access", 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v9;

    if (![(TSUZipFileArchive *)v8 openWithURL:lCopy])
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)openWithURL:(id)l
{
  lCopy = l;
  if (self->_archiveReadChannel)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive openWithURL:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:67 description:@"Shouldn't open the archive if it's already open."];
  }

  v23 = 0;
  v8 = *MEMORY[0x277CBE838];
  v22 = 0;
  v9 = [lCopy getResourceValue:&v23 forKey:v8 error:&v22];
  v10 = v23;
  v11 = v22;
  v12 = v10;
  v17 = v12;
  if (v9)
  {
    self->_archiveLength = [v12 unsignedLongLongValue];
    v18 = [[TSUFileIOChannel alloc] initForReadingURL:lCopy];
    archiveReadChannel = self->_archiveReadChannel;
    self->_archiveReadChannel = v18;

    v20 = self->_archiveReadChannel != 0;
  }

  else
  {
    TSULogErrorInFunction("[TSUZipFileArchive openWithURL:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m", 87, @"Couldn't get size for %@: %@", v13, v14, v15, v16, lCopy);

    v20 = 0;
  }

  return v20;
}

- (TSUZipFileArchive)initWithWriter:(id)writer atURL:(id)l
{
  writerCopy = writer;
  lCopy = l;
  v8 = [(TSUZipFileArchive *)self initWithURL:lCopy];
  v9 = v8;
  if (v8)
  {
    archiveLength = v8->_archiveLength;
    if (archiveLength != [writerCopy archiveLength])
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initWithWriter:atURL:]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m"];
      path = [lCopy path];
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:103 description:{@"Length of archive at %@ doesn't match archive length of writer. %llu != %llu", path, v9->_archiveLength, objc_msgSend(writerCopy, "archiveLength")}];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__TSUZipFileArchive_initWithWriter_atURL___block_invoke;
    v16[3] = &unk_279D66450;
    v17 = v9;
    [writerCopy enumerateEntriesUsingBlock:v16];
  }

  return v9;
}

- (void)dealloc
{
  self->_archiveLength = 0;
  archiveReadChannel = self->_archiveReadChannel;
  self->_archiveReadChannel = 0;

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
      v8 = [[TSUTemporaryDirectory alloc] initWithSignature:@"ZipFile"];
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
    v12 = 0;
    v5 = [defaultManager removeItemAtURL:temporaryDirectoryURL error:&v12];
    v6 = v12;

    if ((v5 & 1) == 0)
    {
      TSULogErrorInFunction("[TSUZipFileArchive removeTemporaryDirectory]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m", 153, @"Failed to remove temporary directory with error: %@", v7, v8, v9, v10, v6);
    }

    v11 = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

- (BOOL)reopenWithTemporaryURL:(id)l
{
  archiveLength = self->_archiveLength;
  archiveReadChannel = self->_archiveReadChannel;
  v7 = archiveReadChannel;
  self->_archiveLength = 0;
  v8 = self->_archiveReadChannel;
  self->_archiveReadChannel = 0;
  lCopy = l;

  v10 = [(TSUZipFileArchive *)self openWithURL:lCopy];
  if (!v10)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_archiveReadChannel, archiveReadChannel);
  }

  return v10;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  accessQueue = self->_accessQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL___block_invoke;
  block[3] = &unk_279D664C8;
  block[4] = self;
  v9 = lCopy;
  v10 = &v11;
  v6 = lCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

void __58__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[5])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    if (!v2[4])
    {
      v3 = +[TSUAssertionHandler currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive copyToTemporaryLocationRelativeToURL:]_block_invoke"];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m"];
      [v3 handleFailureInFunction:v4 file:v5 lineNumber:187 description:@"Read channel should be initialized."];

      v2 = *(a1 + 32);
    }

    [v2 createTemporaryDirectoryRelativeToURL:*(a1 + 40)];
    v6 = [*(*(a1 + 32) + 40) URLByAppendingPathComponent:@"Temp.zip"];
    if (v6)
    {
      v7 = [[TSUFileIOChannel alloc] initForStreamWritingURL:v6];
    }

    else
    {
      v7 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7 != 0;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__3;
      v36 = __Block_byref_object_dispose__3;
      v37 = 0;
      v8 = dispatch_group_create();
      v9 = dispatch_queue_create("TSUZipFileArchive.Copy", 0);
      dispatch_group_enter(v8);
      v10 = *(*(a1 + 32) + 32);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __58__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL___block_invoke_34;
      v27[3] = &unk_279D664A0;
      v31 = &v32;
      v11 = v8;
      v28 = v11;
      v12 = v7;
      v29 = v12;
      v13 = v9;
      v30 = v13;
      [v10 readFromOffset:0 length:-1 queue:v13 handler:v27];
      dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      [v12 close];

      *(*(*(a1 + 48) + 8) + 24) = v33[5] == 0;
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v14 = [*(a1 + 40) path];
        v26 = [v6 path];
        TSULogErrorInFunction("[TSUZipFileArchive copyToTemporaryLocationRelativeToURL:]_block_invoke_3", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m", 238, @"Failed to copy zip file from %@ to %@ with error: %@", v15, v16, v17, v18, v14);
      }

      _Block_object_dispose(&v32, 8);
      v7 = 0;
    }

    else
    {
      v19 = [v6 path];
      TSULogErrorInFunction("[TSUZipFileArchive copyToTemporaryLocationRelativeToURL:]_block_invoke_3", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileArchive.m", 243, @"Failed to write to temporary zip file: %@", v20, v21, v22, v23, v19);
    }

    v24 = *(*(a1 + 48) + 8);
    if (*(v24 + 24) == 1)
    {
      v25 = [*(a1 + 32) reopenWithTemporaryURL:v6];
      v24 = *(*(a1 + 48) + 8);
    }

    else
    {
      v25 = 0;
    }

    *(v24 + 24) = v25;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeTemporaryDirectory];
    }
  }
}

void __58__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL___block_invoke_34(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !(v8 | *(*(*(a1 + 56) + 8) + 40)))
  {
    dispatch_group_enter(*(a1 + 32));
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL___block_invoke_2;
    v15[3] = &unk_279D66478;
    v17 = *(a1 + 56);
    v16 = *(a1 + 32);
    [v10 writeData:v7 queue:v11 handler:v15];
  }

  if (a2)
  {
    if (v9)
    {
      v12 = *(*(a1 + 56) + 8);
      v14 = *(v12 + 40);
      v13 = (v12 + 40);
      if (!v14)
      {
        objc_storeStrong(v13, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __58__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    if (v7)
    {
      v9 = *(*(a1 + 40) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
        objc_storeStrong(v10, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
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
  v5[2] = __34__TSUZipFileArchive_archiveLength__block_invoke;
  v5[3] = &unk_279D664F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)readChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__TSUZipFileArchive_readChannel__block_invoke;
  v5[3] = &unk_279D664F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
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