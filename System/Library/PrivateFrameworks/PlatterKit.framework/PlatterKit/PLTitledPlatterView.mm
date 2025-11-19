@interface PLTitledPlatterView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGRect)_mainContentFrame;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3;
- (NSArray)iconButtons;
- (UIButton)utilityButton;
- (void)_configureHeaderContentView;
- (void)_configureHeaderContentViewIfNecessary;
- (void)_layoutHeaderViews;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setBackgroundView:(id)a3;
- (void)setDate:(id)a3;
- (void)setDateAllDay:(BOOL)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setHeaderHeedsHorizontalLayoutMargins:(BOOL)a3;
- (void)setIcons:(id)a3;
- (void)setLargerHeaderMarginEnabled:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setTimeZone:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUtilityView:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation PLTitledPlatterView

- (void)setLargerHeaderMarginEnabled:(BOOL)a3
{
  if (self->_largerHeaderMarginEnabled != a3)
  {
    self->_largerHeaderMarginEnabled = a3;
    [(PLTitledPlatterView *)self setNeedsLayout];
  }
}

- (void)setBackgroundView:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PLTitledPlatterView;
  [(PLPlatterView *)&v16 setBackgroundView:a3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(PLPlatterHeaderContentView *)self->_headerContentView requiredVisualStyleCategories];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) integerValue];
        headerContentView = self->_headerContentView;
        v11 = [(PLPlatterView *)self visualStylingProviderForCategory:v9];
        [(PLPlatterHeaderContentView *)headerContentView setVisualStylingProvider:v11 forCategory:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if ([(PLPlatterHeaderContentView *)self->_headerContentView dateFormatStyle]!= a3)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    headerContentView = self->_headerContentView;

    [(PLPlatterHeaderContentView *)headerContentView setDateFormatStyle:a3];
  }
}

- (void)setIcons:(id)a3
{
  v4 = a3;
  v5 = [(PLTitledPlatterView *)self iconButtons];
  v6 = [v5 count];

  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLPlatterHeaderContentView *)self->_headerContentView setIcons:v4];

  v7 = [(PLTitledPlatterView *)self iconButtons];
  v8 = [v7 count];

  if (!v6 && v8 || v6 && !v8)
  {

    [(PLTitledPlatterView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(PLPlatterHeaderContentView *)self->_headerContentView title];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setTitle:v6];
  }
}

- (void)setDate:(id)a3
{
  v6 = a3;
  v4 = [(PLPlatterHeaderContentView *)self->_headerContentView date];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setDate:v6];
  }
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  v4 = [(PLPlatterHeaderContentView *)self->_headerContentView timeZone];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setTimeZone:v6];
  }
}

- (NSArray)iconButtons
{
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView iconButtons];
}

- (UIButton)utilityButton
{
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView utilityButton];
}

- (void)setUtilityView:(id)a3
{
  v5 = a3;
  v4 = [(PLPlatterHeaderContentView *)self->_headerContentView utilityView];

  if (v4 != v5)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setUtilityView:v5];
  }
}

- (void)setDateAllDay:(BOOL)a3
{
  v3 = a3;
  if ([(PLPlatterHeaderContentView *)self->_headerContentView isDateAllDay]!= a3)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    headerContentView = self->_headerContentView;

    [(PLPlatterHeaderContentView *)headerContentView setDateAllDay:v3];
  }
}

