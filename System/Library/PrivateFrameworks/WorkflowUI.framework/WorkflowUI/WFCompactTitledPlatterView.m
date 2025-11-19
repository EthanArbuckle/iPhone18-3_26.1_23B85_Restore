@interface WFCompactTitledPlatterView
- (CGRect)_mainContentFrame;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3;
- (NSString)title;
- (WFCompactTitledPlatterView)initWithRecipe:(int64_t)a3;
- (WFCompactTitledPlatterViewDelegate)delegate;
- (WFIcon)icon;
- (void)configureSashViewIfNecessary;
- (void)layoutHeaderViews;
- (void)layoutSubviews;
- (void)setAppearanceProvider:(id)a3;
- (void)setIcon:(id)a3;
- (void)setNeedsLayout;
- (void)setSashVisible:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation WFCompactTitledPlatterView

- (WFCompactTitledPlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  v5 = [(WFCompactTitledPlatterView *)self sashView];
  [v5 setIcon:v4];
}

- (WFIcon)icon
{
  v2 = [(WFCompactTitledPlatterView *)self sashView];
  v3 = [v2 icon];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  v6 = [v4 copy];

  v5 = [(WFCompactTitledPlatterView *)self sashView];
  [v5 setTitle:v6];
}

- (NSString)title
{
  v2 = [(WFCompactTitledPlatterView *)self sashView];
  v3 = [v2 title];

  return v3;
}

- (void)setAppearanceProvider:(id)a3
{
  objc_storeStrong(&self->_appearanceProvider, a3);
  v5 = a3;
  [(WFCompactPlatterSashView *)self->_sashView setAppearanceProvider:v5];

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
    v7 = [(WFCompactTitledPlatterView *)self sashVisible];
    v8 = 0.0;
    if (v7)
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
    v9 = [(WFCompactTitledPlatterView *)self window];
    v10 = [v9 screen];
    [v10 scale];
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

- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3
{
  v11.receiver = self;
  v11.super_class = WFCompactTitledPlatterView;
  [(PLPlatterView *)&v11 sizeThatFitsContentWithSize:a3.width, a3.height];
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
    v7 = [(PLPlatterView *)self customContentView];
    [v7 setFrame:{x, y, width, height}];
  }

  if ([(WFCompactTitledPlatterView *)self sashVisible])
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(PLPlatterView *)self customContentView];
  [v9 frame];
  v11 = v10;
  v13 = v12 + 0.0;
  v15 = v8 + v14;
  v17 = v16 - v8;
  v18 = [(PLPlatterView *)self customContentView];
  [v18 setFrame:{v13, v15, v11, v17}];

  v19 = [(WFCompactTitledPlatterView *)self delegate];
  [v19 layoutCustomContentViewForPlatterView:self];
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
    v7 = [(WFCompactTitledPlatterView *)self window];
    v8 = [v7 screen];
    [v8 scale];
    UIRectIntegralWithScale();
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  v13 = [(WFCompactTitledPlatterView *)self sashView];
  [v13 setFrame:{x, y, width, height}];

  v14 = [(WFCompactTitledPlatterView *)self sashView];
  [v14 setNeedsLayout];
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

- (void)setSashVisible:(BOOL)a3
{
  self->_sashVisible = a3;
  if (a3)
  {
    [(WFCompactTitledPlatterView *)self configureSashViewIfNecessary];
  }

  else
  {
    v4 = [(WFCompactTitledPlatterView *)self sashView];
    [v4 removeFromSuperview];
  }

  [(WFCompactTitledPlatterView *)self setNeedsLayout];

  [(WFCompactTitledPlatterView *)self layoutIfNeeded];
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = WFCompactTitledPlatterView;
  [(WFCompactTitledPlatterView *)&v4 setNeedsLayout];
  v3 = [(WFCompactTitledPlatterView *)self sashView];
  [v3 setNeedsLayout];
}

- (WFCompactTitledPlatterView)initWithRecipe:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WFCompactTitledPlatterView;
  v3 = [(PLPlatterView *)&v7 initWithRecipe:a3];
  v4 = v3;
  if (v3)
  {
    v3->_sashVisible = 0;
    v5 = v3;
  }

  return v4;
}

@end