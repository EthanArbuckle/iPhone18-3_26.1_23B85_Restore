@interface UITableViewCellContentMirror
- (UITableViewCellContentMirror)initWithFrame:(CGRect)frame;
- (id)cell;
- (void)drawRect:(CGRect)rect;
@end

@implementation UITableViewCellContentMirror

- (UITableViewCellContentMirror)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UITableViewCellContentMirror;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  superview = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    superview2 = [(UIView *)self superview];
  }

  else
  {
    superview2 = 0;
  }

  return superview2;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cell = [(UITableViewCellContentMirror *)self cell];
  [cell _drawContentInRect:*(self + 408) & 1 selected:{x, y, width, height}];
}

@end