@interface SKUITestDataURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
+ (id)canonicalRequestForRequest:(id)a3;
- (void)startLoading;
@end

@implementation SKUITestDataURLProtocol

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = a3;
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
  v13 = [v3 URL];
  v14 = [v13 scheme];

  LOBYTE(v13) = [v14 isEqualToString:@"x-apple-storekitui-test-data"];
  objc_autoreleasePoolPop(v12);

  return v13;
}

+ (id)canonicalRequestForRequest:(id)a3
{
  v3 = a3;
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

  return v3;
}

+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4
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
  v12 = [(NSURLProtocol *)self request];
  v13 = [v12 URL];

  v14 = [v13 resourceSpecifier];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 resourcePath];
  v17 = [v16 stringByAppendingPathComponent:v14];

  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v17];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = SKUIBundle();
    v21 = [v20 resourcePath];
    v22 = [v21 stringByAppendingPathComponent:v14];

    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v22];
    if (!v23)
    {
      v19 = [(NSURLProtocol *)self client];
      v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:0 userInfo:0];
      [v19 URLProtocol:self didFailWithError:v52];
      v17 = v22;
      goto LABEL_25;
    }

    v19 = v23;
    v17 = v22;
  }

  v24 = [v14 pathExtension];
  if (v24)
  {
    v25 = v24;
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
  v53 = [(NSURLProtocol *)self client];
  v54 = [objc_alloc(MEMORY[0x277CBABA8]) initWithURL:v13 MIMEType:v52 expectedContentLength:objc_msgSend(v19 textEncodingName:{"length"), 0}];
  [v53 URLProtocol:self didReceiveResponse:v54 cacheStoragePolicy:2];
  [v53 URLProtocol:self didLoadData:v19];
  [v53 URLProtocolDidFinishLoading:self];

LABEL_25:
  objc_autoreleasePoolPop(v11);
}

@end