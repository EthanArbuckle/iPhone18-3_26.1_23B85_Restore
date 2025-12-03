@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13SeymourClient9XPCServer)init;
- (void)receiveEvent:(int64_t)event data:(id)data;
- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion;
@end

@implementation XPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1B4DCB0A8(connectionCopy);

  return v9 & 1;
}

- (_TtC13SeymourClient9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion
{
  v7 = _Block_copy(completion);
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_1B4F64894();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService);
  _Block_copy(v7);
  sub_1B4F63484(request, data, v11, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_1B4DD2B5C(data, v11);
}

- (void)receiveEvent:(int64_t)event data:(id)data
{
  if (data)
  {
    selfCopy = self;
    dataCopy = data;
    v8 = sub_1B4F64894();
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v12 = *(&self->super.isa + OBJC_IVAR____TtC13SeymourClient9XPCServer_dispatchService);
  TransportDispatchService.dispatchEvent(_:data:)(event, v8, v10);
  sub_1B4DD2B5C(v8, v10);
}

@end