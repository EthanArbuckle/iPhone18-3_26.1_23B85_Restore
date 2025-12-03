@interface FTTextToSpeechRouterStreamingStreamingContext
- (FTTextToSpeechRouterStreamingStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendTextToSpeechRouterStreamingStreamingRequest:(id)request;
@end

@implementation FTTextToSpeechRouterStreamingStreamingContext

- (FTTextToSpeechRouterStreamingStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTTextToSpeechRouterStreamingStreamingContext;
  v6 = [(FTTextToSpeechRouterStreamingStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendTextToSpeechRouterStreamingStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end