@interface SKUIPopupMenuHeaderView
- (CGSize)sizeThatFits:(CGSize)result;
- (SKUIPopupMenuDelegate)delegate;
- (SKUIPopupMenuHeaderView)initWithFrame:(CGRect)a3;
- (id)_titleLabel;
- (void)_menuButtonAction:(id)a3;
- (void)_reloadMenuButton;
- (void)dealloc;
- (void)layoutSubviews;
- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setMenuItemTitles:(id)a3;
- (void)setMenuLabelTitle:(id)a3;
- (void)setSelectedMenuItemIndex:(int64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIPopupMenuHeaderView

- (SKUIPopupMenuHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPopupMenuHeaderView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIPopupMenuHeaderView;
  v8 = [(SKUIPopupMenuHeaderView *)&v11 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(SKUIPopupMenuHeaderView *)v8 setBackgroundColor:v9];
  }

  return v8;
}

- (void)dealloc
{
  [(UIPopoverController *)self->_menuPopoverController setDelegate:0];
  [(SKUIMenuViewController *)self->_menuViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIPopupMenuHeaderView;
  [(SKUIPopupMenuHeaderView *)&v3 dealloc];
}

- (void)setColoringWithColorScheme:(id)a3
{
  menuLabel = self->_menuLabel;
  if (a3)
  {
    v6 = a3;
    v7 = [v6 secondaryTextColor];
    [(UILabel *)menuLabel setTextColor:v7];

    titleLabel = self->_titleLabel;
    v9 = [v6 primaryTextColor];
    v10 = titleLabel;
  }

  else
  {
    v11 = MEMORY[0x277D75348];
    v12 = 0;
    v13 = [v11 colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)menuLabel setTextColor:v13];

    v14 = self->_titleLabel;
    v9 = [MEMORY[0x277D75348] blackColor];
    v10 = v14;
  }

  [(UILabel *)v10 setTextColor:v9];

  v15 = [a3 backgroundColor];

  [(SKUIPopupMenuHeaderView *)self setBackgroundColor:v15];
}

- (void)setMenuItemTitles:(id)a3
{
  if (self->_menuItemTitles != a3)
  {
    v4 = [a3 copy];
    menuItemTitles = self->_menuItemTitles;
    self->_menuItemTitles = v4;

    [(SKUIPopupMenuHeaderView *)self _reloadMenuButton];
  }
}

- (void)setMenuLabelTitle:(id)a3
{
  if (self->_menuLabelTitle != a3)
  {
    v4 = [a3 copy];
    menuLabelTitle = self->_menuLabelTitle;
    self->_menuLabelTitle = v4;

    [(SKUIPopupMenuHeaderView *)self _reloadMenuButton];
  }
}

- (void)setSelectedMenuItemIndex:(int64_t)a3
{
  if (self->_selectedMenuItemIndex != a3)
  {
    self->_selectedMenuItemIndex = a3;
    [(SKUIPopupMenuHeaderView *)self _reloadMenuButton];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(SKUIPopupMenuHeaderView *)self _titleLabel];
  [v5 setText:v4];
}

- (void)layoutSubviews
{
  [(SKUIPopupMenuHeaderView *)self bounds];
  v4 = v3;
  v6 = v5 + -15.0;
  menuButton = self->_menuButton;
  if (menuButton)
  {
    [(UIButton *)menuButton frame];
    v9 = v8;
    v11 = v10;
    v12 = v6 - v8;
    v13 = (v4 - v10) * 0.5;
    v14 = floorf(v13);
    [(UIButton *)self->_menuButton setFrame:v12, v14];
    menuLabel = self->_menuLabel;
    if (menuLabel)
    {
      [(UILabel *)menuLabel frame];
      v9 = v16;
      v11 = v17;
      v12 = v12 - v16 + -5.0;
      v18 = (v4 - v17) * 0.5;
      v14 = floorf(v18);
      [(UILabel *)self->_menuLabel setFrame:v12, v14];
    }

    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v9;
    v27.size.height = v11;
    v6 = CGRectGetMinX(v27) + -15.0;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    [(UILabel *)self->_titleLabel sizeThatFits:v6 + -15.0, 1.79769313e308];
    v21 = v20;
    v23 = v22;
    *&v20 = (v4 - v22) * 0.5;
    v24 = self->_titleLabel;
    v25 = floorf(*&v20);

    [(UILabel *)v24 setFrame:15.0, v25, v21, v23];
  }
}

