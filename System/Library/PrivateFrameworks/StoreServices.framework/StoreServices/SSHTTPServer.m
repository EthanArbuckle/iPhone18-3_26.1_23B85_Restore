@interface SSHTTPServer
+ (BOOL)_isPortOccupied:(signed __int16)a3;
+ (id)sharedServer;
- (BOOL)start;
- (SSHTTPServer)init;
- (id)_ipAddress;
- (id)responseBlockForPath:(id)a3;
- (id)serverLocalhostURL;
- (id)serverURL;
- (int)state;
- (int64_t)responsesDelivered;
- (signed)port;
- (void)_handleConnectWithType:(unint64_t)a3 handle:(int)a4;
- (void)dealloc;
- (void)requestDidFinish:(id)a3;
- (void)setPort:(signed __int16)a3;
- (void)setResponseForPath:(id)a3 handler:(id)a4;
- (void)stop;
@end

@implementation SSHTTPServer

- (SSHTTPServer)init
{
  v11.receiver = self;
  v11.super_class = SSHTTPServer;
  v2 = [(SSHTTPServer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowsSecure = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    definedResponses = v3->_definedResponses;
    v3->_definedResponses = v4;

    v3->_downloadSpeed = 0;
    v3->_port = 8080;
    v6 = dispatch_queue_create("com.apple.StoreServices.HTTPServer", 0);
    propertyQueue = v3->_propertyQueue;
    v3->_propertyQueue = v6;

    v3->_state = 1;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    incomingRequests = v3->_incomingRequests;
    v3->_incomingRequests = v8;
  }

  return v3;
}

- (void)dealloc
{
  [(SSHTTPServer *)self stop];
  v3.receiver = self;
  v3.super_class = SSHTTPServer;
  [(SSHTTPServer *)&v3 dealloc];
}

- (signed)port
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__SSHTTPServer_port__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)responsesDelivered
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSHTTPServer_responsesDelivered__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPort:(signed __int16)a3
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__SSHTTPServer_setPort___block_invoke;
  v4[3] = &unk_1E84ABF68;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(propertyQueue, v4);
}

void __24__SSHTTPServer_setPort___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 1)
  {
    *(v1 + 50) = *(a1 + 40);
    return;
  }

  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  LODWORD(v15) = 138543362;
  *(&v15 + 4) = objc_opt_class();
  v6 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v15, v14, v15}];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, v5);
LABEL_13:
  }
}

- (int)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__SSHTTPServer_state__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)responseBlockForPath:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  propertyQueue = self->_propertyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSHTTPServer_responseBlockForPath___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(propertyQueue, block);
  v7 = MEMORY[0x1DA6DFBB0](v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __37__SSHTTPServer_responseBlockForPath___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[SSHTTPServer sharedServer];
  }

  v3 = sharedServer_instance;

  return v3;
}

void __28__SSHTTPServer_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(SSHTTPServer);
  v1 = sharedServer_instance;
  sharedServer_instance = v0;
}

- (id)serverURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__SSHTTPServer_serverURL__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__SSHTTPServer_serverURL__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    v2 = @"https://";
  }

  else
  {
    v2 = @"http://";
  }

  v9 = v2;
  v3 = [*(a1 + 32) _ipAddress];
  if ([(__CFString *)v3 isEqualToString:@"error"])
  {

    v3 = @"localhost";
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:%d", v9, v3, *(*(a1 + 32) + 50)];
  v6 = [v4 URLWithString:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)serverLocalhostURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSHTTPServer_serverLocalhostURL__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__SSHTTPServer_serverLocalhostURL__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    v3 = @"https://";
  }

  else
  {
    v3 = @"http://";
  }

  v4 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@localhost:%d", v3, *(v2 + 50)];
  v5 = [v4 URLWithString:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setResponseForPath:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  propertyQueue = self->_propertyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSHTTPServer_setResponseForPath_handler___block_invoke;
  block[3] = &unk_1E84AC000;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(propertyQueue, block);
}

