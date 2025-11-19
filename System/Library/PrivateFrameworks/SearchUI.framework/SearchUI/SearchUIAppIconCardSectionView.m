@interface SearchUIAppIconCardSectionView
- (BOOL)setupManualFocus;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)setupContentView;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)dealloc;
- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4;
- (void)removeManualFocus;
- (void)returnKeyPressed;
- (void)updateWithRowModel:(id)a3;
- (void)willRemoveIcon:(id)a3;
@end

@implementation SearchUIAppIconCardSectionView

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchUIAppIconCardSectionView;
  [(NUIContainerStackView *)&v4 dealloc];
}

- (id)setupContentView
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_willRemoveIcon_ name:*MEMORY[0x1E69D4170] object:0];

  v4 = objc_opt_new();
  [v4 setHidden:1];
  [(SearchUIAppIconCardSectionView *)self setFolderLabelView:v4];
  v5 = objc_opt_new();
  v6 = [(SearchUICardSectionView *)self feedbackDelegate];
  [v5 setFeedbackDelegate:v6];

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

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SearchUIAppIconCardSectionView;
  [(SearchUICardSectionView *)&v15 updateWithRowModel:v4];
  v5 = [v4 identifyingResult];
  v6 = [v5 auxiliaryTopText];
  if (![v6 length])
  {

    goto LABEL_5;
  }

  v7 = [v4 shouldFillAvailableSpace];

  if (!v7)
  {
LABEL_5:
    v9 = [(SearchUIAppIconCardSectionView *)self folderLabelView];
    [v9 setTopText:0];
    goto LABEL_6;
  }

  v8 = MEMORY[0x1E69D91D0];
  v9 = [v4 identifyingResult];
  v10 = [v9 auxiliaryTopText];
  v11 = [v8 textWithString:v10];
  v12 = [(SearchUIAppIconCardSectionView *)self folderLabelView];
  [v12 setTopText:v11];

LABEL_6:
  v13 = [(SearchUIAppIconCardSectionView *)self appIconView];
  [v13 updateWithRowModel:v4];

  v14 = [(SearchUICardSectionView *)self contentView];
  [v14 layoutBelowIfNeeded];
}

- (void)willRemoveIcon:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4178]];
  v12 = [v5 nodeIdentifier];

  v6 = [(SearchUICardSectionView *)self rowModel];
  v7 = [v6 cardSection];

  v8 = [v7 applicationBundleIdentifier];
  if ([v8 isEqualToString:v12])
  {
    v9 = [(SearchUICardSectionView *)self feedbackDelegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [(SearchUICardSectionView *)self feedbackDelegate];
    v11 = [(SearchUICardSectionView *)self rowModel];
    [v8 removeRowModel:v11 completion:0];
  }

LABEL_5:
}

- (BOOL)setupManualFocus
{
  v2 = [(SearchUIAppIconCardSectionView *)self appIconView];
  [v2 setAddRoundedKeyboardHighlight:1];

  return 1;
}

- (void)removeManualFocus
{
  v2 = [(SearchUIAppIconCardSectionView *)self appIconView];
  [v2 setAddRoundedKeyboardHighlight:0];
}

- (void)returnKeyPressed
{
  v2 = [(SearchUIAppIconCardSectionView *)self appIconView];
  [v2 launchIcon];
}

- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SearchUICardSectionView *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUICardSectionView *)self feedbackDelegate];
    [v9 didUpdateKeyboardFocusToResult:v10 cardSection:v6];
  }
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  if (self == v9)
  {
    v10 = [(SearchUICardSectionView *)self rowModel];
    v11 = [v10 sectionType];

    if (v11 == 1)
    {
      v12 = width / +[SearchUIAppIconUtilities numberOfAppIconsPerRow];
      v13 = [(SearchUIAppIconCardSectionView *)self appIconView];
      [v13 intrinsicContentSize];
      v15 = (v12 - v14) * 0.5;

      +[SearchUIAppIconUtilities distanceToTopOfAppIconsForMultiResultCell];
      v17 = v16;
      +[SearchUIAppIconUtilities distanceToBottomOfAppIconsForMultiResultCell];
      v19 = v18;
      v20 = [(SearchUICardSectionView *)self contentView];
      v21 = v20;
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

      [v20 setDirectionalLayoutMargins:{v17, v22, v19, v22}];

      v24 = [(SearchUIAppIconCardSectionView *)self folderLabelView];
      [v24 setHidden:v15 <= 0.0];

      v25 = [(SearchUICardSectionView *)self contentView];
      v26 = [(SearchUIAppIconCardSectionView *)self folderLabelView];
      [v25 setAlignment:4 forView:v26 inAxis:0];

      v27 = [(SearchUICardSectionView *)self contentView];
      v28 = [(SearchUIAppIconCardSectionView *)self appIconView];
      [v27 setAlignment:v23 forView:v28 inAxis:0];
    }
  }

  v29.receiver = self;
  v29.super_class = SearchUIAppIconCardSectionView;
  [(SearchUICardSectionView *)&v29 containerView:v9 willMeasureArrangedSubviewsFittingSize:a5 forReason:width, height];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SearchUIAppIconCardSectionView;
  v5 = [(SearchUIAppIconCardSectionView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = [(SearchUIAppIconCardSectionView *)self appIconView];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

@end