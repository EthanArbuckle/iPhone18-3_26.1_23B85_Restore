@interface FTBatchTranslationStreamingContext
- (FTBatchTranslationStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendBatchTranslationStreamingRequest:(id)request;
@end

@implementation FTBatchTranslationStreamingContext

- (FTBatchTranslationStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTBatchTranslationStreamingContext;
  v6 = [(FTBatchTranslationStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendBatchTranslationStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end