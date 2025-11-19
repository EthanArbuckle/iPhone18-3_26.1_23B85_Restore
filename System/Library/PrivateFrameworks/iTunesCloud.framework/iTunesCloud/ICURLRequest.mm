@interface ICURLRequest
+ (id)_nameForRequestType:(int64_t)a3;
+ (unint64_t)_defaultMaxRetryCountForReason:(id)a3;
- (ICURLRequest)initWithURL:(id)a3 requestContext:(id)a4;
- (ICURLRequest)initWithURL:(id)a3 requestContext:(id)a4 resumeData:(id)a5;
- (ICURLRequest)initWithURLRequest:(id)a3 requestContext:(id)a4 resumeData:(id)a5;
- (NSString)description;
- (id)_analyticSignature;
- (id)_sanitizedURLString;
- (id)observers;
- (unint64_t)_maxRetryCountForReason:(id)a3;
- (unint64_t)_retryCountForReason:(id)a3;
- (void)_ensureValidRetryReason:(id)a3;
- (void)_incrementRetryCountForReason:(id)a3;
- (void)_requestWasEnqueuedAt:(id)a3;
- (void)_setMaxRetryCount:(unint64_t)a3 forReason:(id)a4;
- (void)_task:(id)a3 didCompleteWithError:(id)a4 at:(id)a5;
- (void)_task:(id)a3 didReceiveInitialResponse:(id)a4 at:(id)a5;
- (void)_task:(id)a3 didResumeAt:(id)a4;
- (void)_updateSignpostsForNewState:(int64_t)a3;
- (void)buildURLRequestWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)setRequestState:(int64_t)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateState:(int64_t)a3;
@end

@implementation ICURLRequest

- (NSString)description
{
  requestState = self->_requestState;
  if (requestState > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7BF5948[requestState];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(ICRequestContext *)self->_requestContext clientInfo];
  v8 = [v7 _clientIdentifierForUserAgent];
  v9 = [(ICRequestContext *)self->_requestContext clientInfo];
  v10 = [v9 clientVersion];
  v11 = [v5 stringWithFormat:@"<%@ %p (%@) [%@/%@]>", v6, self, v4, v8, v10];

  return v11;
}

- (id)_analyticSignature
{
  v2 = [(ICURLRequest *)self urlRequest];
  v3 = [v2 URL];

  v4 = [v3 host];
  v5 = [v3 path];
  if ([v5 hasPrefix:@"/WebObjects/"])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)observers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_observers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_sanitizedURLString
{
  v2 = [(NSURLRequest *)self->_urlRequest URL];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:v2 resolvingAgainstBaseURL:0];
    [v3 setFragment:0];
    v4 = [v3 queryItems];
    v5 = [v4 msv_filter:&__block_literal_global_15009];
    [v3 setQueryItems:v5];

    v6 = [v3 string];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __35__ICURLRequest__sanitizedURLString__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  if ([v3 isEqualToString:@"guid"])
  {
    v4 = [v2 name];
    v5 = [v4 isEqualToString:@"id"] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_task:(id)a3 didCompleteWithError:(id)a4 at:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a4;
  v8 = a5;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [(ICURLRequest *)self observers];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          observerQueue = self->_observerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __46__ICURLRequest__task_didCompleteWithError_at___block_invoke;
          block[3] = &unk_1E7BF5908;
          block[4] = v14;
          block[5] = self;
          v25 = v22;
          v26 = v23;
          v27 = v8;
          dispatch_async(observerQueue, block);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v16 = [(ICURLRequest *)self requestContext];
  v17 = [v16 _requestNotificationsEnabled];

  if (v17)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setObject:v8 forKeyedSubscript:@"time"];
    [v18 setObject:v23 forKeyedSubscript:@"error"];
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = ICURLRequestTaskDidCompleteNotification;
    v21 = [v18 copy];
    [v19 postNotificationName:v20 object:self userInfo:v21];
  }
}

