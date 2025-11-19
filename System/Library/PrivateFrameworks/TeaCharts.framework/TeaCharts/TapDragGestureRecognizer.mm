@interface TapDragGestureRecognizer
- (_TtC9TeaCharts24TapDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation TapDragGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_26D1682B4();
  sub_26D1682F8();
  v6 = sub_26D174354();
  v7 = a4;
  v8 = self;
  TapDragGestureRecognizer.touchesBegan(_:with:)(v6, v7);
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  sub_26D1682B4();
  sub_26D1682F8();
  sub_26D174354();
  v6 = a4;
  v7 = self;
  TapDragGestureRecognizer.touchesCancelled(_:with:)();
}

- (void)reset
{
  v2 = self;
  TapDragGestureRecognizer.reset()();
}

- (_TtC9TeaCharts24TapDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_26D1744D4();
    swift_unknownObjectRelease();
  }

  TapDragGestureRecognizer.init(target:action:)();
}

@end