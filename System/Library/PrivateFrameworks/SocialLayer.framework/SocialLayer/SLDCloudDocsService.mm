@interface SLDCloudDocsService
+ (id)sharedService;
- (BOOL)_connection:(id)_connection hasPermissionForFileURL:(id)l;
- (BOOL)_fileURLHasFileProvider:(id)provider error:(id *)error;
- (NSArray)highlights;
- (NSCache)urlToCollaborationHighlightCache;
- (SLDCloudDocsService)init;
- (int64_t)_acquireSandboxHandleData:(id)data ForFileProviderDocumentURL:(id)l clientConnection:(id)connection error:(id *)error;
- (void)_releaseSandboxHandle:(int64_t)handle;
- (void)fetchHighlights;
- (void)generateURLToCollaborationHighlightCache;
- (void)getCollaborationHighlightForShareURL:(id)l fileURL:(id)rL sandboxTokenData:(id)data reply:(id)reply;
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterDidAddHighlights:(id)highlights;
- (void)setHighlights:(id)highlights;
- (void)setUrlToCollaborationHighlightCache:(id)cache;
- (void)shareURLForFileURL:(id)l sandboxTokenData:(id)data reply:(id)reply;
@end

@implementation SLDCloudDocsService

+ (id)sharedService
{
  if (sharedService_onceToken_1 != -1)
  {
    +[SLDCloudDocsService sharedService];
  }

  v3 = sharedService_sService_1;

  return v3;
}

