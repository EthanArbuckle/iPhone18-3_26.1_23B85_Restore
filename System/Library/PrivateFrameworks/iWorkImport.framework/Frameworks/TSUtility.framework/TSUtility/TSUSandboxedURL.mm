@interface TSUSandboxedURL
+ (id)sandboxedURLByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
+ (id)sandboxedURLByResolvingBookmarkData:(id)data relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
+ (void)sandboxedURLByResolvingBookmarkData:(id)data usingQueue:(id)queue timeout:(double)timeout options:(unint64_t)options relativeToURL:(id)l completionQueue:(id)completionQueue completionHandler:(id)handler;
- (BOOL)hasUnresolvedConflicts;
- (BOOL)hasUnresolvedConflicts:(BOOL *)conflicts error:(id *)error;
- (BOOL)isDocumentUploaded;
- (BOOL)isDocumentUploaded:(BOOL *)uploaded error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isQuotaErrorPreventingUpload;
- (BOOL)isShared:(BOOL *)shared logContext:(id)context error:(id *)error;
- (BOOL)isUbiquitous:(BOOL *)ubiquitous promised:(BOOL)promised error:(id *)error;
- (BOOL)isUbiquitousPromised:(BOOL)promised;
- (NSString)description;
- (TSUSandboxedURL)init;
- (TSUSandboxedURL)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
- (id)normalize;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSUSandboxedURL

- (TSUSandboxedURL)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:34 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUSandboxedURL init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUSandboxedURL)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v15.receiver = self;
    v15.super_class = TSUSandboxedURL;
    v5 = [(TSUSandboxedURL *)&v15 init];
    if (v5)
    {
      if ([lCopy isFileURL])
      {
        v6 = [lCopy copy];
        URL = v5->_URL;
        v5->_URL = v6;

        startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
      }

      else
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL initWithURL:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
        [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:45 isFatal:0 description:"Sandboxed URL should not be initialized with a non-file URL. URL=%@", lCopy];

        +[TSUAssertionHandler logBacktraceThrottled];
        v12 = [lCopy copy];
        v13 = v5->_URL;
        v5->_URL = v12;

        startAccessingSecurityScopedResource = 0;
      }

      v5->_URLStartedAccessingSecurityScopedResource = startAccessingSecurityScopedResource;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  v12 = MEMORY[0x277CBEBC0];
  lCopy = l;
  dataCopy = data;
  v15 = [[v12 alloc] initByResolvingBookmarkData:dataCopy options:options | 0x8000 relativeToURL:lCopy bookmarkDataIsStale:stale error:error];

  if (v15)
  {
    v16 = [(TSUSandboxedURL *)self initWithURL:v15];
  }

  else
  {

    v16 = 0;
  }

  return v16;
}

+ (id)sandboxedURLByResolvingBookmarkData:(id)data relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  lCopy = l;
  dataCopy = data;
  v12 = [[self alloc] initByResolvingBookmarkData:dataCopy relativeToURL:lCopy bookmarkDataIsStale:stale error:error];

  return v12;
}

+ (id)sandboxedURLByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  lCopy = l;
  dataCopy = data;
  v14 = [[self alloc] initByResolvingBookmarkData:dataCopy options:options relativeToURL:lCopy bookmarkDataIsStale:stale error:error];

  return v14;
}

