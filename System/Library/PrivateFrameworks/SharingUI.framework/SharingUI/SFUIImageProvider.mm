@interface SFUIImageProvider
- (SFUIImageProvider)init;
- (void)cancelImageRequest:(int)request;
- (void)deliverImage:(id)image identifier:(id)identifier placeholder:(BOOL)placeholder error:(id)error;
- (void)scheduleImageRequest:(id)request;
@end

@implementation SFUIImageProvider

- (SFUIImageProvider)init
{
  v14.receiver = self;
  v14.super_class = SFUIImageProvider;
  v2 = [(SFUIImageProvider *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextRequestID = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v3->_imageCache;
    v3->_imageCache = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.SharingUI.SFUIImageProvider.fetchQueue", v6);
    fetchQueue = v3->_fetchQueue;
    v3->_fetchQueue = v7;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requestsForIdentifier = v3->_requestsForIdentifier;
    v3->_requestsForIdentifier = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    requestsForRequestID = v3->_requestsForRequestID;
    v3->_requestsForRequestID = dictionary2;
  }

  return v3;
}

- (void)cancelImageRequest:(int)request
{
  v3 = *&request;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = sharing_ui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SFUIImageProvider *)v3 cancelImageRequest:v5];
  }

  requestsForRequestID = [(SFUIImageProvider *)self requestsForRequestID];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v8 = [requestsForRequestID objectForKeyedSubscript:v7];

  if (v8)
  {
    requestsForRequestID2 = [(SFUIImageProvider *)self requestsForRequestID];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [requestsForRequestID2 setObject:0 forKeyedSubscript:v10];

    requestsForIdentifier = [(SFUIImageProvider *)self requestsForIdentifier];
    identifier = [v8 identifier];
    v13 = [requestsForIdentifier objectForKeyedSubscript:identifier];

    [v13 removeObject:v8];
  }
}

- (void)scheduleImageRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  requestsForRequestID = [(SFUIImageProvider *)self requestsForRequestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(requestCopy, "requestID")}];
  [requestsForRequestID setObject:requestCopy forKeyedSubscript:v6];

  requestsForIdentifier = [(SFUIImageProvider *)self requestsForIdentifier];
  identifier = [requestCopy identifier];
  v9 = [requestsForIdentifier objectForKeyedSubscript:identifier];

  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    requestsForIdentifier2 = [(SFUIImageProvider *)self requestsForIdentifier];
    identifier2 = [requestCopy identifier];
    [requestsForIdentifier2 setObject:v9 forKeyedSubscript:identifier2];
  }

  [v9 addObject:requestCopy];
  if ([v9 count] <= 1)
  {
    if ([requestCopy synchronous])
    {
      [(SFUIImageProvider *)self performImageRequest:requestCopy];
    }

    else
    {
      objc_initWeak(&location, self);
      fetchQueue = [(SFUIImageProvider *)self fetchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__SFUIImageProvider_scheduleImageRequest___block_invoke;
      block[3] = &unk_1E7EE3CB8;
      objc_copyWeak(&v16, &location);
      v15 = requestCopy;
      dispatch_async(fetchQueue, block);

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v12 = sharing_ui_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(SFUIImageProvider *)requestCopy scheduleImageRequest:v12];
    }
  }
}

void __42__SFUIImageProvider_scheduleImageRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performImageRequest:*(a1 + 32)];
}

- (void)deliverImage:(id)image identifier:(id)identifier placeholder:(BOOL)placeholder error:(id)error
{
  placeholderCopy = placeholder;
  v45 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v12 = sharing_ui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromBOOL();
    *buf = 138413058;
    v38 = imageCopy;
    v39 = 2112;
    v40 = identifierCopy;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = errorCopy;
    _os_log_impl(&dword_1B9E4B000, v12, OS_LOG_TYPE_DEFAULT, "deliver image:%@ identifier:%@ placeholder:%@ error:%@", buf, 0x2Au);
  }

  if (imageCopy)
  {
    imageCache = [(SFUIImageProvider *)self imageCache];
    [imageCache setObject:imageCopy forKey:identifierCopy];
  }

  requestsForIdentifier = [(SFUIImageProvider *)self requestsForIdentifier];
  v16 = [requestsForIdentifier objectForKeyedSubscript:identifierCopy];

  if (!placeholderCopy)
  {
    requestsForIdentifier2 = [(SFUIImageProvider *)self requestsForIdentifier];
    [requestsForIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  v29 = identifierCopy;
  selfCopy = self;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        resultHandler = [v23 resultHandler];
        v25 = resultHandler;
        if (resultHandler)
        {
          (*(resultHandler + 16))(resultHandler, imageCopy, placeholderCopy, errorCopy);
        }

        if (!placeholderCopy)
        {
          [(SFUIImageProvider *)selfCopy requestsForRequestID];
          v27 = v26 = imageCopy;
          v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "requestID")}];
          [v27 setObject:0 forKeyedSubscript:v28];

          imageCopy = v26;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }
}

- (void)cancelImageRequest:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_DEBUG, "cancel request for requestID:%ld", &v2, 0xCu);
}

- (void)scheduleImageRequest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_DEBUG, "existing request pending for identifier:%@", &v4, 0xCu);
}

@end