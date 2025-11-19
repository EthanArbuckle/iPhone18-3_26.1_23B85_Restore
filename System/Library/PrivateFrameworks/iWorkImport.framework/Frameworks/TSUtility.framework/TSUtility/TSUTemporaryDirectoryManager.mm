@interface TSUTemporaryDirectoryManager
+ (NSURL)baseDirectoryURL;
+ (id)makeUniqueDirectoryWithBaseDirectory:(id)a3 filename:(id)a4;
+ (id)sharedManager;
- (TSUTemporaryDirectoryManager)init;
- (id)_directoriesToRemoveOnInit;
- (id)newDirectoryWithFilename:(id)a3;
- (void)_excludeFromBackupAsynchronously;
- (void)_removeDirectories:(id)a3;
- (void)_removeDirectoriesAsynchronously:(id)a3;
@end

@implementation TSUTemporaryDirectoryManager

+ (NSURL)baseDirectoryURL
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager baseDirectoryURL]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:51 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "+[TSUTemporaryDirectoryManager baseDirectoryURL]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

+ (id)sharedManager
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager sharedManager]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:63 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "+[TSUTemporaryDirectoryManager sharedManager]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

+ (id)makeUniqueDirectoryWithBaseDirectory:(id)a3 filename:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager makeUniqueDirectoryWithBaseDirectory:filename:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
    [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:67 isFatal:0 description:"invalid nil value for '%{public}s'", "baseDirectory"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager makeUniqueDirectoryWithBaseDirectory:filename:]"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
    [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:68 isFatal:0 description:"invalid nil value for '%{public}s'", "filename"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v9 = [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v26];

  if ((v9 & 1) == 0 && TSUManagedTemporaryLogCat_init_token != -1)
  {
    sub_277115148();
  }

  v10 = 0;
  if (v5 && v7)
  {
    v11 = [v7 stringByAppendingString:@".XXXXXX"];
    v12 = [v5 stringByAppendingPathComponent:v11];

    v5 = v12;
    v13 = [v12 fileSystemRepresentation];
    if (v13 && (v14 = strlen(v13), (v15 = malloc_type_calloc(v14 + 1, 1uLL, 0x100004077774924uLL)) != 0))
    {
      v16 = v15;
      v17 = strncpy(v15, [v5 fileSystemRepresentation], v14);
      v16[v14] = 0;
      v18 = mkdtemp(v17);
      if (v18)
      {
        v19 = MEMORY[0x277CBEBC0];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
        v10 = [v19 tsu_fileURLWithPath:v20];
      }

      else
      {
        v10 = 0;
      }

      free(v16);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (TSUTemporaryDirectoryManager)init
{
  v10.receiver = self;
  v10.super_class = TSUTemporaryDirectoryManager;
  v2 = [(TSUTemporaryDirectoryManager *)&v10 init];
  if (v2)
  {
    v3 = [objc_opt_class() baseDirectoryURL];
    v4 = [v3 copy];
    baseDirectoryURL = v2->_baseDirectoryURL;
    v2->_baseDirectoryURL = v4;

    if (!v2->_baseDirectoryURL)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager init]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
      [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:105 isFatal:0 description:"invalid nil value for '%{public}s'", "_baseDirectoryURL"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v8 = [(TSUTemporaryDirectoryManager *)v2 _directoriesToRemoveOnInit];
    [(TSUTemporaryDirectoryManager *)v2 _removeDirectoriesAsynchronously:v8];
    if ([objc_opt_class() shouldExcludeFromBackup])
    {
      [(TSUTemporaryDirectoryManager *)v2 _excludeFromBackupAsynchronously];
    }
  }

  return v2;
}

- (id)_directoriesToRemoveOnInit
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_baseDirectoryURL)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithObject:*MEMORY[0x277CBE8F8]];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 contentsOfDirectoryAtURL:self->_baseDirectoryURL includingPropertiesForKeys:v3 options:0 error:0];

    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) path];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeDirectoriesAsynchronously:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if (qword_280A63E28 != -1)
    {
      sub_277115170();
    }

    v5 = qword_280A63E20;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2770EA1A4;
    v6[3] = &unk_27A702450;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

- (void)_removeDirectories:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeItemAtPath:*(*(&v10 + 1) + 8 * v9++) error:{0, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_excludeFromBackupAsynchronously
{
  if (qword_280A63E38 != -1)
  {
    sub_277115198();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770EA460;
  block[3] = &unk_27A7023D8;
  block[4] = self;
  dispatch_async(qword_280A63E30, block);
}

- (id)newDirectoryWithFilename:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager newDirectoryWithFilename:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:204 isFatal:0 description:"invalid nil value for '%{public}s'", "filename"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v7 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v7 UUIDString];
  }

  v8 = objc_opt_class();
  v9 = [(NSURL *)self->_baseDirectoryURL path];
  v10 = [v8 makeUniqueDirectoryWithBaseDirectory:v9 filename:v4];

  if (!v10)
  {
    if (TSUManagedTemporaryLogCat_init_token != -1)
    {
      sub_2771151D4();
    }

    baseDirectoryURL = self->_baseDirectoryURL;
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v10 = [(NSURL *)baseDirectoryURL URLByAppendingPathComponent:v13];

    if (!v10)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager newDirectoryWithFilename:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
      [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:216 isFatal:0 description:"invalid nil value for '%{public}s'", "URL"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v10 = 0;
    }
  }

  v16 = [objc_opt_class() managedTemporaryDirectoryClass];
  if (([(objc_class *)v16 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager newDirectoryWithFilename:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
    v19 = NSStringFromClass(v16);
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:219 isFatal:0 description:"Invalid managed temporary directory class: %{public}@", v19];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v20 = [[v16 alloc] initWithURL:v10];

  return v20;
}

@end