@interface Proxy
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC12PhotosUICoreP33_CFFABA0BC19E421BDCF99D67E91D18945Proxy)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)interactionControllerForDismissal:(id)dismissal;
@end

@implementation Proxy

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  LOBYTE(recognizer) = sub_1A482DCD0(recognizerCopy, gestureRecognizerCopy);

  return recognizer & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1A482DEFC(beginCopy);

  return self & 1;
}

- (id)animationControllerForDismissedController:(id)controller
{
  swift_unknownObjectUnownedLoadStrong();
  controllerCopy = controller;
  selfCopy = self;
  sub_1A482E738();
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  v5 = 0;
  if (v4 && dismissal)
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