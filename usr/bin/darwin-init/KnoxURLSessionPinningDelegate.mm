@interface KnoxURLSessionPinningDelegate
- (_TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate)init;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation KnoxURLSessionPinningDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100049A0C(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end