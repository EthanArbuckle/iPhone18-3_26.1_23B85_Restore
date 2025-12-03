@interface _PXSimulatedMediaRequest
+ (id)defaultSimulatedMediaRequestWithOriginalOptions:(id)options simulatedResultHandler:(id)handler;
- (_PXSimulatedMediaRequest)initWithOriginalOptions:(id)options simulatedResultHandler:(id)handler;
- (_PXSimulatedMediaRequest)initWithWrappedMediaRequest:(id)request;
- (void)handleOriginalProgress:(double)progress error:(id)error stop:(BOOL *)stop info:(id)info;
@end

@implementation _PXSimulatedMediaRequest

- (void)handleOriginalProgress:(double)progress error:(id)error stop:(BOOL *)stop info:(id)info
{
  originalProgressHandler = self->_originalProgressHandler;
  if (originalProgressHandler)
  {
    originalProgressHandler[2](originalProgressHandler, error, stop, info, progress);
  }
}

- (_PXSimulatedMediaRequest)initWithWrappedMediaRequest:(id)request
{
  requestCopy = request;
  simulatedOptions = [requestCopy simulatedOptions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___PXSimulatedMediaRequest_initWithWrappedMediaRequest___block_invoke;
  v9[3] = &unk_1E7743F20;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [(_PXSimulatedMediaRequest *)self initWithOriginalOptions:simulatedOptions simulatedResultHandler:v9];

  return v7;
}

- (_PXSimulatedMediaRequest)initWithOriginalOptions:(id)options simulatedResultHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = _PXSimulatedMediaRequest;
  v8 = [(_PXSimulatedMediaRequest *)&v23 init];
  if (v8)
  {
    progressHandler = [optionsCopy progressHandler];
    v10 = [progressHandler copy];
    originalProgressHandler = v8->_originalProgressHandler;
    v8->_originalProgressHandler = v10;

    v12 = [optionsCopy copyWithZone:0];
    simulatedOptions = v8->_simulatedOptions;
    v8->_simulatedOptions = v12;

    objc_initWeak(&location, v8);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __75___PXSimulatedMediaRequest_initWithOriginalOptions_simulatedResultHandler___block_invoke;
    v20 = &unk_1E774A490;
    objc_copyWeak(&v21, &location);
    [(_RequestOptions *)v8->_simulatedOptions setProgressHandler:&v17];
    v14 = [handlerCopy copy];
    simulatedResultHandler = v8->_simulatedResultHandler;
    v8->_simulatedResultHandler = v14;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

+ (id)defaultSimulatedMediaRequestWithOriginalOptions:(id)options simulatedResultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  v7 = +[PXMediaProviderSettings sharedInstance];
  v8 = [[_PXSimulatedMediaRequest alloc] initWithOriginalOptions:optionsCopy simulatedResultHandler:handlerCopy];

  [v7 simulatedDelay];
  if (v9 > 0.0)
  {
    v10 = [_PXSimulatedDelayedMediaRequest alloc];
    [v7 simulatedDelay];
    v11 = [(_PXSimulatedDelayedMediaRequest *)v10 initWithWrappedMediaRequest:v8 delay:?];

    v8 = v11;
  }

  if ([v7 simulateError])
  {
    v12 = [_PXSimulatedFailingMediaRequest alloc];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXSimulatedUIMediaProvider" code:1 userInfo:0];
    v14 = [(_PXSimulatedFailingMediaRequest *)v12 initWithWrappedMediaRequest:v8 error:v13];

    v8 = v14;
  }

  return v8;
}

@end