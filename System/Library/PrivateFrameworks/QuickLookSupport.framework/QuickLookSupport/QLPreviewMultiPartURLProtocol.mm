@interface QLPreviewMultiPartURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (void)initialize;
- (void)startLoading;
@end

@implementation QLPreviewMultiPartURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x277CCAD10];

    [v3 registerClass:self];
  }
}

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  scheme = [v5 scheme];

  if (scheme)
  {
    mainDocumentURL = [requestCopy mainDocumentURL];
    if ([QLPreviewURLProtocol isSafeURL:mainDocumentURL])
    {
      protocolScheme = [self protocolScheme];
      v9 = [protocolScheme caseInsensitiveCompare:scheme] == 0;
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
  request = [(NSURLProtocol *)self request];
  mainDocumentURL = [request mainDocumentURL];
  v5 = [QLPreviewParts registeredPreviewForURL:mainDocumentURL];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [request URL];
    resourceSpecifier = [v6 resourceSpecifier];

    v8 = [v5 URLRequestForContentID:resourceSpecifier];
    if (v8)
    {
      v9 = v8;
      client = [(NSURLProtocol *)self client];
      [client URLProtocol:self wasRedirectedToRequest:v9 redirectResponse:0];

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
    v14 = [request URL];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_2615AE000, v13, OS_LOG_TYPE_INFO, "Could not find resource for %@", &v15, 0xCu);
  }

  resourceSpecifier = [(NSURLProtocol *)self client];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1008 userInfo:0];
  [resourceSpecifier URLProtocol:self didFailWithError:v9];
LABEL_11:
}

@end