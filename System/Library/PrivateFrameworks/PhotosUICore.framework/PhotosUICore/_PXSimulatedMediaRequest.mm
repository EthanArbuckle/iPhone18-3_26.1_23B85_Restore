@interface _PXSimulatedMediaRequest
+ (id)defaultSimulatedMediaRequestWithOriginalOptions:(id)a3 simulatedResultHandler:(id)a4;
- (_PXSimulatedMediaRequest)initWithOriginalOptions:(id)a3 simulatedResultHandler:(id)a4;
- (_PXSimulatedMediaRequest)initWithWrappedMediaRequest:(id)a3;
- (void)handleOriginalProgress:(double)a3 error:(id)a4 stop:(BOOL *)a5 info:(id)a6;
@end

@implementation _PXSimulatedMediaRequest

- (void)handleOriginalProgress:(double)a3 error:(id)a4 stop:(BOOL *)a5 info:(id)a6
{
  originalProgressHandler = self->_originalProgressHandler;
  if (originalProgressHandler)
  {
    originalProgressHandler[2](originalProgressHandler, a4, a5, a6, a3);
  }
}

- (_PXSimulatedMediaRequest)initWithWrappedMediaRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 simulatedOptions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___PXSimulatedMediaRequest_initWithWrappedMediaRequest___block_invoke;
  v9[3] = &unk_1E7743F20;
  v10 = v4;
  v6 = v4;
  v7 = [(_PXSimulatedMediaRequest *)self initWithOriginalOptions:v5 simulatedResultHandler:v9];

  return v7;
}

- (_PXSimulatedMediaRequest)initWithOriginalOptions:(id)a3 simulatedResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = _PXSimulatedMediaRequest;
  v8 = [(_PXSimulatedMediaRequest *)&v23 init];
  if (v8)
  {
    v9 = [v6 progressHandler];
    v10 = [v9 copy];
    originalProgressHandler = v8->_originalProgressHandler;
    v8->_originalProgressHandler = v10;

    v12 = [v6 copyWithZone:0];
    simulatedOptions = v8->_simulatedOptions;
    v8->_simulatedOptions = v12;

    objc_initWeak(&location, v8);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __75___PXSimulatedMediaRequest_initWithOriginalOptions_simulatedResultHandler___block_invoke;
    v20 = &unk_1E774A490;
    objc_copyWeak(&v21, &location);
    [(_RequestOptions *)v8->_simulatedOptions setProgressHandler:&v17];
    v14 = [v7 copy];
    simulatedResultHandler = v8->_simulatedResultHandler;
    v8->_simulatedResultHandler = v14;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

+ (id)defaultSimulatedMediaRequestWithOriginalOptions:(id)a3 simulatedResultHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PXMediaProviderSettings sharedInstance];
  v8 = [[_PXSimulatedMediaRequest alloc] initWithOriginalOptions:v6 simulatedResultHandler:v5];

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