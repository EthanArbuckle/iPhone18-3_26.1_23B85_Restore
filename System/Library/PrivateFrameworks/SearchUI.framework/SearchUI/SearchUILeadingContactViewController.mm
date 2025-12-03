@interface SearchUILeadingContactViewController
+ (BOOL)supportsRowModel:(id)model;
- (BOOL)shouldVerticallyCenter;
- (id)setupView;
- (void)hide;
- (void)setUsesCompactWidth:(BOOL)width;
- (void)updateWithRowModel:(id)model;
- (void)willBeginPreviewInteractionForAvatarView:(id)view;
@end

@implementation SearchUILeadingContactViewController

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  leadingImage = [modelCopy leadingImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    leadingImage2 = [modelCopy leadingImage];
    threeDTouchEnabled = [leadingImage2 threeDTouchEnabled];
  }

  else
  {
    threeDTouchEnabled = 0;
  }

  return threeDTouchEnabled;
}

- (void)hide
{
  v4.receiver = self;
  v4.super_class = SearchUILeadingContactViewController;
  [(SearchUILeadingViewController *)&v4 hide];
  avatarView = [(SearchUILeadingContactViewController *)self avatarView];
  [avatarView setThreeDTouchEnabled:0];
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

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = SearchUILeadingContactViewController;
  [(SearchUILeadingViewController *)&v21 updateWithRowModel:modelCopy];
  avatarView = [(SearchUILeadingContactViewController *)self avatarView];
  [avatarView updateWithRowModel:modelCopy];

  leadingImage = [modelCopy leadingImage];
  appIconBadgeBundleIdentifier = [leadingImage appIconBadgeBundleIdentifier];
  if (!appIconBadgeBundleIdentifier)
  {
    badgingImage = [leadingImage badgingImage];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [modelCopy useCompactVersionOfUI];
      appIconBadgeBundleIdentifier = 0;
      v11 = 1;
      goto LABEL_10;
    }

    badgingImage2 = [leadingImage badgingImage];
    appIconBadgeBundleIdentifier = [badgingImage2 bundleIdentifier];
  }

  v11 = 1;
  if (([modelCopy useCompactVersionOfUI] & 1) == 0 && appIconBadgeBundleIdentifier)
  {
    appIconBadgeView = [(SearchUILeadingContactViewController *)self appIconBadgeView];

    if (!appIconBadgeView)
    {
      v13 = objc_opt_new();
      [v13 setUserInteractionEnabled:0];
      view = [(SearchUILeadingViewController *)self view];
      [view addArrangedSubview:v13];

      view2 = [(SearchUILeadingViewController *)self view];
      [view2 setAlignment:4 forView:v13 inAxis:1];

      view3 = [(SearchUILeadingViewController *)self view];
      [view3 setAlignment:4 forView:v13 inAxis:0];

      view4 = [(SearchUILeadingViewController *)self view];
      [view4 setPositionAdjustmentOffset:v13 forView:{*MEMORY[0x1E69D9258], *MEMORY[0x1E69D9258]}];

      [(SearchUILeadingContactViewController *)self setAppIconBadgeView:v13];
    }

    v18 = [SearchUIAppIconImage appIconForBundleIdentifier:appIconBadgeBundleIdentifier variant:1];
    appIconBadgeView2 = [(SearchUILeadingContactViewController *)self appIconBadgeView];
    [appIconBadgeView2 updateWithImage:v18];

    v11 = 0;
  }

LABEL_10:
  appIconBadgeView3 = [(SearchUILeadingContactViewController *)self appIconBadgeView];
  [appIconBadgeView3 setHidden:v11];
}

- (void)setUsesCompactWidth:(BOOL)width
{
  widthCopy = width;
  if ([(SearchUILeadingViewController *)self usesCompactWidth]!= width)
  {
    v6.receiver = self;
    v6.super_class = SearchUILeadingContactViewController;
    [(SearchUILeadingViewController *)&v6 setUsesCompactWidth:widthCopy];
    avatarView = [(SearchUILeadingContactViewController *)self avatarView];
    [avatarView setUsesCompactWidth:widthCopy];
  }
}

- (void)willBeginPreviewInteractionForAvatarView:(id)view
{
  feedbackDelegate = [(SearchUILeadingViewController *)self feedbackDelegate];
  rowModel = [(SearchUILeadingViewController *)self rowModel];
  identifyingResult = [rowModel identifyingResult];
  if (identifyingResult)
  {
    v6 = identifyingResult;
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = objc_alloc(MEMORY[0x1E69CA368]);
    rowModel2 = [(SearchUILeadingViewController *)self rowModel];
    identifyingResult2 = [rowModel2 identifyingResult];
    rowModel = [v8 initWithResult:identifyingResult2 triggerEvent:5 destination:1 actionTarget:0];

    [feedbackDelegate didEngageResult:rowModel];
  }

LABEL_5:
}

- (BOOL)shouldVerticallyCenter
{
  rowModel = [(SearchUILeadingViewController *)self rowModel];
  useCompactVersionOfUI = [rowModel useCompactVersionOfUI];

  return useCompactVersionOfUI;
}

@end