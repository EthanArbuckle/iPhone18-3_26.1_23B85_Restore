@interface QLPreviewURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)isSafeRequest:(id)a3;
+ (BOOL)isSafeURL:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
+ (id)_errorForAbort;
+ (id)_errorForCancel;
+ (id)canonicalRequestForRequest:(id)a3;
+ (id)errorForURL:(id)a3;
+ (id)mimeTypeForAttachmentURL:(id)a3;
+ (id)newURLWithContentID:(id)a3 baseURL:(id)a4;
+ (id)newUniqueURLWithName:(id)a3;
+ (void)_unregisterURL:(id)a3;
+ (void)appendData:(id)a3 forURL:(id)a4 lastChunk:(BOOL)a5;
+ (void)initialize;
+ (void)registerPreview:(id)a3 forPreviewURL:(id)a4;
+ (void)registerURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5;
+ (void)setError:(id)a3 forURL:(id)a4;
+ (void)startLoadingProtocol:(id)a3;
+ (void)stopLoadingProtocol:(id)a3 isCancel:(BOOL)a4;
+ (void)unregisterURLs:(id)a3 andPreviewURL:(id)a4;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation QLPreviewURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = urlToPreviews;
    urlToPreviews = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = urlToAttachmentData;
    urlToAttachmentData = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = urlToProtocols;
    urlToProtocols = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = urlToAttachmentDescriptions;
    urlToAttachmentDescriptions = v9;

    [MEMORY[0x277CCAD10] registerClass:a1];
    protocolQueue = dispatch_queue_create("quicklook.urlloading", 0);

    MEMORY[0x2821F96F8]();
  }
}

+ (id)newUniqueURLWithName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  if (v4)
  {
    v7 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v8 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = MEMORY[0x277CCACA8];
    v10 = [a1 protocolScheme];
    v11 = [v9 stringWithFormat:@"%@://%@/%@/%@", v10, v6, @"x-apple-ql-magic", v8];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v8 = [a1 protocolScheme];
    v11 = [v12 stringWithFormat:@"%@://%@/%@/", v8, v6, @"x-apple-ql-magic"];
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:v11];

  return v13;
}

+ (id)newURLWithContentID:(id)a3 baseURL:(id)a4
{
  v6 = MEMORY[0x277CCA900];
  v7 = a4;
  v8 = a3;
  v9 = [v6 URLPathAllowedCharacterSet];
  v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [v7 host];

  v12 = [a1 protocolScheme];
  v13 = CFStringCreateWithFormat(0, 0, @"%@://%@/%@/%@", v12, v11, @"x-apple-ql-attachment", v10);

  v14 = CFURLCreateWithString(0, v13, 0);
  CFRelease(v13);

  return v14;
}

+ (void)registerPreview:(id)a3 forPreviewURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 hash];
  v7 = protocolQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__QLPreviewURLProtocol_registerPreview_forPreviewURL___block_invoke;
  v10[3] = &unk_279ADB358;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

uint64_t __54__QLPreviewURLProtocol_registerPreview_forPreviewURL___block_invoke(uint64_t a1)
{
  v2 = _log_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__QLPreviewURLProtocol_registerPreview_forPreviewURL___block_invoke_cold_1();
  }

  return [urlToPreviews setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

+ (void)registerURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = protocolQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__QLPreviewURLProtocol_registerURL_mimeType_textEncoding___block_invoke;
  block[3] = &unk_279ADB680;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_sync(v10, block);
}

void __58__QLPreviewURLProtocol_registerURL_mimeType_textEncoding___block_invoke(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = _log_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__QLPreviewURLProtocol_registerURL_mimeType_textEncoding___block_invoke_cold_1();
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  v5 = a1[5];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"mimeType"];
  }

  v6 = a1[6];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"textEncoding"];
  }

  v21 = v4;
  [urlToAttachmentDescriptions setObject:v4 forKey:a1[4]];
  v7 = [urlToProtocols objectForKey:a1[4]];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [v12 client];
        v14 = _log_2();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = a1[4];
          v17 = a1[5];
          if (!v17)
          {
            v17 = @"unknown";
          }

          v18 = a1[6];
          if (!v18)
          {
            v18 = @"unknown";
          }

          *buf = 138412802;
          v27 = v16;
          v28 = 2112;
          v29 = v17;
          v30 = 2112;
          v31 = v18;
          _os_log_debug_impl(&dword_2615AE000, v14, OS_LOG_TYPE_DEBUG, "Will send response for %@ of type %@ - %@", buf, 0x20u);
        }

        v15 = [objc_allocWithZone(MEMORY[0x277CCAD28]) initWithURL:a1[4] MIMEType:a1[5] expectedContentLength:-1 textEncodingName:a1[6]];
        [v13 URLProtocol:v12 didReceiveResponse:v15 cacheStoragePolicy:2];

        ++v11;
      }

      while (v9 != v11);
      v19 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
      v9 = v19;
    }

    while (v19);
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [urlToAttachmentData setObject:v20 forKey:a1[4]];
}

