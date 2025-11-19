@interface _UIContentSwipeDismissGestureRecognizer
- (BOOL)_willScrollX;
- (BOOL)_willScrollY;
- (_TtC5UIKit39_UIContentSwipeDismissGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (int64_t)state;
- (void)reset;
- (void)setState:(int64_t)a3;
@end

@implementation _UIContentSwipeDismissGestureRecognizer

- (_TtC5UIKit39_UIContentSwipeDismissGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_188C85D98(v6, a4);
}

- (BOOL)_willScrollX
{
  v2 = self;
  v3 = sub_189006D9C();

  return v3 & 1;
}

- (BOOL)_willScrollY
{
  v2 = self;
  v3 = sub_189007114();

  return v3 & 1;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UIGestureRecognizer *)&v3 reset];
  *&v2[OBJC_IVAR____TtC5UIKit39_UIContentSwipeDismissGestureRecognizer_recognizedAxis] = 0;
}

- (int64_t)state
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(UIGestureRecognizer *)&v3 state];
}

- (void)setState:(int64_t)a3
{
  v4 = self;
  sub_189006F84(a3);
}

@end