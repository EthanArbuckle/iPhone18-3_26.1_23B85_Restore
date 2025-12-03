@interface CarPlaySessionDataProvider
- (_TtC21SiriInformationSearch26CarPlaySessionDataProvider)init;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CarPlaySessionDataProvider

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  CarPlaySessionDataProvider.sessionDidConnect(_:)(connectCopy);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  specialized CarPlaySessionDataProvider.sessionDidDisconnect(_:)();
}

- (_TtC21SiriInformationSearch26CarPlaySessionDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end