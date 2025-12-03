@interface VKSelectableBarButtonItem
- (BOOL)showsMenuAsPrimaryAction;
- (VKSelectableBarButtonItem)init;
- (double)alpha;
- (double)compactPadding;
- (double)padding;
- (double)width;
- (id)image;
- (id)menu;
- (void)setAction:(SEL)action;
- (void)setAlpha:(double)alpha;
- (void)setCompactPadding:(double)padding;
- (void)setCornerRadiusRatio:(double)ratio;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image;
- (void)setMenu:(id)menu;
- (void)setPadding:(double)padding;
- (void)setSelected:(BOOL)selected;
- (void)setShowsMenuAsPrimaryAction:(BOOL)action;
- (void)setTarget:(id)target;
- (void)setWidth:(double)width;
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

- (void)setTarget:(id)target
{
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v7 setTarget:target];
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];

  [button removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  target = [(VKSelectableBarButtonItem *)self target];
  [button addTarget:target action:-[VKSelectableBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (id)menu
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];
  menu = [button menu];

  return menu;
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];
  [button setMenu:menuCopy];
}

- (BOOL)showsMenuAsPrimaryAction
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];
  showsMenuAsPrimaryAction = [button showsMenuAsPrimaryAction];

  return showsMenuAsPrimaryAction;
}

- (void)setShowsMenuAsPrimaryAction:(BOOL)action
{
  actionCopy = action;
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];
  [button setShowsMenuAsPrimaryAction:actionCopy];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setImage:imageCopy];
}

- (id)image
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  image = [toggleView image];

  return image;
}

- (void)setAction:(SEL)action
{
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v7 setAction:action];
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];

  [button removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  target = [(VKSelectableBarButtonItem *)self target];
  [button addTarget:target action:-[VKSelectableBarButtonItem action](self forControlEvents:{"action"), 64}];
}

- (void)setSelected:(BOOL)selected
{
  v5.receiver = self;
  v5.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v5 setSelected:selected];
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setSelected:{-[VKSelectableBarButtonItem isSelected](self, "isSelected")}];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonItem;
  [(VKSelectableBarButtonItem *)&v7 setEnabled:?];
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  button = [toggleView button];
  [button setEnabled:enabledCopy];
}

- (double)padding
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView padding];
  v4 = v3;

  return v4;
}

- (void)setPadding:(double)padding
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setPadding:padding];
}

- (double)compactPadding
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView compactPadding];
  v4 = v3;

  return v4;
}

- (void)setCompactPadding:(double)padding
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setCompactPadding:padding];
}

- (void)setCornerRadiusRatio:(double)ratio
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setCornerRadiusRatio:ratio];
}

- (void)setWidth:(double)width
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setWidth:width];
}

- (double)width
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView width];
  v4 = v3;

  return v4;
}

- (void)setAlpha:(double)alpha
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView setAlpha:alpha];
}

- (double)alpha
{
  toggleView = [(VKSelectableBarButtonItem *)self toggleView];
  [toggleView alpha];
  v4 = v3;

  return v4;
}

@end