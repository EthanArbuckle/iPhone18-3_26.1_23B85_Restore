@interface STConcreteAskToManager
- (_TtC15ScreenTimeAgent22STConcreteAskToManager)init;
- (void)sendAskToMessageForAskForTimeRequest:(id)a3 completion:(id)a4;
@end

@implementation STConcreteAskToManager

- (void)sendAskToMessageForAskForTimeRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000A4864(v7, v6);
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