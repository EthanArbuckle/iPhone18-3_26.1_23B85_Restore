@interface PLTitledPlatterView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGRect)_mainContentFrame;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (NSArray)iconButtons;
- (UIButton)utilityButton;
- (void)_configureHeaderContentView;
- (void)_configureHeaderContentViewIfNecessary;
- (void)_layoutHeaderViews;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setBackgroundView:(id)view;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setHeaderHeedsHorizontalLayoutMargins:(BOOL)margins;
- (void)setIcons:(id)icons;
- (void)setLargerHeaderMarginEnabled:(BOOL)enabled;
- (void)setNeedsLayout;
- (void)setTimeZone:(id)zone;
- (void)setTitle:(id)title;
- (void)setUtilityView:(id)view;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation PLTitledPlatterView

- (void)setLargerHeaderMarginEnabled:(BOOL)enabled
{
  if (self->_largerHeaderMarginEnabled != enabled)
  {
    self->_largerHeaderMarginEnabled = enabled;
    [(PLTitledPlatterView *)self setNeedsLayout];
  }
}

- (void)setBackgroundView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PLTitledPlatterView;
  [(PLPlatterView *)&v16 setBackgroundView:view];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  requiredVisualStyleCategories = [(PLPlatterHeaderContentView *)self->_headerContentView requiredVisualStyleCategories];
  v5 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v12 + 1) + 8 * v8) integerValue];
        headerContentView = self->_headerContentView;
        v11 = [(PLPlatterView *)self visualStylingProviderForCategory:integerValue];
        [(PLPlatterHeaderContentView *)headerContentView setVisualStylingProvider:v11 forCategory:integerValue];

        ++v8;
      }

      while (v6 != v8);
      v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if ([(PLPlatterHeaderContentView *)self->_headerContentView dateFormatStyle]!= style)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    headerContentView = self->_headerContentView;

    [(PLPlatterHeaderContentView *)headerContentView setDateFormatStyle:style];
  }
}

- (void)setIcons:(id)icons
{
  iconsCopy = icons;
  iconButtons = [(PLTitledPlatterView *)self iconButtons];
  v6 = [iconButtons count];

  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLPlatterHeaderContentView *)self->_headerContentView setIcons:iconsCopy];

  iconButtons2 = [(PLTitledPlatterView *)self iconButtons];
  v8 = [iconButtons2 count];

  if (!v6 && v8 || v6 && !v8)
  {

    [(PLTitledPlatterView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(PLPlatterHeaderContentView *)self->_headerContentView title];
  v5 = [titleCopy isEqual:title];

  if ((v5 & 1) == 0)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setTitle:titleCopy];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(PLPlatterHeaderContentView *)self->_headerContentView date];
  v5 = [dateCopy isEqual:date];

  if ((v5 & 1) == 0)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setDate:dateCopy];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(PLPlatterHeaderContentView *)self->_headerContentView timeZone];
  v5 = [zoneCopy isEqual:timeZone];

  if ((v5 & 1) == 0)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setTimeZone:zoneCopy];
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

- (void)setUtilityView:(id)view
{
  viewCopy = view;
  utilityView = [(PLPlatterHeaderContentView *)self->_headerContentView utilityView];

  if (utilityView != viewCopy)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setUtilityView:viewCopy];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  dayCopy = day;
  if ([(PLPlatterHeaderContentView *)self->_headerContentView isDateAllDay]!= day)
  {
    [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
    headerContentView = self->_headerContentView;

    [(PLPlatterHeaderContentView *)headerContentView setDateAllDay:dayCopy];
  }
}

- (void)setHeaderHeedsHorizontalLayoutMargins:(BOOL)margins
{
  marginsCopy = margins;
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  [(PLPlatterHeaderContentView *)headerContentView setHeedsHorizontalLayoutMargins:marginsCopy];
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  v14.receiver = self;
  v14.super_class = PLTitledPlatterView;
  [(PLPlatterView *)&v14 sizeThatFitsContentWithSize:size.width, size.height];
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

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  [(PLPlatterHeaderContentView *)headerContentView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  [(PLTitledPlatterView *)self _configureHeaderContentViewIfNecessary];
  adjustForContentSizeCategoryChange = [(PLPlatterHeaderContentView *)self->_headerContentView adjustForContentSizeCategoryChange];
  if (adjustForContentSizeCategoryChange)
  {
    [(PLTitledPlatterView *)self setNeedsLayout];
  }

  return adjustForContentSizeCategoryChange;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  v7 = [(PLPlatterView *)self visualStylingProviderForCategory:category];

  if (v7 != providerCopy)
  {
    v10.receiver = self;
    v10.super_class = PLTitledPlatterView;
    [(PLPlatterView *)&v10 setVisualStylingProvider:providerCopy forCategory:category];
    headerContentView = self->_headerContentView;
    v9 = [(PLPlatterView *)self visualStylingProviderForCategory:category];
    [(PLPlatterHeaderContentView *)headerContentView setVisualStylingProvider:v9 forCategory:category];
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
  requiredVisualStyleCategories = [(PLPlatterHeaderContentView *)self->_headerContentView requiredVisualStyleCategories];
  v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v13 + 1) + 8 * v9) integerValue];
        v11 = self->_headerContentView;
        v12 = [(PLPlatterView *)self visualStylingProviderForCategory:integerValue];
        [(PLPlatterHeaderContentView *)v11 setVisualStylingProvider:v12 forCategory:integerValue];

        ++v9;
      }

      while (v7 != v9);
      v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(PLPlatterHeaderContentView *)self->_headerContentView setAutoresizesSubviews:1];
  [(PLTitledPlatterView *)self addSubview:self->_headerContentView];
  [(PLTitledPlatterView *)self bringSubviewToFront:self->_headerContentView];
}

@end