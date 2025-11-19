@interface CarPlaySessionDataProvider
- (_TtC21SiriInformationSearch26CarPlaySessionDataProvider)init;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CarPlaySessionDataProvider

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CarPlaySessionDataProvider.sessionDidConnect(_:)(v4);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CarPlaySessionDataProvider.sessionDidDisconnect(_:)();
}

- (_TtC21SiriInformationSearch26CarPlaySessionDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end