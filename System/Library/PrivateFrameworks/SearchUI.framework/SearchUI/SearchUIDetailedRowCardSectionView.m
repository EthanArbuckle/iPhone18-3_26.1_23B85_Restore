@interface SearchUIDetailedRowCardSectionView
- (id)findDescendentOfView:(id)a3 matchingClass:(Class)a4;
- (id)leadingTextView;
- (id)leadingView;
- (id)setupContentView;
- (id)viewForQuickLookZoomTransitionSource;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)setFeedbackDelegate:(id)a3;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIDetailedRowCardSectionView

- (id)setupContentView
{
  v3 = [SearchUIDetailedView alloc];
  v4 = [(SearchUICardSectionView *)self feedbackDelegate];
  v5 = [(SearchUIDetailedView *)v3 initWithFeedbackDelegate:v4];

  [(SearchUIDetailedView *)v5 setButtonDelegate:self];

  return v5;
}

- (id)leadingView
{
  v2 = [(SearchUICardSectionView *)self contentView];
  v3 = [v2 leadingView];

  return v3;
}

- (id)leadingTextView
{
  v2 = [(SearchUICardSectionView *)self contentView];
  v3 = [v2 leadingTextView];

  return v3;
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = SearchUIDetailedRowCardSectionView;
  [(SearchUICardSectionView *)&v8 containerView:a3 willMeasureArrangedSubviewsFittingSize:a5 forReason:a4.width, a4.height];
  v6 = [(SearchUICardSectionView *)self isCompactWidth];
  v7 = [(SearchUICardSectionView *)self contentView];
  [v7 setIsCompactWidth:v6];
}

- (void)updateWithRowModel:(id)a3
{
  v8.receiver = self;
  v8.super_class = SearchUIDetailedRowCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v8 updateWithRowModel:v4];
  v5 = [(SearchUICardSectionView *)self contentView:v8.receiver];
  [v5 updateWithRowModel:v4];

  LODWORD(v5) = [v4 useCompactVersionOfUI];
  if (v5)
  {
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      [MEMORY[0x1E69D9248] makeContainerShadowCompatible:self];
      v6 = MEMORY[0x1E69D9248];
      v7 = [(SearchUICardSectionView *)self contentView];
      [v6 makeContainerShadowCompatible:v7];
    }
  }
}

- (void)setFeedbackDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIDetailedRowCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v6 setFeedbackDelegate:v4];
  v5 = [(SearchUICardSectionView *)self contentView:v6.receiver];
  [v5 setFeedbackDelegate:v4];
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [(SearchUICardSectionView *)self contentView];
  v9 = [v8 currentAccessoryViewController];

  if (!v9)
  {
    v12 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = [(SearchUICardSectionView *)self rowModel];
    if (![v4 useCompactVersionOfUI])
    {
      v12 = 1;
      goto LABEL_8;
    }
  }

  v11 = [v9 view];
  v12 = [v11 isHidden];

  if (isKindOfClass)
  {
LABEL_8:
  }

LABEL_9:
  v13 = [(SearchUICardSectionView *)self rowModel];
  v14 = [v13 buttonItems];
  if ([v14 count])
  {
    v15 = [(SearchUICardSectionView *)self rowModel];
    v16 = [v15 buttonItemsAreTrailing] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17.receiver = self;
  v17.super_class = SearchUIDetailedRowCardSectionView;
  [(SearchUICardSectionView *)&v17 updateChevronVisible:v6 & v12 & v16 leaveSpaceForChevron:v5];
}

- (id)viewForQuickLookZoomTransitionSource
{
  v3 = [(SearchUIDetailedRowCardSectionView *)self leadingView];
  v4 = [(SearchUIDetailedRowCardSectionView *)self findDescendentOfView:v3 matchingClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIDetailedRowCardSectionView;
    v6 = [(SearchUICardSectionView *)&v9 viewForQuickLookZoomTransitionSource];
  }

  v7 = v6;

  return v7;
}

- (id)findDescendentOfView:(id)a3 matchingClass:(Class)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 subviews];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(SearchUIDetailedRowCardSectionView *)self findDescendentOfView:*(*(&v15 + 1) + 8 * i) matchingClass:a4];
          if (v13)
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

@end