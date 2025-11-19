@interface SiriUIURLSession
+ (id)sharedURLSession;
- (NSString)description;
- (SiriUIURLSession)init;
- (id)imageTaskWithHTTPGetRequest:(id)a3 client:(id)a4 fitToSize:(CGSize)a5 fillColor:(id)a6 userAgent:(id)a7 completionHandler:(id)a8;
- (id)imageTaskWithHTTPGetRequest:(id)a3 client:(id)a4 fitToSize:(CGSize)a5 incremental:(BOOL)a6 progressHandler:(id)a7 fillColor:(id)a8 userAgent:(id)a9;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_registerTask:(id)a3 forClient:(id)a4;
- (void)_unregisterTask:(id)a3 forClient:(id)a4;
- (void)cancelAllTasksForClient:(id)a3;
@end

@implementation SiriUIURLSession

+ (id)sharedURLSession
{
  if (sharedURLSession_onceToken != -1)
  {
    +[SiriUIURLSession sharedURLSession];
  }

  v3 = sharedURLSession_sharedURLSession;

  return v3;
}

uint64_t __36__SiriUIURLSession_sharedURLSession__block_invoke()
{
  v0 = objc_alloc_init(SiriUIURLSession);
  v1 = sharedURLSession_sharedURLSession;
  sharedURLSession_sharedURLSession = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SiriUIURLSession)init
{
  v13.receiver = self;
  v13.super_class = SiriUIURLSession;
  v2 = [(SiriUIURLSession *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v3 setHTTPShouldSetCookies:0];
    [v3 setHTTPCookieAcceptPolicy:1];
    v4 = MEMORY[0x277CCAD30];
    v5 = [MEMORY[0x277CCABD8] mainQueue];
    v6 = [v4 sessionWithConfiguration:v3 delegate:v2 delegateQueue:v5];
    URLSession = v2->_URLSession;
    v2->_URLSession = v6;

    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    tasksForClient = v2->_tasksForClient;
    v2->_tasksForClient = v8;

    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    imageDownloadForTask = v2->_imageDownloadForTask;
    v2->_imageDownloadForTask = v10;
  }

  return v2;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = SiriUIURLSession;
  v3 = [(SiriUIURLSession *)&v8 description];
  v4 = [v3 mutableCopy];

  v5 = [(NSMapTable *)self->_tasksForClient dictionaryRepresentation];
  v6 = [v5 description];

  if (v6)
  {
    [v4 appendString:@" tasksForClient="];
    [v4 appendString:v6];
  }

  return v4;
}

- (id)imageTaskWithHTTPGetRequest:(id)a3 client:(id)a4 fitToSize:(CGSize)a5 fillColor:(id)a6 userAgent:(id)a7 completionHandler:(id)a8
{
  height = a5.height;
  width = a5.width;
  v15 = a8;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_fillColor_userAgent_completionHandler___block_invoke;
  v19[3] = &unk_279C59EF0;
  v20 = v15;
  v16 = v15;
  v17 = [(SiriUIURLSession *)self imageTaskWithHTTPGetRequest:a3 client:a4 fitToSize:0 incremental:v19 progressHandler:a6 fillColor:a7 userAgent:width, height];

  return v17;
}

uint64_t __103__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_fillColor_userAgent_completionHandler___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)imageTaskWithHTTPGetRequest:(id)a3 client:(id)a4 fitToSize:(CGSize)a5 incremental:(BOOL)a6 progressHandler:(id)a7 fillColor:(id)a8 userAgent:(id)a9
{
  v12 = a6;
  height = a5.height;
  width = a5.width;
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v17)
  {
    v22 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v17];
    if ([v21 length])
    {
      [v22 setValue:v21 forHTTPHeaderField:@"User-Agent"];
    }

    v23 = [(NSURLSession *)self->_URLSession dataTaskWithRequest:v22];
    [(SiriUIURLSession *)self _registerTask:v23 forClient:v18];
    if ([v23 state] == 1)
    {
      [v23 resume];
    }

    v24 = [SiriUIURLSessionImageDownload alloc];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __113__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_incremental_progressHandler_fillColor_userAgent___block_invoke;
    v32 = &unk_279C59F18;
    v36 = v19;
    v33 = self;
    v25 = v23;
    v34 = v25;
    v35 = v18;
    v26 = [(SiriUIURLSessionImageDownload *)v24 initWithFitToSize:&v29 progressHandler:v12 incremental:v35 client:v20 fillColor:width, height];
    [(NSMapTable *)self->_imageDownloadForTask setObject:v26 forKey:v25, v29, v30, v31, v32, v33];
    v27 = v25;
  }

  else
  {
    if (v19)
    {
      (*(v19 + 2))(v19, 0, 1);
    }

    v27 = 0;
  }

  return v27;
}

uint64_t __113__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_incremental_progressHandler_fillColor_userAgent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 56);
  v8 = v5;
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v5, a3);
    v5 = v8;
  }

  if (a3)
  {
    v6 = [*(a1 + 32) _unregisterTask:*(a1 + 40) forClient:*(a1 + 48)];
    v5 = v8;
  }

  return MEMORY[0x2821F96F8](v6, v5);
}

- (void)cancelAllTasksForClient:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [(NSMapTable *)self->_tasksForClient objectForKey:?];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) cancel];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_registerTask:(id)a3 forClient:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    v7 = [(NSMapTable *)self->_tasksForClient objectForKey:v6];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(NSMapTable *)self->_tasksForClient setObject:v7 forKey:v6];
    }

    [v7 addObject:v8];
  }
}

- (void)_unregisterTask:(id)a3 forClient:(id)a4
{
  v6 = a4;
  if (a3 && v6)
  {
    tasksForClient = self->_tasksForClient;
    v10 = v6;
    v8 = a3;
    v9 = [(NSMapTable *)tasksForClient objectForKey:v10];
    [v9 removeObject:v8];

    if (![v9 count])
    {
      [(NSMapTable *)self->_tasksForClient removeObjectForKey:v10];
    }

    v6 = v10;
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  imageDownloadForTask = self->_imageDownloadForTask;
  v7 = a5;
  v8 = a4;
  v11 = [(NSMapTable *)imageDownloadForTask objectForKey:v8];
  v9 = [v8 originalRequest];

  v10 = [v9 URL];
  [v11 appendDownloadedData:v7 fromURL:v10];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  imageDownloadForTask = self->_imageDownloadForTask;
  v8 = a5;
  v9 = a4;
  v12 = [(NSMapTable *)imageDownloadForTask objectForKey:v9];
  v10 = [v9 originalRequest];
  v11 = [v10 URL];
  [v12 finishedFromURL:v11 error:v8];

  [(NSMapTable *)self->_imageDownloadForTask removeObjectForKey:v9];
}

@end