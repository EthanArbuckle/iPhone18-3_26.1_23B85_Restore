@interface TapDragGestureRecognizer
- (_TtC9TeaCharts24TapDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation TapDragGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_26D1682B4();
  sub_26D1682F8();
  v6 = sub_26D174354();
  eventCopy = event;
  selfCopy = self;
  TapDragGestureRecognizer.touchesBegan(_:with:)(v6, eventCopy);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_26D1682B4();
  sub_26D1682F8();
  sub_26D174354();
  eventCopy = event;
  selfCopy = self;
  TapDragGestureRecognizer.touchesCancelled(_:with:)();
}

- (void)reset
{
  selfCopy = self;
  TapDragGestureRecognizer.reset()();
}

- (_TtC9TeaCharts24TapDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_26D1744D4();
    swift_unknownObjectRelease();
  }

  TapDragGestureRecognizer.init(target:action:)();
}

@end