@interface TapGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC17PromotedContentUI20TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
@end

@implementation TapGestureRecognizer

- (void)reset
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TapGestureRecognizer();
  v2 = v9.receiver;
  [(TapGestureRecognizer *)&v9 reset];
  v3 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  if (v3)
  {

    view = [v2 view];
    [v2 locationInView_];
    v6 = v5;
    v8 = v7;

    v3(v2, 0, v6, v8);
    sub_1C19A504C(v3);
  }

  else
  {
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  sub_1C19CA29C(touchCopy);
  v10 = v9;

  return v10 & 1;
}

- (_TtC17PromotedContentUI20TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_1C1A6F92C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end