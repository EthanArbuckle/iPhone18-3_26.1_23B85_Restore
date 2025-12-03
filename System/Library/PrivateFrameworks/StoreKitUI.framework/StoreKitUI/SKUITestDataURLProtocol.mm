@interface SKUITestDataURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (void)startLoading;
@end

@implementation SKUITestDataURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITestDataURLProtocol *)v4 canInitWithRequest:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [requestCopy URL];
  scheme = [v13 scheme];

  LOBYTE(v13) = [scheme isEqualToString:@"x-apple-storekitui-test-data"];
  objc_autoreleasePoolPop(v12);

  return v13;
}

+ (id)canonicalRequestForRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITestDataURLProtocol *)v4 canonicalRequestForRequest:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return requestCopy;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITestDataURLProtocol *)v4 requestIsCacheEquivalent:v5 toRequest:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (void)startLoading
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITestDataURLProtocol *)v3 startLoading:v4];
      }
    }
  }

  v11 = objc_autoreleasePoolPush();
  request = [(NSURLProtocol *)self request];
  v13 = [request URL];

  resourceSpecifier = [v13 resourceSpecifier];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  resourcePath = [mainBundle resourcePath];
  v17 = [resourcePath stringByAppendingPathComponent:resourceSpecifier];

  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v17];
  if (v18)
  {
    client = v18;
  }

  else
  {
    v20 = SKUIBundle();
    resourcePath2 = [v20 resourcePath];
    v22 = [resourcePath2 stringByAppendingPathComponent:resourceSpecifier];

    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v22];
    if (!v23)
    {
      client = [(NSURLProtocol *)self client];
      v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:0 userInfo:0];
      [client URLProtocol:self didFailWithError:v52];
      v17 = v22;
      goto LABEL_25;
    }

    client = v23;
    v17 = v22;
  }

  pathExtension = [resourceSpecifier pathExtension];
  if (pathExtension)
  {
    v25 = pathExtension;
    v26 = SKUIMobileCoreServicesFramework();
    v27 = *SKUIWeakLinkedSymbolForString("kUTTagClassFilenameExtension", v26);
    if (os_variant_has_internal_content())
    {
      if (_os_feature_enabled_impl())
      {
        v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
        if (v28)
        {
          [(SKUITestDataURLProtocol *)v28 startLoading:v29];
        }
      }
    }

    v36 = SKUIMobileCoreServicesFramework();
    v37 = SKUIWeakLinkedSymbolForString("UTTypeCreatePreferredIdentifierForTag", v36);
    if (v37 && (v38 = v37(v27, v25, 0)) != 0)
    {
      v39 = v38;
      v40 = SKUIMobileCoreServicesFramework();
      v41 = *SKUIWeakLinkedSymbolForString("kUTTagClassMIMEType", v40);
      if (os_variant_has_internal_content())
      {
        if (_os_feature_enabled_impl())
        {
          v42 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v42)
          {
            [(SKUITestDataURLProtocol *)v42 startLoading:v43];
          }
        }
      }

      v50 = SKUIMobileCoreServicesFramework();
      v51 = SKUIWeakLinkedSymbolForString("UTTypeCopyPreferredTagWithClass", v50);
      if (v51)
      {
        v52 = v51(v39, v41);
      }

      else
      {
        v52 = 0;
      }

      CFRelease(v39);
      CFRelease(v25);
      if (v52)
      {
        goto LABEL_24;
      }
    }

    else
    {
      CFRelease(v25);
    }
  }

  v52 = @"text/xml+itml";
LABEL_24:
  client2 = [(NSURLProtocol *)self client];
  v54 = [objc_alloc(MEMORY[0x277CBABA8]) initWithURL:v13 MIMEType:v52 expectedContentLength:objc_msgSend(client textEncodingName:{"length"), 0}];
  [client2 URLProtocol:self didReceiveResponse:v54 cacheStoragePolicy:2];
  [client2 URLProtocol:self didLoadData:client];
  [client2 URLProtocolDidFinishLoading:self];

LABEL_25:
  objc_autoreleasePoolPop(v11);
}

@end