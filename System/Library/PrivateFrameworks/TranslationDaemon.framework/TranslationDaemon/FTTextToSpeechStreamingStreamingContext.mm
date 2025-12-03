@interface FTTextToSpeechStreamingStreamingContext
- (FTTextToSpeechStreamingStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendTextToSpeechStreamingStreamingRequest:(id)request;
@end

@implementation FTTextToSpeechStreamingStreamingContext

- (FTTextToSpeechStreamingStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTTextToSpeechStreamingStreamingContext;
  v6 = [(FTTextToSpeechStreamingStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendTextToSpeechStreamingStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end