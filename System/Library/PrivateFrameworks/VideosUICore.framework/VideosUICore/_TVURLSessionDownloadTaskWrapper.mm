@interface _TVURLSessionDownloadTaskWrapper
+ (id)writeRequestToTempDir:(id)dir resultError:(id)error;
- (_TVURLSessionDownloadTaskWrapper)initWithURL:(id)l;
- (void)cancel;
- (void)resumeWithCompletionHandler:(id)handler;
- (void)resumeWithCompletionHandler:(id)handler session:(id)session;
@end

@implementation _TVURLSessionDownloadTaskWrapper

- (_TVURLSessionDownloadTaskWrapper)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = _TVURLSessionDownloadTaskWrapper;
  v5 = [(_TVURLSessionDownloadTaskWrapper *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v5->_state = 1;
  }

  return v5;
}

+ (id)writeRequestToTempDir:(id)dir resultError:(id)error
{
  dirCopy = dir;
  errorCopy = error;
  if (errorCopy || ([dirCopy data], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v7 = VUICImageLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[_TVURLSessionDownloadTaskWrapper writeRequestToTempDir:resultError:];
    }

    goto LABEL_4;
  }

  v11 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v11 stringByAppendingPathComponent:uUIDString];

  data = [dirCopy data];
  LODWORD(uUID) = [data writeToFile:v7 atomically:0];

  if (!uUID)
  {
    v15 = VUICImageLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[_TVURLSessionDownloadTaskWrapper writeRequestToTempDir:resultError:];
    }

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
LABEL_5:

  return v8;
}

- (void)resumeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_state == 1)
  {
    v5 = (self->_taskID + 1);
    self->_taskID = v5;
    self->_state = 0;
    objc_initWeak(&location, self);
    v6 = [(NSURL *)self->_url copy];
    v7 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke;
    block[3] = &unk_279E21E48;
    v10 = v6;
    v8 = v6;
    objc_copyWeak(v12, &location);
    v12[1] = v5;
    v11 = handlerCopy;
    dispatch_async(v7, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)resumeWithCompletionHandler:(id)handler session:(id)session
{
  handlerCopy = handler;
  sessionCopy = session;
  if (sessionCopy)
  {
    if (self->_state == 1)
    {
      v8 = (self->_taskID + 1);
      self->_taskID = v8;
      self->_state = 0;
      objc_initWeak(&location, self);
      v9 = [(NSURL *)self->_url copy];
      v10 = dispatch_get_global_queue(21, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke;
      v13[3] = &unk_279E21EE8;
      v14 = sessionCopy;
      v15 = v9;
      v11 = v9;
      objc_copyWeak(v17, &location);
      v17[1] = v8;
      v16 = handlerCopy;
      dispatch_async(v10, v13);

      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v12 = VUICImageLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_TVURLSessionDownloadTaskWrapper resumeWithCompletionHandler:session:];
    }

    [(_TVURLSessionDownloadTaskWrapper *)self resumeWithCompletionHandler:handlerCopy];
  }
}

- (void)cancel
{
  self->_state = 1;
  [(NSURLSessionDataTask *)self->_dataTask cancel];
  dataTask = self->_dataTask;
  self->_dataTask = 0;
}

@end