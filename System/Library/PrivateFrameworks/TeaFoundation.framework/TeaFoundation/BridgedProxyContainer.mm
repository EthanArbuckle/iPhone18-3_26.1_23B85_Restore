@interface BridgedProxyContainer
- (TFCallbackRegistration)callback;
- (TFRegistrationContainer)privateContainer;
- (TFRegistrationContainer)publicContainer;
- (void)setCallback:(id)callback;
- (void)setPrivateContainer:(id)container;
- (void)setPublicContainer:(id)container;
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

- (void)setPublicContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BF0A9330(container);
}

- (void)setPrivateContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BF0A939C(container);
}

- (void)setCallback:(id)callback
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BF0A9408(callback);
}

@end