@interface RoundedPlatterView
- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithCoder:(id)a3;
- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RoundedPlatterView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundedPlatterView();
  v2 = v5.receiver;
  [(RoundedPlatterView *)&v5 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedPlatterView();
  return [(RoundedPlatterView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundedPlatterView();
  v4 = a3;
  v5 = [(RoundedPlatterView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end