@interface SearchUILeadingHomeScreenViewController
+ (BOOL)supportsRowModel:(id)a3;
- (id)setupView;
- (void)deleteIcon:(id)a3;
- (void)setFeedbackDelegate:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUILeadingHomeScreenViewController

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = a3;
  if ([v3 isLocalApplicationResult])
  {
    v4 = [v3 useCompactVersionOfUI] ^ 1;
  }

  else
  {
    v5 = [v3 cardSection];
    v6 = [v5 command];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 useCompactVersionOfUI] ^ 1;
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
  v4 = [(SearchUILeadingViewController *)self feedbackDelegate];
  [v3 setFeedbackDelegate:v4];

  [v3 setEngagementDelegate:self];
  [v3 setVariant:4];
  +[SearchUIAppIconImage sizeForVariant:](SearchUIAppIconImage, "sizeForVariant:", [v3 variant]);
  [v3 setMaximumLayoutSize:?];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v3];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_deleteIcon_ name:*MEMORY[0x1E69D4170] object:0];

  return v3;
}

- (void)setFeedbackDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUILeadingHomeScreenViewController;
  v4 = a3;
  [(SearchUILeadingViewController *)&v6 setFeedbackDelegate:v4];
  v5 = [(SearchUILeadingViewController *)self view:v6.receiver];
  [v5 setFeedbackDelegate:v4];
}

- (void)deleteIcon:(id)a3
{
  v4 = [a3 userInfo];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4178]];

  v5 = [(SearchUILeadingViewController *)self view];
  v6 = [v5 icon];
  if (v6 == v9)
  {
    v7 = [(SearchUILeadingViewController *)self feedbackDelegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = [(SearchUILeadingViewController *)self feedbackDelegate];
    v6 = [(SearchUILeadingViewController *)self rowModel];
    [v5 removeRowModel:v6 completion:0];
  }

LABEL_5:
}

- (void)updateWithRowModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUILeadingHomeScreenViewController;
  v4 = a3;
  [(SearchUILeadingViewController *)&v6 updateWithRowModel:v4];
  v5 = [(SearchUILeadingViewController *)self view:v6.receiver];
  [v5 updateWithRowModel:v4];
}

@end