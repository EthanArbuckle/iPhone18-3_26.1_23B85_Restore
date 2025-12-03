@interface FTRecognitionStreamingContext
- (FTRecognitionStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendRecognitionStreamingRequest:(id)request;
@end

@implementation FTRecognitionStreamingContext

- (FTRecognitionStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTRecognitionStreamingContext;
  v6 = [(FTRecognitionStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendRecognitionStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end