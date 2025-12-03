@interface ICURLRequest
+ (id)_nameForRequestType:(int64_t)type;
+ (unint64_t)_defaultMaxRetryCountForReason:(id)reason;
- (ICURLRequest)initWithURL:(id)l requestContext:(id)context;
- (ICURLRequest)initWithURL:(id)l requestContext:(id)context resumeData:(id)data;
- (ICURLRequest)initWithURLRequest:(id)request requestContext:(id)context resumeData:(id)data;
- (NSString)description;
- (id)_analyticSignature;
- (id)_sanitizedURLString;
- (id)observers;
- (unint64_t)_maxRetryCountForReason:(id)reason;
- (unint64_t)_retryCountForReason:(id)reason;
- (void)_ensureValidRetryReason:(id)reason;
- (void)_incrementRetryCountForReason:(id)reason;
- (void)_requestWasEnqueuedAt:(id)at;
- (void)_setMaxRetryCount:(unint64_t)count forReason:(id)reason;
- (void)_task:(id)_task didCompleteWithError:(id)error at:(id)at;
- (void)_task:(id)_task didReceiveInitialResponse:(id)response at:(id)at;
- (void)_task:(id)_task didResumeAt:(id)at;
- (void)_updateSignpostsForNewState:(int64_t)state;
- (void)buildURLRequestWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)setRequestState:(int64_t)state;
- (void)unregisterObserver:(id)observer;
- (void)updateState:(int64_t)state;
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
  clientInfo = [(ICRequestContext *)self->_requestContext clientInfo];
  _clientIdentifierForUserAgent = [clientInfo _clientIdentifierForUserAgent];
  clientInfo2 = [(ICRequestContext *)self->_requestContext clientInfo];
  clientVersion = [clientInfo2 clientVersion];
  v11 = [v5 stringWithFormat:@"<%@ %p (%@) [%@/%@]>", v6, self, v4, _clientIdentifierForUserAgent, clientVersion];

  return v11;
}

- (id)_analyticSignature
{
  urlRequest = [(ICURLRequest *)self urlRequest];
  v3 = [urlRequest URL];

  host = [v3 host];
  path = [v3 path];
  if ([path hasPrefix:@"/WebObjects/"])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", host, path];
  }

  else
  {
    v6 = host;
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
    queryItems = [v3 queryItems];
    v5 = [queryItems msv_filter:&__block_literal_global_15009];
    [v3 setQueryItems:v5];

    string = [v3 string];
  }

  else
  {
    string = 0;
  }

  return string;
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