- (void)_task:(id)a3 didReceiveInitialResponse:(id)a4 at:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v27 = a4;
  v26 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(ICURLRequest *)self observers];
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          observerQueue = self->_observerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __51__ICURLRequest__task_didReceiveInitialResponse_at___block_invoke;
          block[3] = &unk_1E7BF5908;
          block[4] = v13;
          block[5] = self;
          v29 = v25;
          v30 = v27;
          v31 = v26;
          dispatch_async(observerQueue, block);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  v15 = [(ICURLRequest *)self requestContext];
  v16 = [v15 _requestNotificationsEnabled];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    [v17 setObject:v26 forKeyedSubscript:@"time"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = v27;
      v20 = [v18 numberWithInteger:{objc_msgSend(v19, "statusCode")}];
      [v17 setObject:v20 forKeyedSubscript:@"statusCode"];

      v21 = [v19 allHeaderFields];

      [v17 setObject:v21 forKeyedSubscript:@"responseHeaders"];
    }

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = ICURLRequestTaskDidReceiveResponseNotification;
    v24 = [v17 copy];
    [v22 postNotificationName:v23 object:self userInfo:v24];
  }
}

- (void)_task:(id)a3 didResumeAt:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(ICURLRequest *)self observers];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          observerQueue = self->_observerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __34__ICURLRequest__task_didResumeAt___block_invoke;
          block[3] = &unk_1E7BFA1F0;
          block[4] = v11;
          block[5] = self;
          v23 = v21;
          v24 = v20;
          dispatch_async(observerQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v13 = [(ICURLRequest *)self requestContext];
  v14 = [v13 _requestNotificationsEnabled];

  if (v14)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 setObject:v20 forKeyedSubscript:@"time"];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v21];
    [v15 setObject:v16 forKeyedSubscript:@"networkTaskID"];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = ICURLRequestTaskDidResumeNotification;
    v19 = [v15 copy];
    [v17 postNotificationName:v18 object:self userInfo:v19];
  }
}

- (void)_requestWasEnqueuedAt:(id)a3
{
  v4 = [(ICURLRequest *)self requestContext];
  v5 = [v4 _requestNotificationsEnabled];

  if (v5)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v6 = [MEMORY[0x1E695DF00] date];
    [v12 setObject:v6 forKeyedSubscript:@"time"];

    v7 = [(ICURLRequest *)self _sanitizedURLString];
    [v12 setObject:v7 forKeyedSubscript:@"requestURL"];

    v8 = [(ICURLRequest *)self requestName];
    [v12 setObject:v8 forKeyedSubscript:@"requestName"];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = ICURLRequestDidStartNotification;
    v11 = [v12 copy];
    [v9 postNotificationName:v10 object:self userInfo:v11];
  }
}

- (void)_updateSignpostsForNewState:(int64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  signpostIdentifier = self->_signpostIdentifier;
  if (!signpostIdentifier)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
    self->_signpostIdentifier = os_signpost_id_make_with_pointer(v6, self);

    v7 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
    v8 = v7;
    v9 = self->_signpostIdentifier;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = [(ICURLRequest *)self _analyticSignature];
      *buf = 136446210;
      v29 = [v10 UTF8String];
      _os_signpost_emit_with_name_impl(&dword_1B4491000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ICURLRequestWaiting", " enableTelemetry=YES request=%{public, signpost.telemetry:string1}s", buf, 0xCu);
    }

    signpostIdentifier = self->_signpostIdentifier;
  }

  if (signpostIdentifier + 1 >= 2)
  {
    if (a3 == 1 && !self->_requestState)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
      v12 = v11;
      v13 = self->_signpostIdentifier;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B4491000, v12, OS_SIGNPOST_INTERVAL_END, v13, "ICURLRequestWaiting", &unk_1B477EA4E, buf, 2u);
      }

      v14 = [(ICURLRequest *)self _analyticSignature];
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
      v16 = v15;
      v17 = self->_signpostIdentifier;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        v18 = [(__CFString *)v14 UTF8String];
        *buf = 136446210;
        v29 = v18;
        _os_signpost_emit_with_name_impl(&dword_1B4491000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "ICURLRequest", " enableTelemetry=YES request=%{public, signpost.telemetry:string1}s", buf, 0xCu);
      }