- (SLDCloudDocsService)init
{
  v9.receiver = self;
  v9.super_class = SLDCloudDocsService;
  v2 = [(SLDRemoteRenderingService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.sociallaterd.cloudDocsHighlightsCache", v3);
    cloudDocsAccessQueue = v2->_cloudDocsAccessQueue;
    v2->_cloudDocsAccessQueue = v4;

    v6 = objc_alloc_init(SLHighlightCenter);
    [(SLDCloudDocsService *)v2 setHighlightCenter:v6];

    highlightCenter = [(SLDCloudDocsService *)v2 highlightCenter];
    [highlightCenter setDelegate:v2];

    [(SLDCloudDocsService *)v2 fetchHighlights];
  }

  return v2;
}

uint64_t __36__SLDCloudDocsService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCloudDocsService);
  v1 = sharedService_sService_1;
  sharedService_sService_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)shareURLForFileURL:(id)l sandboxTokenData:(id)data reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dataCopy = data;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v12 = SLDaemonLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[SLDCloudDocsService shareURLForFileURL:sandboxTokenData:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    *&buf[22] = 2112;
    v31 = dataCopy;
    _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_DEFAULT, "%s fileURL: %@ sandboxTokenData: %@", buf, 0x20u);
  }

  if (lCopy && dataCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v13 = [(SLDCloudDocsService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:lCopy clientConnection:currentConnection error:&v29];
    v14 = v29;
    v15 = v14;
    v31 = v13;
    if (*(*&buf[8] + 24) == -1)
    {
      if (!v14)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:1 userInfo:0];
      }

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277CFAED8]);
      identifier = [*MEMORY[0x277CE1E90] identifier];
      v18 = [v16 initWithFileURL:lCopy documentType:identifier];

      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke;
      v25 = &unk_278926478;
      selfCopy = self;
      v28 = buf;
      v27 = replyCopy;
      [v18 setCopyShareURLCompletionBlock:&v22];
      v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v19 setMaxConcurrentOperationCount:{1, v22, v23, v24, v25, selfCopy}];
      [v19 addOperation:v18];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = SLDaemonLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      *&buf[22] = 2112;
      v31 = dataCopy;
      _os_log_error_impl(&dword_231772000, v20, OS_LOG_TYPE_ERROR, "[SLDCloudDocsService: %p] invalid fileURL/sandboxTokenData passed in: %@, %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _releaseSandboxHandle:*(*(*(a1 + 48) + 8) + 24)];
  if (!v5 || v6)
  {
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke_cold_1((a1 + 32), v6, v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = SLURLMinusFragmentForCKURLs(v5);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getCollaborationHighlightForShareURL:(id)l fileURL:(id)rL sandboxTokenData:(id)data reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v15 = SLDaemonLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    selfCopy = "[SLDCloudDocsService getCollaborationHighlightForShareURL:fileURL:sandboxTokenData:reply:]";
    v33 = 2112;
    v34 = lCopy;
    v35 = 2112;
    v36 = rLCopy;
    v37 = 2112;
    v38 = dataCopy;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "%s shareURL: %@ fileURL: %@ sandboxTokenData: %@", buf, 0x2Au);
  }

  if (rLCopy && lCopy && dataCopy)
  {
    v16 = SLURLMinusFragmentForCKURLs(lCopy);
    v30 = 0;
    v17 = [(SLDCloudDocsService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:rLCopy clientConnection:currentConnection error:&v30];
    v18 = v30;
    v19 = v18;
    if (v17 == -1)
    {
      if (!v18)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:1 userInfo:0];
      }

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v29 = currentConnection;
      v20 = v16;
      highlightCenter = [(SLDCloudDocsService *)self highlightCenter];
      highlights = [highlightCenter highlights];
      v23 = [highlights count];

      if (v23)
      {
        urlToCollaborationHighlightCache = [(SLDCloudDocsService *)self urlToCollaborationHighlightCache];
        v16 = v20;
        v25 = [urlToCollaborationHighlightCache objectForKey:v20];

        (replyCopy)[2](replyCopy, v25);
      }

      else
      {
        v27 = SLDaemonLogHandle();
        v16 = v20;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SLDCloudDocsService getCollaborationHighlightForShareURL:fileURL:sandboxTokenData:reply:];
        }

        replyCopy[2](replyCopy, 0);
      }

      currentConnection = v29;
    }
  }

  else
  {
    v26 = SLDaemonLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v33 = 2112;
      v34 = lCopy;
      v35 = 2112;
      v36 = rLCopy;
      v37 = 2112;
      v38 = dataCopy;
      _os_log_error_impl(&dword_231772000, v26, OS_LOG_TYPE_ERROR, "[SLDCloudDocsService: %p] invalid shareURL/fileURL/sandboxTokenData passed in: %@, %@, %@", buf, 0x2Au);
    }

    replyCopy[2](replyCopy, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (NSArray)highlights
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SLDCloudDocsService_highlights__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cloudDocsAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setHighlights:(id)highlights
{
  highlightsCopy = highlights;
  highlights = [(SLDCloudDocsService *)self highlights];
  v6 = [highlightsCopy isEqualToArray:highlights];

  if ((v6 & 1) == 0)
  {
    cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__SLDCloudDocsService_setHighlights___block_invoke;
    v8[3] = &unk_278925CF0;
    v8[4] = self;
    v9 = highlightsCopy;
    dispatch_barrier_async(cloudDocsAccessQueue, v8);
  }
}

- (NSCache)urlToCollaborationHighlightCache
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SLDCloudDocsService_urlToCollaborationHighlightCache__block_invoke;
  v6[3] = &unk_278925D18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cloudDocsAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setUrlToCollaborationHighlightCache:(id)cache
{
  cacheCopy = cache;
  urlToCollaborationHighlightCache = [(SLDCloudDocsService *)self urlToCollaborationHighlightCache];
  v6 = [cacheCopy isEqual:urlToCollaborationHighlightCache];

  if ((v6 & 1) == 0)
  {
    cloudDocsAccessQueue = [(SLDCloudDocsService *)self cloudDocsAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SLDCloudDocsService_setUrlToCollaborationHighlightCache___block_invoke;
    v8[3] = &unk_278925CF0;
    v8[4] = self;
    v9 = cacheCopy;
    dispatch_barrier_async(cloudDocsAccessQueue, v8);
  }
}

- (void)generateURLToCollaborationHighlightCache
{
  v24 = *MEMORY[0x277D85DE8];
  urlToCollaborationHighlightCache = [(SLDCloudDocsService *)self urlToCollaborationHighlightCache];
  allObjects = [urlToCollaborationHighlightCache allObjects];
  v5 = [allObjects count];

  highlights = [(SLDCloudDocsService *)self highlights];
  v7 = [highlights count];

  if (v5 != v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    highlights2 = [(SLDCloudDocsService *)self highlights];
    v10 = [highlights2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(highlights2);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            resourceURL = [v15 resourceURL];
            v17 = SLURLMinusFragmentForCKURLs(resourceURL);
            [v8 setObject:v15 forKey:v17];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [highlights2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [(SLDCloudDocsService *)self setUrlToCollaborationHighlightCache:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchHighlights
{
  highlightCenter = [(SLDCloudDocsService *)self highlightCenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SLDCloudDocsService_fetchHighlights__block_invoke;
  v4[3] = &unk_2789264A0;
  v4[4] = self;
  [highlightCenter fetchHighlights:v4];
}

void __38__SLDCloudDocsService_fetchHighlights__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setHighlights:a2];
    v3 = *(a1 + 32);

    [v3 generateURLToCollaborationHighlightCache];
  }

  else
  {
    v4 = SLDaemonLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__SLDCloudDocsService_fetchHighlights__block_invoke_cold_1(a1, v4);
    }
  }
}

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[%p] Handling highlightCenter:didRemoveHighlights: delegate callback", &v7, 0xCu);
  }

  [(NSCache *)self->_urlToCollaborationHighlightCache removeAllObjects];
  [(SLDCloudDocsService *)self fetchHighlights];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)highlightCenterDidAddHighlights:(id)highlights
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "[%p] Handling highlightCenterDidAddHighlights: delegate callback", &v6, 0xCu);
  }

  [(NSCache *)self->_urlToCollaborationHighlightCache removeAllObjects];
  [(SLDCloudDocsService *)self fetchHighlights];
  v5 = *MEMORY[0x277D85DE8];
}

