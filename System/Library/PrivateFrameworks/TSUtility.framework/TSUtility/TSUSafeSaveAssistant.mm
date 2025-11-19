@interface TSUSafeSaveAssistant
+ (BOOL)finishWritingToURL:(id)a3 byMovingItemAtURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6;
+ (id)temporaryDirectoryURLForWritingToURL:(id)a3 error:(id *)a4;
+ (void)removeTemporaryDirectoryAtURL:(id)a3;
+ (void)writeAttributes:(id)a3 toURL:(id)a4;
- (BOOL)endSaveWithSuccess:(BOOL)a3 toURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6;
- (TSUSafeSaveAssistant)init;
- (id)initForSavingToURL:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation TSUSafeSaveAssistant

- (TSUSafeSaveAssistant)init
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSafeSaveAssistant.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:16 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSUSafeSaveAssistant init]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)initForSavingToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v24.receiver = self;
    v24.super_class = TSUSafeSaveAssistant;
    v7 = [(TSUSafeSaveAssistant *)&v24 init];
    if (v7)
    {
      v8 = [v6 copy];
      saveURL = v7->_saveURL;
      v7->_saveURL = v8;

      v10 = [objc_opt_class() temporaryDirectoryURLForWritingToURL:v6 error:a4];
      temporaryDirectoryURL = v7->_temporaryDirectoryURL;
      v7->_temporaryDirectoryURL = v10;

      if (v7->_temporaryDirectoryURL)
      {
        v12 = v7->_saveURL;
        v23 = 0;
        v13 = [(NSURL *)v12 getResourceValue:&v23 forKey:*MEMORY[0x277CBE868] error:0];
        v14 = v23;
        v15 = v14;
        if (v13 && [(TSUSafeSaveAssistant *)v14 BOOLValue])
        {
          v16 = v7->_temporaryDirectoryURL;
          writeURL = v7->_writeURL;
          v7->_writeURL = v16;
        }

        else
        {
          v19 = v7->_temporaryDirectoryURL;
          writeURL = [(NSURL *)v7->_saveURL lastPathComponent];
          v20 = [(NSURL *)v19 URLByAppendingPathComponent:writeURL];
          v21 = v7->_writeURL;
          v7->_writeURL = v20;
        }
      }

      else
      {
        v15 = v7;
        v7 = 0;
      }
    }

    self = v7;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)dealloc
{
  [(TSUSafeSaveAssistant *)self removeTemporaryDirectory];
  v3.receiver = self;
  v3.super_class = TSUSafeSaveAssistant;
  [(TSUSafeSaveAssistant *)&v3 dealloc];
}

- (BOOL)endSaveWithSuccess:(BOOL)a3 toURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6
{
  v8 = a3;
  v11 = a4;
  v12 = a5;
  if (!self->_temporaryDirectoryURL)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant endSaveWithSuccess:toURL:addingAttributes:error:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSafeSaveAssistant.m"];
    v17 = NSStringFromSelector(a2);
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:66 description:{@"%@ should only be called once.", v17}];

    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = [objc_opt_class() finishWritingToURL:v11 byMovingItemAtURL:self->_writeURL addingAttributes:v12 error:a6];
LABEL_6:
  [(TSUSafeSaveAssistant *)self removeTemporaryDirectory];

  return v13;
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    [objc_opt_class() removeTemporaryDirectoryAtURL:self->_temporaryDirectoryURL];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

+ (id)temporaryDirectoryURLForWritingToURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:1 error:a4];

  return v8;
}

+ (void)writeAttributes:(id)a3 toURL:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 objectForKey:*MEMORY[0x277CCA110]];
  if ([v9 count] != (v6 != 0) || objc_msgSend(v6, "BOOLValue"))
  {
    v7 = [v5 path];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 setAttributes:v9 ofItemAtPath:v7 error:0];
    }
  }
}

+ (BOOL)finishWritingToURL:(id)a3 byMovingItemAtURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCAA00];
  v13 = a3;
  v14 = [v12 defaultManager];
  v15 = [v13 path];

  if ([v14 fileExistsAtPath:v15] && !objc_msgSend(v14, "removeItemAtPath:error:", v15, a6))
  {
    v17 = 0;
  }

  else
  {
    [a1 writeAttributes:v11 toURL:v10];
    v16 = [v10 path];
    v17 = [v14 moveItemAtPath:v16 toPath:v15 error:a6];
  }

  return v17;
}

+ (void)removeTemporaryDirectoryAtURL:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  [v5 removeItemAtURL:v4 error:0];
}

@end