@interface _UIContextMenuReusableSeparatorView
- (_UIContextMenuReusableSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation _UIContextMenuReusableSeparatorView

- (_UIContextMenuReusableSeparatorView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuReusableSeparatorView;
  v3 = [(UICollectionReusableView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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