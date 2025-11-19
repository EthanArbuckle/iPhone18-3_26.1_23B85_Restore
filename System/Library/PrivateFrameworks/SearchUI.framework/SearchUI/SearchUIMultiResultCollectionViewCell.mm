@interface SearchUIMultiResultCollectionViewCell
- (BOOL)isExpandable;
- (BOOL)setupManualFocus;
- (CGSize)sizeCollectionViewWithSize:(CGSize)a3;
- (SearchUIMultiResultCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)viewForForcedFocus;
- (id)visibleResults;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)removeManualFocus;
- (void)returnKeyPressed;
- (void)setDelegate:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIMultiResultCollectionViewCell

- (BOOL)isExpandable
{
  v2 = [(SearchUICollectionViewCell *)self rowModel];
  v3 = [v2 results];
  v4 = [v3 count];
  LOBYTE(v4) = v4 > +[SearchUIAppIconUtilities numberOfAppIconsPerRow];

  return v4;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SearchUIMultiResultCollectionViewCell;
  [(SearchUICollectionViewCell *)&v37 layoutSubviews];
  [(SearchUIMultiResultCollectionViewCell *)self bounds];
  [(SearchUIMultiResultCollectionViewCell *)self sizeCollectionViewWithSize:v3, v4];
  v5 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
  if (v5)
  {
    v6 = v5;
    v7 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
    v8 = [v7 isHidden];

    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x1E69D91A8] isLTR];
      v10 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
      v11 = [v10 visibleCells];
      v12 = [v11 firstObject];
      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if (v9)
      {
        [(SearchUIMultiResultCollectionViewCell *)self bounds];
        Width = CGRectGetWidth(v38);
        v39.origin.x = v14;
        v39.origin.y = v16;
        v39.size.width = v18;
        v39.size.height = v20;
        v22 = Width - CGRectGetMaxX(v39);
        v40.origin.x = v14;
        v40.origin.y = v16;
        v40.size.width = v18;
        v40.size.height = v20;
        MinX = CGRectGetMinX(v40);
      }

      else
      {
        v41.origin.x = v14;
        v41.origin.y = v16;
        v41.size.width = v18;
        v41.size.height = v20;
        v22 = CGRectGetMinX(v41);
        [(SearchUIMultiResultCollectionViewCell *)self bounds];
        MaxX = CGRectGetMaxX(v42);
        v43.origin.x = v14;
        v43.origin.y = v16;
        v43.size.width = v18;
        v43.size.height = v20;
        MinX = MaxX - CGRectGetMaxX(v43);
      }

      v25 = v22 - MinX;
      [(SearchUIMultiResultCollectionViewCell *)self bounds];
      Height = CGRectGetHeight(v44);
      v27 = MEMORY[0x1E69D91A8];
      [(SearchUIMultiResultCollectionViewCell *)self bounds];
      v28 = (CGRectGetHeight(v45) - Height) * 0.5;
      v29 = [(SearchUIMultiResultCollectionViewCell *)self contentView];
      [v27 deviceScaledRoundedValue:v29 forView:v28];
      v31 = v30;

      v32 = MEMORY[0x1E69D91A8];
      if (v9)
      {
        [(SearchUIMultiResultCollectionViewCell *)self bounds];
        MinX = CGRectGetWidth(v46) - v25 - MinX;
      }

      v33 = [(SearchUIMultiResultCollectionViewCell *)self contentView];
      [v32 deviceScaledRoundedValue:v33 forView:MinX];
      v35 = v34;

      v36 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
      [v36 setFrame:{v35, v31, v25, Height}];
    }
  }
}

- (id)visibleResults
{
  v2 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  v3 = [v2 visibleResults];

  return v3;
}

