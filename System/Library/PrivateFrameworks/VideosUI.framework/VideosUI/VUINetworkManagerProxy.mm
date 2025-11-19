@interface VUINetworkManagerProxy
+ (void)executeRequest:(NSURLRequest *)a3 completion:(id)a4;
- (void)cancel:(NSURLRequest *)a3 completion:(id)a4;
@end

@implementation VUINetworkManagerProxy

+ (void)executeRequest:(NSURLRequest *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  OUTLINED_FUNCTION_5_10();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1E38364EC(&unk_1E42A1A50, v7);
}

- (void)cancel:(NSURLRequest *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  OUTLINED_FUNCTION_5_10();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1E38364EC(&unk_1E42A1A00, v7);
}

@end