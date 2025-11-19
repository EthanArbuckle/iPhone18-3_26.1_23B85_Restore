@interface UICoreGraphicsView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC5UIKit18UICoreGraphicsView)initWithCoder:(id)a3;
- (_TtC5UIKit18UICoreGraphicsView)initWithFrame:(CGRect)a3;
@end

@implementation UICoreGraphicsView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(UIView *)v5 layer];
  v7 = [(CALayer *)v6 hasBeenCommitted];

  if (v7)
  {
    v10.receiver = v5;
    v10.super_class = type metadata accessor for UICoreGraphicsView();
    v8 = [(UIView *)&v10 _shouldAnimatePropertyWithKey:v4];

    return v8;
  }

  else
  {

    return 0;
  }
}

- (_TtC5UIKit18UICoreGraphicsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UICoreGraphicsView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKit18UICoreGraphicsView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UICoreGraphicsView();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end