- (int64_t)_acquireSandboxHandleData:(id)data ForFileProviderDocumentURL:(id)l clientConnection:(id)connection error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  connectionCopy = connection;
  if (![dataCopy length])
  {
    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

    goto LABEL_7;
  }

  buf[0] = 0;
  [dataCopy getBytes:buf range:{objc_msgSend(dataCopy, "length") - 1, 1}];
  if (buf[0])
  {
    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

LABEL_7:

LABEL_8:
    v14 = SLDaemonLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:2 userInfo:0];
    }

LABEL_12:
    v15 = -1;
    goto LABEL_13;
  }

  [dataCopy bytes];
  v18 = sandbox_extension_consume();
  if (v18 == -1)
  {
    goto LABEL_8;
  }

  v15 = v18;
  if (![(SLDCloudDocsService *)self _connection:connectionCopy hasPermissionForFileURL:lCopy])
  {
    v23 = SLDaemonLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v27 = 2112;
      v28 = lCopy;
      v29 = 2112;
      v30 = connectionCopy;
      _os_log_error_impl(&dword_231772000, v23, OS_LOG_TYPE_ERROR, "[%p] _acquireSandboxHandleData: acquired a sandbox handle for a file (%@), but the xpc connection (%@) does not have permission to access the file. Releasing sandbox handle.", buf, 0x20u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:4 userInfo:0];
    }

    [(SLDCloudDocsService *)self _releaseSandboxHandle:v15];
    goto LABEL_12;
  }

  v24 = 0;
  v19 = [(SLDCloudDocsService *)self _fileURLHasFileProvider:lCopy error:&v24];
  v20 = v24;
  v21 = SLDaemonLogHandle();
  v22 = v21;
  if (!v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v27 = 2112;
      v28 = lCopy;
      v29 = 2112;
      v30 = v20;
      _os_log_error_impl(&dword_231772000, v22, OS_LOG_TYPE_ERROR, "[%p] _acquireSandboxHandleData: acquired a sandbox handle for a file (%@), but could not find a valid FPItem for that file. This file might not be managed by a FileProvider. Releasing sandbox handle. FileProvider error: %@", buf, 0x20u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCloudDocsService" code:3 userInfo:0];
    }

    [(SLDCloudDocsService *)self _releaseSandboxHandle:v15];

    goto LABEL_12;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v27 = 2048;
    v28 = v15;
    v29 = 2112;
    v30 = lCopy;
    _os_log_impl(&dword_231772000, v22, OS_LOG_TYPE_DEFAULT, "[%p] _acquireSandboxHandleData: acquired a new handle: %lld for file: %@", buf, 0x20u);
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_fileURLHasFileProvider:(id)provider error:(id *)error
{
  v5 = MEMORY[0x277CC6408];
  providerCopy = provider;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager itemForURL:providerCopy error:error];

  return v8 != 0;
}

- (BOOL)_connection:(id)_connection hasPermissionForFileURL:(id)l
{
  _connectionCopy = _connection;
  lCopy = l;
  if (_connectionCopy && ([_connectionCopy auditToken], objc_msgSend(lCopy, "isFileURL")) && (objc_msgSend(lCopy, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    [_connectionCopy auditToken];
    path = [lCopy path];
    [path fileSystemRepresentation];
    v10 = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_releaseSandboxHandle:(int64_t)handle
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = sandbox_extension_release();
  v6 = SLDaemonLogHandle();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SLDCloudDocsService *)self _releaseSandboxHandle:handle, v7];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    selfCopy = self;
    v11 = 2048;
    handleCopy = handle;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[%p] _releaseSandboxHandle: released handle: %lld", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __65__SLDCloudDocsService_shareURLForFileURL_sandboxTokenData_reply___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "[SLDCloudDocsService: %p] failed to get url with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)getCollaborationHighlightForShareURL:fileURL:sandboxTokenData:reply:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[SLDCloudDocsService: %p] no highlights to check against a highlight for URL: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__SLDCloudDocsService_fetchHighlights__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[%p] fetchHighlights: failed to fetch highlights", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%p] _acquireSandboxHandleData: sandbox token for file (%@) was not null-terminated.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%p] _acquireSandboxHandleData: tokenData for file (%@) was empty.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%p] _acquireSandboxHandleData: failed to consume sandbox token for file: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_releaseSandboxHandle:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218240;
  *(&v4 + 4) = a1;
  WORD6(v4) = 2048;
  HIWORD(v4) = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "[%p] _releaseSandboxHandle: unable to release sandbox extension handle: %lld. Sandbox extensions are a limited resource and this should be investigated!", v4, *(&v4 + 1));
  v3 = *MEMORY[0x277D85DE8];
}

@end