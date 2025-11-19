@interface ALServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC5ALXPC17ALServiceDelegate)init;
- (void)onData:(id)a3;
@end

@implementation ALServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100304824(v7);

  return v9 & 1;
}

- (void)onData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100303E34(v5, v7);
  sub_100005B2C(v5, v7);
}

- (_TtC5ALXPC17ALServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end