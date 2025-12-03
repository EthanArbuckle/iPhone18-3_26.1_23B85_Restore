@interface TSUSafeSaveAssistant
+ (BOOL)finishWritingToURL:(id)l byMovingOrCopyingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error;
+ (void)writeAttributes:(id)attributes toURL:(id)l;
- (BOOL)endSaveWithSuccess:(BOOL)success toURL:(id)l addingAttributes:(id)attributes error:(id *)error;
- (TSUSafeSaveAssistant)init;
- (id)initForSavingToURL:(id)l error:(id *)error;
@end

@implementation TSUSafeSaveAssistant

- (TSUSafeSaveAssistant)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CE300);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSUSafeSaveAssistant init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUSafeSaveAssistant.m";
    v15 = 1024;
    v16 = 22;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSUSafeSaveAssistant init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUSafeSaveAssistant.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:22 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSUSafeSaveAssistant init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)initForSavingToURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v22.receiver = self;
    v22.super_class = TSUSafeSaveAssistant;
    v7 = [(TSUSafeSaveAssistant *)&v22 init];
    if (v7)
    {
      v8 = [lCopy copy];
      saveURL = v7->_saveURL;
      v7->_saveURL = v8;

      v21 = 0;
      v10 = [[TSUTemporaryDirectory alloc] initForWritingToURL:lCopy error:&v21];
      v11 = v21;
      temporaryDirectory = v7->_temporaryDirectory;
      v7->_temporaryDirectory = v10;

      v13 = v7->_temporaryDirectory;
      if (v13)
      {
        v14 = [(TSUTemporaryDirectory *)v13 URL];
        lastPathComponent = [(NSURL *)v7->_saveURL lastPathComponent];
        v16 = [v14 URLByAppendingPathComponent:lastPathComponent];
        writeURL = v7->_writeURL;
        v7->_writeURL = v16;
      }

      else
      {
        v14 = v7;
        v7 = 0;
      }

      if (!error)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if (!error)
      {
        goto LABEL_11;
      }
    }

    v19 = v11;
    *error = v11;
LABEL_11:
    self = v7;

    selfCopy = self;
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (BOOL)endSaveWithSuccess:(BOOL)success toURL:(id)l addingAttributes:(id)attributes error:(id *)error
{
  successCopy = success;
  lCopy = l;
  attributesCopy = attributes;
  if (!self->_temporaryDirectory)
  {
    v14 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FEFC();
    }

    v15 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FF10(v15, a2, v14);
    }

    v16 = [NSString stringWithUTF8String:"[TSUSafeSaveAssistant endSaveWithSuccess:toURL:addingAttributes:error:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUSafeSaveAssistant.m"];
    v18 = NSStringFromSelector(a2);
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:57 isFatal:0 description:"%{public}@ should only be called once.", v18];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_9;
  }

  if (!successCopy)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = [objc_opt_class() finishWritingToURL:lCopy byMovingOrCopyingItemAtURL:self->_writeURL addingAttributes:attributesCopy error:error];
LABEL_10:
  temporaryDirectory = self->_temporaryDirectory;
  self->_temporaryDirectory = 0;

  return v13;
}

+ (void)writeAttributes:(id)attributes toURL:(id)l
{
  attributesCopy = attributes;
  lCopy = l;
  v6 = [attributesCopy objectForKey:NSFileExtensionHidden];
  if ([attributesCopy count] != (v6 != 0) || objc_msgSend(v6, "BOOLValue"))
  {
    path = [lCopy path];
    if (path)
    {
      v8 = +[NSFileManager defaultManager];
      [v8 setAttributes:attributesCopy ofItemAtPath:path error:0];
    }
  }
}

+ (BOOL)finishWritingToURL:(id)l byMovingOrCopyingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  attributesCopy = attributes;
  v13 = +[NSFileManager defaultManager];
  path = [lCopy path];
  if ([v13 fileExistsAtPath:path])
  {
    v29 = 0;
    v15 = [[TSUExtendedAttributeCollection alloc] initWithPath:path options:0 error:&v29];
    v16 = v29;
    v17 = v16;
    if (!v15)
    {
      LOBYTE(v20) = 0;
      goto LABEL_11;
    }

    errorCopy = error;
    v28 = v16;
    v18 = [v13 removeItemAtURL:lCopy error:&v28];
    v19 = v28;

    if (!v18)
    {
      LOBYTE(v20) = 0;
      v17 = v19;
      error = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    error = errorCopy;
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  [self writeAttributes:attributesCopy toURL:rLCopy];
  v27 = v19;
  v20 = [v13 moveItemAtURL:rLCopy toURL:lCopy error:&v27];
  v17 = v27;

  if (v20 && v15)
  {
    v26 = v17;
    LOBYTE(v20) = [(TSUExtendedAttributeCollection *)v15 setAttributeCollectionToPath:path intent:2 options:0 error:&v26];
    errorCopy2 = error;
    v22 = v26;

    v17 = v22;
    error = errorCopy2;
    if (!errorCopy2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (error)
  {
LABEL_12:
    v23 = v17;
    *error = v17;
  }

LABEL_13:

  return v20;
}

@end