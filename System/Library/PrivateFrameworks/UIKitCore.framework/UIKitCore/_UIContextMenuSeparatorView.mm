@interface _UIContextMenuSeparatorView
- (_UIContextMenuSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation _UIContextMenuSeparatorView

- (_UIContextMenuSeparatorView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIContextMenuSeparatorView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = _UIContextMenuConfigureSeparatorView(v3);
  }

  return v4;
}

@end