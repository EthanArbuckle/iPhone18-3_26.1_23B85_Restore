@interface QLProxyingGenerationHandler
- (QLProxyingGenerationHandler)initWithGeneratorRequest:(id)request;
- (void)didUpdateStatus:(int64_t)status ofThumbnailGenerationWithUUID:(id)d;
- (void)failedToGenerateThumbnailOfType:(int64_t)type forRequestWithUUID:(id)d error:(id)error;
@end

@implementation QLProxyingGenerationHandler

- (QLProxyingGenerationHandler)initWithGeneratorRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = QLProxyingGenerationHandler;
  v6 = [(QLProxyingGenerationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generatorRequest, request);
  }

  return v7;
}

- (void)failedToGenerateThumbnailOfType:(int64_t)type forRequestWithUUID:(id)d error:(id)error
{
  generatorRequest = self->_generatorRequest;
  errorCopy = error;
  [(QLTGeneratorThumbnailRequest *)generatorRequest addTypeToHandledTypes:type];
  generationHandler = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler];
  request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  uuid = [request uuid];
  [generationHandler failedToGenerateThumbnailOfType:type forRequestWithUUID:uuid error:errorCopy];
}

- (void)didUpdateStatus:(int64_t)status ofThumbnailGenerationWithUUID:(id)d
{
  v8 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler:status];
  request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  uuid = [request uuid];
  [v8 didUpdateStatus:status ofThumbnailGenerationWithUUID:uuid];
}

@end