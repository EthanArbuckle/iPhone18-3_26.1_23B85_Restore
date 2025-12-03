@interface SFCompanionAdvertiser
- (NSData)serviceEndpointData;
- (SFCompanionAdvertiser)initWithServiceType:(id)type;
- (void)dealloc;
- (void)getContinuationStreamsWithEndpointData:(id)data completionHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation SFCompanionAdvertiser

- (SFCompanionAdvertiser)initWithServiceType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = SFCompanionAdvertiser;
  v5 = [(SFCompanionAdvertiser *)&v10 init];
  if (v5)
  {
    v6 = [typeCopy copy];
    serviceType = v5->_serviceType;
    v5->_serviceType = v6;

    v8 = +[SFCompanionManager serviceManager];
  }

  return v5;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = SFCompanionAdvertiser;
  [(SFCompanionAdvertiser *)&v2 dealloc];
}

- (NSData)serviceEndpointData
{
  v3 = +[SFCompanionManager serviceManager];
  v4 = [v3 streamDataForIdentifier:self->_serviceType];

  return v4;
}

- (void)getContinuationStreamsWithEndpointData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v7 = +[SFCompanionManager serviceManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__SFCompanionAdvertiser_getContinuationStreamsWithEndpointData_completionHandler___block_invoke;
  v9[3] = &unk_1E788C960;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 getStreamsForData:dataCopy withStreamHandler:v9];
}

uint64_t __82__SFCompanionAdvertiser_getContinuationStreamsWithEndpointData_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)start
{
  if ([(SFCompanionAdvertiser *)self supportsStreams])
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = __Block_byref_object_copy__1;
    v7[4] = __Block_byref_object_dispose__1;
    selfCopy = self;
    v8 = selfCopy;
    v4 = +[SFCompanionManager serviceManager];
    serviceType = selfCopy->_serviceType;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__SFCompanionAdvertiser_start__block_invoke;
    v6[3] = &unk_1E788C988;
    v6[4] = selfCopy;
    v6[5] = v7;
    [v4 supportStreamsWithIdentifier:serviceType withStreamHandler:v6];

    _Block_object_dispose(v7, 8);
  }
}

uint64_t __30__SFCompanionAdvertiser_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7 || *(v7 + 8) != 1)
  {
    v10 = streams_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "No longer supports streams", v12, 2u);
    }

    goto LABEL_8;
  }

  v8 = *(*(a1 + 32) + 16);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  [*(*(a1 + 32) + 16) advertiser:*(*(*(a1 + 40) + 8) + 40) didReceiveInputStream:v5 outputStream:v6];
  v9 = 1;
LABEL_9:

  return v9;
}

- (void)stop
{
  v3 = +[SFCompanionManager serviceManager];
  [v3 disableStreamSupportForIdentifier:self->_serviceType];

  [(SFCompanionAdvertiser *)self setSupportsStreams:0];
}

@end