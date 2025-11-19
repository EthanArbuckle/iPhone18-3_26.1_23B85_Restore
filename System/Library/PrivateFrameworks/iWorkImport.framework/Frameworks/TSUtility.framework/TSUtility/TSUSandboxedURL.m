@interface TSUSandboxedURL
+ (id)sandboxedURLByResolvingBookmarkData:(id)a3 options:(unint64_t)a4 relativeToURL:(id)a5 bookmarkDataIsStale:(BOOL *)a6 error:(id *)a7;
+ (id)sandboxedURLByResolvingBookmarkData:(id)a3 relativeToURL:(id)a4 bookmarkDataIsStale:(BOOL *)a5 error:(id *)a6;
+ (void)sandboxedURLByResolvingBookmarkData:(id)a3 usingQueue:(id)a4 timeout:(double)a5 options:(unint64_t)a6 relativeToURL:(id)a7 completionQueue:(id)a8 completionHandler:(id)a9;
- (BOOL)hasUnresolvedConflicts;
- (BOOL)hasUnresolvedConflicts:(BOOL *)a3 error:(id *)a4;
- (BOOL)isDocumentUploaded;
- (BOOL)isDocumentUploaded:(BOOL *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isQuotaErrorPreventingUpload;
- (BOOL)isShared:(BOOL *)a3 logContext:(id)a4 error:(id *)a5;
- (BOOL)isUbiquitous:(BOOL *)a3 promised:(BOOL)a4 error:(id *)a5;
- (BOOL)isUbiquitousPromised:(BOOL)a3;
- (NSString)description;
- (TSUSandboxedURL)init;
- (TSUSandboxedURL)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initByResolvingBookmarkData:(id)a3 options:(unint64_t)a4 relativeToURL:(id)a5 bookmarkDataIsStale:(BOOL *)a6 error:(id *)a7;
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

- (TSUSandboxedURL)initWithURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = TSUSandboxedURL;
    v5 = [(TSUSandboxedURL *)&v15 init];
    if (v5)
    {
      if ([v4 isFileURL])
      {
        v6 = [v4 copy];
        URL = v5->_URL;
        v5->_URL = v6;

        v8 = [v4 startAccessingSecurityScopedResource];
      }

      else
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL initWithURL:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
        [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:45 isFatal:0 description:"Sandboxed URL should not be initialized with a non-file URL. URL=%@", v4];

        +[TSUAssertionHandler logBacktraceThrottled];
        v12 = [v4 copy];
        v13 = v5->_URL;
        v5->_URL = v12;

        v8 = 0;
      }

      v5->_URLStartedAccessingSecurityScopedResource = v8;
    }

    self = v5;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)initByResolvingBookmarkData:(id)a3 options:(unint64_t)a4 relativeToURL:(id)a5 bookmarkDataIsStale:(BOOL *)a6 error:(id *)a7
{
  v12 = MEMORY[0x277CBEBC0];
  v13 = a5;
  v14 = a3;
  v15 = [[v12 alloc] initByResolvingBookmarkData:v14 options:a4 | 0x8000 relativeToURL:v13 bookmarkDataIsStale:a6 error:a7];

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

+ (id)sandboxedURLByResolvingBookmarkData:(id)a3 relativeToURL:(id)a4 bookmarkDataIsStale:(BOOL *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[a1 alloc] initByResolvingBookmarkData:v11 relativeToURL:v10 bookmarkDataIsStale:a5 error:a6];

  return v12;
}

+ (id)sandboxedURLByResolvingBookmarkData:(id)a3 options:(unint64_t)a4 relativeToURL:(id)a5 bookmarkDataIsStale:(BOOL *)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a3;
  v14 = [[a1 alloc] initByResolvingBookmarkData:v13 options:a4 relativeToURL:v12 bookmarkDataIsStale:a6 error:a7];

  return v14;
}

