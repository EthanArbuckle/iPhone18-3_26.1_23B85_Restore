@interface NCDigestSummaryPlatterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCDigestSummaryPlatterView)initWithRecipe:(int64_t)recipe;
- (id)requiredVisualStyleCategories;
- (void)_configureSummaryViewIfNecessary;
- (void)didMoveToSuperview;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)updateContent;
@end

@implementation NCDigestSummaryPlatterView

- (NCDigestSummaryPlatterView)initWithRecipe:(int64_t)recipe
{
  v6.receiver = self;
  v6.super_class = NCDigestSummaryPlatterView;
  v3 = [(NCPlatterView *)&v6 initWithRecipe:recipe supportsGlass:0];
  v4 = v3;
  if (v3)
  {
    [(NCPlatterView *)v3 _setContinuousCornerRadius:28.0];
    [(NCDigestSummaryPlatterView *)v4 _configureSummaryViewIfNecessary];
  }

  return v4;
}

- (void)updateContent
{
  [(NCDigestSummaryView *)self->_summaryView updateContent];

  [(NCDigestSummaryPlatterView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NCDigestSummaryView *)self->_summaryView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didMoveToSuperview
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NCDigestSummaryPlatterView;
  [(NCDigestSummaryPlatterView *)&v15 didMoveToSuperview];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  requiredVisualStyleCategories = [(NCDigestSummaryView *)self->_summaryView requiredVisualStyleCategories];
  v4 = [requiredVisualStyleCategories countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v11 + 1) + 8 * v7) integerValue];
        summaryView = self->_summaryView;
        v10 = [(PLPlatterView *)self visualStylingProviderForCategory:integerValue];
        [(NCDigestSummaryView *)summaryView setVisualStylingProvider:v10 forCategory:integerValue];

        ++v7;
      }

      while (v5 != v7);
      v5 = [requiredVisualStyleCategories countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)requiredVisualStyleCategories
{
  v3 = MEMORY[0x277CBEB58];
  v9.receiver = self;
  v9.super_class = NCDigestSummaryPlatterView;
  requiredVisualStyleCategories = [(PLPlatterView *)&v9 requiredVisualStyleCategories];
  v5 = [v3 setWithArray:requiredVisualStyleCategories];

  requiredVisualStyleCategories2 = [(NCDigestSummaryView *)self->_summaryView requiredVisualStyleCategories];
  [v5 addObjectsFromArray:requiredVisualStyleCategories2];

  allObjects = [v5 allObjects];

  return allObjects;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  v7.receiver = self;
  v7.super_class = NCDigestSummaryPlatterView;
  providerCopy = provider;
  [(PLPlatterView *)&v7 setVisualStylingProvider:providerCopy forCategory:category];
  [(NCDigestSummaryView *)self->_summaryView setVisualStylingProvider:providerCopy forCategory:category, v7.receiver, v7.super_class];
}

- (void)setMaterialGroupNameBase:(id)base
{
  v5.receiver = self;
  v5.super_class = NCDigestSummaryPlatterView;
  baseCopy = base;
  [(PLPlatterView *)&v5 setMaterialGroupNameBase:baseCopy];
  [(NCDigestSummaryView *)self->_summaryView setMaterialGroupNameBase:baseCopy, v5.receiver, v5.super_class];
}

- (void)_configureSummaryViewIfNecessary
{
  if (!self->_summaryView)
  {
    customContentView = [(PLPlatterView *)self customContentView];
    v3 = [NCDigestSummaryView alloc];
    [customContentView bounds];
    v4 = [(NCDigestSummaryView *)v3 initWithFrame:?];
    summaryView = self->_summaryView;
    self->_summaryView = v4;

    [customContentView addSubview:self->_summaryView];
    [(NCDigestSummaryView *)self->_summaryView setAutoresizingMask:18];
    [(NCDigestSummaryView *)self->_summaryView _setContinuousCornerRadius:28.0];
    [(NCDigestSummaryView *)self->_summaryView setClipsToBounds:1];
  }
}

@end