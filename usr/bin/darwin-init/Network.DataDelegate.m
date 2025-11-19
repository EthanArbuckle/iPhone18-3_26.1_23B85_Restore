@interface Network.DataDelegate
- (_TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate)init;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation Network.DataDelegate

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001AF0B8(v7);
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1001AF258(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end