@interface CSDVoucherManagerImpl
- (void)sign:(id)a3 as:(id)a4 completion:(id)a5;
- (void)verify:(id)a3 completion:(id)a4;
@end

@implementation CSDVoucherManagerImpl

- (void)sign:(id)a3 as:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v14 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  _Block_copy(v8);
  sub_10036C594(v11, v13, v10, v14, v8);
  _Block_release(v8);
  sub_100049B14(v11, v13);
}

- (void)verify:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10036D7B0(v7, v8, v6);
  _Block_release(v6);
}

@end