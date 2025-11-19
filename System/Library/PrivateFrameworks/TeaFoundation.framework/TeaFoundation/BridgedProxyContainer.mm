@interface BridgedProxyContainer
- (TFCallbackRegistration)callback;
- (TFRegistrationContainer)privateContainer;
- (TFRegistrationContainer)publicContainer;
- (void)setCallback:(id)a3;
- (void)setPrivateContainer:(id)a3;
- (void)setPublicContainer:(id)a3;
@end

@implementation BridgedProxyContainer

- (TFRegistrationContainer)publicContainer
{
  v2 = sub_1BEFE8B70();

  return v2;
}

- (TFRegistrationContainer)privateContainer
{
  v2 = sub_1BEFF26C0();

  return v2;
}

- (TFCallbackRegistration)callback
{
  v2 = sub_1BEFF2D90();

  return v2;
}

- (void)setPublicContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BF0A9330(a3);
}

- (void)setPrivateContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BF0A939C(a3);
}

- (void)setCallback:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BF0A9408(a3);
}

@end