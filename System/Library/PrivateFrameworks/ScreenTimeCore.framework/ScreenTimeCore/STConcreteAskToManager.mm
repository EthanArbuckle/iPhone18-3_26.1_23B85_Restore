@interface STConcreteAskToManager
- (_TtC15ScreenTimeAgent22STConcreteAskToManager)init;
- (void)sendAskToMessageForAskForTimeRequest:(id)request completion:(id)completion;
@end

@implementation STConcreteAskToManager

- (void)sendAskToMessageForAskForTimeRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_1000A4864(requestCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC15ScreenTimeAgent22STConcreteAskToManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STConcreteAskToManager();
  return [(STConcreteAskToManager *)&v3 init];
}

@end