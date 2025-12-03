@interface FTPronGuessStreamingContext
- (FTPronGuessStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendPronGuessStreamingRequest:(id)request;
@end

@implementation FTPronGuessStreamingContext

- (FTPronGuessStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTPronGuessStreamingContext;
  v6 = [(FTPronGuessStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendPronGuessStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end