LABEL_25:
      return;
    }

    if (a3 != 3)
    {
      return;
    }

    v19 = [(ICURLRequest *)self error];

    if (v19)
    {
      v20 = [(ICURLRequest *)self error];
      v21 = [v20 msv_analyticSignature];
    }

    else
    {
      v26 = [(ICURLRequest *)self urlResponse];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v14 = @"OK";
LABEL_21:
        v22 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
        v23 = v22;
        v24 = self->_signpostIdentifier;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          v25 = [(__CFString *)v14 UTF8String];
          *buf = 136446210;
          v29 = v25;
          _os_signpost_emit_with_name_impl(&dword_1B4491000, v23, OS_SIGNPOST_INTERVAL_END, v24, "ICURLRequest", "result=%{public, signpost.telemetry:string2}s", buf, 0xCu);
        }

        self->_signpostIdentifier = -1;
        goto LABEL_25;
      }

      v20 = [(ICURLRequest *)self urlResponse];
      if ([v20 statusCode] == 200)
      {
        v14 = @"OK";
        goto LABEL_20;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HTTP-%ld", objc_msgSend(v20, "statusCode")];
    }

    v14 = v21;
LABEL_20:

    goto LABEL_21;
  }
}

- (void)_ensureValidRetryReason:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5 || (v6 = [v5 isEqual:0], v7 = v9, v6))
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICURLRequest.m" lineNumber:279 description:@"There is no retry count for ICURLResponseHandlingRetryReasonNone."];

    v7 = v9;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_incrementRetryCountForReason:(id)a3
{
  v10 = a3;
  [(ICURLRequest *)self _ensureValidRetryReason:v10];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_retryCounts objectForKey:v10];
  v5 = [v4 unsignedIntegerValue];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 + 1];

  retryCounts = self->_retryCounts;
  if (!retryCounts)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_retryCounts;
    self->_retryCounts = v8;

    retryCounts = self->_retryCounts;
  }

  [(NSMutableDictionary *)retryCounts setObject:v6 forKey:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)_retryCountForReason:(id)a3
{
  v4 = a3;
  [(ICURLRequest *)self _ensureValidRetryReason:v4];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_retryCounts objectForKey:v4];

  v6 = [v5 unsignedIntegerValue];
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)_setMaxRetryCount:(unint64_t)a3 forReason:(id)a4
{
  v10 = a4;
  [(ICURLRequest *)self _ensureValidRetryReason:?];
  os_unfair_lock_lock(&self->_lock);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  maxRetryCounts = self->_maxRetryCounts;
  if (!maxRetryCounts)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_maxRetryCounts;
    self->_maxRetryCounts = v8;

    maxRetryCounts = self->_maxRetryCounts;
  }

  [(NSMutableDictionary *)maxRetryCounts setObject:v6 forKey:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)_maxRetryCountForReason:(id)a3
{
  v4 = a3;
  [(ICURLRequest *)self _ensureValidRetryReason:v4];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_maxRetryCounts objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [objc_opt_class() _defaultMaxRetryCountForReason:v4];
  }

  return v7;
}

- (void)setRequestState:(int64_t)a3
{
  [(ICURLRequest *)self _updateSignpostsForNewState:?];
  [(ICURLRequest *)self willChangeValueForKey:@"requestState"];
  self->_requestState = a3;

  [(ICURLRequest *)self didChangeValueForKey:@"requestState"];
}

