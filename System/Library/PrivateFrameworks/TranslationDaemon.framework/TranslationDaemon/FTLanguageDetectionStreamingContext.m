@interface FTLanguageDetectionStreamingContext
- (FTLanguageDetectionStreamingContext)initWithGRPCStreamingCallContext:(id)a3;
- (void)sendLanguageDetectionStreamingRequest:(id)a3;
@end

@implementation FTLanguageDetectionStreamingContext

- (FTLanguageDetectionStreamingContext)initWithGRPCStreamingCallContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FTLanguageDetectionStreamingContext;
  v6 = [(FTLanguageDetectionStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, a3);
    v8 = v7;
  }

  return v7;
}

- (void)sendLanguageDetectionStreamingRequest:(id)a3
{
  v4 = [a3 flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end