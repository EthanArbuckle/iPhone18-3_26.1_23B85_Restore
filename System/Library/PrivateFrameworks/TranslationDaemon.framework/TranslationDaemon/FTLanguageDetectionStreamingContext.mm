@interface FTLanguageDetectionStreamingContext
- (FTLanguageDetectionStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendLanguageDetectionStreamingRequest:(id)request;
@end

@implementation FTLanguageDetectionStreamingContext

- (FTLanguageDetectionStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTLanguageDetectionStreamingContext;
  v6 = [(FTLanguageDetectionStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendLanguageDetectionStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end