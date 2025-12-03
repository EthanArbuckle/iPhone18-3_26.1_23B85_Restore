@interface WFCompactTitledPlatterView
- (CGRect)_mainContentFrame;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (NSString)title;
- (WFCompactTitledPlatterView)initWithRecipe:(int64_t)recipe;
- (WFCompactTitledPlatterViewDelegate)delegate;
- (WFIcon)icon;
- (void)configureSashViewIfNecessary;
- (void)layoutHeaderViews;
- (void)layoutSubviews;
- (void)setAppearanceProvider:(id)provider;
- (void)setIcon:(id)icon;
- (void)setNeedsLayout;
- (void)setSashVisible:(BOOL)visible;
- (void)setTitle:(id)title;
@end

@implementation WFCompactTitledPlatterView

- (WFCompactTitledPlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  sashView = [(WFCompactTitledPlatterView *)self sashView];
  [sashView setIcon:iconCopy];
}

- (WFIcon)icon
{
  sashView = [(WFCompactTitledPlatterView *)self sashView];
  icon = [sashView icon];

  return icon;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  v6 = [titleCopy copy];

  sashView = [(WFCompactTitledPlatterView *)self sashView];
  [sashView setTitle:v6];
}

- (NSString)title
{
  sashView = [(WFCompactTitledPlatterView *)self sashView];
  title = [sashView title];

  return title;
}

- (void)setAppearanceProvider:(id)provider
{
  objc_storeStrong(&self->_appearanceProvider, provider);
  providerCopy = provider;
  [(WFCompactPlatterSashView *)self->_sashView setAppearanceProvider:providerCopy];

  [(WFCompactTitledPlatterView *)self layoutSubviews];
}

- (CGRect)_mainContentFrame
{
  [(WFCompactTitledPlatterView *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    [(WFCompactTitledPlatterView *)self layoutHeaderViews];
    sashVisible = [(WFCompactTitledPlatterView *)self sashVisible];
    v8 = 0.0;
    if (sashVisible)
    {
      [(WFCompactPlatterSashView *)self->_sashView contentBaseline];
    }

    y = y + v8;
    height = height - v8;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectIsEmpty(v20))
  {
    window = [(WFCompactTitledPlatterView *)self window];
    screen = [window screen];
    [screen scale];
    UIRectIntegralWithScale();
    x = v11;
    y = v12;
    width = v13;
    height = v14;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  v11.receiver = self;
  v11.super_class = WFCompactTitledPlatterView;
  [(PLPlatterView *)&v11 sizeThatFitsContentWithSize:size.width, size.height];
  v5 = v4;
  v7 = v6;
  [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  if (self->_sashView && [(WFCompactTitledPlatterView *)self sashVisible])
  {
    [(WFCompactPlatterSashView *)self->_sashView contentBaseline];
    v7 = v7 + v8;
  }

  if (v7 > 0.0 && [(WFCompactTitledPlatterView *)self sashVisible])
  {
    v7 = v7 + 16.0;
  }

  v9 = v5;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = WFCompactTitledPlatterView;
  [(PLPlatterView *)&v20 layoutSubviews];
  [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  [(WFCompactTitledPlatterView *)self layoutHeaderViews];
  [(WFCompactTitledPlatterView *)self _mainContentFrame];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (!CGRectIsEmpty(v21))
  {
    customContentView = [(PLPlatterView *)self customContentView];
    [customContentView setFrame:{x, y, width, height}];
  }

  if ([(WFCompactTitledPlatterView *)self sashVisible])
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 0.0;
  }

  customContentView2 = [(PLPlatterView *)self customContentView];
  [customContentView2 frame];
  v11 = v10;
  v13 = v12 + 0.0;
  v15 = v8 + v14;
  v17 = v16 - v8;
  customContentView3 = [(PLPlatterView *)self customContentView];
  [customContentView3 setFrame:{v13, v15, v11, v17}];

  delegate = [(WFCompactTitledPlatterView *)self delegate];
  [delegate layoutCustomContentViewForPlatterView:self];
}

- (void)layoutHeaderViews
{
  [(WFCompactTitledPlatterView *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (!CGRectIsEmpty(v16))
  {
    [(WFCompactPlatterSashView *)self->_sashView sizeThatFits:width, height];
    BSRectWithSize();
    window = [(WFCompactTitledPlatterView *)self window];
    screen = [window screen];
    [screen scale];
    UIRectIntegralWithScale();
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  sashView = [(WFCompactTitledPlatterView *)self sashView];
  [sashView setFrame:{x, y, width, height}];

  sashView2 = [(WFCompactTitledPlatterView *)self sashView];
  [sashView2 setNeedsLayout];
}

- (void)configureSashViewIfNecessary
{
  if (!self->_sashView && [(WFCompactTitledPlatterView *)self sashVisible])
  {
    v3 = [WFCompactPlatterSashView alloc];
    v4 = [(WFCompactPlatterSashView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    sashView = self->_sashView;
    self->_sashView = v4;

    [(WFCompactPlatterSashView *)self->_sashView setAutoresizesSubviews:1];
    [(WFCompactTitledPlatterView *)self addSubview:self->_sashView];
    v6 = self->_sashView;

    [(WFCompactTitledPlatterView *)self bringSubviewToFront:v6];
  }
}

- (void)setSashVisible:(BOOL)visible
{
  self->_sashVisible = visible;
  if (visible)
  {
    [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  }

  else
  {
    sashView = [(WFCompactTitledPlatterView *)self sashView];
    [sashView removeFromSuperview];
  }

  [(WFCompactTitledPlatterView *)self setNeedsLayout];

  [(WFCompactTitledPlatterView *)self layoutIfNeeded];
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = WFCompactTitledPlatterView;
  [(WFCompactTitledPlatterView *)&v4 setNeedsLayout];
  sashView = [(WFCompactTitledPlatterView *)self sashView];
  [sashView setNeedsLayout];
}

- (WFCompactTitledPlatterView)initWithRecipe:(int64_t)recipe
{
  v7.receiver = self;
  v7.super_class = WFCompactTitledPlatterView;
  v3 = [(PLPlatterView *)&v7 initWithRecipe:recipe];
  v4 = v3;
  if (v3)
  {
    v3->_sashVisible = 0;
    v5 = v3;
  }

  return v4;
}

@end