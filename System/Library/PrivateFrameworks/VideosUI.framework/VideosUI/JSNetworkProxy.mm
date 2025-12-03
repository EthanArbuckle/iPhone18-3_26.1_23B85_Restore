@interface JSNetworkProxy
- (void)makeNetworkRequest:(NSURLRequest *)request requestProperties:(WLKURLRequestProperties *)properties completion:(id)completion;
@end

@implementation JSNetworkProxy

- (void)makeNetworkRequest:(NSURLRequest *)request requestProperties:(WLKURLRequestProperties *)properties completion:(id)completion
{
  v8 = OUTLINED_FUNCTION_196(self, a2, request, properties, completion);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v7;
  v10 = v6;
  v11 = v5;

  sub_1E38364EC(&unk_1E42CC610, v9);
}

@end