void __43__SSHTTPServer_setResponseForPath_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  [*(*(a1 + 32) + 8) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)start
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  propertyQueue = self->_propertyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__SSHTTPServer_start__block_invoke;
  block[3] = &unk_1E84ABFD8;
  block[4] = self;
  block[5] = &v22;
  dispatch_sync(propertyQueue, block);
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  v6 = [v4 shouldLogToDisk];
  v7 = [v4 OSLogObject];
  v8 = v7;
  if (v6)
  {
    v5 |= 2u;
  }

  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v9 = objc_opt_class();
  v26 = 138543362;
  v27 = v9;
  v10 = v9;
  LODWORD(v20) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v26, v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v8);
LABEL_10:
  }

  v18 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v18;
}

void __21__SSHTTPServer_start__block_invoke(uint64_t a1)
{
  *&v36[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56) != 1)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v14 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (!v15)
    {
      goto LABEL_33;
    }

LABEL_30:
    *bytes = 138543362;
    *v36 = objc_opt_class();
    v13 = *v36;
    LODWORD(v29) = 12;
    v28 = bytes;
    goto LABEL_31;
  }

  *(v2 + 56) = 2;
  v3 = *MEMORY[0x1E695E480];
  *(*(a1 + 32) + 32) = CFSocketCreate(*MEMORY[0x1E695E480], 2, 1, 6, 2uLL, handleConnect, 0);
  v4 = *(*(a1 + 32) + 32);
  if (!v4)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v16 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v32 = 1;
  Native = CFSocketGetNative(v4);
  setsockopt(Native, 0xFFFF, 4, &v32, 4u);
  *&v36[1] = 0;
  *bytes = 528;
  *&bytes[2] = bswap32(*(*(a1 + 32) + 50)) >> 16;
  v36[0] = 0;
  v6 = CFDataCreate(v3, bytes, 16);
  v7 = CFSocketSetAddress(*(*(a1 + 32) + 32), v6);
  CFRelease(v6);
  if (v7)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_33;
    }

    v12 = objc_opt_class();
    v33 = 138543362;
    v34 = v12;
    v13 = v12;
    LODWORD(v29) = 12;
    v28 = &v33;
LABEL_31:
    v18 = _os_log_send_and_compose_impl();

    if (!v18)
    {
LABEL_34:

      *(*(*(a1 + 40) + 8) + 24) = 0;
      return;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, v28, v29}];
    free(v18);
    SSFileLog(v8, @"%@", v19, v20, v21, v22, v23, v24, v11);
LABEL_33:

    goto LABEL_34;
  }

  *(*(a1 + 32) + 56) = 3;
  v25 = dispatch_semaphore_create(0);
  v26 = MEMORY[0x1E696AF00];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __21__SSHTTPServer_start__block_invoke_31;
  v30[3] = &unk_1E84AC028;
  v30[4] = *(a1 + 32);
  v31 = v25;
  v27 = v25;
  [v26 detachNewThreadWithBlock:v30];
  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
}

void __21__SSHTTPServer_start__block_invoke_31(uint64_t a1)
{
  RunLoopSource = CFSocketCreateRunLoopSource(*MEMORY[0x1E695E480], *(*(a1 + 32) + 32), 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x1E695E8E0]);
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_semaphore_signal(*(a1 + 40));
  v7 = *MEMORY[0x1E695D918];
  do
  {
    if ([*(a1 + 32) state] != 3)
    {
      break;
    }

    v8 = *(*(a1 + 32) + 40);
    v9 = [MEMORY[0x1E695DF00] distantFuture];
    LOBYTE(v8) = [v8 runMode:v7 beforeDate:v9];
  }

  while ((v8 & 1) != 0);
}

- (void)stop
{
  propertyQueue = self->_propertyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__SSHTTPServer_stop__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_sync(propertyQueue, block);
}

void __20__SSHTTPServer_stop__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 56) = 4;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(a1 + 32) + 8) removeAllObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 close];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  v10 = *(*(a1 + 32) + 32);
  if (v10)
  {
    CFSocketInvalidate(v10);
    CFRelease(*(*(a1 + 32) + 32));
    *(*(a1 + 32) + 32) = 0;
  }

  v11 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_20;
  }

  v15 = objc_opt_class();
  v29 = 138543362;
  v30 = v15;
  v16 = v15;
  LODWORD(v24) = 12;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v29, v24, v25}];
    free(v17);
    SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, v14);
