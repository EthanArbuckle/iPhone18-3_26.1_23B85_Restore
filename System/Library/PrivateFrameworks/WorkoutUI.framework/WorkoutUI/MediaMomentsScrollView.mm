@interface MediaMomentsScrollView
- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithCoder:(id)coder;
- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithFrame:(CGRect)frame;
@end

@implementation MediaMomentsScrollView

- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MediaMomentsScrollView();
  return [(MediaMomentsScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MediaMomentsScrollView();
  coderCopy = coder;
  v5 = [(MediaMomentsScrollView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end