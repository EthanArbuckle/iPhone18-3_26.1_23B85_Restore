@interface _TVMenuBarStackButton
- (CGSize)intrinsicContentSize;
- (_TVMenuBarStackButton)initWithCoder:(id)coder;
- (_TVMenuBarStackButton)initWithFrame:(CGRect)frame;
- (void)_configureSubviews;
- (void)_setSelectedOrHighlighted:(BOOL)highlighted;
- (void)_updateImageEdgeInsets;
- (void)setSelected:(BOOL)selected;
- (void)setTabBarItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _TVMenuBarStackButton

- (_TVMenuBarStackButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _TVMenuBarStackButton;
  v3 = [(_TVMenuBarStackButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_TVMenuBarStackButton *)v3 _configureSubviews];
  }

  return v4;
}

- (_TVMenuBarStackButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVMenuBarStackButton;
  v3 = [(_TVMenuBarStackButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVMenuBarStackButton *)v3 _configureSubviews];
  }

  return v4;
}

- (void)setTabBarItem:(id)item
{
  itemCopy = item;
  if (self->_tabBarItem != itemCopy)
  {
    v23 = itemCopy;
    objc_storeStrong(&self->_tabBarItem, item);
    [(_TVMenuBarStackButton *)self setShowsTouchWhenHighlighted:0];
    v6 = [(NSDictionary *)self->_tabBarItem objectForKey:*MEMORY[0x277D1AF98]];
    if ([v6 length])
    {
      [(_TVMenuBarStackButton *)self setTitle:v6 forState:0];
    }

    v7 = [(NSDictionary *)self->_tabBarItem objectForKey:@"p-image-off"];
    if (![v7 length])
    {
      v8 = [(NSDictionary *)self->_tabBarItem objectForKey:*MEMORY[0x277D1AF80]];

      v7 = v8;
    }

    if ([v7 length])
    {
      v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      v10 = +[TVInterfaceFactory sharedInterfaceFactory];
      tv_resourceName = [v9 tv_resourceName];
      v12 = [v10 imageForResource:tv_resourceName];

      [(_TVMenuBarStackButton *)self setImage:v12 forState:0];
    }

    v13 = [(NSDictionary *)self->_tabBarItem objectForKey:@"p-image-on"];
    if (![v13 length])
    {
      v14 = [(NSDictionary *)self->_tabBarItem objectForKey:*MEMORY[0x277D1AF88]];

      v13 = v14;
    }

    if ([v13 length])
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      v16 = +[TVInterfaceFactory sharedInterfaceFactory];
      tv_resourceName2 = [v15 tv_resourceName];
      v18 = [v16 imageForResource:tv_resourceName2];

      [(_TVMenuBarStackButton *)self setImage:v18 forState:5];
      [(_TVMenuBarStackButton *)self setImage:v18 forState:4];
    }

    tvmlkit_keyColor = [MEMORY[0x277D75348] tvmlkit_keyColor];
    [(_TVMenuBarStackButton *)self _setImageColor:tvmlkit_keyColor forState:4];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(_TVMenuBarStackButton *)self _setImageColor:systemGrayColor forState:0];

    tvmlkit_keyColor2 = [MEMORY[0x277D75348] tvmlkit_keyColor];
    [(_TVMenuBarStackButton *)self setTitleColor:tvmlkit_keyColor2 forState:4];

    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(_TVMenuBarStackButton *)self setTitleColor:systemGrayColor2 forState:0];

    itemCopy = v23;
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = _TVMenuBarStackButton;
  [(_TVMenuBarStackButton *)&v5 setSelected:?];
  [(_TVMenuBarStackButton *)self _setSelectedOrHighlighted:selectedCopy];
}

- (CGSize)intrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = _TVMenuBarStackButton;
  [(_TVMenuBarStackButton *)&v5 intrinsicContentSize];
  v3 = v2 + 8.0;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _TVMenuBarStackButton;
  [(_TVMenuBarStackButton *)&v4 traitCollectionDidChange:change];
  [(_TVMenuBarStackButton *)self _updateImageEdgeInsets];
}

- (void)_configureSubviews
{
  [(_TVMenuBarStackButton *)self setTintAdjustmentMode:2];
  [(_TVMenuBarStackButton *)self _updateImageEdgeInsets];
  [(_TVMenuBarStackButton *)self setNeedsLayout];

  [(_TVMenuBarStackButton *)self invalidateIntrinsicContentSize];
}

- (void)_setSelectedOrHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [(_TVMenuBarStackButton *)self setTintAdjustmentMode:v4];
  [(_TVMenuBarStackButton *)self setNeedsLayout];

  [(_TVMenuBarStackButton *)self layoutIfNeeded];
}

- (void)_updateImageEdgeInsets
{
  [(_TVMenuBarStackButton *)self imageEdgeInsets];
  v4 = v3;
  v6 = v5;
  traitCollection = [(_TVMenuBarStackButton *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    v9 = 8.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (layoutDirection == 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 8.0;
  }

  [(_TVMenuBarStackButton *)self setImageEdgeInsets:v4, v9, v6, v10];
}

@end