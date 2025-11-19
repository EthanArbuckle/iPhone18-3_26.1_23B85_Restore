@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC13SeymourClient9XPCServer)init;
- (void)receiveEvent:(int64_t)a3 data:(id)a4;
- (void)receiveRequest:(int64_t)a3 data:(id)a4 completion:(id)a5;
@end

@implementation XPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1B4DCB0A8(v7);

  return v9 & 1;
}

- (_TtC13SeymourClient9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)receiveRequest:(int64_t)a3 data:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = self;
  if (a4)
  {
    v9 = a4;
    a4 = sub_1B4F64894();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService);
  _Block_copy(v7);
  sub_1B4F63484(a3, a4, v11, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_1B4DD2B5C(a4, v11);
}

- (void)receiveEvent:(int64_t)a3 data:(id)a4
{
  if (a4)
  {
    v6 = self;
    v7 = a4;
    v8 = sub_1B4F64894();
    v10 = v9;
  }

  else
  {
    v11 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService);
  TransportDispatchService.dispatchEvent(_:data:)(a3, v8, v10);
  sub_1B4DD2B5C(v8, v10);
}

@end