- (void)setHeaderHeedsHorizontalLayoutMargins:(BOOL)a3
{
  v3 = a3;
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  [(PLPlatterHeaderContentView *)headerContentView setHeedsHorizontalLayoutMargins:v3];
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3
{
  v14.receiver = self;
  v14.super_class = PLTitledPlatterView;
  [(PLPlatterView *)&v14 sizeThatFitsContentWithSize:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;
  if (headerContentView)
  {
    if (self->_largerHeaderMarginEnabled)
    {
      [(PLPlatterHeaderContentView *)headerContentView sizeThatFits:v5, 0.0];
      v7 = v7 + v9;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __51__PLTitledPlatterView_sizeThatFitsContentWithSize___block_invoke;
      v13[3] = &unk_2784257B0;
      v13[4] = self;
      *&v13[5] = v5;
      v13[6] = 0;
      [MEMORY[0x277D75D18] performWithoutAnimation:v13];
      [(PLPlatterHeaderContentView *)self->_headerContentView contentBaseline];
      v7 = v7 + v10;
    }
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

uint64_t __51__PLTitledPlatterView_sizeThatFitsContentWithSize___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 544);
  [v1 sizeThatFits:{*(a1 + 40), *(a1 + 48)}];
  BSRectWithSize();

  return [v1 setFrame:?];
}

- (void)_configureHeaderContentViewIfNecessary
{
  if (!self->_headerContentView)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentView];
  }
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = PLTitledPlatterView;
  [(PLTitledPlatterView *)&v3 setNeedsLayout];
  [(PLPlatterHeaderContentView *)self->_headerContentView setNeedsLayout];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PLTitledPlatterView;
  [(PLPlatterView *)&v7 layoutSubviews];
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLTitledPlatterView *)self _layoutHeaderViews];
  [(PLTitledPlatterView *)self _mainContentFrame];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  if (!CGRectIsEmpty(v8))
  {
    [(UIView *)self->super._customContentView setFrame:x, y, width, height];
  }
}

- (void)_layoutHeaderViews
{
  [(PLTitledPlatterView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (!CGRectIsEmpty(v13))
  {
    [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:width, height];
    BSRectWithSize();
    PLMainScreenScale();
    UIRectIntegralWithScale();
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  [(PLPlatterHeaderContentView *)self->_headerContentView setFrame:x, y, width, height];
  headerContentView = self->_headerContentView;

  [(PLPlatterHeaderContentView *)headerContentView setNeedsLayout];
}

- (CGRect)_mainContentFrame
{
  [(PLTitledPlatterView *)self bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (!CGRectIsEmpty(v17))
  {
    [(PLTitledPlatterView *)self _layoutHeaderViews];
    headerContentView = self->_headerContentView;
    if (self->_largerHeaderMarginEnabled)
    {
      [(PLPlatterHeaderContentView *)headerContentView frame];
      v8 = CGRectGetHeight(v18);
    }

    else
    {
      [(PLPlatterHeaderContentView *)headerContentView contentBaseline];
    }

    y = y + v8;
    height = height - v8;
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (!CGRectIsEmpty(v19))
  {
    PLMainScreenScale();
    UIRectIntegralWithScale();
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)adjustsFontForContentSizeCategory
{
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView adjustsFontForContentSizeCategory];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  [(PLPlatterHeaderContentView *)headerContentView setAdjustsFontForContentSizeCategory:v3];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  v3 = [(PLPlatterHeaderContentView *)self->_headerContentView adjustForContentSizeCategoryChange];
  if (v3)
  {
    [(PLTitledPlatterView *)self setNeedsLayout];
  }

  return v3;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [(PLPlatterView *)self visualStylingProviderForCategory:a4];

  if (v7 != v6)
  {
    v10.receiver = self;
    v10.super_class = PLTitledPlatterView;
    [(PLPlatterView *)&v10 setVisualStylingProvider:v6 forCategory:a4];
    headerContentView = self->_headerContentView;
    v9 = [(PLPlatterView *)self visualStylingProviderForCategory:a4];
    [(PLPlatterHeaderContentView *)headerContentView setVisualStylingProvider:v9 forCategory:a4];
  }
}

- (void)_configureHeaderContentView
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(PLPlatterHeaderContentView);
  headerContentView = self->_headerContentView;
  self->_headerContentView = v3;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PLPlatterHeaderContentView *)self->_headerContentView requiredVisualStyleCategories];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) integerValue];
        v11 = self->_headerContentView;
        v12 = [(PLPlatterView *)self visualStylingProviderForCategory:v10];
        [(PLPlatterHeaderContentView *)v11 setVisualStylingProvider:v12 forCategory:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(PLPlatterHeaderContentView *)self->_headerContentView setAutoresizesSubviews:1];
  [(PLTitledPlatterView *)self addSubview:self->_headerContentView];
  [(PLTitledPlatterView *)self bringSubviewToFront:self->_headerContentView];
}

@end