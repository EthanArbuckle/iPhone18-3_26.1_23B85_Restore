@interface SUPrepareMediaItemOperation
- (BOOL)_runHEADRequest:(id *)a3;
- (SUPrepareMediaItemOperation)initWithMediaPlayerItem:(id)a3;
- (void)dealloc;
- (void)run;
@end

@implementation SUPrepareMediaItemOperation

- (SUPrepareMediaItemOperation)initWithMediaPlayerItem:(id)a3
{
  if (![a3 URL])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have a URL to prepare a media item"];
  }

  v7.receiver = self;
  v7.super_class = SUPrepareMediaItemOperation;
  v5 = [(SUPrepareMediaItemOperation *)&v7 init];
  if (v5)
  {
    v5->_mediaItem = [a3 copy];
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

- (BOOL)_runHEADRequest:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69E4808]);
  v6 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{-[SUMediaPlayerItem URL](self->_mediaItem, "URL")}];
  [v6 setAllowedRetryCount:0];
  [v6 setHTTPMethod:@"HEAD"];
  [v5 setRequestProperties:v6];
  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
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

  if (a3)
  {
    *a3 = v17;
  }

  return v13;
}

@end