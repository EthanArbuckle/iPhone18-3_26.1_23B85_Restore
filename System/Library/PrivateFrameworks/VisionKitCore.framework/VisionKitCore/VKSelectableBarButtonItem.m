@interface VKSelectableBarButtonItem
- (BOOL)showsMenuAsPrimaryAction;
- (VKSelectableBarButtonItem)init;
- (double)alpha;
- (double)compactPadding;
- (double)padding;
- (double)width;
- (id)image;
- (id)menu;
- (void)setAction:(SEL)a3;
- (void)setAlpha:(double)a3;
- (void)setCompactPadding:(double)a3;
- (void)setCornerRadiusRatio:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setMenu:(id)a3;
- (void)setPadding:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowsMenuAsPrimaryAction:(BOOL)a3;
- (void)setTarget:(id)a3;
- (void)setWidth:(double)a3;
@end

@implementation VKSelectableBarButtonItem

- (VKSelectableBarButtonItem)init
{
  v6.receiver = self;
  v6.super_class = VKSelectableBarButtonItem;
  v2 = [(VKSelectableBarButtonItem *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VKSelectableBarButtonContainerView);
    toggleView = v2->_toggleView;
    v2->_toggleView = v3;

    [(VKSelectableBarButtonItem *)v2 setCustomView:v2->_toggleView];
  }

  return v2;
}

- (void)setTarget:(id)a3
{
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v7 setTarget:a3];
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  v5 = [v4 button];

  [v5 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  v6 = [(VKSelectableBarButtonItem *)self target];
  [v5 addTarget:v6 action:-[VKSelectableBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (id)menu
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  v3 = [v2 button];
  v4 = [v3 menu];

  return v4;
}

- (void)setMenu:(id)a3
{
  v4 = a3;
  v6 = [(VKSelectableBarButtonItem *)self toggleView];
  v5 = [v6 button];
  [v5 setMenu:v4];
}

- (BOOL)showsMenuAsPrimaryAction
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  v3 = [v2 button];
  v4 = [v3 showsMenuAsPrimaryAction];

  return v4;
}

- (void)setShowsMenuAsPrimaryAction:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKSelectableBarButtonItem *)self toggleView];
  v4 = [v5 button];
  [v4 setShowsMenuAsPrimaryAction:v3];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(VKSelectableBarButtonItem *)self toggleView];
  [v5 setImage:v4];
}

- (id)image
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  v3 = [v2 image];

  return v3;
}

- (void)setAction:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v7 setAction:a3];
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  v5 = [v4 button];

  [v5 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  v6 = [(VKSelectableBarButtonItem *)self target];
  [v5 addTarget:v6 action:-[VKSelectableBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (void)setSelected:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v5 setSelected:a3];
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  [v4 setSelected:{-[VKSelectableBarButtonItem isSelected](self, "isSelected")}];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v7 setEnabled:?];
  v5 = [(VKSelectableBarButtonItem *)self toggleView];
  v6 = [v5 button];
  [v6 setEnabled:v3];
}

- (double)padding
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  [v2 padding];
  v4 = v3;

  return v4;
}

- (void)setPadding:(double)a3
{
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  [v4 setPadding:a3];
}

- (double)compactPadding
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  [v2 compactPadding];
  v4 = v3;

  return v4;
}

- (void)setCompactPadding:(double)a3
{
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  [v4 setCompactPadding:a3];
}

- (void)setCornerRadiusRatio:(double)a3
{
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  [v4 setCornerRadiusRatio:a3];
}

- (void)setWidth:(double)a3
{
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  [v4 setWidth:a3];
}

- (double)width
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  [v2 width];
  v4 = v3;

  return v4;
}

- (void)setAlpha:(double)a3
{
  v4 = [(VKSelectableBarButtonItem *)self toggleView];
  [v4 setAlpha:a3];
}

- (double)alpha
{
  v2 = [(VKSelectableBarButtonItem *)self toggleView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

@end