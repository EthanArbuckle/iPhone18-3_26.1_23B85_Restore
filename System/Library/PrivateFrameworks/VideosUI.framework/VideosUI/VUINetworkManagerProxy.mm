@interface VUINetworkManagerProxy
+ (void)executeRequest:(NSURLRequest *)request completion:(id)completion;
- (void)cancel:(NSURLRequest *)cancel completion:(id)completion;
@end

@implementation VUINetworkManagerProxy

+ (void)executeRequest:(NSURLRequest *)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  OUTLINED_FUNCTION_5_10();
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = v6;
  v7[4] = self;
  requestCopy = request;

  sub_1E38364EC(&unk_1E42A1A50, v7);
}

- (void)cancel:(NSURLRequest *)cancel completion:(id)completion
{
  v6 = _Block_copy(completion);
  OUTLINED_FUNCTION_5_10();
  v7 = swift_allocObject();
  v7[2] = cancel;
  v7[3] = v6;
  v7[4] = self;
  cancelCopy = cancel;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42A1A00, v7);
}

@end