- (void)updateState:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(ICURLRequest *)self setRequestState:a3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          observerQueue = self->_observerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __28__ICURLRequest_updateState___block_invoke;
          block[3] = &unk_1E7BF58E0;
          block[4] = v10;
          block[5] = self;
          block[6] = a3;
          dispatch_async(observerQueue, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)buildURLRequestWithCompletionHandler:(id)a3
{
  v13 = a3;
  currentURLRequest = self->_currentURLRequest;
  if (!currentURLRequest)
  {
    currentURLRequest = self->_urlRequest;
  }

  v5 = [(NSURLRequest *)currentURLRequest mutableCopy];
  v6 = [(ICURLRequest *)self requestContext];
  v7 = [v5 valueForHTTPHeaderField:@"User-Agent"];

  if (!v7)
  {
    v8 = [v6 userAgent];
    [v5 setValue:v8 forHTTPHeaderField:@"User-Agent"];
  }

  v9 = [v5 valueForHTTPHeaderField:@"Accept-Language"];

  if (!v9)
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 objectForKey:@"AppleLanguages"];

    if ([v11 count])
    {
      v12 = [v11 objectAtIndex:0];
    }

    else
    {
      v12 = @"en";
    }

    [v5 setValue:v12 forHTTPHeaderField:@"Accept-Language"];
  }

  v13[2](v13, v5, 0);
}

- (void)dealloc
{
  [(NSMutableArray *)self->_observers removeAllObjects];
  v3.receiver = self;
  v3.super_class = ICURLRequest;
  [(ICURLRequest *)&v3 dealloc];
}

- (ICURLRequest)initWithURLRequest:(id)a3 requestContext:(id)a4 resumeData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = ICURLRequest;
  v12 = [(ICURLRequest *)&v31 init];
  if (v12)
  {
    v13 = objc_alloc_init([objc_opt_class() _responseHandlerClass]);
    responseHandler = v12->_responseHandler;
    v12->_responseHandler = v13;

    objc_storeStrong(&v12->_urlRequest, a3);
    *&v12->_prioritize = 256;
    v12->_handlingType = 0;
    objc_storeStrong(&v12->_retryReason, 0);
    v12->_retryDelay = 10.0;
    v15 = dispatch_semaphore_create(0);
    waitSemaphore = v12->_waitSemaphore;
    v12->_waitSemaphore = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF88]);
    responseData = v12->_responseData;
    v12->_responseData = v17;

    v19 = [v10 copy];
    requestContext = v12->_requestContext;
    v12->_requestContext = v19;

    v21 = [v11 copy];
    resumeData = v12->_resumeData;
    v12->_resumeData = v21;

    v23 = [MEMORY[0x1E695DF70] array];
    observers = v12->_observers;
    v12->_observers = v23;

    v12->_lock._os_unfair_lock_opaque = 0;
    v25 = dispatch_queue_create("com.apple.itunescloud.ICURLRequest.observer", MEMORY[0x1E69E96A8]);
    observerQueue = v12->_observerQueue;
    v12->_observerQueue = v25;

    v27 = MSVNanoIDCreateTaggedPointer();
    requestID = v12->_requestID;
    v12->_requestID = v27;

    v29 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    [(ICURLRequest *)v12 setProgress:v29];
  }

  return v12;
}

- (ICURLRequest)initWithURL:(id)a3 requestContext:(id)a4 resumeData:(id)a5
{
  v8 = MEMORY[0x1E695AC68];
  v9 = a5;
  v10 = a4;
  v11 = [v8 requestWithURL:a3];
  v12 = [(ICURLRequest *)self initWithURLRequest:v11 requestContext:v10 resumeData:v9];

  return v12;
}

- (ICURLRequest)initWithURL:(id)a3 requestContext:(id)a4
{
  v6 = MEMORY[0x1E695AC68];
  v7 = a4;
  v8 = [v6 requestWithURL:a3];
  v9 = [(ICURLRequest *)self initWithURLRequest:v8 requestContext:v7 resumeData:0];

  return v9;
}

+ (id)_nameForRequestType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7BF5968[a3];
  }
}

+ (unint64_t)_defaultMaxRetryCountForReason:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 == @"authentication-performed" || ([(__CFString *)v3 isEqual:@"authentication-performed"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    if (v4 != @"other")
    {
      [(__CFString *)v4 isEqual:@"other"];
    }

    v5 = 0;
  }

  return v5;
}

@end