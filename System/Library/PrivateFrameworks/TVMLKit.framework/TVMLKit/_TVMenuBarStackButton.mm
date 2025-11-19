@interface _TVMenuBarStackButton
- (CGSize)intrinsicContentSize;
- (_TVMenuBarStackButton)initWithCoder:(id)a3;
- (_TVMenuBarStackButton)initWithFrame:(CGRect)a3;
- (void)_configureSubviews;
- (void)_setSelectedOrHighlighted:(BOOL)a3;
- (void)_updateImageEdgeInsets;
- (void)setSelected:(BOOL)a3;
- (void)setTabBarItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _TVMenuBarStackButton

- (_TVMenuBarStackButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TVMenuBarStackButton;
  v3 = [(_TVMenuBarStackButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_TVMenuBarStackButton *)v3 _configureSubviews];
  }

  return v4;
}

- (_TVMenuBarStackButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVMenuBarStackButton;
  v3 = [(_TVMenuBarStackButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVMenuBarStackButton *)v3 _configureSubviews];
  }

  return v4;
}

- (void)setTabBarItem:(id)a3
{
  v5 = a3;
  if (self->_tabBarItem != v5)
  {
    v23 = v5;
    objc_storeStrong(&self->_tabBarItem, a3);
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
      v11 = [v9 tv_resourceName];
      v12 = [v10 imageForResource:v11];

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
      v17 = [v15 tv_resourceName];
      v18 = [v16 imageForResource:v17];

      [(_TVMenuBarStackButton *)self setImage:v18 forState:5];
      [(_TVMenuBarStackButton *)self setImage:v18 forState:4];
    }

    v19 = [MEMORY[0x277D75348] tvmlkit_keyColor];
    [(_TVMenuBarStackButton *)self _setImageColor:v19 forState:4];

    v20 = [MEMORY[0x277D75348] systemGrayColor];
    [(_TVMenuBarStackButton *)self _setImageColor:v20 forState:0];

    v21 = [MEMORY[0x277D75348] tvmlkit_keyColor];
    [(_TVMenuBarStackButton *)self setTitleColor:v21 forState:4];

    v22 = [MEMORY[0x277D75348] systemGrayColor];
    [(_TVMenuBarStackButton *)self setTitleColor:v22 forState:0];

    v5 = v23;
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _TVMenuBarStackButton;
  [(_TVMenuBarStackButton *)&v5 setSelected:?];
  [(_TVMenuBarStackButton *)self _setSelectedOrHighlighted:v3];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVMenuBarStackButton;
  [(_TVMenuBarStackButton *)&v4 traitCollectionDidChange:a3];
  [(_TVMenuBarStackButton *)self _updateImageEdgeInsets];
}

- (void)_configureSubviews
{
  [(_TVMenuBarStackButton *)self setTintAdjustmentMode:2];
  [(_TVMenuBarStackButton *)self _updateImageEdgeInsets];
  [(_TVMenuBarStackButton *)self setNeedsLayout];

  [(_TVMenuBarStackButton *)self invalidateIntrinsicContentSize];
}

- (void)_setSelectedOrHighlighted:(BOOL)a3
{
  if (a3)
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
  v7 = [(_TVMenuBarStackButton *)self traitCollection];
  v8 = [v7 layoutDirection];

  if (v8 == 1)
  {
    v9 = 8.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v8 == 1)
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