- (void)setBackgroundColor:(id)a3
{
  menuButton = self->_menuButton;
  v5 = a3;
  [(UIButton *)menuButton setBackgroundColor:v5];
  menuLabel = self->_menuLabel;
  if (v5)
  {
    [(UILabel *)self->_menuLabel setBackgroundColor:v5];
    [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)menuLabel setBackgroundColor:v7];

    titleLabel = self->_titleLabel;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)titleLabel setBackgroundColor:v9];
  }

  v10.receiver = self;
  v10.super_class = SKUIPopupMenuHeaderView;
  [(SKUIPopupMenuHeaderView *)&v10 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  if (self->_selectedMenuItemIndex != a4)
  {
    self->_selectedMenuItemIndex = a4;
    v19 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 popupMenuHeader:self didSelectMenuItemAtIndex:a4];
    }

    [(SKUIPopupMenuHeaderView *)self _reloadMenuButton];
    [(SKUIPopupMenuHeaderView *)self layoutIfNeeded];
    menuPopoverController = self->_menuPopoverController;
    [(UIButton *)self->_menuButton frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(UIButton *)self->_menuButton superview];
    [(UIPopoverController *)menuPopoverController presentPopoverFromRect:v18 inView:1 permittedArrowDirections:1 animated:v11, v13, v15, v17];

    [v19 setIndexOfCheckedTitle:self->_selectedMenuItemIndex];
  }
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  [(SKUIMenuViewController *)self->_menuViewController setDelegate:0];
  menuViewController = self->_menuViewController;
  self->_menuViewController = 0;

  [(UIPopoverController *)self->_menuPopoverController setDelegate:0];
  menuPopoverController = self->_menuPopoverController;
  self->_menuPopoverController = 0;
}

- (void)_menuButtonAction:(id)a3
{
  if (!self->_menuPopoverController)
  {
    v4 = a3;
    v5 = [[SKUIMenuViewController alloc] initWithMenuTitles:self->_menuItemTitles];
    menuViewController = self->_menuViewController;
    self->_menuViewController = v5;

    [(SKUIMenuViewController *)self->_menuViewController setDelegate:self];
    [(SKUIMenuViewController *)self->_menuViewController setIndexOfCheckedTitle:self->_selectedMenuItemIndex];
    v7 = (45 * [(NSArray *)self->_menuItemTitles count]);
    [(SKUIMenuViewController *)self->_menuViewController setPreferredContentSize:320.0, v7];
    v8 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self->_menuViewController];
    menuPopoverController = self->_menuPopoverController;
    self->_menuPopoverController = v8;

    [(UIPopoverController *)self->_menuPopoverController setDelegate:self];
    [(UIPopoverController *)self->_menuPopoverController setPopoverContentSize:320.0, v7];
    v10 = self->_menuPopoverController;
    [v4 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v4 superview];

    [(UIPopoverController *)v10 presentPopoverFromRect:v19 inView:1 permittedArrowDirections:1 animated:v12, v14, v16, v18];
  }
}

- (void)_reloadMenuButton
{
  selectedMenuItemIndex = self->_selectedMenuItemIndex;
  if (selectedMenuItemIndex < [(NSArray *)self->_menuItemTitles count]&& ([(NSArray *)self->_menuItemTitles objectAtIndex:self->_selectedMenuItemIndex], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    menuButton = self->_menuButton;
    v25 = v5;
    if (!menuButton)
    {
      v7 = [MEMORY[0x277D75220] buttonWithType:1];
      v8 = self->_menuButton;
      self->_menuButton = v7;

      [(UIButton *)self->_menuButton addTarget:self action:sel__menuButtonAction_ forControlEvents:0xFFFFFFFFLL];
      v9 = self->_menuButton;
      v10 = [(SKUIPopupMenuHeaderView *)self backgroundColor];
      [(UIButton *)v9 setBackgroundColor:v10];

      v11 = [(UIButton *)self->_menuButton titleLabel];
      v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [v11 setFont:v12];

      [(SKUIPopupMenuHeaderView *)self addSubview:self->_menuButton];
      v5 = v25;
      menuButton = self->_menuButton;
    }

    [(UIButton *)menuButton setTitle:v5 forState:0];
    [(UIButton *)self->_menuButton sizeToFit];
    menuLabelTitle = self->_menuLabelTitle;
    if (menuLabelTitle)
    {
      menuLabel = self->_menuLabel;
      if (!menuLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_menuLabel;
        self->_menuLabel = v15;

        v17 = self->_menuLabel;
        v18 = [(SKUIPopupMenuHeaderView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v18];

        v19 = self->_menuLabel;
        v20 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v19 setFont:v20];

        v21 = self->_menuLabel;
        v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
        [(UILabel *)v21 setTextColor:v22];

        [(SKUIPopupMenuHeaderView *)self addSubview:self->_menuLabel];
        menuLabel = self->_menuLabel;
        menuLabelTitle = self->_menuLabelTitle;
      }

      [(UILabel *)menuLabel setText:menuLabelTitle];
      [(UILabel *)self->_menuLabel sizeToFit];
    }

    [(SKUIPopupMenuHeaderView *)self setNeedsLayout];
    v23 = v25;
  }

  else
  {
    [(UIButton *)self->_menuButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [(UIButton *)self->_menuButton removeFromSuperview];
    v24 = self->_menuButton;
    self->_menuButton = 0;

    [(UILabel *)self->_menuLabel removeFromSuperview];
    v23 = self->_menuLabel;
    self->_menuLabel = 0;
  }
}

- (id)_titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = self->_titleLabel;
    v7 = [(SKUIPopupMenuHeaderView *)self backgroundColor];
    [(UILabel *)v6 setBackgroundColor:v7];

    v8 = self->_titleLabel;
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UILabel *)v8 setFont:v9];

    v10 = self->_titleLabel;
    v11 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v10 setTextColor:v11];

    [(SKUIPopupMenuHeaderView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (SKUIPopupMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPopupMenuHeaderView initWithFrame:]";
}

@end