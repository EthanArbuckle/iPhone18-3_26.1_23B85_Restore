@interface QLPreviewMultiPartURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (void)initialize;
- (void)startLoading;
@end

@implementation QLPreviewMultiPartURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = MEMORY[0x277CCAD10];

    [v3 registerClass:a1];
  }
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  v6 = [v5 scheme];

  if (v6)
  {
    v7 = [v4 mainDocumentURL];
    if ([QLPreviewURLProtocol isSafeURL:v7])
    {
      v8 = [a1 protocolScheme];
      v9 = [v8 caseInsensitiveCompare:v6] == 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)startLoading
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSURLProtocol *)self request];
  v4 = [v3 mainDocumentURL];
  v5 = [QLPreviewParts registeredPreviewForURL:v4];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v3 URL];
    v7 = [v6 resourceSpecifier];

    v8 = [v5 URLRequestForContentID:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [(NSURLProtocol *)self client];
      [v10 URLProtocol:self wasRedirectedToRequest:v9 redirectResponse:0];

      goto LABEL_11;
    }
  }

  v11 = MEMORY[0x277CDAB78];
  v12 = *(MEMORY[0x277CDAB78] + 160);
  if (!v12)
  {
    QLTInitLogging();
    v12 = *(v11 + 160);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v3 URL];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_2615AE000, v13, OS_LOG_TYPE_INFO, "Could not find resource for %@", &v15, 0xCu);
  }

  v7 = [(NSURLProtocol *)self client];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1008 userInfo:0];
  [v7 URLProtocol:self didFailWithError:v9];
LABEL_11:
}

@end