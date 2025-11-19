@interface QLPreviewParts
+ (id)registeredPreviewForURL:(id)a3;
+ (id)relativeStringForSafeURL:(id)a3;
+ (void)registerPreview:(id)a3;
+ (void)unregisterPreview:(id)a3;
- (BOOL)isRegisteredURL:(id)a3;
- (NSURLRequest)previewRequest;
- (id)newAttachmentURLWithID:(id)a3 mimeType:(id)a4 textEncoding:(id)a5;
- (id)newSafeAttachmentURLWithID:(id)a3 mimeType:(id)a4 textEncoding:(id)a5;
- (id)requestForURL:(id)a3;
- (id)voidRequest;
- (unsigned)cfEncodingForAttachmentURL:(id)a3;
- (void)appendData:(id)a3 forURL:(id)a4 lastChunk:(BOOL)a5;
- (void)computePreviewInThread;
- (void)dealloc;
- (void)registerURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5;
- (void)startAttachmentWithURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5;
- (void)startComputingPreview;
- (void)startDataRepresentationWithMimeType:(id)a3 textEncoding:(id)a4;
@end

@implementation QLPreviewParts

+ (void)registerPreview:(id)a3
{
  v4 = a3;
  objc_sync_enter(v4);
  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[QLPreviewParts registerPreview:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v4 setRegisteredURLs:v6];

  v7 = [objc_msgSend(a1 "urlProtocolClass")];
  [v4 setPreviewURL:v7];

  v8 = [a1 urlProtocolClass];
  v9 = [v4 previewURL];
  [v8 registerPreview:v4 forPreviewURL:v9];

  objc_sync_exit(v4);
}

+ (void)unregisterPreview:(id)a3
{
  v4 = a3;
  objc_sync_enter(v4);
  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[QLPreviewParts unregisterPreview:];
  }

  v6 = [a1 urlProtocolClass];
  v7 = [v4 registeredURLs];
  v8 = [v4 previewURL];
  [v6 unregisterURLs:v7 andPreviewURL:v8];

  [v4 setRegisteredURLs:0];
  [v4 setPreviewURL:0];
  [v4 setOutstandingURLs:0];
  [v4 setEncodingsForURLs:0];
  objc_sync_exit(v4);
}

+ (id)registeredPreviewForURL:(id)a3
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
  v8[2] = __42__QLPreviewParts_registeredPreviewForURL___block_invoke;
  v8[3] = &unk_279ADB5A0;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __42__QLPreviewParts_registeredPreviewForURL___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [urlToPreviews objectForKey:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

+ (id)relativeStringForSafeURL:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v4 host];
  v7 = [v3 stringWithFormat:@"%@://%@", v5, v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/", v7, @"x-apple-ql-magic"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/", v7, @"x-apple-ql-attachment"];
  v10 = [v4 absoluteString];

  v11 = [v10 hasPrefix:v8];
  v12 = v8;
  if ((v11 & 1) != 0 || ([v10 hasPrefix:v9] & 1) == 0 && (v14 = objc_msgSend(v10, "hasPrefix:", v7), v12 = v7, v14))
  {
    v13 = [v10 substringFromIndex:{objc_msgSend(v12, "length")}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = QLPreviewParts;
  [(QLPreviewParts *)&v2 dealloc];
}

- (void)startComputingPreview
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__QLPreviewParts_startComputingPreview__block_invoke;
  block[3] = &unk_279ADB330;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__QLPreviewParts_startComputingPreview__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) computePreviewInThread];

  objc_autoreleasePoolPop(v2);
}

- (void)computePreviewInThread
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_2615AE000, v1, OS_LOG_TYPE_ERROR, "Exception during preview computation of %@: %@", v2, 0x16u);
}

void __40__QLPreviewParts_computePreviewInThread__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained outstandingURLs];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v5 = [v4 initWithDomain:*MEMORY[0x277CCA738] code:-1005 userInfo:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [WeakRetained outstandingURLs];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v16;
      *&v8 = 138412290;
      v14 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = _log_2();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v14;
            v20 = v12;
            _os_log_impl(&dword_2615AE000, v13, OS_LOG_TYPE_INFO, "Discarding loading of %@", buf, 0xCu);
          }

          [objc_msgSend(objc_opt_class() "urlProtocolClass")];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }
  }

  [WeakRetained setOutstandingURLs:{0, v14}];
  [WeakRetained setEncodingsForURLs:0];
}

- (void)registerURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5
{
  registeredURLs = self->_registeredURLs;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(NSMutableSet *)registeredURLs addObject:v10];
  [objc_msgSend(objc_opt_class() "urlProtocolClass")];
}

- (void)startDataRepresentationWithMimeType:(id)a3 textEncoding:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(QLPreviewParts *)v7 previewURL];

  if (v8)
  {
    v9 = 134217984;
    if (v6)
    {
      v10 = CFStringConvertIANACharSetNameToEncoding(v6);
      if (v10 == -1)
      {
        v9 = 134217984;
      }

      else
      {
        v9 = v10;
      }
    }

    encodingsForURLs = v7->_encodingsForURLs;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    [(NSMutableDictionary *)encodingsForURLs setObject:v12 forKey:v7->_previewURL];

    v13 = [(QLPreviewParts *)v7 previewURL];
    [(QLPreviewParts *)v7 registerURL:v13 mimeType:v14 textEncoding:v6];
  }

  objc_sync_exit(v7);
}

