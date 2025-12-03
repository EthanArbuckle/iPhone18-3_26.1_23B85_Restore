@interface SearchUIAppIconCardSectionView
- (BOOL)setupManualFocus;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)setupContentView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)dealloc;
- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section;
- (void)removeManualFocus;
- (void)returnKeyPressed;
- (void)updateWithRowModel:(id)model;
- (void)willRemoveIcon:(id)icon;
@end

@implementation SearchUIAppIconCardSectionView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchUIAppIconCardSectionView;
  [(NUIContainerStackView *)&v4 dealloc];
}

- (id)setupContentView
{
  v12[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_willRemoveIcon_ name:*MEMORY[0x1E69D4170] object:0];

  v4 = objc_opt_new();
  [v4 setHidden:1];
  [(SearchUIAppIconCardSectionView *)self setFolderLabelView:v4];
  v5 = objc_opt_new();
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  [v5 setFeedbackDelegate:feedbackDelegate];

  [v5 setEngagementDelegate:self];
  if (+[SearchUIUtilities isIpad])
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  [v5 setVariant:v7];
  [v5 setClipsToBounds:0];
  [(SearchUIAppIconCardSectionView *)self setAppIconView:v5];
  v8 = MEMORY[0x1E698B718];
  v12[0] = v5;
  v12[1] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v8 containerBoxViewWithArrangedSubviews:v9];

  [v10 setVerticalAlignment:3];
  [v10 setHorizontalAlignment:3];
  [v10 setAlignment:4 forView:v4 inAxis:0];
  +[SearchUIAppIconUtilities appIconItemSize];
  [v10 setMinimumLayoutSize:?];
  [v10 setLayoutMarginsRelativeArrangement:1];
  [v10 setDelegate:self];

  return v10;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = SearchUIAppIconCardSectionView;
  [(SearchUICardSectionView *)&v15 updateWithRowModel:modelCopy];
  identifyingResult = [modelCopy identifyingResult];
  auxiliaryTopText = [identifyingResult auxiliaryTopText];
  if (![auxiliaryTopText length])
  {

    goto LABEL_5;
  }

  shouldFillAvailableSpace = [modelCopy shouldFillAvailableSpace];

  if (!shouldFillAvailableSpace)
  {
LABEL_5:
    folderLabelView = [(SearchUIAppIconCardSectionView *)self folderLabelView];
    [folderLabelView setTopText:0];
    goto LABEL_6;
  }

  v8 = MEMORY[0x1E69D91D0];
  folderLabelView = [modelCopy identifyingResult];
  auxiliaryTopText2 = [folderLabelView auxiliaryTopText];
  v11 = [v8 textWithString:auxiliaryTopText2];
  folderLabelView2 = [(SearchUIAppIconCardSectionView *)self folderLabelView];
  [folderLabelView2 setTopText:v11];

LABEL_6:
  appIconView = [(SearchUIAppIconCardSectionView *)self appIconView];
  [appIconView updateWithRowModel:modelCopy];

  contentView = [(SearchUICardSectionView *)self contentView];
  [contentView layoutBelowIfNeeded];
}

- (void)willRemoveIcon:(id)icon
{
  userInfo = [icon userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69D4178]];
  nodeIdentifier = [v5 nodeIdentifier];

  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  applicationBundleIdentifier = [cardSection applicationBundleIdentifier];
  if ([applicationBundleIdentifier isEqualToString:nodeIdentifier])
  {
    feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }

    applicationBundleIdentifier = [(SearchUICardSectionView *)self feedbackDelegate];
    rowModel2 = [(SearchUICardSectionView *)self rowModel];
    [applicationBundleIdentifier removeRowModel:rowModel2 completion:0];
  }

LABEL_5:
}

- (BOOL)setupManualFocus
{
  appIconView = [(SearchUIAppIconCardSectionView *)self appIconView];
  [appIconView setAddRoundedKeyboardHighlight:1];

  return 1;
}

- (void)removeManualFocus
{
  appIconView = [(SearchUIAppIconCardSectionView *)self appIconView];
  [appIconView setAddRoundedKeyboardHighlight:0];
}

- (void)returnKeyPressed
{
  appIconView = [(SearchUIAppIconCardSectionView *)self appIconView];
  [appIconView launchIcon];
}

- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section
{
  resultCopy = result;
  sectionCopy = section;
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    feedbackDelegate2 = [(SearchUICardSectionView *)self feedbackDelegate];
    [feedbackDelegate2 didUpdateKeyboardFocusToResult:resultCopy cardSection:sectionCopy];
  }
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  if (self == viewCopy)
  {
    rowModel = [(SearchUICardSectionView *)self rowModel];
    sectionType = [rowModel sectionType];

    if (sectionType == 1)
    {
      v12 = width / +[SearchUIAppIconUtilities numberOfAppIconsPerRow];
      appIconView = [(SearchUIAppIconCardSectionView *)self appIconView];
      [appIconView intrinsicContentSize];
      v15 = (v12 - v14) * 0.5;

      +[SearchUIAppIconUtilities distanceToTopOfAppIconsForMultiResultCell];
      v17 = v16;
      +[SearchUIAppIconUtilities distanceToBottomOfAppIconsForMultiResultCell];
      v19 = v18;
      contentView = [(SearchUICardSectionView *)self contentView];
      v21 = contentView;
      if (v15 >= 0.0)
      {
        v22 = v15;
      }

      else
      {
        v22 = 0.0;
      }

      if (v15 > 0.0)
      {
        v23 = 1;
      }

      else
      {
        v23 = 3;
      }

      [contentView setDirectionalLayoutMargins:{v17, v22, v19, v22}];

      folderLabelView = [(SearchUIAppIconCardSectionView *)self folderLabelView];
      [folderLabelView setHidden:v15 <= 0.0];

      contentView2 = [(SearchUICardSectionView *)self contentView];
      folderLabelView2 = [(SearchUIAppIconCardSectionView *)self folderLabelView];
      [contentView2 setAlignment:4 forView:folderLabelView2 inAxis:0];

      contentView3 = [(SearchUICardSectionView *)self contentView];
      appIconView2 = [(SearchUIAppIconCardSectionView *)self appIconView];
      [contentView3 setAlignment:v23 forView:appIconView2 inAxis:0];
    }
  }

  v29.receiver = self;
  v29.super_class = SearchUIAppIconCardSectionView;
  [(SearchUICardSectionView *)&v29 containerView:viewCopy willMeasureArrangedSubviewsFittingSize:reason forReason:width, height];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SearchUIAppIconCardSectionView;
  v5 = [(SearchUIAppIconCardSectionView *)&v9 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self])
  {
    appIconView = [(SearchUIAppIconCardSectionView *)self appIconView];
  }

  else
  {
    appIconView = v5;
  }

  v7 = appIconView;

  return v7;
}

@end