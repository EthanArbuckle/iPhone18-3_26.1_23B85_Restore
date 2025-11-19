@interface SearchUILeadingContactViewController
+ (BOOL)supportsRowModel:(id)a3;
- (BOOL)shouldVerticallyCenter;
- (id)setupView;
- (void)hide;
- (void)setUsesCompactWidth:(BOOL)a3;
- (void)updateWithRowModel:(id)a3;
- (void)willBeginPreviewInteractionForAvatarView:(id)a3;
@end

@implementation SearchUILeadingContactViewController

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = a3;
  v4 = [v3 leadingImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 leadingImage];
    v6 = [v5 threeDTouchEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)hide
{
  v4.receiver = self;
  v4.super_class = SearchUILeadingContactViewController;
  [(SearchUILeadingViewController *)&v4 hide];
  v3 = [(SearchUILeadingContactViewController *)self avatarView];
  [v3 setThreeDTouchEnabled:0];
}

- (id)setupView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [(SearchUILeadingContactViewController *)self setAvatarView:v3];
  v4 = objc_alloc(MEMORY[0x1E698B718]);
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v4 initWithArrangedSubviews:v5];

  return v6;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SearchUILeadingContactViewController;
  [(SearchUILeadingViewController *)&v21 updateWithRowModel:v4];
  v5 = [(SearchUILeadingContactViewController *)self avatarView];
  [v5 updateWithRowModel:v4];

  v6 = [v4 leadingImage];
  v7 = [v6 appIconBadgeBundleIdentifier];
  if (!v7)
  {
    v8 = [v6 badgingImage];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [v4 useCompactVersionOfUI];
      v7 = 0;
      v11 = 1;
      goto LABEL_10;
    }

    v10 = [v6 badgingImage];
    v7 = [v10 bundleIdentifier];
  }

  v11 = 1;
  if (([v4 useCompactVersionOfUI] & 1) == 0 && v7)
  {
    v12 = [(SearchUILeadingContactViewController *)self appIconBadgeView];

    if (!v12)
    {
      v13 = objc_opt_new();
      [v13 setUserInteractionEnabled:0];
      v14 = [(SearchUILeadingViewController *)self view];
      [v14 addArrangedSubview:v13];

      v15 = [(SearchUILeadingViewController *)self view];
      [v15 setAlignment:4 forView:v13 inAxis:1];

      v16 = [(SearchUILeadingViewController *)self view];
      [v16 setAlignment:4 forView:v13 inAxis:0];

      v17 = [(SearchUILeadingViewController *)self view];
      [v17 setPositionAdjustmentOffset:v13 forView:{*MEMORY[0x1E69D9258], *MEMORY[0x1E69D9258]}];

      [(SearchUILeadingContactViewController *)self setAppIconBadgeView:v13];
    }

    v18 = [SearchUIAppIconImage appIconForBundleIdentifier:v7 variant:1];
    v19 = [(SearchUILeadingContactViewController *)self appIconBadgeView];
    [v19 updateWithImage:v18];

    v11 = 0;
  }

LABEL_10:
  v20 = [(SearchUILeadingContactViewController *)self appIconBadgeView];
  [v20 setHidden:v11];
}

- (void)setUsesCompactWidth:(BOOL)a3
{
  v3 = a3;
  if ([(SearchUILeadingViewController *)self usesCompactWidth]!= a3)
  {
    v6.receiver = self;
    v6.super_class = SearchUILeadingContactViewController;
    [(SearchUILeadingViewController *)&v6 setUsesCompactWidth:v3];
    v5 = [(SearchUILeadingContactViewController *)self avatarView];
    [v5 setUsesCompactWidth:v3];
  }
}

- (void)willBeginPreviewInteractionForAvatarView:(id)a3
{
  v11 = [(SearchUILeadingViewController *)self feedbackDelegate];
  v4 = [(SearchUILeadingViewController *)self rowModel];
  v5 = [v4 identifyingResult];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = objc_alloc(MEMORY[0x1E69CA368]);
    v9 = [(SearchUILeadingViewController *)self rowModel];
    v10 = [v9 identifyingResult];
    v4 = [v8 initWithResult:v10 triggerEvent:5 destination:1 actionTarget:0];

    [v11 didEngageResult:v4];
  }

LABEL_5:
}

- (BOOL)shouldVerticallyCenter
{
  v2 = [(SearchUILeadingViewController *)self rowModel];
  v3 = [v2 useCompactVersionOfUI];

  return v3;
}

@end