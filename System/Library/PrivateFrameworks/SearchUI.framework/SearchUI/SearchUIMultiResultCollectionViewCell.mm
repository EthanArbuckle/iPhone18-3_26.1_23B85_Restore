@interface SearchUIMultiResultCollectionViewCell
- (BOOL)isExpandable;
- (BOOL)setupManualFocus;
- (CGSize)sizeCollectionViewWithSize:(CGSize)size;
- (SearchUIMultiResultCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)viewForForcedFocus;
- (id)visibleResults;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)removeManualFocus;
- (void)returnKeyPressed;
- (void)setDelegate:(id)delegate;
- (void)setSelected:(BOOL)selected;
- (void)updateExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIMultiResultCollectionViewCell

- (BOOL)isExpandable
{
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  results = [rowModel results];
  v4 = [results count];
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
  folderLabelView = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
  if (folderLabelView)
  {
    v6 = folderLabelView;
    folderLabelView2 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
    isHidden = [folderLabelView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      isLTR = [MEMORY[0x1E69D91A8] isLTR];
      multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
      visibleCells = [multiCollectionView visibleCells];
      firstObject = [visibleCells firstObject];
      [firstObject frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if (isLTR)
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
      contentView = [(SearchUIMultiResultCollectionViewCell *)self contentView];
      [v27 deviceScaledRoundedValue:contentView forView:v28];
      v31 = v30;

      v32 = MEMORY[0x1E69D91A8];
      if (isLTR)
      {
        [(SearchUIMultiResultCollectionViewCell *)self bounds];
        MinX = CGRectGetWidth(v46) - v25 - MinX;
      }

      contentView2 = [(SearchUIMultiResultCollectionViewCell *)self contentView];
      [v32 deviceScaledRoundedValue:contentView2 forView:MinX];
      v35 = v34;

      folderLabelView3 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
      [folderLabelView3 setFrame:{v35, v31, v25, Height}];
    }
  }
}

- (id)visibleResults
{
  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  visibleResults = [multiCollectionView visibleResults];

  return visibleResults;
}

- (SearchUIMultiResultCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SearchUIMultiResultCollectionViewCell;
  v3 = [(SearchUICollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    contentView = [(SearchUIMultiResultCollectionViewCell *)v4 contentView];
    multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)v4 multiCollectionView];
    [contentView addSubview:multiCollectionView];
  }

  return v4;
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUIMultiResultCollectionViewCell;
  delegateCopy = delegate;
  [(SearchUICollectionViewCell *)&v6 setDelegate:delegateCopy];
  v5 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

- (void)updateWithRowModel:(id)model
{
  v21.receiver = self;
  v21.super_class = SearchUIMultiResultCollectionViewCell;
  modelCopy = model;
  [(SearchUICollectionViewCell *)&v21 updateWithRowModel:modelCopy];
  v5 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView:v21.receiver];
  [v5 updateWithRowModel:modelCopy];

  results = [modelCopy results];

  if ([results count] == 1 && (objc_msgSend(results, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "auxiliaryTopText"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    folderLabelView = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];

    if (!folderLabelView)
    {
      v11 = objc_opt_new();
      [(SearchUIMultiResultCollectionViewCell *)self setFolderLabelView:v11];

      contentView = [(SearchUIMultiResultCollectionViewCell *)self contentView];
      folderLabelView2 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
      [contentView addSubview:folderLabelView2];
    }

    v14 = MEMORY[0x1E69D91D0];
    firstObject = [results firstObject];
    auxiliaryTopText = [firstObject auxiliaryTopText];
    v17 = [v14 textWithString:auxiliaryTopText];
    folderLabelView3 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
    [folderLabelView3 setTopText:v17];

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  folderLabelView4 = [(SearchUIMultiResultCollectionViewCell *)self folderLabelView];
  [folderLabelView4 setHidden:v19];
}

- (void)updateExpanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [multiCollectionView setIsExpanded:expandedCopy animated:animatedCopy];

  [(SearchUIMultiResultCollectionViewCell *)self invalidateIntrinsicContentSize];
  multiCollectionView2 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [multiCollectionView2 invalidateIntrinsicContentSize];
}

- (CGSize)sizeCollectionViewWithSize:(CGSize)size
{
  width = size.width;
  v4 = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView:size.width];
  [v4 frame];
  [v4 setFrame:?];
  collectionViewLayout = [v4 collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  [v4 layoutBelowIfNeeded];
  collectionViewLayout2 = [v4 collectionViewLayout];
  [collectionViewLayout2 collectionViewContentSize];
  v8 = v7;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SearchUIMultiResultCollectionViewCell;
  v5 = [(SearchUICollectionViewCell *)&v14 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self] && (-[SearchUICollectionViewCell rowModel](self, "rowModel"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "results"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 == 1))
  {
    multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
    visibleCells = [multiCollectionView visibleCells];
    firstObject = [visibleCells firstObject];
    appIconView = [firstObject appIconView];
  }

  else
  {
    appIconView = v5;
  }

  return appIconView;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  results = [rowModel results];
  if ([results count] != 1)
  {
LABEL_4:

    return;
  }

  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  if ([multiCollectionView highlightFirstCell])
  {

    goto LABEL_4;
  }

  v7 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

  if (!v7)
  {
    v9.receiver = self;
    v9.super_class = SearchUIMultiResultCollectionViewCell;
    [(SearchUICollectionViewCell *)&v9 setSelected:selectedCopy];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SearchUIMultiResultCollectionViewCell;
  [(SearchUICollectionViewCell *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  results = [rowModel results];
  v9 = [results count];

  if (v9 == 1)
  {
    nextFocusedView = [contextCopy nextFocusedView];
    viewForForcedFocus = [(SearchUIMultiResultCollectionViewCell *)self viewForForcedFocus];

    if (nextFocusedView == viewForForcedFocus)
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
  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [multiCollectionView setHighlightFirstCell:1];

  return 1;
}

- (void)removeManualFocus
{
  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  [multiCollectionView setHighlightFirstCell:0];
}

- (void)returnKeyPressed
{
  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  v2 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v3 = [multiCollectionView cellForItemAtIndexPath:v2];
  appIconView = [v3 appIconView];
  [appIconView launchIcon];
}

- (id)viewForForcedFocus
{
  multiCollectionView = [(SearchUIMultiResultCollectionViewCell *)self multiCollectionView];
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4 = [multiCollectionView cellForItemAtIndexPath:v3];
  appIconView = [v4 appIconView];

  return appIconView;
}

@end