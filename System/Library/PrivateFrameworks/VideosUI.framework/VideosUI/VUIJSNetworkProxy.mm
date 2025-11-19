@interface VUIJSNetworkProxy
+ (void)makeNetworkRequest:(NSURLRequest *)a3 requestProperties:(WLKURLRequestProperties *)a4 completionHandler:(id)a5;
+ (void)makeNetworkRequestOperation:(WLKURLRequestProperties *)a3 completionHandler:(id)a4;
@end

@implementation VUIJSNetworkProxy

+ (void)makeNetworkRequestOperation:(WLKURLRequestProperties *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  OUTLINED_FUNCTION_5_10();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1E38364EC(&unk_1E42CC600, v7);
}

+ (void)makeNetworkRequest:(NSURLRequest *)a3 requestProperties:(WLKURLRequestProperties *)a4 completionHandler:(id)a5
{
  v8 = OUTLINED_FUNCTION_196(a1, a2, a3, a4, a5);
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