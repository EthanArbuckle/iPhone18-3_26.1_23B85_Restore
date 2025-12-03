@interface _UIContentSwipeDismissGestureRecognizer
- (BOOL)_willScrollX;
- (BOOL)_willScrollY;
- (_TtC5UIKit39_UIContentSwipeDismissGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (int64_t)state;
- (void)reset;
- (void)setState:(int64_t)state;
@end

@implementation _UIContentSwipeDismissGestureRecognizer

- (_TtC5UIKit39_UIContentSwipeDismissGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_188C85D98(v6, action);
}

- (BOOL)_willScrollX
{
  selfCopy = self;
  v3 = sub_189006D9C();

  return v3 & 1;
}

- (BOOL)_willScrollY
{
  selfCopy = self;
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

- (void)setState:(int64_t)state
{
  selfCopy = self;
  sub_189006F84(state);
}

@end