@interface AlertServiceServer
- (_TtC11SessionCore18AlertServiceServer)init;
- (void)dismissAlertWithActivityIdentifier:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)presentAlertWithActivityIdentifier:(id)a3 payload:(id)a4 options:(id)a5 completion:(id)a6;
@end

@implementation AlertServiceServer

- (void)presentAlertWithActivityIdentifier:(id)a3 payload:(id)a4 options:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_22D01667C();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = sub_22D0141EC();
  v18 = v17;

  v19 = sub_22D0141EC();
  v21 = v20;

  _Block_copy(v9);
  sub_22CF34DA4(v10, v12, v16, v18, v19, v21, v15, v9);
  _Block_release(v9);
  _Block_release(v9);
  sub_22CEE7524(v19, v21);
  sub_22CEE7524(v16, v18);
}

- (void)dismissAlertWithActivityIdentifier:(id)a3
{
  v4 = sub_22D01667C();
  v6 = v5;
  v7 = self;
  sub_22CF3CB30(v4, v6);
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_22CFAAA18(v8);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore18AlertServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end