- (void)_task:(id)_task didCompleteWithError:(id)error at:(id)at
{
  v33 = *MEMORY[0x1E69E9840];
  _taskCopy = _task;
  errorCopy = error;
  atCopy = at;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  observers = [(ICURLRequest *)self observers];
  v10 = [observers countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(observers);
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
          v25 = _taskCopy;
          v26 = errorCopy;
          v27 = atCopy;
          dispatch_async(observerQueue, block);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [observers countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  requestContext = [(ICURLRequest *)self requestContext];
  _requestNotificationsEnabled = [requestContext _requestNotificationsEnabled];

  if (_requestNotificationsEnabled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:atCopy forKeyedSubscript:@"time"];
    [dictionary setObject:errorCopy forKeyedSubscript:@"error"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = ICURLRequestTaskDidCompleteNotification;
    v21 = [dictionary copy];
    [defaultCenter postNotificationName:v20 object:self userInfo:v21];
  }
}

- (void)_task:(id)_task didReceiveInitialResponse:(id)response at:(id)at
{
  v37 = *MEMORY[0x1E69E9840];
  _taskCopy = _task;
  responseCopy = response;
  atCopy = at;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  observers = [(ICURLRequest *)self observers];
  v9 = [observers countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(observers);
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
          v29 = _taskCopy;
          v30 = responseCopy;
          v31 = atCopy;
          dispatch_async(observerQueue, block);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  requestContext = [(ICURLRequest *)self requestContext];
  _requestNotificationsEnabled = [requestContext _requestNotificationsEnabled];

  if (_requestNotificationsEnabled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:atCopy forKeyedSubscript:@"time"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = responseCopy;
      v20 = [v18 numberWithInteger:{objc_msgSend(v19, "statusCode")}];
      [dictionary setObject:v20 forKeyedSubscript:@"statusCode"];

      allHeaderFields = [v19 allHeaderFields];

      [dictionary setObject:allHeaderFields forKeyedSubscript:@"responseHeaders"];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = ICURLRequestTaskDidReceiveResponseNotification;
    v24 = [dictionary copy];
    [defaultCenter postNotificationName:v23 object:self userInfo:v24];
  }
}

- (void)_task:(id)_task didResumeAt:(id)at
{
  v30 = *MEMORY[0x1E69E9840];
  _taskCopy = _task;
  atCopy = at;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  observers = [(ICURLRequest *)self observers];
  v7 = [observers countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(observers);
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
          v23 = _taskCopy;
          v24 = atCopy;
          dispatch_async(observerQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [observers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  requestContext = [(ICURLRequest *)self requestContext];
  _requestNotificationsEnabled = [requestContext _requestNotificationsEnabled];

  if (_requestNotificationsEnabled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:atCopy forKeyedSubscript:@"time"];
    _taskCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", _taskCopy];
    [dictionary setObject:_taskCopy forKeyedSubscript:@"networkTaskID"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = ICURLRequestTaskDidResumeNotification;
    v19 = [dictionary copy];
    [defaultCenter postNotificationName:v18 object:self userInfo:v19];
  }
}

- (void)_requestWasEnqueuedAt:(id)at
{
  requestContext = [(ICURLRequest *)self requestContext];
  _requestNotificationsEnabled = [requestContext _requestNotificationsEnabled];

  if (_requestNotificationsEnabled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    date = [MEMORY[0x1E695DF00] date];
    [dictionary setObject:date forKeyedSubscript:@"time"];

    _sanitizedURLString = [(ICURLRequest *)self _sanitizedURLString];
    [dictionary setObject:_sanitizedURLString forKeyedSubscript:@"requestURL"];

    requestName = [(ICURLRequest *)self requestName];
    [dictionary setObject:requestName forKeyedSubscript:@"requestName"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = ICURLRequestDidStartNotification;
    v11 = [dictionary copy];
    [defaultCenter postNotificationName:v10 object:self userInfo:v11];
  }
}

- (void)_updateSignpostsForNewState:(int64_t)state
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
      _analyticSignature = [(ICURLRequest *)self _analyticSignature];
      *buf = 136446210;
      uTF8String = [_analyticSignature UTF8String];
      _os_signpost_emit_with_name_impl(&dword_1B4491000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ICURLRequestWaiting", " enableTelemetry=YES request=%{public, signpost.telemetry:string1}s", buf, 0xCu);
    }

    signpostIdentifier = self->_signpostIdentifier;
  }

  if (signpostIdentifier + 1 >= 2)
  {
    if (state == 1 && !self->_requestState)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
      v12 = v11;
      v13 = self->_signpostIdentifier;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B4491000, v12, OS_SIGNPOST_INTERVAL_END, v13, "ICURLRequestWaiting", &unk_1B477EA4E, buf, 2u);
      }

      _analyticSignature2 = [(ICURLRequest *)self _analyticSignature];
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
      v16 = v15;
      v17 = self->_signpostIdentifier;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        uTF8String2 = [(__CFString *)_analyticSignature2 UTF8String];
        *buf = 136446210;
        uTF8String = uTF8String2;
        _os_signpost_emit_with_name_impl(&dword_1B4491000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "ICURLRequest", " enableTelemetry=YES request=%{public, signpost.telemetry:string1}s", buf, 0xCu);
      }

LABEL_25:
      return;
    }

    if (state != 3)
    {
      return;
    }

    error = [(ICURLRequest *)self error];

    if (error)
    {
      error2 = [(ICURLRequest *)self error];
      msv_analyticSignature = [error2 msv_analyticSignature];
    }

    else
    {
      urlResponse = [(ICURLRequest *)self urlResponse];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        _analyticSignature2 = @"OK";
LABEL_21:
        v22 = os_log_create("com.apple.amp.iTunesCloud", "Analytics");
        v23 = v22;
        v24 = self->_signpostIdentifier;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          uTF8String3 = [(__CFString *)_analyticSignature2 UTF8String];
          *buf = 136446210;
          uTF8String = uTF8String3;
          _os_signpost_emit_with_name_impl(&dword_1B4491000, v23, OS_SIGNPOST_INTERVAL_END, v24, "ICURLRequest", "result=%{public, signpost.telemetry:string2}s", buf, 0xCu);
        }

        self->_signpostIdentifier = -1;
        goto LABEL_25;
      }

      error2 = [(ICURLRequest *)self urlResponse];
      if ([error2 statusCode] == 200)
      {
        _analyticSignature2 = @"OK";
        goto LABEL_20;
      }

      msv_analyticSignature = [MEMORY[0x1E696AEC0] stringWithFormat:@"HTTP-%ld", objc_msgSend(error2, "statusCode")];
    }

    _analyticSignature2 = msv_analyticSignature;
LABEL_20:

    goto LABEL_21;
  }
}

- (void)_ensureValidRetryReason:(id)reason
{
  reasonCopy = reason;
  v9 = reasonCopy;
  if (!reasonCopy || (v6 = [reasonCopy isEqual:0], v7 = v9, v6))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICURLRequest.m" lineNumber:279 description:@"There is no retry count for ICURLResponseHandlingRetryReasonNone."];

    v7 = v9;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)_incrementRetryCountForReason:(id)reason
{
  reasonCopy = reason;
  [(ICURLRequest *)self _ensureValidRetryReason:reasonCopy];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_retryCounts objectForKey:reasonCopy];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];

  retryCounts = self->_retryCounts;
  if (!retryCounts)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_retryCounts;
    self->_retryCounts = v8;

    retryCounts = self->_retryCounts;
  }

  [(NSMutableDictionary *)retryCounts setObject:v6 forKey:reasonCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)_retryCountForReason:(id)reason
{
  reasonCopy = reason;
  [(ICURLRequest *)self _ensureValidRetryReason:reasonCopy];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_retryCounts objectForKey:reasonCopy];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  os_unfair_lock_unlock(&self->_lock);
  return unsignedIntegerValue;
}

