@interface PhotosDynamicHeaderContentView.Proxy
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtCC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView5Proxy)init;
- (id)makeInternalMenuWithPresentationEnvironment:(id)environment;
@end

@implementation PhotosDynamicHeaderContentView.Proxy

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    recognizerCopy = recognizer;
    touchCopy = touch;
    selfCopy = self;
    v12 = sub_1A41AAB20(recognizerCopy);
  }

  else
  {
    return 0;
  }

  return v12;
}

- (id)makeInternalMenuWithPresentationEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1A41A4D40(environment);
  swift_unknownObjectRelease();

  return v6;
}

- (_TtCC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView5Proxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end