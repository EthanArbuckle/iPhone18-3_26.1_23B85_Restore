@interface TapGestureRecognizer
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC17PromotedContentUI20TapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
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

    v4 = [v2 view];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C19CA29C(v7);
  v10 = v9;

  return v10 & 1;
}

- (_TtC17PromotedContentUI20TapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
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