LABEL_20:
  }

  *(*(a1 + 32) + 56) = 1;
}

- (void)_handleConnectWithType:(unint64_t)a3 handle:(int)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    writeStream = 0;
    readStream = 0;
    CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], a4, &readStream, &writeStream);
    if (readStream)
    {
      v5 = writeStream == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v22 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v22)
      {
        v22 = +[SSLogConfig sharedConfig];
      }

      v6 = [(__CFReadStream *)v22 shouldLog];
      if ([(__CFReadStream *)v22 shouldLogToDisk])
      {
        v7 = v6 | 2;
      }

      else
      {
        v7 = v6;
      }

      v21 = [(__CFReadStream *)v22 OSLogObject];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v8 = objc_opt_class();
        v30 = 138543362;
        v31 = v8;
        v9 = v8;
        LODWORD(v23) = 12;
        v10 = _os_log_send_and_compose_impl();

        if (!v10)
        {
LABEL_18:

          return;
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v30, v23}];
        free(v10);
        SSFileLog(v22, @"%@", v11, v12, v13, v14, v15, v16, v21);
      }
    }

    else
    {
      v17 = *MEMORY[0x1E695E940];
      v18 = *MEMORY[0x1E695E4D0];
      CFReadStreamSetProperty(readStream, *MEMORY[0x1E695E940], *MEMORY[0x1E695E4D0]);
      CFWriteStreamSetProperty(writeStream, v17, v18);
      v19 = readStream;
      propertyQueue = self->_propertyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__SSHTTPServer__handleConnectWithType_handle___block_invoke;
      block[3] = &unk_1E84AC078;
      v25 = readStream;
      v26 = writeStream;
      v27 = self;
      v21 = writeStream;
      v22 = v19;
      dispatch_sync(propertyQueue, block);
    }

    goto LABEL_18;
  }
}

void __46__SSHTTPServer__handleConnectWithType_handle___block_invoke(void *a1)
{
  v2 = [[SSHTTPServerRequestHandler alloc] initWithReadStream:a1[4] writeStream:a1[5] runLoop:*(a1[6] + 40)];
  [(SSHTTPServerRequestHandler *)v2 setDelegate:a1[6]];
  [(SSHTTPServerRequestHandler *)v2 setDownloadSpeed:*(a1[6] + 52)];
  [*(a1[6] + 16) addObject:v2];
}

- (void)requestDidFinish:(id)a3
{
  v4 = a3;
  propertyQueue = self->_propertyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SSHTTPServer_requestDidFinish___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(propertyQueue, v7);
}

- (id)_ipAddress
{
  v10 = 0;
  v2 = getifaddrs(&v10);
  v3 = v10;
  v4 = @"error";
  if (!v2 && v10)
  {
    do
    {
      if (v3->ifa_addr->sa_family == 2)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3->ifa_name];
        v6 = [v5 isEqualToString:@"en0"];

        if (v6)
        {
          v7.s_addr = *&v3->ifa_addr->sa_data[2];
          v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:inet_ntoa(v7)];

          v4 = v8;
        }
      }

      v3 = v3->ifa_next;
    }

    while (v3);
    v3 = v10;
  }

  MEMORY[0x1DA6DF780](v3);

  return v4;
}

+ (BOOL)_isPortOccupied:(signed __int16)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v4 = CFSocketCreate(*MEMORY[0x1E695E480], 2, 1, 6, 0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v10 = 1;
  Native = CFSocketGetNative(v4);
  if (setsockopt(Native, 0xFFFF, 4, &v10, 4u))
  {
    v7 = 0;
  }

  else
  {
    v14 = 0;
    *bytes = 528;
    v13 = 0;
    v12 = bswap32(v3) >> 16;
    v8 = CFDataCreate(0, bytes, 16);
    v7 = CFSocketSetAddress(v5, v8) != kCFSocketSuccess;
    CFRelease(v8);
  }

  CFSocketInvalidate(v5);
  CFRelease(v5);
  return v7;
}

@end