+ (id)_errorForAbort
{
  v2 = _errorForAbort_result;
  if (!_errorForAbort_result)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v4 = [v3 initWithDomain:*MEMORY[0x277CCA738] code:-1008 userInfo:0];
    v5 = _errorForAbort_result;
    _errorForAbort_result = v4;

    v2 = _errorForAbort_result;
  }

  return v2;
}

+ (id)_errorForCancel
{
  v2 = _errorForCancel_result;
  if (!_errorForCancel_result)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v4 = [v3 initWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:0];
    v5 = _errorForCancel_result;
    _errorForCancel_result = v4;

    v2 = _errorForCancel_result;
  }

  return v2;
}

+ (void)_unregisterURL:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[QLPreviewURLProtocol _unregisterURL:];
  }

  v6 = [urlToProtocols objectForKey:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 138412546;
    v16 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 client];
        v14 = _log_2();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = v16;
          v22 = v12;
          v23 = 2112;
          v24 = v4;
          _os_log_debug_impl(&dword_2615AE000, v14, OS_LOG_TYPE_DEBUG, "Aborting %@ loading %@", buf, 0x16u);
        }

        v15 = [a1 _errorForAbort];
        [v13 URLProtocol:v12 didFailWithError:v15];
      }

      v9 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  [urlToProtocols removeObjectForKey:v4];
  [urlToAttachmentData removeObjectForKey:v4];
  [urlToAttachmentDescriptions removeObjectForKey:v4];
}

+ (void)unregisterURLs:(id)a3 andPreviewURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = protocolQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__QLPreviewURLProtocol_unregisterURLs_andPreviewURL___block_invoke;
  block[3] = &unk_279ADB6A8;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

uint64_t __53__QLPreviewURLProtocol_unregisterURLs_andPreviewURL___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 48) _unregisterURL:{*(*(&v9 + 1) + 8 * v6++), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = _log_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __53__QLPreviewURLProtocol_unregisterURLs_andPreviewURL___block_invoke_cold_1();
  }

  return [urlToPreviews removeObjectForKey:*(a1 + 40)];
}

+ (void)appendData:(id)a3 forURL:(id)a4 lastChunk:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  [v8 hash];
  v9 = protocolQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__QLPreviewURLProtocol_appendData_forURL_lastChunk___block_invoke;
  block[3] = &unk_279ADB6D0;
  v13 = v8;
  v14 = v7;
  v15 = a5;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

void __52__QLPreviewURLProtocol_appendData_forURL_lastChunk___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [urlToProtocols objectForKey:*(a1 + 32)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    *&v4 = 134218498;
    v20 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [v8 client];
        v10 = *(a1 + 40);
        if (v10 && [v10 length])
        {
          v11 = _log_2();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v14 = [*(a1 + 40) length];
            v15 = *(a1 + 32);
            v16 = "";
            if (*(a1 + 48))
            {
              v16 = "(last chunk)";
            }

            *buf = v20;
            v26 = v14;
            v27 = 2112;
            v28 = v15;
            v29 = 2080;
            v30 = v16;
            _os_log_debug_impl(&dword_2615AE000, v11, OS_LOG_TYPE_DEBUG, "Appending %lu bytes for %@%s", buf, 0x20u);
          }

          [v9 URLProtocol:v8 didLoadData:*(a1 + 40)];
        }

        if (*(a1 + 48) == 1)
        {
          v12 = _log_2();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1 + 32);
            *buf = 138412290;
            v26 = v13;
            _os_log_debug_impl(&dword_2615AE000, v12, OS_LOG_TYPE_DEBUG, "Finishing load of %@", buf, 0xCu);
          }

          [v9 URLProtocolDidFinishLoading:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v17 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
      v5 = v17;
    }

    while (v17);
  }

  if (*(a1 + 48) == 1)
  {
    [urlToProtocols removeObjectForKey:*(a1 + 32)];
  }

  if (*(a1 + 40))
  {
    v18 = [urlToAttachmentData objectForKey:*(a1 + 32)];
    [v18 appendData:*(a1 + 40)];
  }

  if (*(a1 + 48) == 1)
  {
    v19 = [urlToAttachmentDescriptions objectForKey:*(a1 + 32)];
    [v19 setObject:*MEMORY[0x277CBED28] forKey:@"complete"];
  }
}

