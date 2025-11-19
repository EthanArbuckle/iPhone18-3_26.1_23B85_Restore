@interface NCNotificationSummaryPlatterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationSummaryPlatterView)initWithRecipe:(int64_t)a3;
- (NSArray)requiredVisualStyleCategories;
- (void)_configureSummaryContentViewIfNecessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateStackDimmingVisualStyling;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation NCNotificationSummaryPlatterView

- (NCNotificationSummaryPlatterView)initWithRecipe:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummaryPlatterView;
  v3 = [(NCPlatterView *)&v6 initWithRecipe:a3 supportsGlass:1];
  v4 = v3;
  if (v3)
  {
    [(NCPlatterView *)v3 _setContinuousCornerRadius:23.5];
    [(NCNotificationSummaryPlatterView *)v4 _configureSummaryContentViewIfNecessary];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(NCNotificationSummaryContentView *)self->_summaryContentView sizeThatFits:a3.width + -31.0, a3.height];
  v5 = [(NCNotificationSummaryPlatterView *)self traitCollection];
  [v5 displayScale];
  UICeilToScale();
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)didMoveToSuperview
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NCNotificationSummaryPlatterView;
  [(NCNotificationSummaryPlatterView *)&v15 didMoveToSuperview];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NCNotificationSummaryContentView *)self->_summaryContentView requiredVisualStyleCategories];
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
        summaryContentView = self->_summaryContentView;
        v10 = [(PLPlatterView *)self visualStylingProviderForCategory:v8];
        [(NCNotificationSummaryContentView *)summaryContentView setVisualStylingProvider:v10 forCategory:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NCNotificationSummaryPlatterView;
  [(NCPlatterView *)&v12 layoutSubviews];
  if (self->_summaryContentView)
  {
    [(NCNotificationSummaryPlatterView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCNotificationSummaryContentView *)self->_summaryContentView frame];
    [(NCNotificationSummaryPlatterView *)self _shouldReverseLayoutDirection];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    v11 = CGRectGetWidth(v13) + -31.0;
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    [(NCNotificationSummaryContentView *)self->_summaryContentView sizeThatFits:v11, CGRectGetHeight(v14)];
    UIRectIntegralWithScale();
    [(NCNotificationSummaryContentView *)self->_summaryContentView setFrame:?];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = NCNotificationSummaryPlatterView;
  [(NCNotificationSummaryPlatterView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(NCNotificationSummaryPlatterView *)self _updateStackDimmingVisualStyling];
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3
{
  if (a3->a <= 0.94)
  {
    v4 = dbl_21E946550[a3->a < 0.94];
  }

  else
  {
    v4 = 0.0;
  }

  if (v4 > 0.0 && !self->_stackDimmingView)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    stackDimmingView = self->_stackDimmingView;
    self->_stackDimmingView = v5;

    [(UIView *)self->_stackDimmingView setUserInteractionEnabled:0];
    v7 = self->_stackDimmingView;
    [(NCNotificationSummaryPlatterView *)self bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)self->_stackDimmingView setAutoresizingMask:18];
    v8 = self->_stackDimmingView;
    [(NCPlatterView *)self _continuousCornerRadius];
    [(UIView *)v8 _setContinuousCornerRadius:?];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__NCNotificationSummaryPlatterView_configureStackDimmingForTransform___block_invoke;
    v9[3] = &unk_27836F6A8;
    v9[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v9];
  }

  [(UIView *)self->_stackDimmingView setAlpha:v4];
}

uint64_t __70__NCNotificationSummaryPlatterView_configureStackDimmingForTransform___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 696) setAlpha:0.0];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 696)];
  v2 = *(a1 + 32);

  return [v2 _updateStackDimmingVisualStyling];
}

- (NSArray)requiredVisualStyleCategories
{
  v3 = MEMORY[0x277CBEB58];
  v9.receiver = self;
  v9.super_class = NCNotificationSummaryPlatterView;
  v4 = [(PLPlatterView *)&v9 requiredVisualStyleCategories];
  v5 = [v3 setWithArray:v4];

  v6 = [(NCNotificationSummaryContentView *)self->_summaryContentView requiredVisualStyleCategories];
  [v5 addObjectsFromArray:v6];

  v7 = [v5 allObjects];

  return v7;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = NCNotificationSummaryPlatterView;
  v6 = a3;
  [(PLPlatterView *)&v7 setVisualStylingProvider:v6 forCategory:a4];
  [(NCNotificationSummaryContentView *)self->_summaryContentView setVisualStylingProvider:v6 forCategory:a4, v7.receiver, v7.super_class];
}

- (void)_configureSummaryContentViewIfNecessary
{
  if (!self->_summaryContentView)
  {
    v6 = [(PLPlatterView *)self customContentView];
    v3 = [NCNotificationSummaryContentView alloc];
    [v6 bounds];
    v4 = [(NCNotificationSummaryContentView *)v3 initWithFrame:?];
    summaryContentView = self->_summaryContentView;
    self->_summaryContentView = v4;

    [v6 addSubview:self->_summaryContentView];
  }
}

- (void)_updateStackDimmingVisualStyling
{
  if (self->_stackDimmingView)
  {
    v3 = [(NCNotificationSummaryPlatterView *)self traitCollection];
    v4 = [v3 userInterfaceStyle];
    v5 = @"stackDimmingLight";
    if (v4 == 2)
    {
      v5 = @"stackDimmingDark";
    }

    v6 = v5;

    v7 = MEMORY[0x277D26740];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v7 _visualStylingProviderForStyleSetNamed:v6 inBundle:v8];

    [(UIView *)self->_stackDimmingView alpha];
    v10 = v9;
    stackDimmingView = self->_stackDimmingView;
    v12 = [v13 _visualStylingForStyle:1];
    [(UIView *)stackDimmingView mt_replaceVisualStyling:v12];

    [(UIView *)self->_stackDimmingView setAlpha:v10];
  }
}

@end