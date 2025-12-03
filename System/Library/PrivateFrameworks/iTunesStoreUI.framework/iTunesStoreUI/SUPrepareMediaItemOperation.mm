@interface SUPrepareMediaItemOperation
- (BOOL)_runHEADRequest:(id *)request;
- (SUPrepareMediaItemOperation)initWithMediaPlayerItem:(id)item;
- (void)dealloc;
- (void)run;
@end

@implementation SUPrepareMediaItemOperation

- (SUPrepareMediaItemOperation)initWithMediaPlayerItem:(id)item
{
  if (![item URL])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have a URL to prepare a media item"];
  }

  v7.receiver = self;
  v7.super_class = SUPrepareMediaItemOperation;
  v5 = [(SUPrepareMediaItemOperation *)&v7 init];
  if (v5)
  {
    v5->_mediaItem = [item copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPrepareMediaItemOperation;
  [(SUPrepareMediaItemOperation *)&v3 dealloc];
}

- (void)run
{
  v4 = 0;
  v3 = [(SUPrepareMediaItemOperation *)self _runHEADRequest:&v4];
  [(SUPrepareMediaItemOperation *)self setError:v4];
  [(SUPrepareMediaItemOperation *)self setSuccess:v3];
}

- (BOOL)_runHEADRequest:(id *)request
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69E4808]);
  v6 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{-[SUMediaPlayerItem URL](self->_mediaItem, "URL")}];
  [v6 setAllowedRetryCount:0];
  [v6 setHTTPMethod:@"HEAD"];
  [v5 setRequestProperties:v6];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v18 = 138412546;
    v19 = objc_opt_class();
    v20 = 2112;
    v21 = [v6 URL];
    LODWORD(v16) = 22;
    v15 = &v18;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v16}];
      free(v11);
      v15 = v12;
      SSFileLog();
    }
  }

  v13 = [(SUPrepareMediaItemOperation *)self runSubOperation:v5 returningError:&v17, v15];

  if (request)
  {
    *request = v17;
  }

  return v13;
}

@end