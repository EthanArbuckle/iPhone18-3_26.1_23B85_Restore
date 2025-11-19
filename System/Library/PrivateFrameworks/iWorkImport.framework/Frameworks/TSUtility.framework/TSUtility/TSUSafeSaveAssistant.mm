@interface TSUSafeSaveAssistant
+ (BOOL)finishWritingToURL:(id)a3 byMovingOrCopyingItemAtURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6;
+ (void)writeAttributes:(id)a3 toURL:(id)a4;
- (BOOL)endSaveWithSuccess:(BOOL)a3 toURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6;
- (TSUSafeSaveAssistant)init;
- (id)initForSavingToURL:(id)a3 error:(id *)a4;
@end

@implementation TSUSafeSaveAssistant

- (TSUSafeSaveAssistant)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSafeSaveAssistant.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:22 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUSafeSaveAssistant init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)initForSavingToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v22.receiver = self;
    v22.super_class = TSUSafeSaveAssistant;
    v7 = [(TSUSafeSaveAssistant *)&v22 init];
    if (v7)
    {
      v8 = [v6 copy];
      saveURL = v7->_saveURL;
      v7->_saveURL = v8;

      v21 = 0;
      v10 = [[TSUTemporaryDirectory alloc] initForWritingToURL:v6 error:&v21];
      v11 = v21;
      temporaryDirectory = v7->_temporaryDirectory;
      v7->_temporaryDirectory = v10;

      v13 = v7->_temporaryDirectory;
      if (v13)
      {
        v14 = [(TSUTemporaryDirectory *)v13 URL];
        v15 = [(NSURL *)v7->_saveURL lastPathComponent];
        v16 = [v14 URLByAppendingPathComponent:v15];
        writeURL = v7->_writeURL;
        v7->_writeURL = v16;
      }

      else
      {
        v14 = v7;
        v7 = 0;
      }

      if (!a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    v19 = v11;
    *a4 = v11;
LABEL_11:
    self = v7;

    v18 = self;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (BOOL)endSaveWithSuccess:(BOOL)a3 toURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6
{
  v8 = a3;
  v11 = a4;
  v12 = a5;
  if (!self->_temporaryDirectory)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSafeSaveAssistant endSaveWithSuccess:toURL:addingAttributes:error:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSafeSaveAssistant.m"];
    v16 = NSStringFromSelector(a2);
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:57 isFatal:0 description:"%{public}@ should only be called once.", v16];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = [objc_opt_class() finishWritingToURL:v11 byMovingOrCopyingItemAtURL:self->_writeURL addingAttributes:v12 error:a6];
LABEL_6:
  temporaryDirectory = self->_temporaryDirectory;
  self->_temporaryDirectory = 0;

  return v13;
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

+ (BOOL)finishWritingToURL:(id)a3 byMovingOrCopyingItemAtURL:(id)a4 addingAttributes:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v10 path];
  if ([v13 fileExistsAtPath:v14])
  {
    v29 = 0;
    v15 = [[TSUExtendedAttributeCollection alloc] initWithPath:v14 options:0 error:&v29];
    v16 = v29;
    v17 = v16;
    if (!v15)
    {
      LOBYTE(v20) = 0;
      goto LABEL_11;
    }

    v25 = a6;
    v28 = v16;
    v18 = [v13 removeItemAtURL:v10 error:&v28];
    v19 = v28;

    if (!v18)
    {
      LOBYTE(v20) = 0;
      v17 = v19;
      a6 = v25;
      if (!v25)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    a6 = v25;
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  [a1 writeAttributes:v12 toURL:v11];
  v27 = v19;
  v20 = [v13 moveItemAtURL:v11 toURL:v10 error:&v27];
  v17 = v27;

  if (v20 && v15)
  {
    v26 = v17;
    LOBYTE(v20) = [(TSUExtendedAttributeCollection *)v15 setAttributeCollectionToPath:v14 intent:2 options:0 error:&v26];
    v21 = a6;
    v22 = v26;

    v17 = v22;
    a6 = v21;
    if (!v21)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (a6)
  {
LABEL_12:
    v23 = v17;
    *a6 = v17;
  }

LABEL_13:

  return v20;
}

@end