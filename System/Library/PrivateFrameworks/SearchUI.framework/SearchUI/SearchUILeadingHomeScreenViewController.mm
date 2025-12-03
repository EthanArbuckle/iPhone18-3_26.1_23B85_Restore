@interface SearchUILeadingHomeScreenViewController
+ (BOOL)supportsRowModel:(id)model;
- (id)setupView;
- (void)deleteIcon:(id)icon;
- (void)setFeedbackDelegate:(id)delegate;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUILeadingHomeScreenViewController

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isLocalApplicationResult])
  {
    v4 = [modelCopy useCompactVersionOfUI] ^ 1;
  }

  else
  {
    cardSection = [modelCopy cardSection];
    command = [cardSection command];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [modelCopy useCompactVersionOfUI] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)setupView
{
  v3 = objc_opt_new();
  [v3 setAllowsLabelArea:0];
  feedbackDelegate = [(SearchUILeadingViewController *)self feedbackDelegate];
  [v3 setFeedbackDelegate:feedbackDelegate];

  [v3 setEngagementDelegate:self];
  [v3 setVariant:4];
  +[SearchUIAppIconImage sizeForVariant:](SearchUIAppIconImage, "sizeForVariant:", [v3 variant]);
  [v3 setMaximumLayoutSize:?];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v3];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_deleteIcon_ name:*MEMORY[0x1E69D4170] object:0];

  return v3;
}

- (void)setFeedbackDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUILeadingHomeScreenViewController;
  delegateCopy = delegate;
  [(SearchUILeadingViewController *)&v6 setFeedbackDelegate:delegateCopy];
  v5 = [(SearchUILeadingViewController *)self view:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

- (void)deleteIcon:(id)icon
{
  userInfo = [icon userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69D4178]];

  view = [(SearchUILeadingViewController *)self view];
  icon = [view icon];
  if (icon == v9)
  {
    feedbackDelegate = [(SearchUILeadingViewController *)self feedbackDelegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }

    view = [(SearchUILeadingViewController *)self feedbackDelegate];
    icon = [(SearchUILeadingViewController *)self rowModel];
    [view removeRowModel:icon completion:0];
  }

LABEL_5:
}

- (void)updateWithRowModel:(id)model
{
  v6.receiver = self;
  v6.super_class = SearchUILeadingHomeScreenViewController;
  modelCopy = model;
  [(SearchUILeadingViewController *)&v6 updateWithRowModel:modelCopy];
  v5 = [(SearchUILeadingViewController *)self view:v6.receiver];
  [v5 updateWithRowModel:modelCopy];
}

@end