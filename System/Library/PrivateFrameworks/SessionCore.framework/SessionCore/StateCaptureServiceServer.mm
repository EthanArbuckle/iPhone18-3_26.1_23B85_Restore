@interface StateCaptureServiceServer
- (_TtC11SessionCore25StateCaptureServiceServer)init;
- (id)stateForIdentifier:(id)a3 error:(id *)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation StateCaptureServiceServer

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_22CF86B14(v8);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore25StateCaptureServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)stateForIdentifier:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = sub_22D01667C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self;
  sub_22CF865E8(v5, v7);

  v9 = sub_22D0165CC();

  return v9;
}

@end