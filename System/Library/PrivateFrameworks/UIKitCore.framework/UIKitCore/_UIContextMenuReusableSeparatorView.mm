@interface _UIContextMenuReusableSeparatorView
- (_UIContextMenuReusableSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation _UIContextMenuReusableSeparatorView

- (_UIContextMenuReusableSeparatorView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuReusableSeparatorView;
  v3 = [(UICollectionReusableView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = _UIContextMenuConfigureSeparatorView(v3);
    separatorView = v4->_separatorView;
    v4->_separatorView = v5;
  }

  return v4;
}

@end