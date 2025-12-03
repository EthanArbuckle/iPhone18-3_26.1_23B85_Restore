@interface _UIContextMenuGradientMaskSectionSeparatorView
- (_UIContextMenuGradientMaskSectionSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation _UIContextMenuGradientMaskSectionSeparatorView

- (_UIContextMenuGradientMaskSectionSeparatorView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = _UIContextMenuGradientMaskSectionSeparatorView;
  v3 = [(UICollectionReusableView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = objc_alloc_init(UIView);
    [(UIView *)v5 bounds];
    [(UIView *)v6 setFrame:?];
    [(UIView *)v6 setAutoresizingMask:18];
    [(UIView *)v5 addSubview:v6];
    v7 = objc_alloc_init(UIView);
    traitCollection = [(UIView *)v5 traitCollection];
    v9 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    sectionSeparatorColor = [v9 sectionSeparatorColor];

    [(UIView *)v7 setBackgroundColor:sectionSeparatorColor];
    layer = [(UIView *)v7 layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979CE8]];

    [(UIView *)v6 bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(UIView *)v6 addSubview:v7];
    layer2 = [(UIView *)v5 layer];

    [layer2 setAllowsGroupBlending:0];
    layer3 = [(UIView *)v6 layer];
    [layer3 setCompositingFilter:*MEMORY[0x1E6979D28]];
  }

  return v4;
}

@end