- (SearchUIMultiResultCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SearchUIMultiResultCollectionViewCell;
  v3 = [(SearchUICollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SearchUIMultiResultCollectionViewCell *)v3 setClipsToBounds:1];
    v5 = objc_opt_new();
    +[SearchUIAppIconUtilities appIconItemSize];
    [v5 setItemSize:?];
    +[SearchUIAppIconUtilities idealHorizontalSpacingBetweenAppIcons];
    [v5 setMinimumInteritemSpacing:?];
    +[SearchUIAppIconUtilities distanceToTopOfAppIconsForMultiResultCell];
    [v5 setMinimumLineSpacing:?];
    v6 = [SearchUIMultiResultCollectionView alloc];
    v7 = [(SearchUIMultiResultCollectionView *)v6 initWithFrame:v5 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SearchUIMultiResultCollectionViewCell *)v4 setMultiCollectionView:v7];

    v8 = [(SearchUIMultiResultCollectionViewCell *)v4 contentView];
    v9 = [(SearchUIMultiResultCollectionViewCell *)v4 multiCollectionView];
    [v8 addSubview:v9];
  }

  return v4;
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIMultiResultCollectionViewCell;
  v4 = a3;
  [(SearchUICollectionViewCell *)&v6 setDelegate:v4];
  v5 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView:v6.receiver];
  [v5 setFeedbackDelegate:v4];
}

- (void)updateWithRowModel:(id)a3
{
  v21.receiver = self;
  v21.super_class = SearchUIMultiResultCollectionViewCell;
  v4 = a3;
  [(SearchUICollectionViewCell *)&v21 updateWithRowModel:v4];
  v5 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView:v21.receiver];
  [v5 updateWithRowModel:v4];

  v6 = [v4 results];

  if ([v6 count] == 1 && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "auxiliaryTopText"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    v10 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];

    if (!v10)
    {
      v11 = objc_opt_new();
      [(SearchUIMultiResultCollectionViewCell *)self setFolderLabelView:v11];

      v12 = [(SearchUIMultiResultCollectionViewCell *)self contentView];
      v13 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
      [v12 addSubview:v13];
    }

    v14 = MEMORY[0x1E69D91D0];
    v15 = [v6 firstObject];
    v16 = [v15 auxiliaryTopText];
    v17 = [v14 textWithString:v16];
    v18 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
    [v18 setTopText:v17];

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
  [v20 setHidden:v19];
}

- (void)updateExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [v7 setIsExpanded:v5 animated:v4];

  [(SearchUIMultiResultCollectionViewCell *)self invalidateIntrinsicContentSize];
  v8 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [v8 invalidateIntrinsicContentSize];
}

- (CGSize)sizeCollectionViewWithSize:(CGSize)a3
{
  width = a3.width;
  v4 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView:a3.width];
  [v4 frame];
  [v4 setFrame:?];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];

  [v4 layoutBelowIfNeeded];
  v6 = [v4 collectionViewLayout];
  [v6 collectionViewContentSize];
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v14.receiver = self;
  v14.super_class = SearchUIMultiResultCollectionViewCell;
  v5 = [(SearchUICollectionViewCell *)&v14 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self] && (-[SearchUICollectionViewCell rowModel](self, "rowModel"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "results"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 == 1))
  {
    v9 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
    v10 = [v9 visibleCells];
    v11 = [v10 firstObject];
    v12 = [v11 appIconView];
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8 = [(SearchUICollectionViewCell *)self rowModel];
  v5 = [v8 results];
  if ([v5 count] != 1)
  {
LABEL_4:

    return;
  }

  v6 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  if ([v6 highlightFirstCell])
  {

    goto LABEL_4;
  }

  v7 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

  if (!v7)
  {
    v9.receiver = self;
    v9.super_class = SearchUIMultiResultCollectionViewCell;
    [(SearchUICollectionViewCell *)&v9 setSelected:v3];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SearchUIMultiResultCollectionViewCell;
  [(SearchUICollectionViewCell *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [(SearchUICollectionViewCell *)self rowModel];
  v8 = [v7 results];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [v6 nextFocusedView];
    v11 = [(SearchUIMultiResultCollectionViewCell *)self viewForForcedFocus];

    if (v10 == v11)
    {
      [(SearchUIMultiResultCollectionViewCell *)self setupManualFocus];
    }

    else
    {
      [(SearchUIMultiResultCollectionViewCell *)self removeManualFocus];
    }
  }
}

- (BOOL)setupManualFocus
{
  v2 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [v2 setHighlightFirstCell:1];

  return 1;
}

- (void)removeManualFocus
{
  v2 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [v2 setHighlightFirstCell:0];
}

- (void)returnKeyPressed
{
  v5 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  v2 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v3 = [v5 cellForItemAtIndexPath:v2];
  v4 = [v3 appIconView];
  [v4 launchIcon];
}

- (id)viewForForcedFocus
{
  v2 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4 = [v2 cellForItemAtIndexPath:v3];
  v5 = [v4 appIconView];

  return v5;
}

@end