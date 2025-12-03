@interface TSUSafeSaveAssistant
+ (BOOL)finishWritingToURL:(id)l byMovingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error;
+ (id)temporaryDirectoryURLForWritingToURL:(id)l error:(id *)error;
+ (void)removeTemporaryDirectoryAtURL:(id)l;
+ (void)writeAttributes:(id)attributes toURL:(id)l;
- (BOOL)endSaveWithSuccess:(BOOL)success toURL:(id)l addingAttributes:(id)attributes error:(id *)error;
- (TSUSafeSaveAssistant)init;
- (id)initForSavingToURL:(id)l error:(id *)error;
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

- (id)initForSavingToURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v24.receiver = self;
    v24.super_class = TSUSafeSaveAssistant;
    v7 = [(TSUSafeSaveAssistant *)&v24 init];
    if (v7)
    {
      v8 = [lCopy copy];
      saveURL = v7->_saveURL;
      v7->_saveURL = v8;

      v10 = [objc_opt_class() temporaryDirectoryURLForWritingToURL:lCopy error:error];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(TSUSafeSaveAssistant *)self removeTemporaryDirectory];
  v3.receiver = self;
  v3.super_class = TSUSafeSaveAssistant;
  [(TSUSafeSaveAssistant *)&v3 dealloc];
}

- (BOOL)endSaveWithSuccess:(BOOL)success toURL:(id)l addingAttributes:(id)attributes error:(id *)error
{
  successCopy = success;
  lCopy = l;
  attributesCopy = attributes;
  if (!self->_temporaryDirectoryURL)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant endSaveWithSuccess:toURL:addingAttributes:error:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSafeSaveAssistant.m"];
    v17 = NSStringFromSelector(a2);
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:66 description:{@"%@ should only be called once.", v17}];

    goto LABEL_5;
  }

  if (!successCopy)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = [objc_opt_class() finishWritingToURL:lCopy byMovingItemAtURL:self->_writeURL addingAttributes:attributesCopy error:error];
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

+ (id)temporaryDirectoryURLForWritingToURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];

  return v8;
}

+ (void)writeAttributes:(id)attributes toURL:(id)l
{
  attributesCopy = attributes;
  lCopy = l;
  v6 = [attributesCopy objectForKey:*MEMORY[0x277CCA110]];
  if ([attributesCopy count] != (v6 != 0) || objc_msgSend(v6, "BOOLValue"))
  {
    path = [lCopy path];
    if (path)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager setAttributes:attributesCopy ofItemAtPath:path error:0];
    }
  }
}

+ (BOOL)finishWritingToURL:(id)l byMovingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error
{
  rLCopy = rL;
  attributesCopy = attributes;
  v12 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v12 defaultManager];
  path = [lCopy path];

  if ([defaultManager fileExistsAtPath:path] && !objc_msgSend(defaultManager, "removeItemAtPath:error:", path, error))
  {
    v17 = 0;
  }

  else
  {
    [self writeAttributes:attributesCopy toURL:rLCopy];
    path2 = [rLCopy path];
    v17 = [defaultManager moveItemAtPath:path2 toPath:path error:error];
  }

  return v17;
}

+ (void)removeTemporaryDirectoryAtURL:(id)l
{
  v3 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  [defaultManager removeItemAtURL:lCopy error:0];
}

@end