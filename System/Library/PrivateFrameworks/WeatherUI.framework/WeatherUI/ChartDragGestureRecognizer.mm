@interface ChartDragGestureRecognizer
- (_TtC9WeatherUI26ChartDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation ChartDragGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_1BCD7FA54();
  sub_1BCD7FA98();
  v6 = sub_1BCE1D6B0();
  eventCopy = event;
  selfCopy = self;
  ChartDragGestureRecognizer.touchesBegan(_:with:)(v6, eventCopy);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_1BCD7FA54();
  sub_1BCD7FA98();
  sub_1BCE1D6B0();
  eventCopy = event;
  selfCopy = self;
  ChartDragGestureRecognizer.touchesCancelled(_:with:)();
}

- (void)reset
{
  selfCopy = self;
  ChartDragGestureRecognizer.reset()();
}

- (_TtC9WeatherUI26ChartDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_1BCE1DBF0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return ChartDragGestureRecognizer.init(target:action:)(v6, action);
}

@end