- (void)_setMaxRetryCount:(unint64_t)count forReason:(id)reason
{
  reasonCopy = reason;
  [(ICURLRequest *)self _ensureValidRetryReason:?];
  os_unfair_lock_lock(&self->_lock);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  maxRetryCounts = self->_maxRetryCounts;
  if (!maxRetryCounts)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_maxRetryCounts;
    self->_maxRetryCounts = v8;

    maxRetryCounts = self->_maxRetryCounts;
  }

  [(NSMutableDictionary *)maxRetryCounts setObject:v6 forKey:reasonCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)_maxRetryCountForReason:(id)reason
{
  reasonCopy = reason;
  [(ICURLRequest *)self _ensureValidRetryReason:reasonCopy];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_maxRetryCounts objectForKey:reasonCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
    unsignedIntegerValue = [objc_opt_class() _defaultMaxRetryCountForReason:reasonCopy];
  }

  return unsignedIntegerValue;
}

- (void)setRequestState:(int64_t)state
{
  [(ICURLRequest *)self _updateSignpostsForNewState:?];
  [(ICURLRequest *)self willChangeValueForKey:@"requestState"];
  self->_requestState = state;

  [(ICURLRequest *)self didChangeValueForKey:@"requestState"];
}

- (void)updateState:(int64_t)state
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(ICURLRequest *)self setRequestState:state];
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
          block[6] = state;
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

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)buildURLRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentURLRequest = self->_currentURLRequest;
  if (!currentURLRequest)
  {
    currentURLRequest = self->_urlRequest;
  }

  v5 = [(NSURLRequest *)currentURLRequest mutableCopy];
  requestContext = [(ICURLRequest *)self requestContext];
  v7 = [v5 valueForHTTPHeaderField:@"User-Agent"];

  if (!v7)
  {
    userAgent = [requestContext userAgent];
    [v5 setValue:userAgent forHTTPHeaderField:@"User-Agent"];
  }

  v9 = [v5 valueForHTTPHeaderField:@"Accept-Language"];

  if (!v9)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults objectForKey:@"AppleLanguages"];

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

  handlerCopy[2](handlerCopy, v5, 0);
}

- (void)dealloc
{
  [(NSMutableArray *)self->_observers removeAllObjects];
  v3.receiver = self;
  v3.super_class = ICURLRequest;
  [(ICURLRequest *)&v3 dealloc];
}

- (ICURLRequest)initWithURLRequest:(id)request requestContext:(id)context resumeData:(id)data
{
  requestCopy = request;
  contextCopy = context;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = ICURLRequest;
  v12 = [(ICURLRequest *)&v31 init];
  if (v12)
  {
    v13 = objc_alloc_init([objc_opt_class() _responseHandlerClass]);
    responseHandler = v12->_responseHandler;
    v12->_responseHandler = v13;

    objc_storeStrong(&v12->_urlRequest, request);
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

    v19 = [contextCopy copy];
    requestContext = v12->_requestContext;
    v12->_requestContext = v19;

    v21 = [dataCopy copy];
    resumeData = v12->_resumeData;
    v12->_resumeData = v21;

    array = [MEMORY[0x1E695DF70] array];
    observers = v12->_observers;
    v12->_observers = array;

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

- (ICURLRequest)initWithURL:(id)l requestContext:(id)context resumeData:(id)data
{
  v8 = MEMORY[0x1E695AC68];
  dataCopy = data;
  contextCopy = context;
  v11 = [v8 requestWithURL:l];
  v12 = [(ICURLRequest *)self initWithURLRequest:v11 requestContext:contextCopy resumeData:dataCopy];

  return v12;
}

- (ICURLRequest)initWithURL:(id)l requestContext:(id)context
{
  v6 = MEMORY[0x1E695AC68];
  contextCopy = context;
  v8 = [v6 requestWithURL:l];
  v9 = [(ICURLRequest *)self initWithURLRequest:v8 requestContext:contextCopy resumeData:0];

  return v9;
}

+ (id)_nameForRequestType:(int64_t)type
{
  if (type > 5)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7BF5968[type];
  }
}

+ (unint64_t)_defaultMaxRetryCountForReason:(id)reason
{
  reasonCopy = reason;
  v4 = reasonCopy;
  if (reasonCopy == @"authentication-performed" || ([(__CFString *)reasonCopy isEqual:@"authentication-performed"]& 1) != 0)
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