- (void)startAttachmentWithURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(QLPreviewParts *)v10 previewURL];

  if (v11)
  {
    v12 = 134217984;
    if (v9)
    {
      v13 = CFStringConvertIANACharSetNameToEncoding(v9);
      if (v13 == -1)
      {
        v12 = 134217984;
      }

      else
      {
        v12 = v13;
      }
    }

    encodingsForURLs = v10->_encodingsForURLs;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    [(NSMutableDictionary *)encodingsForURLs setObject:v15 forKey:v16];

    [(NSMutableSet *)v10->_outstandingURLs addObject:v16];
    [(QLPreviewParts *)v10 registerURL:v16 mimeType:v8 textEncoding:v9];
  }

  objc_sync_exit(v10);
}

- (BOOL)isRegisteredURL:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)v5->_registeredURLs containsObject:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)newAttachmentURLWithID:(id)a3 mimeType:(id)a4 textEncoding:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_msgSend(objc_opt_class() "urlProtocolClass")];
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(QLPreviewParts *)v12 previewURL];

  if (v13)
  {
    v14 = 134217984;
    if (v10)
    {
      v15 = CFStringConvertIANACharSetNameToEncoding(v10);
      if (v15 == -1)
      {
        v14 = 134217984;
      }

      else
      {
        v14 = v15;
      }
    }

    encodingsForURLs = v12->_encodingsForURLs;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    [(NSMutableDictionary *)encodingsForURLs setObject:v17 forKey:v11];

    [(NSMutableSet *)v12->_outstandingURLs addObject:v11];
    [(QLPreviewParts *)v12 registerURL:v11 mimeType:v9 textEncoding:v10];
  }

  objc_sync_exit(v12);

  return v11;
}

- (id)newSafeAttachmentURLWithID:(id)a3 mimeType:(id)a4 textEncoding:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(QLPreviewParts *)v11 previewURL];

  if (v12)
  {
    v13 = [objc_opt_class() urlProtocolClass];
    v14 = [(QLPreviewParts *)v11 previewURL];
    v15 = [v13 newURLWithContentID:v8 baseURL:v14];
    v16 = 134217984;

    if (v10)
    {
      v17 = CFStringConvertIANACharSetNameToEncoding(v10);
      if (v17 == -1)
      {
        v16 = 134217984;
      }

      else
      {
        v16 = v17;
      }
    }

    encodingsForURLs = v11->_encodingsForURLs;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
    [(NSMutableDictionary *)encodingsForURLs setObject:v19 forKey:v15];

    [(NSMutableSet *)v11->_outstandingURLs addObject:v15];
    [(QLPreviewParts *)v11 registerURL:v15 mimeType:v9 textEncoding:v10];
    objc_sync_exit(v11);
  }

  else
  {
    objc_sync_exit(v11);

    v15 = [objc_msgSend(objc_opt_class() "urlProtocolClass")];
  }

  return v15;
}

- (void)appendData:(id)a3 forURL:(id)a4 lastChunk:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(QLPreviewParts *)v9 previewURL];

  if (v10)
  {
    if (!v8)
    {
      v8 = [(QLPreviewParts *)v9 previewURL];
    }

    [objc_msgSend(objc_opt_class() "urlProtocolClass")];
    if (v5)
    {
      [(NSMutableSet *)v9->_outstandingURLs removeObject:v8];
    }
  }

  objc_sync_exit(v9);
}

- (NSURLRequest)previewRequest
{
  v3 = objc_alloc(MEMORY[0x277CCAD20]);
  v4 = [(QLPreviewParts *)self previewURL];
  v5 = [v3 initWithURL:v4 cachePolicy:1 timeoutInterval:20.0];

  return v5;
}

- (id)voidRequest
{
  v2 = objc_alloc(MEMORY[0x277CCAD20]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"about:"];
  v4 = [v2 initWithURL:v3];

  return v4;
}

- (id)requestForURL:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(QLPreviewParts *)v6 previewURL];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v5];
      [v8 setHTTPShouldHandleCookies:0];
      [v8 setMainDocumentURL:v7];
    }

    else
    {
      v3 = [(QLPreviewParts *)v6 voidRequest];
      v8 = 0;
    }

    objc_sync_exit(v6);
    if (v7)
    {
      v3 = v8;
    }
  }

  else
  {
    v3 = [(QLPreviewParts *)self voidRequest];
  }

  return v3;
}

- (unsigned)cfEncodingForAttachmentURL:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(QLPreviewParts *)v5 previewURL];

  if (v6)
  {
    if (!v4)
    {
      v4 = [(QLPreviewParts *)v5 previewURL];
    }

    v7 = [(NSMutableDictionary *)v5->_encodingsForURLs objectForKey:v4];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

  v8 = 134217984;
  if (v6 && v7)
  {
    v8 = [v7 unsignedIntValue];
  }

  return v8;
}

@end