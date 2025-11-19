@interface ChartDragGestureRecognizer
- (_TtC9WeatherUI26ChartDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation ChartDragGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_1BCD7FA54();
  sub_1BCD7FA98();
  v6 = sub_1BCE1D6B0();
  v7 = a4;
  v8 = self;
  ChartDragGestureRecognizer.touchesBegan(_:with:)(v6, v7);
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  sub_1BCD7FA54();
  sub_1BCD7FA98();
  sub_1BCE1D6B0();
  v6 = a4;
  v7 = self;
  ChartDragGestureRecognizer.touchesCancelled(_:with:)();
}

- (void)reset
{
  v2 = self;
  ChartDragGestureRecognizer.reset()();
}

- (_TtC9WeatherUI26ChartDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1BCE1DBF0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return ChartDragGestureRecognizer.init(target:action:)(v6, a4);
}

@end