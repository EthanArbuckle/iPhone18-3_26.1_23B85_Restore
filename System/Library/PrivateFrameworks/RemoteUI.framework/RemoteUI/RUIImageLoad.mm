@interface RUIImageLoad
- (BOOL)receivedValidResponse:(id)a3;
- (void)dealloc;
- (void)start;
@end

@implementation RUIImageLoad

- (void)dealloc
{
  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  v3.receiver = self;
  v3.super_class = RUIImageLoad;
  [(RUIImageLoad *)&v3 dealloc];
}

- (BOOL)receivedValidResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || ([v3 statusCode] - 600) < 0xFFFFFFFFFFFFFF38;

  return v4;
}

- (void)start
{
  v3 = [MEMORY[0x277CCAB70] requestWithURL:self->_URL];
  urlSession = self->_urlSession;
  if (!urlSession)
  {
    v5 = MEMORY[0x277CCAD30];
    v6 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v7 = [v5 sessionWithConfiguration:v6];
    v8 = self->_urlSession;
    self->_urlSession = v7;

    urlSession = self->_urlSession;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __21__RUIImageLoad_start__block_invoke;
  v11[3] = &unk_2782E8348;
  v11[4] = self;
  v9 = [(NSURLSession *)urlSession dataTaskWithRequest:v3 completionHandler:v11];
  dataTask = self->_dataTask;
  self->_dataTask = v9;

  [(NSURLSessionDataTask *)self->_dataTask resume];
}

void __21__RUIImageLoad_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a4;
  if (([v9 receivedValidResponse:v8] & 1) == 0)
  {
    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "RUIImageLoad received invalid response: %@", &v16, 0xCu);
      }
    }

    v7 = 0;
  }

  v12 = +[RUIImageLoader sharedImageLoader];
  [v12 _setImageData:v7 forURL:*(*(a1 + 32) + 24) error:v10];

  v13 = *(a1 + 32);
  v14 = *(v13 + 16);
  *(v13 + 16) = 0;

  v15 = +[RUIImageLoader sharedImageLoader];
  [v15 _imageLoadFinished:*(a1 + 32)];
}

@end