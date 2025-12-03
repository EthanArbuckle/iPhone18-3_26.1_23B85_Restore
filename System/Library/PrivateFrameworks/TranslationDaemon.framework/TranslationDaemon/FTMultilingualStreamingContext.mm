@interface FTMultilingualStreamingContext
- (FTMultilingualStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendMultilingualStreamingRequest:(id)request;
@end

@implementation FTMultilingualStreamingContext

- (FTMultilingualStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTMultilingualStreamingContext;
  v6 = [(FTMultilingualStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendMultilingualStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end