+ (void)setError:(id)a3 forURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 hash];
  v7 = protocolQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__QLPreviewURLProtocol_setError_forURL___block_invoke;
  v10[3] = &unk_279ADB358;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void __40__QLPreviewURLProtocol_setError_forURL___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [urlToProtocols objectForKey:*(a1 + 32)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 client];
        v10 = _log_2();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 32);
          v11 = *(a1 + 40);
          *buf = v14;
          v20 = v11;
          v21 = 2112;
          v22 = v8;
          v23 = 2112;
          v24 = v12;
          _os_log_debug_impl(&dword_2615AE000, v10, OS_LOG_TYPE_DEBUG, "Notifying %@ for %@ loading %@", buf, 0x20u);
        }

        [v9 URLProtocol:v8 didFailWithError:*(a1 + 40)];
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  [urlToProtocols removeObjectForKey:*(a1 + 32)];
  v13 = [urlToAttachmentDescriptions objectForKey:*(a1 + 32)];
  [v13 setObject:*MEMORY[0x277CBED28] forKey:@"complete"];
  [v13 setObject:*(a1 + 40) forKey:@"error"];
}

+ (id)errorForURL:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v4 = protocolQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__QLPreviewURLProtocol_errorForURL___block_invoke;
  v8[3] = &unk_279ADB6F8;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __36__QLPreviewURLProtocol_errorForURL___block_invoke(uint64_t a1)
{
  v6 = [urlToAttachmentDescriptions objectForKey:*(a1 + 32)];
  v2 = [v6 objectForKey:@"error"];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)startLoadingProtocol:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 URL];
  [v5 hash];
  v6 = protocolQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke;
  v9[3] = &unk_279ADB358;
  v10 = v3;
  v11 = v5;
  v7 = v5;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke(uint64_t a1)
{
  v2 = _log_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_1();
  }

  v3 = (a1 + 40);
  v4 = [urlToAttachmentDescriptions objectForKey:*(a1 + 40)];
  v5 = [*(a1 + 32) client];
  if (v4)
  {
    v6 = [v4 objectForKey:@"error"];
    v7 = [urlToAttachmentData objectForKey:*v3];
    v8 = v7;
    if (v6 && (!v7 || ![v7 length]))
    {
      goto LABEL_15;
    }

    v9 = _log_2();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_2(a1 + 40, v4);
    }

    v10 = objc_allocWithZone(MEMORY[0x277CCAD28]);
    v11 = *(a1 + 40);
    v12 = [v4 objectForKey:@"mimeType"];
    v13 = [v4 objectForKey:@"textEncoding"];
    v14 = [v10 initWithURL:v11 MIMEType:v12 expectedContentLength:-1 textEncodingName:v13];

    [v5 URLProtocol:*(a1 + 32) didReceiveResponse:v14 cacheStoragePolicy:2];
    if (v8 && [v8 length])
    {
      v15 = _log_2();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_3(v8);
      }

      [v5 URLProtocol:*(a1 + 32) didLoadData:v8];
    }

    if (v6)
    {
LABEL_15:
      v16 = _log_2();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_4();
      }

      [v5 URLProtocol:*(a1 + 32) didFailWithError:v6];
    }

    v17 = [v4 objectForKey:@"complete"];
    v18 = *MEMORY[0x277CBED28];

    v19 = _log_2();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (v17 != v18)
    {
      if (v20)
      {
        __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_5();
      }

LABEL_26:
      v6 = [urlToProtocols objectForKey:*v3];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
        [urlToProtocols setObject:v6 forKey:*v3];
      }

      [v6 addObject:*(a1 + 32)];
      goto LABEL_35;
    }

    if (v20)
    {
      __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_6();
    }

    [v5 URLProtocolDidFinishLoading:*(a1 + 32)];
  }

  else
  {
    v6 = [urlToPreviews objectForKey:*v3];
    v21 = _log_2();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v22)
      {
        __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_7();
      }

      [v6 startComputingPreview];
      goto LABEL_26;
    }

    if (v22)
    {
      __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_8();
    }

    v23 = MEMORY[0x277CBEAC0];
    v24 = [*(a1 + 40) absoluteString];
    v6 = [v23 dictionaryWithObjectsAndKeys:{v24, *MEMORY[0x277CCA758], 0}];

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1008 userInfo:v6];
    [v5 URLProtocol:*(a1 + 32) didFailWithError:v25];
  }

LABEL_35:
}