+ (void)sandboxedURLByResolvingBookmarkData:(id)a3 usingQueue:(id)a4 timeout:(double)a5 options:(unint64_t)a6 relativeToURL:(id)a7 completionQueue:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770291D4;
  block[3] = &unk_27A7018F0;
  v34 = v36;
  v35 = a6;
  v30 = v15;
  v31 = v16;
  v19 = v18;
  v33 = v19;
  v20 = v17;
  v32 = v20;
  v21 = v16;
  v22 = v15;
  dispatch_async(a4, block);
  v23 = dispatch_time(0, (fmax(a5, 0.0) * 1000000000.0));
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

  v4 = [v3 path];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v4];
    if (v5 && ([v3 isEqual:v5] & 1) == 0)
    {
      v6 = [(TSUSandboxedURL *)self originalSandboxedURLForNormalizing];
      v7 = v6;
      if (v6 == self || (-[TSUSandboxedURL URL](v6, "URL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v5], v8, (v9 & 1) == 0))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TSUSandboxedURL allocWithZone:?], "initWithURL:", self->_URL];
  if (!v4)
  {
    sub_277112BC0(0, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = v4;
  v13 = [(TSUSandboxedURL *)v4 hasSandboxAccess];
  if (v13 != [(TSUSandboxedURL *)self hasSandboxAccess])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [(TSUSandboxedURL *)self URL];
    v8 = [v6 URL];
    if ([v7 isEqual:v8])
    {
      v9 = [(TSUSandboxedURL *)self hasSandboxAccess];
      v10 = v9 ^ [v6 hasSandboxAccess] ^ 1;
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
  v5 = [(TSUSandboxedURL *)self hasSandboxAccess];

  return v4 ^ v5;
}

- (BOOL)isShared:(BOOL *)a3 logContext:(id)a4 error:(id *)a5
{
  v6 = [0 BOOLValue];
  if (a3)
  {
    *a3 = v6;
  }

  return 1;
}

- (BOOL)isUbiquitousPromised:(BOOL)a3
{
  v5 = 0;
  v3 = [(TSUSandboxedURL *)self isUbiquitous:&v5 promised:a3 error:0];
  return v3 & v5;
}

- (BOOL)isUbiquitous:(BOOL *)a3 promised:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = [(TSUSandboxedURL *)self URL];
  v10 = *MEMORY[0x277CBE8B8];
  [v9 removeCachedResourceValueForKey:*MEMORY[0x277CBE8B8]];

  v11 = [(TSUSandboxedURL *)self URL];
  v12 = v11;
  if (!v6)
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
    v23 = 1;
    if (!a3)
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

  v23 = [v17 BOOLValue];

  if (v14)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL(TSUSandboxedURL_Additions) isUbiquitous:promised:error:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL_Additions.m"];
    [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:141 isFatal:0 description:"Not expecting success if an error was returned"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v26 = 1;
  if (a3)
  {
LABEL_29:
    *a3 = v23 & v26;
  }

LABEL_30:
  if (a5)
  {
    v27 = v14;
    *a5 = v14;
  }

  return v26;
}

- (BOOL)isDocumentUploaded
{
  v4 = 0;
  v2 = [(TSUSandboxedURL *)self isDocumentUploaded:&v4 error:0];
  return v2 & v4;
}

- (BOOL)isDocumentUploaded:(BOOL *)a3 error:(id *)a4
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
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_277113C0C();
      v24 = 0;
      if (!a3)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    *a3 = v24;
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

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a4)
  {
    v25 = v14;
    *a4 = v14;
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
      v15 = [v7 domain];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 204, 0, "Failed to get NSURLUbiquitousItemUploadingErrorKey with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v14, v15, [v7 code], v7);

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

- (BOOL)hasUnresolvedConflicts:(BOOL *)a3 error:(id *)a4
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
    v14 = [v13 BOOLValue];
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (TSUDocumentLifecycleCat_init_token == -1)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_277113C34();
  v14 = 0;
  if (a3)
  {
LABEL_6:
    *a3 = v14;
  }

LABEL_7:
  if (a4)
  {
    v15 = v12;
    *a4 = v12;
  }

  return v10;
}

@end