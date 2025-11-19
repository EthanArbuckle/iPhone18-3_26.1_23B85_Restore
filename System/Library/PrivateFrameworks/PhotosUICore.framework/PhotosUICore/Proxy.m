@interface Proxy
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC12PhotosUICoreP33_CFFABA0BC19E421BDCF99D67E91D18945Proxy)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)interactionControllerForDismissal:(id)a3;
@end

@implementation Proxy

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = a3;
  v9 = a4;
  v10 = self;
  LOBYTE(a3) = sub_1A482DCD0(v8, v9);

  return a3 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = a3;
  v7 = self;
  LOBYTE(self) = sub_1A482DEFC(v6);

  return self & 1;
}

- (id)animationControllerForDismissedController:(id)a3
{
  swift_unknownObjectUnownedLoadStrong();
  v5 = a3;
  v6 = self;
  sub_1A482E738();
}

- (id)interactionControllerForDismissal:(id)a3
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  v5 = 0;
  if (v4 && a3)
  {
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 8);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v4);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  return v5;
}

- (_TtC12PhotosUICoreP33_CFFABA0BC19E421BDCF99D67E91D18945Proxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end