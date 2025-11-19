@interface QLProxyingGenerationHandler
- (QLProxyingGenerationHandler)initWithGeneratorRequest:(id)a3;
- (void)didUpdateStatus:(int64_t)a3 ofThumbnailGenerationWithUUID:(id)a4;
- (void)failedToGenerateThumbnailOfType:(int64_t)a3 forRequestWithUUID:(id)a4 error:(id)a5;
@end

@implementation QLProxyingGenerationHandler

- (QLProxyingGenerationHandler)initWithGeneratorRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLProxyingGenerationHandler;
  v6 = [(QLProxyingGenerationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generatorRequest, a3);
  }

  return v7;
}

- (void)failedToGenerateThumbnailOfType:(int64_t)a3 forRequestWithUUID:(id)a4 error:(id)a5
{
  generatorRequest = self->_generatorRequest;
  v8 = a5;
  [(QLTGeneratorThumbnailRequest *)generatorRequest addTypeToHandledTypes:a3];
  v11 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler];
  v9 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  v10 = [v9 uuid];
  [v11 failedToGenerateThumbnailOfType:a3 forRequestWithUUID:v10 error:v8];
}

- (void)didUpdateStatus:(int64_t)a3 ofThumbnailGenerationWithUUID:(id)a4
{
  v8 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler:a3];
  v6 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  v7 = [v6 uuid];
  [v8 didUpdateStatus:a3 ofThumbnailGenerationWithUUID:v7];
}

@end