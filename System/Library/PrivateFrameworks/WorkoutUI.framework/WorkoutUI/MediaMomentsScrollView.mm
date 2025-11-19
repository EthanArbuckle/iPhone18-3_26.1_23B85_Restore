@interface MediaMomentsScrollView
- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithCoder:(id)a3;
- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithFrame:(CGRect)a3;
@end

@implementation MediaMomentsScrollView

- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MediaMomentsScrollView();
  return [(MediaMomentsScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9WorkoutUI22MediaMomentsScrollView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MediaMomentsScrollView();
  v4 = a3;
  v5 = [(MediaMomentsScrollView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end