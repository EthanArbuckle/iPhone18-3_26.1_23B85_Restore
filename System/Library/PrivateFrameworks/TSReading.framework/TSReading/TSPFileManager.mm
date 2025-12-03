@interface TSPFileManager
+ (BOOL)linkFileAtPath:(id)path toPath:(id)toPath;
+ (BOOL)linkFileAtURL:(id)l toURL:(id)rL;
+ (BOOL)linkOrCopyURL:(id)l decryptionKey:(id)key toURL:(id)rL encryptionKey:(id)encryptionKey;
@end

@implementation TSPFileManager

+ (BOOL)linkFileAtURL:(id)l toURL:(id)rL
{
  rLCopy = rL;
  path = [l path];
  path2 = [rLCopy path];

  LOBYTE(self) = [self linkFileAtPath:path toPath:path2];
  return self;
}

+ (BOOL)linkFileAtPath:(id)path toPath:(id)toPath
{
  pathCopy = path;
  toPathCopy = toPath;
  v7 = UnsafePointer();
  bundlePath = [v7 bundlePath];
  stringByStandardizingPath = [bundlePath stringByStandardizingPath];

  stringByStandardizingPath2 = [pathCopy stringByStandardizingPath];
  v11 = [stringByStandardizingPath stringByAppendingString:@"/"];
  v12 = [stringByStandardizingPath2 hasPrefix:v11];

  v13 = (v12 & 1) == 0 && TSULink() == 0;
  return v13;
}

+ (BOOL)linkOrCopyURL:(id)l decryptionKey:(id)key toURL:(id)rL encryptionKey:(id)encryptionKey
{
  lCopy = l;
  keyCopy = key;
  rLCopy = rL;
  encryptionKeyCopy = encryptionKey;
  v14 = 0;
  if (lCopy && rLCopy)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    if (SFUEqualCryptoKeys())
    {
      v15 = [self linkFileAtURL:lCopy toURL:rLCopy];
      *(v34 + 24) = v15;
      if (v15)
      {
LABEL_11:
        v14 = *(v34 + 24);
        _Block_object_dispose(&v33, 8);
        goto LABEL_12;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v32 = 0;
      v17 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:&v32];
      v18 = v32;
      *(v34 + 24) = v17;

      if ((v34[3] & 1) == 0)
      {
        TSULogErrorInFunction();
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:lCopy];
      v19 = [objc_alloc(MEMORY[0x277D6C2D0]) initForStreamWritingURL:rLCopy];
      v20 = [[TSPCryptoTranscodeReadChannel alloc] initWithReadChannel:v18 decryptionKey:keyCopy encryptionKey:encryptionKeyCopy];
      if (v20)
      {
        v21 = dispatch_queue_create("com.apple.iWork.CRYPTOREADCHANNEL", 0);
        v22 = dispatch_queue_create("com.apple.iWork.FILEIOWRITECHANNEL", 0);
        *(v34 + 24) = 1;
        v23 = dispatch_semaphore_create(0);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __66__TSPFileManager_linkOrCopyURL_decryptionKey_toURL_encryptionKey___block_invoke;
        v27[3] = &unk_279D47360;
        v28 = v19;
        v24 = v22;
        v29 = v24;
        v31 = &v33;
        v25 = v23;
        v30 = v25;
        [(TSPCryptoTranscodeReadChannel *)v20 readWithQueue:v21 handler:v27];
        dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
        [(TSPCryptoTranscodeReadChannel *)v20 close];
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return v14 & 1;
}

void __66__TSPFileManager_linkOrCopyURL_decryptionKey_toURL_encryptionKey___block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = dispatch_semaphore_create(0);
  v9 = v8;
  if (!v7 || a4)
  {
    if (a4)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      [*(a1 + 32) close];
      dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__TSPFileManager_linkOrCopyURL_decryptionKey_toURL_encryptionKey___block_invoke_2;
    v13[3] = &unk_279D47338;
    v15 = *(a1 + 56);
    v12 = v8;
    v14 = v12;
    [v10 writeData:v7 queue:v11 handler:v13];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a2)
  {
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

void __66__TSPFileManager_linkOrCopyURL_decryptionKey_toURL_encryptionKey___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    dispatch_semaphore_signal(*(a1 + 32));
  }

  if (a2)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

@end