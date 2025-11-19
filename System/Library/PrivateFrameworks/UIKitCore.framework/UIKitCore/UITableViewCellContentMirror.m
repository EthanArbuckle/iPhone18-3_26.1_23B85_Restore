@interface UITableViewCellContentMirror
- (UITableViewCellContentMirror)initWithFrame:(CGRect)a3;
- (id)cell;
- (void)drawRect:(CGRect)a3;
@end

@implementation UITableViewCellContentMirror

- (UITableViewCellContentMirror)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UITableViewCellContentMirror;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAutoresizingMask:18];
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIView *)v4 setNeedsDisplayOnBoundsChange:1];
  }

  return v4;
}

- (id)cell
{
  v3 = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UIView *)self superview];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UITableViewCellContentMirror *)self cell];
  [v8 _drawContentInRect:*(self + 408) & 1 selected:{x, y, width, height}];
}

@end