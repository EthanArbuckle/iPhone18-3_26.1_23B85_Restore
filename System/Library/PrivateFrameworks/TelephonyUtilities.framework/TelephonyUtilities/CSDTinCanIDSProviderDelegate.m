@interface CSDTinCanIDSProviderDelegate
- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)a3 callSource:(id)a4 queue:(id)a5;
- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)a3 queue:(id)a4;
- (id)callUpdateForChat:(id)a3;
- (void)chat:(id)a3 receivedData:(id)a4;
- (void)provider:(id)a3 performSetMutedCallAction:(id)a4;
- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4;
- (void)provider:(id)a3 performStartCallAction:(id)a4;
- (void)providerDidBegin:(id)a3;
@end

@implementation CSDTinCanIDSProviderDelegate

- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)a3 callSource:(id)a4 queue:(id)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a5;
  sub_10028D408();
  return result;
}

- (id)callUpdateForChat:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_10028E500();
  swift_unknownObjectRelease();

  return v5;
}

- (void)provider:(id)a3 performStartCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10028E5C8();
}

- (void)provider:(id)a3 performSetRelayingCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10028F0AC(v6, v7);
}

- (void)provider:(id)a3 performSetMutedCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10028F4FC();
}

- (void)providerDidBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10028F99C();
}

- (void)chat:(id)a3 receivedData:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v10 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100290278();
  sub_100049B14(v7, v9);
  swift_unknownObjectRelease();
}

- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)a3 queue:(id)a4
{
  swift_unknownObjectRetain();
  v5 = a4;
  sub_100290760();
}

@end