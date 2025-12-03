@interface CSDTinCanIDSProviderDelegate
- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)capabilities callSource:(id)source queue:(id)queue;
- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue;
- (id)callUpdateForChat:(id)chat;
- (void)chat:(id)chat receivedData:(id)data;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performStartCallAction:(id)action;
- (void)providerDidBegin:(id)begin;
@end

@implementation CSDTinCanIDSProviderDelegate

- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)capabilities callSource:(id)source queue:(id)queue
{
  swift_unknownObjectRetain();
  sourceCopy = source;
  queueCopy = queue;
  sub_10028D408();
  return result;
}

- (id)callUpdateForChat:(id)chat
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_10028E500();
  swift_unknownObjectRelease();

  return v5;
}

- (void)provider:(id)provider performStartCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  selfCopy = self;
  sub_10028E5C8();
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  selfCopy = self;
  sub_10028F0AC(providerCopy, actionCopy);
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  providerCopy = provider;
  actionCopy = action;
  selfCopy = self;
  sub_10028F4FC();
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_10028F99C();
}

- (void)chat:(id)chat receivedData:(id)data
{
  swift_unknownObjectRetain();
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100290278();
  sub_100049B14(v7, v9);
  swift_unknownObjectRelease();
}

- (CSDTinCanIDSProviderDelegate)initWithCapabilities:(id)capabilities queue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_100290760();
}

@end