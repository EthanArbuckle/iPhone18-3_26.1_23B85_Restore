@interface VUIJSNetworkProxy
+ (void)makeNetworkRequest:(NSURLRequest *)request requestProperties:(WLKURLRequestProperties *)properties completionHandler:(id)handler;
+ (void)makeNetworkRequestOperation:(WLKURLRequestProperties *)operation completionHandler:(id)handler;
@end

@implementation VUIJSNetworkProxy

+ (void)makeNetworkRequestOperation:(WLKURLRequestProperties *)operation completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  OUTLINED_FUNCTION_5_10();
  v7 = swift_allocObject();
  v7[2] = operation;
  v7[3] = v6;
  v7[4] = self;
  operationCopy = operation;

  sub_1E38364EC(&unk_1E42CC600, v7);
}

+ (void)makeNetworkRequest:(NSURLRequest *)request requestProperties:(WLKURLRequestProperties *)properties completionHandler:(id)handler
{
  v8 = OUTLINED_FUNCTION_196(self, a2, request, properties, handler);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v7;
  v10 = v6;
  v11 = v5;

  sub_1E38364EC(&unk_1E42CC5F0, v9);
}

@end