+ (void)sandboxedURLByResolvingBookmarkData:(id)data usingQueue:(id)queue timeout:(double)timeout options:(unint64_t)options relativeToURL:(id)l completionQueue:(id)completionQueue completionHandler:(id)handler
{
  dataCopy = data;
  lCopy = l;
  completionQueueCopy = completionQueue;
  handlerCopy = handler;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770291D4;
  block[3] = &unk_27A7018F0;
  v34 = v36;
  optionsCopy = options;
  v30 = dataCopy;
  v31 = lCopy;
  v19 = handlerCopy;
  v33 = v19;
  v20 = completionQueueCopy;
  v32 = v20;
  v21 = lCopy;
  v22 = dataCopy;
  dispatch_async(queue, block);
  v23 = dispatch_time(0, (fmax(timeout, 0.0) * 1000000000.0));
  v24 = v20;
  if (!v20)
  {
    v24 = dispatch_get_global_queue(0, 0);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_277029338;
  v26[3] = &unk_27A701918;
  v27 = v19;
  v28 = v36;
  v25 = v19;
  dispatch_after(v23, v24, v26);
  if (!v20)
  {
  }

  _Block_object_dispose(v36, 8);
}

- (void)dealloc
{
  if (self->_URLStartedAccessingSecurityScopedResource)
  {
    [(NSURL *)self->_URL stopAccessingSecurityScopedResource];
  }

  v3.receiver = self;
  v3.super_class = TSUSandboxedURL;
  [(TSUSandboxedURL *)&v3 dealloc];
}

- (id)normalize
{
  v3 = [(TSUSandboxedURL *)self URL];
  if (([v3 isFileURL] & 1) == 0)
  {
    p_super = self;
    goto LABEL_12;
  }

  path = [v3 path];
  if (path)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:path];
    if (v5 && ([v3 isEqual:v5] & 1) == 0)
    {
      originalSandboxedURLForNormalizing = [(TSUSandboxedURL *)self originalSandboxedURLForNormalizing];
      v7 = originalSandboxedURLForNormalizing;
      if (originalSandboxedURLForNormalizing == self || (-[TSUSandboxedURL URL](originalSandboxedURLForNormalizing, "URL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v5], v8, (v9 & 1) == 0))
      {
        v10 = [[TSUNormalizedSandboxedURL alloc] initWithURL:v5 originalSandboxedURL:v7];
      }

      else
      {
        v10 = v7;
      }

      p_super = &v10->super;

      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
  }

  p_super = self;
LABEL_11:

LABEL_12:

  return p_super;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TSUSandboxedURL allocWithZone:?], "initWithURL:", self->_URL];
  if (!v4)
  {
    sub_277112BC0(0, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = v4;
  hasSandboxAccess = [(TSUSandboxedURL *)v4 hasSandboxAccess];
  if (hasSandboxAccess != [(TSUSandboxedURL *)self hasSandboxAccess])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL copyWithZone:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:163 isFatal:0 description:"Sanboxing access didn't transfer as expected to sandboxed URL copy."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_URLStartedAccessingSecurityScopedResource)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p URL=%@, hasSandboxAccess=%@>", v5, self, self->_URL, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (v6)
  {
    v7 = [(TSUSandboxedURL *)self URL];
    v8 = [v6 URL];
    if ([v7 isEqual:v8])
    {
      hasSandboxAccess = [(TSUSandboxedURL *)self hasSandboxAccess];
      v10 = hasSandboxAccess ^ [v6 hasSandboxAccess] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(TSUSandboxedURL *)self URL];
  v4 = [v3 hash];
  hasSandboxAccess = [(TSUSandboxedURL *)self hasSandboxAccess];

  return v4 ^ hasSandboxAccess;
}

- (BOOL)isShared:(BOOL *)shared logContext:(id)context error:(id *)error
{
  bOOLValue = [0 BOOLValue];
  if (shared)
  {
    *shared = bOOLValue;
  }

  return 1;
}

- (BOOL)isUbiquitousPromised:(BOOL)promised
{
  v5 = 0;
  v3 = [(TSUSandboxedURL *)self isUbiquitous:&v5 promised:promised error:0];
  return v3 & v5;
}

- (BOOL)isUbiquitous:(BOOL *)ubiquitous promised:(BOOL)promised error:(id *)error
{
  promisedCopy = promised;
  v9 = [(TSUSandboxedURL *)self URL];
  v10 = *MEMORY[0x277CBE8B8];
  [v9 removeCachedResourceValueForKey:*MEMORY[0x277CBE8B8]];

  v11 = [(TSUSandboxedURL *)self URL];
  v12 = v11;
  if (!promisedCopy)
  {
    v33 = 0;
    v19 = [v11 checkResourceIsReachableAndReturnError:&v33];
    v14 = v33;

    if (v19)
    {
      v20 = [(TSUSandboxedURL *)self URL];
      v29 = 0;
      v30 = 0;
      v21 = [v20 getResourceValue:&v30 forKey:v10 error:&v29];
      v17 = v30;
      v22 = v29;

      v14 = v22;
      if (!v21)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

LABEL_17:
    if ([v14 tsu_isNoSuchFileError])
    {
      if (TSUDocumentLifecycleCat_init_token == -1)
      {
        v26 = 0;
        goto LABEL_28;
      }

      sub_277113B6C();
    }

    else
    {
      if (TSUDocumentLifecycleCat_init_token == -1)
      {
        v26 = 0;
        goto LABEL_28;
      }

      sub_277113B44();
    }

LABEL_27:
    v26 = 0;
LABEL_28:
    bOOLValue = 1;
    if (!ubiquitous)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v34 = 0;
  v13 = [v11 checkPromisedItemIsReachableAndReturnError:&v34];
  v14 = v34;

  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  v15 = [(TSUSandboxedURL *)self URL];
  v31 = v14;
  v32 = 0;
  v16 = [v15 getPromisedItemResourceValue:&v32 forKey:v10 error:&v31];
  v17 = v32;
  v18 = v31;

  v14 = v18;
  if ((v16 & 1) == 0)
  {
LABEL_4:
    if ([v14 tsu_isNoSuchFileError])
    {
      if (TSUDocumentLifecycleCat_init_token != -1)
      {
        sub_277113BBC();
      }
    }

    else if (TSUDocumentLifecycleCat_init_token != -1)
    {
      sub_277113B94();
    }

    goto LABEL_27;
  }

LABEL_10:
  if (!v17 && TSUDocumentLifecycleCat_init_token != -1)
  {
    sub_277113BE4();
  }

  bOOLValue = [v17 BOOLValue];

  if (v14)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL(TSUSandboxedURL_Additions) isUbiquitous:promised:error:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL_Additions.m"];
    [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:141 isFatal:0 description:"Not expecting success if an error was returned"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v26 = 1;
  if (ubiquitous)
  {
LABEL_29:
    *ubiquitous = bOOLValue & v26;
  }

LABEL_30:
  if (error)
  {
    v27 = v14;
    *error = v14;
  }

  return v26;
}

- (BOOL)isDocumentUploaded
{
  v4 = 0;
  v2 = [(TSUSandboxedURL *)self isDocumentUploaded:&v4 error:0];
  return v2 & v4;
}

- (BOOL)isDocumentUploaded:(BOOL *)uploaded error:(id *)error
{
  v28[3] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBE980];
  v8 = *MEMORY[0x277CBE988];
  v28[0] = *MEMORY[0x277CBE980];
  v28[1] = v8;
  v9 = *MEMORY[0x277CBE948];
  v28[2] = *MEMORY[0x277CBE948];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v11 = [(TSUSandboxedURL *)self URL];
  [v11 tsu_removeCachedResourceValueForKeys:v10];

  v12 = [(TSUSandboxedURL *)self URL];
  v27 = 0;
  v13 = [v12 resourceValuesForKeys:v10 error:&v27];
  v14 = v27;

  if (!v13)
  {
    if (TSUDefaultCat_init_token == -1)
    {
      v24 = 0;
      if (!uploaded)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_277113C0C();
      v24 = 0;
      if (!uploaded)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    *uploaded = v24;
    goto LABEL_11;
  }

  v15 = objc_opt_class();
  v16 = [v13 objectForKeyedSubscript:v7];
  v17 = TSUCheckedDynamicCast(v15, v16);

  v18 = objc_opt_class();
  v19 = [v13 objectForKeyedSubscript:v8];
  v20 = TSUCheckedDynamicCast(v18, v19);

  v21 = objc_opt_class();
  v22 = [v13 objectForKeyedSubscript:v9];
  v23 = TSUCheckedDynamicCast(v21, v22);

  if ([v17 BOOLValue] && (objc_msgSend(v20, "BOOLValue") & 1) == 0)
  {
    v24 = [*MEMORY[0x277CBE938] isEqualToString:v23];
  }

  else
  {
    v24 = 0;
  }

  if (uploaded)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (error)
  {
    v25 = v14;
    *error = v14;
  }

  return v13 != 0;
}

- (BOOL)isQuotaErrorPreventingUpload
{
  if ([(TSUSandboxedURL *)self isUbiquitous])
  {
    v3 = [(TSUSandboxedURL *)self URL];
    v18 = 0;
    v4 = *MEMORY[0x277CBE990];
    v17 = 0;
    v5 = [v3 getResourceValue:&v18 forKey:v4 error:&v17];
    v6 = v18;
    v7 = v17;

    if (v5)
    {
      if (v6)
      {
        v8 = [v6 code] == 4354;
LABEL_8:

        return v8;
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL(TSUSandboxedURL_Additions) isQuotaErrorPreventingUpload]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL_Additions.m"];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      domain = [v7 domain];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 204, 0, "Failed to get NSURLUbiquitousItemUploadingErrorKey with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v14, domain, [v7 code], v7);

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v8 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL(TSUSandboxedURL_Additions) isQuotaErrorPreventingUpload]"];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL_Additions.m"];
  [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:196 isFatal:0 description:"Document is not ubiquitous"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (BOOL)hasUnresolvedConflicts
{
  v4 = 0;
  v2 = [(TSUSandboxedURL *)self hasUnresolvedConflicts:&v4 error:0];
  return v2 & v4;
}

- (BOOL)hasUnresolvedConflicts:(BOOL *)conflicts error:(id *)error
{
  v7 = [(TSUSandboxedURL *)self URL];
  v8 = *MEMORY[0x277CBE958];
  [v7 removeCachedResourceValueForKey:*MEMORY[0x277CBE958]];

  v9 = [(TSUSandboxedURL *)self URL];
  v17 = 0;
  v18 = 0;
  v10 = [v9 getResourceValue:&v18 forKey:v8 error:&v17];
  v11 = v18;
  v12 = v17;
  v13 = v11;

  if (v10)
  {
    bOOLValue = [v13 BOOLValue];
    if (!conflicts)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (TSUDocumentLifecycleCat_init_token == -1)
  {
    bOOLValue = 0;
    if (!conflicts)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_277113C34();
  bOOLValue = 0;
  if (conflicts)
  {
LABEL_6:
    *conflicts = bOOLValue;
  }

LABEL_7:
  if (error)
  {
    v15 = v12;
    *error = v12;
  }

  return v10;
}

@end