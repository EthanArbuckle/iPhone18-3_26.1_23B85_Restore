@interface FTMultiUserStreamingContext
- (FTMultiUserStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendMultiUserStreamingRequest:(id)request;
@end

@implementation FTMultiUserStreamingContext

- (FTMultiUserStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTMultiUserStreamingContext;
  v6 = [(FTMultiUserStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendMultiUserStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end