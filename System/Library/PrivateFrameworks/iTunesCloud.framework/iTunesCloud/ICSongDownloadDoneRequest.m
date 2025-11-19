@interface ICSongDownloadDoneRequest
- (ICSongDownloadDoneRequest)initWithRequestContext:(id)a3 downloadIdentifier:(id)a4 songID:(unint64_t)a5;
- (void)cancel;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation ICSongDownloadDoneRequest

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ICSongDownloadDoneRequest;
  [(ICSongDownloadDoneRequest *)&v4 cancel];
  v3 = +[ICURLSessionManager defaultSession];
  [v3 cancelRequest:self->_storeURLRequest];
}

- (void)execute
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    downloadIdentifier = self->_downloadIdentifier;
    songID = self->_songID;
    *buf = 138543618;
    v10 = downloadIdentifier;
    v11 = 2048;
    v12 = songID;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "performing songDownloadDone request. downloadID=%{public}@, songID=%llu", buf, 0x16u);
  }

  v6 = +[ICURLBagProvider sharedBagProvider];
  requestContext = self->_requestContext;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__ICSongDownloadDoneRequest_execute__block_invoke;
  v8[3] = &unk_1E7BFA500;
  v8[4] = self;
  [v6 getBagForRequestContext:requestContext withCompletionHandler:v8];
}

void __36__ICSongDownloadDoneRequest_execute__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [a2 urlForBagKey:@"songDownloadDone"];
    if (v5)
    {
      v6 = v5;
      v24[0] = @"download-id";
      v7 = *(a1 + 32);
      v8 = *(v7 + 312);
      v24[1] = @"songId";
      v25[0] = v8;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(v7 + 320)];
      v25[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v11 = [v6 ic_URLByAppendingQueryParameters:v10];

      v12 = [MEMORY[0x1E695AC18] requestWithURL:v11];
      v13 = [[ICStoreURLRequest alloc] initWithURLRequest:v12 requestContext:*(*(a1 + 32) + 304)];
      v14 = *(a1 + 32);
      v15 = *(v14 + 328);
      *(v14 + 328) = v13;

      v16 = [*(a1 + 32) progress];
      v17 = [*(*(a1 + 32) + 328) progress];
      [v16 addChild:v17 withPendingUnitCount:100];

      v18 = +[ICURLSessionManager defaultSession];
      v19 = *(a1 + 32);
      v20 = *(v19 + 328);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __36__ICSongDownloadDoneRequest_execute__block_invoke_2;
      v23[3] = &unk_1E7BFA4D8;
      v23[4] = v19;
      [v18 enqueueDataRequest:v20 withCompletionHandler:v23];
    }

    else
    {
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [v21 finishWithError:?];
    }
  }
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__ICSongDownloadDoneRequest_performRequestWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

void __63__ICSongDownloadDoneRequest_performRequestWithResponseHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 328);
  *(v2 + 328) = 0;
}

- (ICSongDownloadDoneRequest)initWithRequestContext:(id)a3 downloadIdentifier:(id)a4 songID:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ICSongDownloadDoneRequest;
  v11 = [(ICRequestOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestContext, a3);
    objc_storeStrong(&v12->_downloadIdentifier, a4);
    v12->_songID = a5;
  }

  return v12;
}

@end