+ (void)stopLoadingProtocol:(id)a3 isCancel:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 request];
  v8 = [v7 URL];
  [v8 hash];
  v9 = protocolQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__QLPreviewURLProtocol_stopLoadingProtocol_isCancel___block_invoke;
  v12[3] = &unk_279ADB720;
  v16 = a4;
  v13 = v8;
  v14 = v6;
  v15 = a1;
  v10 = v6;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __53__QLPreviewURLProtocol_stopLoadingProtocol_isCancel___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [urlToPreviews objectForKey:*(a1 + 32)];
    if (v2)
    {
      v3 = [urlToAttachmentDescriptions objectForKey:*(a1 + 32)];
      v4 = [v3 objectForKey:@"complete"];
      v5 = *MEMORY[0x277CBED10];

      if (v4 == v5)
      {
        [v2 cancel];
      }
    }
  }

  v6 = (a1 + 32);
  v7 = [urlToProtocols objectForKey:*(a1 + 32)];
  v8 = v7;
  if (v7)
  {
    v9 = (a1 + 40);
    if ([v7 containsObject:*(a1 + 40)])
    {
      v10 = [*(a1 + 40) client];
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      if (*(a1 + 56))
      {
        [v11 _errorForCancel];
      }

      else
      {
        [v11 _errorForAbort];
      }
      v13 = ;
      [v10 URLProtocol:v12 didFailWithError:v13];

      [v8 removeObject:*v9];
      if (![v8 count])
      {
        [urlToProtocols removeObjectForKey:*v6];
      }

      v14 = _log_2();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __53__QLPreviewURLProtocol_stopLoadingProtocol_isCancel___block_invoke_cold_1();
      }
    }
  }
}

void __45__QLPreviewURLProtocol__dumpPendingProtocols__block_invoke()
{
  v0 = _log_2();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __45__QLPreviewURLProtocol__dumpPendingProtocols__block_invoke_cold_1();
  }
}

+ (BOOL)isSafeURL:(id)a3
{
  v4 = [a3 scheme];
  if (v4)
  {
    v5 = [a1 protocolScheme];
    v6 = [v5 caseInsensitiveCompare:v4] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isSafeRequest:(id)a3
{
  v4 = [a3 URL];
  LOBYTE(a1) = [a1 isSafeURL:v4];

  return a1;
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 isSafeRequest:v4];
  v6 = _log_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [QLPreviewURLProtocol canInitWithRequest:v4];
  }

  return v5;
}

+ (id)canonicalRequestForRequest:(id)a3
{
  v3 = a3;
  v4 = _log_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLPreviewURLProtocol canonicalRequestForRequest:v3];
  }

  return v3;
}

+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 URL];
  v8 = [v6 URL];
  v9 = [v7 isEqual:v8];

  v10 = _log_2();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v5 URL];
    v13 = [v6 URL];
    v14 = v13;
    v15 = "NO";
    v16 = 138412802;
    v17 = v12;
    if (v9)
    {
      v15 = "YES";
    }

    v18 = 2112;
    v19 = v13;
    v20 = 2080;
    v21 = v15;
    _os_log_debug_impl(&dword_2615AE000, v10, OS_LOG_TYPE_DEBUG, "Testing cache equivalent %@ vs. %@: %s", &v16, 0x20u);
  }

  return v9;
}

+ (id)mimeTypeForAttachmentURL:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v4 = protocolQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__QLPreviewURLProtocol_mimeTypeForAttachmentURL___block_invoke;
  v8[3] = &unk_279ADB6F8;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __49__QLPreviewURLProtocol_mimeTypeForAttachmentURL___block_invoke(uint64_t a1)
{
  v5 = [urlToAttachmentDescriptions objectForKey:*(a1 + 32)];
  v2 = [v5 objectForKey:@"mimeType"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)startLoading
{
  v3 = objc_opt_class();

  [v3 startLoadingProtocol:self];
}

- (void)stopLoading
{
  v3 = objc_opt_class();

  [v3 stopLoadingProtocol:self];
}

void __54__QLPreviewURLProtocol_registerPreview_forPreviewURL___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = v0;
  _os_log_debug_impl(&dword_2615AE000, v1, OS_LOG_TYPE_DEBUG, "Registering %@ at url %@", v2, 0x16u);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_6(v0);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"mimeType"];
  v4 = [a2 objectForKey:@"textEncoding"];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_3(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_2615AE000, v0, v1, "  Found resource at %@ with error %@");
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_2615AE000, v0, v1, "  Resource at %@ is not yet complete", v2, v3, v4, v5, v6);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_2615AE000, v0, v1, "  Resource at %@ is already complete", v2, v3, v4, v5, v6);
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5(&dword_2615AE000, v0, v1, "  Starting computing %@ (url: %@)");
}

void __45__QLPreviewURLProtocol_startLoadingProtocol___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_2615AE000, v0, v1, "  No resource available at %@", v2, v3, v4, v5, v6);
}

void __53__QLPreviewURLProtocol_stopLoadingProtocol_isCancel___block_invoke_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_6(v0);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __45__QLPreviewURLProtocol__dumpPendingProtocols__block_invoke_cold_1()
{
  [urlToProtocols count];
  v0 = [urlToProtocols allKeys];
  v6 = [v0 description];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)canInitWithRequest:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 URL];
  v3 = [a1 mainDocumentURL];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

+ (void)canonicalRequestForRequest:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end