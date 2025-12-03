@interface RoundedPlatterView
- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithCoder:(id)coder;
- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RoundedPlatterView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundedPlatterView();
  v2 = v5.receiver;
  [(RoundedPlatterView *)&v5 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedPlatterView();
  return [(RoundedPlatterView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUIP33_C666C579EAAF2160522BD5D4777B64BB18RoundedPlatterView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundedPlatterView();
  coderCopy = coder;
  v5 = [(RoundedPlatterView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end