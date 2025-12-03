@interface SSDownloadSession
- (SSDownload)download;
- (SSDownloadAsset)downloadAsset;
- (id)_copySessionPropertyWithKey:(const char *)key;
- (id)_initSSDownloadSession;
- (id)_initWithMessage:(id)message controlConnection:(id)connection;
- (id)description;
- (void)dealloc;
@end

@implementation SSDownloadSession

- (id)_initSSDownloadSession
{
  v4.receiver = self;
  v4.super_class = SSDownloadSession;
  v2 = [(SSDownloadSession *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSDownloadSession", 0);
  }

  return v2;
}

- (id)_initWithMessage:(id)message controlConnection:(id)connection
{
  _initSSDownloadSession = [(SSDownloadSession *)self _initSSDownloadSession];
  if (_initSSDownloadSession)
  {
    _initSSDownloadSession[1] = connection;
    _initSSDownloadSession[4] = xpc_dictionary_get_int64(message, "3");
    _initSSDownloadSession[5] = xpc_dictionary_get_int64(message, "2");
    _initSSDownloadSession[3] = xpc_dictionary_get_int64(message, "1");
  }

  return _initSSDownloadSession;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = SSDownloadSession;
  [(SSDownloadSession *)&v3 dealloc];
}

- (SSDownload)download
{
  if (self->_downloadID)
  {
    value = [(SSEntity *)[SSDownload alloc] _initWithPersistentIdentifier:self->_downloadID];
  }

  else
  {
    v4 = [(SSDownloadSession *)self _copySessionPropertyWithKey:"0"];
    if (v4)
    {
      v5 = v4;
      value = xpc_int64_get_value(v4);
      if (value)
      {
        value = [(SSEntity *)[SSDownload alloc] _initWithPersistentIdentifier:value];
      }

      xpc_release(v5);
    }

    else
    {
      value = 0;
    }
  }

  [value _becomeManagedOnConnection:self->_controlConnection];

  return value;
}

- (SSDownloadAsset)downloadAsset
{
  if (self->_assetID)
  {
    value = [(SSEntity *)[SSDownloadAsset alloc] _initWithPersistentIdentifier:self->_assetID];
  }

  else
  {
    v4 = [(SSDownloadSession *)self _copySessionPropertyWithKey:"1"];
    if (v4)
    {
      v5 = v4;
      value = xpc_int64_get_value(v4);
      if (value)
      {
        value = [(SSEntity *)[SSDownloadAsset alloc] _initWithPersistentIdentifier:value];
      }

      xpc_release(v5);
    }

    else
    {
      value = 0;
    }
  }

  [value _becomeManagedOnConnection:self->_controlConnection];

  return value;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSDownloadSession;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: SessionID: %lld", -[SSDownloadSession description](&v3, sel_description), self->_sessionID];
}

- (id)_copySessionPropertyWithKey:(const char *)key
{
  v30 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      LODWORD(v25) = 136446210;
      *(&v25 + 4) = "[SSDownloadSession _copySessionPropertyWithKey:]";
      LODWORD(v23) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v25, v23}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__35;
  v28 = __Block_byref_object_dispose__35;
  v29 = 0;
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 12);
  xpc_dictionary_set_int64(v18, "1", self->_sessionID);
  v19 = dispatch_semaphore_create(0);
  controlConnection = self->_controlConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__SSDownloadSession__copySessionPropertyWithKey___block_invoke;
  v24[3] = &unk_1E84B0AB8;
  v24[5] = &v25;
  v24[6] = key;
  v24[4] = v19;
  [(SSXPCConnection *)controlConnection sendMessage:v18 withReply:v24];
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v19);
  xpc_release(v18);
  v21 = *(*(&v25 + 1) + 40);
  _Block_object_dispose(&v25, 8);
  return v21;
}

intptr_t __49__SSDownloadSession__copySessionPropertyWithKey___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      *(*(*(a1 + 40) + 8) + 40) = xpc_dictionary_get_value(a2, *(a1 + 48));
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (v4)
      {
        xpc_retain(v4);
      }
    }
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

@end