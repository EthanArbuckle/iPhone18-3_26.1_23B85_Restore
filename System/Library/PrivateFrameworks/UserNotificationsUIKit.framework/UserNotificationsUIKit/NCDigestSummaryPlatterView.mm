@interface NCDigestSummaryPlatterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCDigestSummaryPlatterView)initWithRecipe:(int64_t)a3;
- (id)requiredVisualStyleCategories;
- (void)_configureSummaryViewIfNecessary;
- (void)didMoveToSuperview;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)updateContent;
@end

@implementation NCDigestSummaryPlatterView

- (NCDigestSummaryPlatterView)initWithRecipe:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NCDigestSummaryPlatterView;
  v3 = [(NCPlatterView *)&v6 initWithRecipe:a3 supportsGlass:0];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NCDigestSummaryView *)self->_summaryView sizeThatFits:a3.width, a3.height];
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
  v3 = [(NCDigestSummaryView *)self->_summaryView requiredVisualStyleCategories];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) integerValue];
        summaryView = self->_summaryView;
        v10 = [(PLPlatterView *)self visualStylingProviderForCategory:v8];
        [(NCDigestSummaryView *)summaryView setVisualStylingProvider:v10 forCategory:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)requiredVisualStyleCategories
{
  v3 = MEMORY[0x277CBEB58];
  v9.receiver = self;
  v9.super_class = NCDigestSummaryPlatterView;
  v4 = [(PLPlatterView *)&v9 requiredVisualStyleCategories];
  v5 = [v3 setWithArray:v4];

  v6 = [(NCDigestSummaryView *)self->_summaryView requiredVisualStyleCategories];
  [v5 addObjectsFromArray:v6];

  v7 = [v5 allObjects];

  return v7;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = NCDigestSummaryPlatterView;
  v6 = a3;
  [(PLPlatterView *)&v7 setVisualStylingProvider:v6 forCategory:a4];
  [(NCDigestSummaryView *)self->_summaryView setVisualStylingProvider:v6 forCategory:a4, v7.receiver, v7.super_class];
}

- (void)setMaterialGroupNameBase:(id)a3
{
  v5.receiver = self;
  v5.super_class = NCDigestSummaryPlatterView;
  v4 = a3;
  [(PLPlatterView *)&v5 setMaterialGroupNameBase:v4];
  [(NCDigestSummaryView *)self->_summaryView setMaterialGroupNameBase:v4, v5.receiver, v5.super_class];
}

- (void)_configureSummaryViewIfNecessary
{
  if (!self->_summaryView)
  {
    v6 = [(PLPlatterView *)self customContentView];
    v3 = [NCDigestSummaryView alloc];
    [v6 bounds];
    v4 = [(NCDigestSummaryView *)v3 initWithFrame:?];
    summaryView = self->_summaryView;
    self->_summaryView = v4;

    [v6 addSubview:self->_summaryView];
    [(NCDigestSummaryView *)self->_summaryView setAutoresizingMask:18];
    [(NCDigestSummaryView *)self->_summaryView _setContinuousCornerRadius:28.0];
    [(NCDigestSummaryView *)self->_summaryView setClipsToBounds:1];
  }
}

@end