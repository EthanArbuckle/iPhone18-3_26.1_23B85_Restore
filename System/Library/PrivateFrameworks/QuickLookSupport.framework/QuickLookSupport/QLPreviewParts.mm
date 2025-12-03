@interface QLPreviewParts
+ (id)registeredPreviewForURL:(id)l;
+ (id)relativeStringForSafeURL:(id)l;
+ (void)registerPreview:(id)preview;
+ (void)unregisterPreview:(id)preview;
- (BOOL)isRegisteredURL:(id)l;
- (NSURLRequest)previewRequest;
- (id)newAttachmentURLWithID:(id)d mimeType:(id)type textEncoding:(id)encoding;
- (id)newSafeAttachmentURLWithID:(id)d mimeType:(id)type textEncoding:(id)encoding;
- (id)requestForURL:(id)l;
- (id)voidRequest;
- (unsigned)cfEncodingForAttachmentURL:(id)l;
- (void)appendData:(id)data forURL:(id)l lastChunk:(BOOL)chunk;
- (void)computePreviewInThread;
- (void)dealloc;
- (void)registerURL:(id)l mimeType:(id)type textEncoding:(id)encoding;
- (void)startAttachmentWithURL:(id)l mimeType:(id)type textEncoding:(id)encoding;
- (void)startComputingPreview;
- (void)startDataRepresentationWithMimeType:(id)type textEncoding:(id)encoding;
@end

@implementation QLPreviewParts

+ (void)registerPreview:(id)preview
{
  previewCopy = preview;
  objc_sync_enter(previewCopy);
  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[QLPreviewParts registerPreview:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [previewCopy setRegisteredURLs:v6];

  v7 = [objc_msgSend(self "urlProtocolClass")];
  [previewCopy setPreviewURL:v7];

  urlProtocolClass = [self urlProtocolClass];
  previewURL = [previewCopy previewURL];
  [urlProtocolClass registerPreview:previewCopy forPreviewURL:previewURL];

  objc_sync_exit(previewCopy);
}

+ (void)unregisterPreview:(id)preview
{
  previewCopy = preview;
  objc_sync_enter(previewCopy);
  v5 = _log_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[QLPreviewParts unregisterPreview:];
  }

  urlProtocolClass = [self urlProtocolClass];
  registeredURLs = [previewCopy registeredURLs];
  previewURL = [previewCopy previewURL];
  [urlProtocolClass unregisterURLs:registeredURLs andPreviewURL:previewURL];

  [previewCopy setRegisteredURLs:0];
  [previewCopy setPreviewURL:0];
  [previewCopy setOutstandingURLs:0];
  [previewCopy setEncodingsForURLs:0];
  objc_sync_exit(previewCopy);
}

