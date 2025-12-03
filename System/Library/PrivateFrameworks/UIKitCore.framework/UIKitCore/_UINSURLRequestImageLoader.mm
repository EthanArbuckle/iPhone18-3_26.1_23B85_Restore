@interface _UINSURLRequestImageLoader
- (BOOL)_really_cancel;
- (_UINSURLRequestImageLoader)initWithURLRequest:(id)request session:(id)session;
- (id)_error;
- (void)_really_loadImage:(id)image;
@end

@implementation _UINSURLRequestImageLoader

- (_UINSURLRequestImageLoader)initWithURLRequest:(id)request session:(id)session
{
  requestCopy = request;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = _UINSURLRequestImageLoader;
  v9 = [(_UIImageLoader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_session, session);
  }

  return v10;
}

- (void)_really_loadImage:(id)image
{
  v24 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  session = self->_session;
  request = self->_request;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __48___UINSURLRequestImageLoader__really_loadImage___block_invoke;
  v15 = &unk_1E7106530;
  selfCopy = self;
  v7 = imageCopy;
  v17 = v7;
  v8 = [(NSURLSession *)session dataTaskWithRequest:request completionHandler:&v12];
  objc_storeWeak(&self->_task, v8);
  v9 = _UIImageLoadingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(NSURLRequest *)self->_request HTTPMethod:v12];
    v11 = [(NSURLRequest *)self->_request URL];
    *buf = 134218499;
    selfCopy2 = self;
    v20 = 2113;
    v21 = v10;
    v22 = 2113;
    v23 = v11;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_INFO, "Image loader %p issuing URL request: %{private}@ %{private}@", buf, 0x20u);
  }

  [v8 resume];
}

- (BOOL)_really_cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_task);
  [WeakRetained cancel];

  return 1;
}

- (id)_error
{
  v6.receiver = self;
  v6.super_class = _UINSURLRequestImageLoader;
  _error = [(_UIImageLoader *)&v6 _error];
  if ([_error code] == -999)
  {
    v3 = 0;
  }

  else
  {
    v3 = _error;
  }

  v4 = v3;

  return v3;
}

@end