@interface SiriUIURLSession
+ (id)sharedURLSession;
- (NSString)description;
- (SiriUIURLSession)init;
- (id)imageTaskWithHTTPGetRequest:(id)request client:(id)client fitToSize:(CGSize)size fillColor:(id)color userAgent:(id)agent completionHandler:(id)handler;
- (id)imageTaskWithHTTPGetRequest:(id)request client:(id)client fitToSize:(CGSize)size incremental:(BOOL)incremental progressHandler:(id)handler fillColor:(id)color userAgent:(id)agent;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_registerTask:(id)task forClient:(id)client;
- (void)_unregisterTask:(id)task forClient:(id)client;
- (void)cancelAllTasksForClient:(id)client;
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
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setHTTPShouldSetCookies:0];
    [defaultSessionConfiguration setHTTPCookieAcceptPolicy:1];
    v4 = MEMORY[0x277CCAD30];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v6 = [v4 sessionWithConfiguration:defaultSessionConfiguration delegate:v2 delegateQueue:mainQueue];
    URLSession = v2->_URLSession;
    v2->_URLSession = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    tasksForClient = v2->_tasksForClient;
    v2->_tasksForClient = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    imageDownloadForTask = v2->_imageDownloadForTask;
    v2->_imageDownloadForTask = strongToStrongObjectsMapTable2;
  }

  return v2;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = SiriUIURLSession;
  v3 = [(SiriUIURLSession *)&v8 description];
  v4 = [v3 mutableCopy];

  dictionaryRepresentation = [(NSMapTable *)self->_tasksForClient dictionaryRepresentation];
  v6 = [dictionaryRepresentation description];

  if (v6)
  {
    [v4 appendString:@" tasksForClient="];
    [v4 appendString:v6];
  }

  return v4;
}

- (id)imageTaskWithHTTPGetRequest:(id)request client:(id)client fitToSize:(CGSize)size fillColor:(id)color userAgent:(id)agent completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_fillColor_userAgent_completionHandler___block_invoke;
  v19[3] = &unk_279C59EF0;
  v20 = handlerCopy;
  v16 = handlerCopy;
  height = [(SiriUIURLSession *)self imageTaskWithHTTPGetRequest:request client:client fitToSize:0 incremental:v19 progressHandler:color fillColor:agent userAgent:width, height];

  return height;
}

uint64_t __103__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_fillColor_userAgent_completionHandler___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)imageTaskWithHTTPGetRequest:(id)request client:(id)client fitToSize:(CGSize)size incremental:(BOOL)incremental progressHandler:(id)handler fillColor:(id)color userAgent:(id)agent
{
  incrementalCopy = incremental;
  height = size.height;
  width = size.width;
  requestCopy = request;
  clientCopy = client;
  handlerCopy = handler;
  colorCopy = color;
  agentCopy = agent;
  if (requestCopy)
  {
    v22 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:requestCopy];
    if ([agentCopy length])
    {
      [v22 setValue:agentCopy forHTTPHeaderField:@"User-Agent"];
    }

    v23 = [(NSURLSession *)self->_URLSession dataTaskWithRequest:v22];
    [(SiriUIURLSession *)self _registerTask:v23 forClient:clientCopy];
    if ([v23 state] == 1)
    {
      [v23 resume];
    }

    v24 = [SiriUIURLSessionImageDownload alloc];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __113__SiriUIURLSession_imageTaskWithHTTPGetRequest_client_fitToSize_incremental_progressHandler_fillColor_userAgent___block_invoke;
    v32 = &unk_279C59F18;
    v36 = handlerCopy;
    selfCopy = self;
    v25 = v23;
    v34 = v25;
    v35 = clientCopy;
    height = [(SiriUIURLSessionImageDownload *)v24 initWithFitToSize:&v29 progressHandler:incrementalCopy incremental:v35 client:colorCopy fillColor:width, height];
    [(NSMapTable *)self->_imageDownloadForTask setObject:height forKey:v25, v29, v30, v31, v32, selfCopy];
    v27 = v25;
  }

  else
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 1);
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

- (void)cancelAllTasksForClient:(id)client
{
  v13 = *MEMORY[0x277D85DE8];
  if (client)
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

- (void)_registerTask:(id)task forClient:(id)client
{
  taskCopy = task;
  clientCopy = client;
  if (taskCopy && clientCopy)
  {
    v7 = [(NSMapTable *)self->_tasksForClient objectForKey:clientCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(NSMapTable *)self->_tasksForClient setObject:v7 forKey:clientCopy];
    }

    [v7 addObject:taskCopy];
  }
}

- (void)_unregisterTask:(id)task forClient:(id)client
{
  clientCopy = client;
  if (task && clientCopy)
  {
    tasksForClient = self->_tasksForClient;
    v10 = clientCopy;
    taskCopy = task;
    v9 = [(NSMapTable *)tasksForClient objectForKey:v10];
    [v9 removeObject:taskCopy];

    if (![v9 count])
    {
      [(NSMapTable *)self->_tasksForClient removeObjectForKey:v10];
    }

    clientCopy = v10;
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  imageDownloadForTask = self->_imageDownloadForTask;
  dataCopy = data;
  taskCopy = task;
  v11 = [(NSMapTable *)imageDownloadForTask objectForKey:taskCopy];
  originalRequest = [taskCopy originalRequest];

  v10 = [originalRequest URL];
  [v11 appendDownloadedData:dataCopy fromURL:v10];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  imageDownloadForTask = self->_imageDownloadForTask;
  errorCopy = error;
  taskCopy = task;
  v12 = [(NSMapTable *)imageDownloadForTask objectForKey:taskCopy];
  originalRequest = [taskCopy originalRequest];
  v11 = [originalRequest URL];
  [v12 finishedFromURL:v11 error:errorCopy];

  [(NSMapTable *)self->_imageDownloadForTask removeObjectForKey:taskCopy];
}

@end