+ (id)registeredPreviewForURL:(id)l
{
  lCopy = l;
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
  v9 = lCopy;
  v10 = &v11;
  v5 = lCopy;
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

+ (id)relativeStringForSafeURL:(id)l
{
  v3 = MEMORY[0x277CCACA8];
  lCopy = l;
  scheme = [lCopy scheme];
  host = [lCopy host];
  v7 = [v3 stringWithFormat:@"%@://%@", scheme, host];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/", v7, @"x-apple-ql-magic"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/", v7, @"x-apple-ql-attachment"];
  absoluteString = [lCopy absoluteString];

  v11 = [absoluteString hasPrefix:v8];
  v12 = v8;
  if ((v11 & 1) != 0 || ([absoluteString hasPrefix:v9] & 1) == 0 && (v14 = objc_msgSend(absoluteString, "hasPrefix:", v7), v12 = v7, v14))
  {
    v13 = [absoluteString substringFromIndex:{objc_msgSend(v12, "length")}];
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

- (void)registerURL:(id)l mimeType:(id)type textEncoding:(id)encoding
{
  registeredURLs = self->_registeredURLs;
  encodingCopy = encoding;
  typeCopy = type;
  lCopy = l;
  [(NSMutableSet *)registeredURLs addObject:lCopy];
  [objc_msgSend(objc_opt_class() "urlProtocolClass")];
}

- (void)startDataRepresentationWithMimeType:(id)type textEncoding:(id)encoding
{
  typeCopy = type;
  encodingCopy = encoding;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];

  if (previewURL)
  {
    v9 = 134217984;
    if (encodingCopy)
    {
      v10 = CFStringConvertIANACharSetNameToEncoding(encodingCopy);
      if (v10 == -1)
      {
        v9 = 134217984;
      }

      else
      {
        v9 = v10;
      }
    }

    encodingsForURLs = selfCopy->_encodingsForURLs;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    [(NSMutableDictionary *)encodingsForURLs setObject:v12 forKey:selfCopy->_previewURL];

    previewURL2 = [(QLPreviewParts *)selfCopy previewURL];
    [(QLPreviewParts *)selfCopy registerURL:previewURL2 mimeType:typeCopy textEncoding:encodingCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)startAttachmentWithURL:(id)l mimeType:(id)type textEncoding:(id)encoding
{
  lCopy = l;
  typeCopy = type;
  encodingCopy = encoding;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];

  if (previewURL)
  {
    v12 = 134217984;
    if (encodingCopy)
    {
      v13 = CFStringConvertIANACharSetNameToEncoding(encodingCopy);
      if (v13 == -1)
      {
        v12 = 134217984;
      }

      else
      {
        v12 = v13;
      }
    }

    encodingsForURLs = selfCopy->_encodingsForURLs;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    [(NSMutableDictionary *)encodingsForURLs setObject:v15 forKey:lCopy];

    [(NSMutableSet *)selfCopy->_outstandingURLs addObject:lCopy];
    [(QLPreviewParts *)selfCopy registerURL:lCopy mimeType:typeCopy textEncoding:encodingCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isRegisteredURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_registeredURLs containsObject:lCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)newAttachmentURLWithID:(id)d mimeType:(id)type textEncoding:(id)encoding
{
  dCopy = d;
  typeCopy = type;
  encodingCopy = encoding;
  v11 = [objc_msgSend(objc_opt_class() "urlProtocolClass")];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];

  if (previewURL)
  {
    v14 = 134217984;
    if (encodingCopy)
    {
      v15 = CFStringConvertIANACharSetNameToEncoding(encodingCopy);
      if (v15 == -1)
      {
        v14 = 134217984;
      }

      else
      {
        v14 = v15;
      }
    }

    encodingsForURLs = selfCopy->_encodingsForURLs;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    [(NSMutableDictionary *)encodingsForURLs setObject:v17 forKey:v11];

    [(NSMutableSet *)selfCopy->_outstandingURLs addObject:v11];
    [(QLPreviewParts *)selfCopy registerURL:v11 mimeType:typeCopy textEncoding:encodingCopy];
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)newSafeAttachmentURLWithID:(id)d mimeType:(id)type textEncoding:(id)encoding
{
  dCopy = d;
  typeCopy = type;
  encodingCopy = encoding;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];

  if (previewURL)
  {
    urlProtocolClass = [objc_opt_class() urlProtocolClass];
    previewURL2 = [(QLPreviewParts *)selfCopy previewURL];
    v15 = [urlProtocolClass newURLWithContentID:dCopy baseURL:previewURL2];
    v16 = 134217984;

    if (encodingCopy)
    {
      v17 = CFStringConvertIANACharSetNameToEncoding(encodingCopy);
      if (v17 == -1)
      {
        v16 = 134217984;
      }

      else
      {
        v16 = v17;
      }
    }

    encodingsForURLs = selfCopy->_encodingsForURLs;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
    [(NSMutableDictionary *)encodingsForURLs setObject:v19 forKey:v15];

    [(NSMutableSet *)selfCopy->_outstandingURLs addObject:v15];
    [(QLPreviewParts *)selfCopy registerURL:v15 mimeType:typeCopy textEncoding:encodingCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v15 = [objc_msgSend(objc_opt_class() "urlProtocolClass")];
  }

  return v15;
}

- (void)appendData:(id)data forURL:(id)l lastChunk:(BOOL)chunk
{
  chunkCopy = chunk;
  dataCopy = data;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];

  if (previewURL)
  {
    if (!lCopy)
    {
      lCopy = [(QLPreviewParts *)selfCopy previewURL];
    }

    [objc_msgSend(objc_opt_class() "urlProtocolClass")];
    if (chunkCopy)
    {
      [(NSMutableSet *)selfCopy->_outstandingURLs removeObject:lCopy];
    }
  }

  objc_sync_exit(selfCopy);
}

- (NSURLRequest)previewRequest
{
  v3 = objc_alloc(MEMORY[0x277CCAD20]);
  previewURL = [(QLPreviewParts *)self previewURL];
  v5 = [v3 initWithURL:previewURL cachePolicy:1 timeoutInterval:20.0];

  return v5;
}

- (id)voidRequest
{
  v2 = objc_alloc(MEMORY[0x277CCAD20]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"about:"];
  v4 = [v2 initWithURL:v3];

  return v4;
}

- (id)requestForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    previewURL = [(QLPreviewParts *)selfCopy previewURL];
    if (previewURL)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:lCopy];
      [v8 setHTTPShouldHandleCookies:0];
      [v8 setMainDocumentURL:previewURL];
    }

    else
    {
      voidRequest = [(QLPreviewParts *)selfCopy voidRequest];
      v8 = 0;
    }

    objc_sync_exit(selfCopy);
    if (previewURL)
    {
      voidRequest = v8;
    }
  }

  else
  {
    voidRequest = [(QLPreviewParts *)self voidRequest];
  }

  return voidRequest;
}

- (unsigned)cfEncodingForAttachmentURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];

  if (previewURL)
  {
    if (!lCopy)
    {
      lCopy = [(QLPreviewParts *)selfCopy previewURL];
    }

    v7 = [(NSMutableDictionary *)selfCopy->_encodingsForURLs objectForKey:lCopy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  unsignedIntValue = 134217984;
  if (previewURL && v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
  }

  return unsignedIntValue;
}

@end