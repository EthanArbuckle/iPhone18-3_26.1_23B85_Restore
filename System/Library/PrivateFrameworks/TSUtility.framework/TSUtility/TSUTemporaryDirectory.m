@interface TSUTemporaryDirectory
- (TSUTemporaryDirectory)initWithSignature:(id)a3 subdirectory:(id)a4;
- (void)_createDirectoryWithSignature:(id)a3 subdirectory:(id)a4;
- (void)dealloc;
@end

@implementation TSUTemporaryDirectory

- (TSUTemporaryDirectory)initWithSignature:(id)a3 subdirectory:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSUTemporaryDirectory;
  v6 = [(TSUTemporaryDirectory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSUTemporaryDirectory *)v6 _createDirectoryWithSignature:a3 subdirectory:a4];
  }

  return v7;
}

- (void)dealloc
{
  if (!self->_leak)
  {
    v9 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      if ([v9 code] != 4 || (v7 = objc_msgSend(v9, "domain"), (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCA050]) & 1) == 0))
      {
        TSULogErrorInFunction("[TSUTemporaryDirectory dealloc]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUTemporaryDirectory.mm", 65, @"Failed to remove TSUTemporaryDirectory. Error: %@, path: %@", v3, v4, v5, v6, v9);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = TSUTemporaryDirectory;
  [(TSUTemporaryDirectory *)&v8 dealloc];
}

- (void)_createDirectoryWithSignature:(id)a3 subdirectory:(id)a4
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &stru_287DDF830;
  }

  if (![TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase)
  {
    objc_sync_enter(self);
    if (![TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase)
    {
      v7 = [SFUBundle() bundleIdentifier];
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = getpid();
      v10 = @"com.apple.Unknown";
      if (v7)
      {
        v10 = v7;
      }

      v11 = [v8 initWithFormat:@"%@_%d", v10, v9];
      __dmb(0xBu);
      [TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase = v11;
      if (!v11)
      {
        v12 = +[TSUAssertionHandler currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUTemporaryDirectory.mm"), 105, @"Couldn't initialize lazy variable %s", "secretSubdirectoryNameBase"}];
      }
    }

    objc_sync_exit(self);
  }

  v14 = [-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryNameBase stringByAppendingFormat:@"_%@_%d_%d", v6, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(-[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:]::secretSubdirectoryIndex, 1u) + 1];
  if ([v14 length] >= 0x100)
  {
    v14 = [v14 substringToIndex:255];
  }

  v15 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v15)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = NSTemporaryDirectory();
  if (a4)
  {
LABEL_15:
    v16 = [(NSString *)v16 stringByAppendingPathComponent:a4];
  }

LABEL_16:
  v17 = [(NSString *)v16 stringByAppendingPathComponent:v14];
  v18 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    self->_path = v17;
  }

  else
  {
    [MEMORY[0x277CBEAD8] tsu_raiseWithError:v18];
  }
}

@end