@interface FTSpeechTranslationStreamingContext
- (FTSpeechTranslationStreamingContext)initWithGRPCStreamingCallContext:(id)context;
- (void)sendSpeechTranslationStreamingRequest:(id)request;
@end

@implementation FTSpeechTranslationStreamingContext

- (FTSpeechTranslationStreamingContext)initWithGRPCStreamingCallContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FTSpeechTranslationStreamingContext;
  v6 = [(FTSpeechTranslationStreamingContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grpcContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)sendSpeechTranslationStreamingRequest:(id)request
{
  flatbuffData = [request flatbuffData];
  [(OspreyClientStreamingContext *)self->_grpcContext writeFrame:?];
}

@end