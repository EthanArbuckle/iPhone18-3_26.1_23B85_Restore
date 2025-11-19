@interface VideosExtrasGridElementViewController
+ (id)_defaultCellStyle;
+ (id)_fontAttributesForTextStyle:(id)a3;
+ (id)extraLargeDetailStyle;
+ (id)extraLargeGalleryStyle;
+ (id)extraLargeStackGridStyle;
+ (id)keyPathsForValuesAffectingContentScrollView;
+ (id)largeDetailStyle;
+ (id)largeGalleryStyle;
+ (id)largeStackGridStyle;
+ (id)mediumDetailStyle;
+ (id)mediumGalleryStyle;
+ (id)mediumStackGridStyle;
+ (id)smallDetailStyle;
+ (id)smallGalleryStyle;
+ (id)smallStackGridStyle;
+ (id)wideDetailStyle;
+ (id)wideGalleryStyle;
+ (id)wideStackGridStyle;
- (BOOL)_hasDescriptionText;
- (BOOL)_sectionIndexIsDescriptionSection:(int64_t)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)preferredContentSize;
- (UICollectionView)collectionView;
- (UIEdgeInsets)_sectionInsetsForSection:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (VideosExtrasGridElementViewController)initWithViewElement:(id)a3;
- (VideosExtrasGridViewControllerStyle)currentStyle;
- (double)_cellSpacingForSection:(id)a3;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (id)_cellStyleForSection:(id)a3;
- (id)_lockupForIndexPath:(id)a3;
- (id)_narrowStyle;
- (id)_sectionElementForIndex:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)preferredLayoutGuide;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_dynamicTypeDidChange;
- (void)_prepareLayout;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setShelfStyle:(BOOL)a3;
- (void)setViewElement:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VideosExtrasGridElementViewController

- (VideosExtrasGridElementViewController)initWithViewElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VideosExtrasGridElementViewController;
  v5 = [(VideosExtrasViewElementViewController *)&v9 initWithViewElement:0];
  v6 = v5;
  if (v5)
  {
    [(VideosExtrasGridElementViewController *)v5 setViewElement:v4];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasGridElementViewController;
  [(VideosExtrasElementViewController *)&v4 dealloc];
}

- (CGSize)preferredContentSize
{
  [(_VideosExtrasShelfCollectionViewLayout *)self->_flowLayout calculatedContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setShelfStyle:(BOOL)a3
{
  self->_shelfStyle = a3;
  [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:a3];
  [(_VideosExtrasShelfCollectionViewLayout *)self->_flowLayout invalidateLayout];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (UICollectionView)collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v4 = objc_alloc_init(_VideosExtrasShelfCollectionViewLayout);
    flowLayout = self->_flowLayout;
    self->_flowLayout = v4;

    [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:[(VideosExtrasGridElementViewController *)self isShelfStyle]];
    v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v7 = [v6 initWithFrame:self->_flowLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v8 = self->_collectionView;
    self->_collectionView = v7;

    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setDataSource:self];
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:v9];

    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"GridCellID"];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TextCellID"];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"ReusableHeaderID"];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = VideosExtrasGridElementViewController;
  [(VideosExtrasGridElementViewController *)&v8 loadView];
  v3 = [(VideosExtrasGridElementViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VideosExtrasGridElementViewController *)self collectionView];
  [v3 addSubview:v5];

  v6 = [[_VideosExtrasGridHeaderView alloc] initForAutolayout];
  headerView = self->_headerView;
  self->_headerView = v6;

  [v3 addSubview:self->_headerView];
}

+ (id)keyPathsForValuesAffectingContentScrollView
{
  v2 = keyPathsForValuesAffectingContentScrollView_contentScrollViewKVOSet;
  if (!keyPathsForValuesAffectingContentScrollView_contentScrollViewKVOSet)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:@"collectionView"];
    v4 = keyPathsForValuesAffectingContentScrollView_contentScrollViewKVOSet;
    keyPathsForValuesAffectingContentScrollView_contentScrollViewKVOSet = v3;

    v2 = keyPathsForValuesAffectingContentScrollView_contentScrollViewKVOSet;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = VideosExtrasGridElementViewController;
  [(VideosExtrasElementViewController *)&v16 viewWillAppear:a3];
  v4 = [(VideosExtrasViewElementViewController *)self viewElement];
  v5 = [v4 header];

  v6 = [v5 image];
  v7 = [v5 title];
  v8 = [v5 subtitle];
  v9 = [(VideosExtrasGridElementViewController *)self currentStyle];
  v10 = [v9 headerStyle];
  if (v10)
  {
    [(_VideosExtrasGridHeaderView *)self->_headerView configureForImage:v6 title:v7 subtitle:v8 style:v10];
  }

  v11 = [(VideosExtrasGridElementViewController *)self collectionView];
  [v11 reloadData];

  v12 = [(VideosExtrasGridElementViewController *)self view];
  [v12 bringSubviewToFront:self->_headerView];

  v13 = [(VideosExtrasGridElementViewController *)self view];
  [v13 bringSubviewToFront:self->_titleRule];

  v14 = [(VideosExtrasGridElementViewController *)self view];
  v15 = [(VideosExtrasGridElementViewController *)self collectionView];
  [v14 bringSubviewToFront:v15];
}

- (void)setViewElement:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasViewElementViewController *)self viewElement];

  if (v5 != v4)
  {
    v13.receiver = self;
    v13.super_class = VideosExtrasGridElementViewController;
    [(VideosExtrasViewElementViewController *)&v13 setViewElement:v4];
    v6 = [(VideosExtrasViewElementViewController *)self viewElement];
    v7 = [v6 header];

    v8 = [v7 image];
    v9 = [v7 title];
    v10 = [v7 subtitle];
    v11 = [(VideosExtrasGridElementViewController *)self currentStyle];
    v12 = [v11 headerStyle];
    if (v12)
    {
      [(_VideosExtrasGridHeaderView *)self->_headerView configureForImage:v8 title:v9 subtitle:v10 style:v12];
    }

    objc_opt_class();
    [(VideosExtrasGridElementViewController *)self setShelfStyle:(objc_opt_isKindOfClass() & 1) == 0];
  }
}

- (BOOL)_hasDescriptionText
{
  v2 = [(VideosExtrasViewElementViewController *)self viewElement];
  v3 = [v2 header];
  v4 = [v3 descriptionText];
  v5 = [v4 text];
  v6 = [v5 length] != 0;

  return v6;
}

- (BOOL)_sectionIndexIsDescriptionSection:(int64_t)a3
{
  result = [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
  if (a3)
  {
    return 0;
  }

  return result;
}

- (id)_lockupForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
  v6 = [v4 section] - v5;
  v7 = [(VideosExtrasViewElementViewController *)self viewElement];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndex:v6];
  v10 = [v9 items];
  v11 = [v10 objectAtIndex:{objc_msgSend(v4, "row")}];

  return v11;
}

- (id)_sectionElementForIndex:(unint64_t)a3
{
  if ([(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = a3 - [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
    v7 = [(VideosExtrasViewElementViewController *)self viewElement];
    v8 = [v7 sections];
    v5 = [v8 objectAtIndex:v6];
  }

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VideosExtrasGridElementViewController *)self currentStyle];
  if (-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [v10 section]))
  {
    if (collectionView_layout_sizeForItemAtIndexPath__onceToken != -1)
    {
      [VideosExtrasGridElementViewController collectionView:layout:sizeForItemAtIndexPath:];
    }

    v12 = collectionView_layout_sizeForItemAtIndexPath____textCell;
    v13 = [(VideosExtrasViewElementViewController *)self viewElement];
    v14 = [v13 header];
    v15 = [v14 descriptionText];
    v16 = [v11 detailTextStyle];
    [v12 configureForTextElement:v15 style:v16];

    -[VideosExtrasGridElementViewController collectionView:layout:insetForSectionAtIndex:](self, "collectionView:layout:insetForSectionAtIndex:", v8, v9, [v10 section]);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v8 frame];
    [collectionView_layout_sizeForItemAtIndexPath____textCell sizeThatFits:{v25 - v20 - v24, v26 - v18 - v22}];
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v31 = -[VideosExtrasGridElementViewController _sectionElementForIndex:](self, "_sectionElementForIndex:", [v10 section]);
    v32 = [(VideosExtrasGridElementViewController *)self _cellStyleForSection:v31];
    v33 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:v10];
    if (collectionView_layout_sizeForItemAtIndexPath__onceToken_82 != -1)
    {
      [VideosExtrasGridElementViewController collectionView:layout:sizeForItemAtIndexPath:];
    }

    [collectionView_layout_sizeForItemAtIndexPath____sizeCell configureForLockup:v33 cellStyle:v32 withSizing:1];
    [collectionView_layout_sizeForItemAtIndexPath____sizeCell systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE098], *(MEMORY[0x1E69DE098] + 8)}];
    v28 = v34;
    v30 = v35;
  }

  v36 = v28;
  v37 = v30;
  result.height = v37;
  result.width = v36;
  return result;
}

void __86__VideosExtrasGridElementViewController_collectionView_layout_sizeForItemAtIndexPath___block_invoke()
{
  v0 = [VideosExtrasDetailTextCell alloc];
  v1 = [(VideosExtrasDetailTextCell *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = collectionView_layout_sizeForItemAtIndexPath____textCell;
  collectionView_layout_sizeForItemAtIndexPath____textCell = v1;
}

void __86__VideosExtrasGridElementViewController_collectionView_layout_sizeForItemAtIndexPath___block_invoke_2()
{
  v0 = objc_alloc_init(VideosExtrasGridCollectionViewCell);
  v1 = collectionView_layout_sizeForItemAtIndexPath____sizeCell;
  collectionView_layout_sizeForItemAtIndexPath____sizeCell = v0;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(VideosExtrasGridElementViewController *)self currentStyle:a3];
  if ([(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:a5])
  {
    [v7 detailInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = [(VideosExtrasGridElementViewController *)self _sectionElementForIndex:a5];
    [(VideosExtrasGridElementViewController *)self _sectionInsetsForSection:v16];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = [(VideosExtrasGridElementViewController *)self _sectionElementForIndex:a5, a4];

  if (!v7)
  {
    return 0.0;
  }

  v8 = [(VideosExtrasGridElementViewController *)self _sectionElementForIndex:a5];
  [(VideosExtrasGridElementViewController *)self _cellSpacingForSection:v8];
  v10 = v9;

  return v10;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [(VideosExtrasViewElementViewController *)self viewElement];
  v5 = [v4 sections];
  v6 = [v5 count];

  return v6 + [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if ([(VideosExtrasGridElementViewController *)self _hasDescriptionText])
  {
    if ([(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:a4])
    {
      return 1;
    }

    v7 = [(VideosExtrasViewElementViewController *)self viewElement];
    v8 = [v7 sections];
    v9 = v8;
    v10 = a4 - 1;
  }

  else
  {
    v7 = [(VideosExtrasViewElementViewController *)self viewElement];
    v8 = [v7 sections];
    v9 = v8;
    v10 = a4;
  }

  v11 = [v8 objectAtIndex:v10];
  v12 = [v11 items];
  v13 = [v12 count];

  return v13;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VideosExtrasGridElementViewController *)self currentStyle];
  if (-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [v6 section]))
  {
    v9 = [v7 dequeueReusableCellWithReuseIdentifier:@"TextCellID" forIndexPath:v6];

    v10 = [(VideosExtrasViewElementViewController *)self viewElement];
    v11 = [v10 header];
    v12 = [v11 descriptionText];

    v13 = [v8 detailTextStyle];
    [v9 configureForTextElement:v12 style:v13];
  }

  else
  {
    v9 = [v7 dequeueReusableCellWithReuseIdentifier:@"GridCellID" forIndexPath:v6];

    v12 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:v6];
    v13 = -[VideosExtrasGridElementViewController _sectionElementForIndex:](self, "_sectionElementForIndex:", [v6 section]);
    v14 = [(VideosExtrasGridElementViewController *)self _cellStyleForSection:v13];
    [v9 configureForLockup:v12 cellStyle:v14];
  }

  return v9;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = a4;
  if (!-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [v6 section]))
  {
    v5 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:v6];
    [v5 dispatchEventOfType:4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [v6 section]))
  {
    v7 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:v6];
    [v8 deselectItemAtIndexPath:v6 animated:1];
    [v7 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = [a3 dequeueReusableSupplementaryViewOfKind:a4 withReuseIdentifier:@"ReusableHeaderID" forIndexPath:v8];
  LODWORD(a3) = [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
  v10 = [v8 section];

  v11 = v10 - a3;
  v12 = [(VideosExtrasViewElementViewController *)self viewElement];
  v13 = [v12 sections];
  v14 = [v13 objectAtIndex:v11];

  v15 = [v14 header];
  v16 = [(VideosExtrasGridElementViewController *)self currentStyle];
  v17 = [v16 sectionHeaderStyle];

  [v9 configureForHeaderElement:v15 headerStyle:v17];

  return v9;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (collectionView_layout_referenceSizeForHeaderInSection__onceToken != -1)
  {
    [VideosExtrasGridElementViewController collectionView:layout:referenceSizeForHeaderInSection:];
  }

  v10 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  if (![(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:a5])
  {
    v12 = a5 - [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
    v13 = [(VideosExtrasViewElementViewController *)self viewElement];
    v14 = [v13 sections];
    v15 = [v14 objectAtIndex:v12];

    v16 = [v15 header];
    if (v16)
    {
      v17 = [(VideosExtrasGridElementViewController *)self currentStyle];
      v18 = [v17 sectionHeaderStyle];

      [collectionView_layout_referenceSizeForHeaderInSection____sizingView configureForHeaderElement:v16 headerStyle:v18];
      [collectionView_layout_referenceSizeForHeaderInSection____sizingView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE098], *(MEMORY[0x1E69DE098] + 8)}];
      v10 = v19;
      v11 = v20;
    }
  }

  v21 = v10;
  v22 = v11;
  result.height = v22;
  result.width = v21;
  return result;
}

void __95__VideosExtrasGridElementViewController_collectionView_layout_referenceSizeForHeaderInSection___block_invoke()
{
  v0 = objc_alloc_init(VideosExtrasCollectionReusableView);
  v1 = collectionView_layout_referenceSizeForHeaderInSection____sizingView;
  collectionView_layout_referenceSizeForHeaderInSection____sizingView = v0;
}

- (id)preferredLayoutGuide
{
  v3 = [(_VideosExtrasGridHeaderView *)self->_headerView titleLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(VideosExtrasGridElementViewController *)self view];
  }

  v6 = v5;

  return v6;
}

- (id)_cellStyleForSection:(id)a3
{
  v4 = [a3 style];
  v5 = [v4 valueForStyle:@"extras-itml-section-content-type"];

  v6 = [(VideosExtrasGridElementViewController *)self currentStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"extras-image"])
    {
      v7 = [v6 imageCellStyle];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"extras-video"])
    {
      v7 = [v6 videoCellStyle];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"extras-product"])
    {
      v7 = [v6 productCellStyle];
LABEL_8:
      v8 = v7;
      if (v7)
      {
        goto LABEL_10;
      }
    }
  }

  v8 = [v6 defaultCellStyle];
LABEL_10:

  return v8;
}

- (UIEdgeInsets)_sectionInsetsForSection:(id)a3
{
  v4 = [a3 style];
  v5 = [v4 valueForStyle:@"extras-itml-section-content-type"];

  v6 = [(VideosExtrasGridElementViewController *)self currentStyle];
  [v6 defaultCellSectionInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"extras-image"])
    {
      [v6 imageCellSectionInsets];
LABEL_8:
      v8 = v15;
      v10 = v16;
      v12 = v17;
      v14 = v18;
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"extras-video"])
    {
      [v6 videoCellSectionInsets];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"extras-product"])
    {
      [v6 productCellSectionInsets];
      goto LABEL_8;
    }
  }

LABEL_9:

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (double)_cellSpacingForSection:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasGridElementViewController *)self currentStyle];
  [v5 defaultSpacing];
  v7 = v6;
  v8 = [v4 style];

  v9 = [v8 valueForStyle:@"extras-itml-section-content-type"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 isEqualToString:@"extras-image"])
    {
      [v5 imageSpacing];
LABEL_8:
      v7 = v10;
      goto LABEL_9;
    }

    if ([v9 isEqualToString:@"extras-video"])
    {
      [v5 videoSpacing];
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"extras-product"])
    {
      [v5 productSpacing];
      goto LABEL_8;
    }
  }

LABEL_9:

  return v7;
}

- (VideosExtrasGridViewControllerStyle)currentStyle
{
  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v3 = self->_wideStyle;
  }

  else
  {
    v3 = [(VideosExtrasGridElementViewController *)self _narrowStyle];
  }

  return v3;
}

- (id)_narrowStyle
{
  v3 = [(VideosExtrasGridElementViewController *)self view];
  [v3 bounds];
  v5 = v4;

  if (fabs(v5 + -480.0) < 0.00000011920929)
  {
    v6 = [(VideosExtrasGridElementViewController *)self smallStyle];
    goto LABEL_10;
  }

  if (fabs(v5 + -568.0) < 0.00000011920929)
  {
    goto LABEL_4;
  }

  if (fabs(v5 + -667.0) >= 0.00000011920929)
  {
    if (fabs(v5 + -736.0) >= 0.00000011920929 && fabs(v5 + -812.0) >= 0.00000011920929)
    {
LABEL_4:
      v6 = [(VideosExtrasGridElementViewController *)self mediumStyle];
      goto LABEL_10;
    }

    v6 = [(VideosExtrasGridElementViewController *)self extraLargeStyle];
  }

  else
  {
    v6 = [(VideosExtrasGridElementViewController *)self largeStyle];
  }

LABEL_10:

  return v6;
}

- (void)_dynamicTypeDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  [(_VideosExtrasGridHeaderView *)self->_headerView invalidateIntrinsicContentSize];
  v3 = [(VideosExtrasGridElementViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];

  [v4 invalidateLayout];
  v5 = [(VideosExtrasGridElementViewController *)self collectionView];
  v6 = [v5 visibleCells];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) updateConstraintsIfNeeded];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_prepareLayout
{
  v85.receiver = self;
  v85.super_class = VideosExtrasGridElementViewController;
  [(VideosExtrasElementViewController *)&v85 _prepareLayout];
  v3 = [(VideosExtrasGridElementViewController *)self view];
  if (![(VideosExtrasViewElementViewController *)self embedded])
  {
    v4 = [(VideosExtrasElementViewController *)self backgroundViewController];
    [v4 setVignetteType:3];
  }

  v5 = [(VideosExtrasGridElementViewController *)self currentStyle];
  v6 = [v5 backgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = [v5 showsScrollFade];
  titleRule = self->_titleRule;
  v9 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;
  if (v7)
  {
    if (!titleRule)
    {
      v10 = [objc_opt_class() _borderView];
      v11 = self->_titleRule;
      self->_titleRule = v10;

      [(UIView *)self->_titleRule setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 addSubview:self->_titleRule];
    }

    if (!self->_titleRuleConstraints)
    {
      v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleRule attribute:4 relatedBy:0 toItem:self->_headerView attribute:4 multiplier:1.0 constant:0.0];
      v13 = [v5 headerStyle];
      [v13 insets];
      v15 = v14;
      v17 = v16;

      v18 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_titleRule toView:self->_collectionView alongEdges:10 insets:{0.0, v15, 0.0, v17}];
      v19 = [v18 arrayByAddingObject:v12];
      titleRuleConstraints = self->_titleRuleConstraints;
      self->_titleRuleConstraints = v19;
    }

    v21 = [(VideosExtrasGridElementViewController *)self view];
    [v21 addConstraints:self->_titleRuleConstraints];

    v22 = [(VideosExtrasGridElementViewController *)self view];
    [v22 bringSubviewToFront:self->_titleRule];
  }

  else
  {
    if (titleRule)
    {
      [(UIView *)titleRule removeFromSuperview];
    }

    if (self->_titleRuleConstraints)
    {
      [v3 removeConstraints:?];
    }
  }

  if (self->_headerViewConstraints)
  {
    [v3 removeConstraints:?];
    headerViewConstraints = self->_headerViewConstraints;
    self->_headerViewConstraints = 0;
  }

  v24 = [(VideosExtrasGridElementViewController *)self currentStyle];
  v25 = [v24 headerStyle];

  v26 = [MEMORY[0x1E695DF70] array];
  v84 = v25;
  if (v25)
  {
    v27 = [(VideosExtrasGridElementViewController *)self view];
    [v27 addSubview:self->_headerView];

    v28 = [(VideosExtrasGridElementViewController *)self currentStyle];
    v29 = [v28 headerStyle];
    [v29 insets];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = MEMORY[0x1E696ACD8];
    headerView = self->_headerView;
    [(VideosExtrasGridElementViewController *)self view];
    v40 = v83 = v5;
    v41 = [v40 safeAreaLayoutGuide];
    v42 = [v38 constraintWithItem:headerView attribute:3 relatedBy:0 toItem:v41 attribute:3 multiplier:1.0 constant:v31];

    v43 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_headerView toView:v3 alongEdges:10 insets:{v31, v33, v35, v37}];
    v44 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_headerView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:50.0];
    v45 = MEMORY[0x1E696ACD8];
    [(VideosExtrasGridElementViewController *)self collectionView];
    v47 = v46 = v3;
    v48 = [v45 constraintsByAttachingView:v47 toView:v46 alongEdges:14 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    v49 = MEMORY[0x1E696ACD8];
    v50 = [(VideosExtrasGridElementViewController *)self collectionView];
    v51 = [v49 constraintWithItem:v50 attribute:3 relatedBy:0 toItem:self->_headerView attribute:4 multiplier:1.0 constant:v35];

    [v26 addObject:v42];
    [v26 addObjectsFromArray:v43];
    [v26 addObject:v44];
    [v26 addObjectsFromArray:v48];
    [v26 addObject:v51];

    v3 = v46;
    v9 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;

    v5 = v83;
  }

  else
  {
    [(_VideosExtrasGridHeaderView *)self->_headerView removeFromSuperview];
    v52 = MEMORY[0x1E696ACD8];
    v53 = [(VideosExtrasGridElementViewController *)self collectionView];
    v42 = [v52 constraintsByAttachingView:v53 toView:v3 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    [v26 addObjectsFromArray:v42];
  }

  objc_storeStrong(&self->_headerViewConstraints, v26);
  [v3 addConstraints:v26];
  [v5 collectionViewInsets];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = [(VideosExtrasGridElementViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if ([(VideosExtrasElementViewController *)self isWide])
    {
      v59 = 60.0;
    }

    else
    {
      v59 = 70.0;
    }
  }

  if ([v5 adjustsContentInsetByBottomNavBar])
  {
    v64 = [(VideosExtrasGridElementViewController *)self navigationController];
    v65 = objc_opt_respondsToSelector();

    if (v65)
    {
      v66 = [(VideosExtrasGridElementViewController *)self navigationController];
      v67 = [v66 mainTemplateViewController];
      v68 = [v67 view];
      [v68 bounds];
      v70 = v69;

      if (v70 > v59)
      {
        v71 = [v67 menuBarView];
        [v71 bounds];
        v73 = v72;

        if (v59 < v73)
        {
          v59 = v73;
        }
      }
    }
  }

  v74 = MEMORY[0x1E69DDA98];
  v75 = [*MEMORY[0x1E69DDA98] keyWindow];
  [v75 safeAreaInsets];
  v77 = v57 + v76;

  v78 = [*v74 keyWindow];
  [v78 safeAreaInsets];
  v80 = v61 + v79;

  v81 = v9[371];
  [*(&self->super.super.super.super.super.isa + v81) setContentInset:{v55, v77, v59, v80}];
  [*(&self->super.super.super.super.super.isa + v81) setContentInsetAdjustmentBehavior:2];
  v82 = [*(&self->super.super.super.super.super.isa + v81) collectionViewLayout];
  [v82 invalidateLayout];

  [v5 defaultSpacing];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumInteritemSpacing:?];
  [v5 cellLineSpacing];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumLineSpacing:?];
}

+ (id)_fontAttributesForTextStyle:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:a3];
  v8[0] = *MEMORY[0x1E69DB8A8];
  v4 = [v3 familyName];
  v9[0] = v4;
  v8[1] = *MEMORY[0x1E69DB8B8];
  v5 = [v3 fontName];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)_defaultCellStyle
{
  v3 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v3 setImageSize:90.0, 90.0];
  [(VideosExtrasGridCellStyle *)v3 setTitleFirstBaselineHeight:20.0];
  v4 = *MEMORY[0x1E69DDD08];
  [(VideosExtrasGridCellStyle *)v3 setTitleTextStyle:*MEMORY[0x1E69DDD08]];
  v5 = [a1 _fontAttributesForTextStyle:v4];
  [(VideosExtrasGridCellStyle *)v3 setTitleDefaultFontAttributes:v5];

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v3 setTitleTextColor:v6];

  [(VideosExtrasGridCellStyle *)v3 setTextFirstBaselineToBottom:30.0];
  [(VideosExtrasGridCellStyle *)v3 setTextLastBaselineToBottom:10.0];
  v7 = [a1 _fontAttributesForTextStyle:v4];
  [(VideosExtrasGridCellStyle *)v3 setSubtitleDefaultFontAttributes:v7];

  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v3 setSubtitleTextColor:v8];

  [(VideosExtrasGridCellStyle *)v3 setSubtitleTextStyle:v4];
  [(VideosExtrasGridCellStyle *)v3 setSubtitleFirstBaselineHeight:18.0];
  [(VideosExtrasGridCellStyle *)v3 setDefaultTextAlignment:1];

  return v3;
}

+ (id)wideGalleryStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = [a1 _defaultCellStyle];
  [v4 setImageSize:{170.0, 170.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:v4];
  v5 = [a1 _defaultCellStyle];
  [v5 setImageSize:{224.0, 126.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:v5];
  v6 = [a1 _defaultCellStyle];
  [v6 setImageSize:{114.0, 170.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:v6];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:280.0, 15.0, 0.0, 15.0];
  v7 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  v8 = *MEMORY[0x1E69DDCF8];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setTextStyle:*MEMORY[0x1E69DDCF8]];
  v9 = [a1 _fontAttributesForTextStyle:v8];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setDefaultFontAttributes:v9];

  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setTextColor:v10];

  [(VideosExtrasGridSectionHeaderStyle *)v7 setInsets:0.0, 5.0, 0.0, 5.0];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setTextBaselineDescender:15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setSectionHeaderStyle:v7];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultSpacing:32.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageSpacing:32.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoSpacing:29.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductSpacing:40.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellSectionInsets:0.0, 5.0, 0.0, 5.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellSectionInsets:0.0, 5.0, 0.0, 5.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellSectionInsets:0.0, 5.0, 0.0, 5.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellSectionInsets:0.0, 5.0, 0.0, 5.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCellLineSpacing:0.0];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:v11];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:1];

  return v3;
}

+ (id)smallGalleryStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:120.0, 120.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:20.0];
  v5 = *MEMORY[0x1E69DDD10];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:*MEMORY[0x1E69DDD10]];
  v6 = [a1 _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v7];

  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:30.0];
  [(VideosExtrasGridCellStyle *)v4 setTextLastBaselineToBottom:10.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v6];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextColor:v8];

  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:*MEMORY[0x1E69DDD08]];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:18.0];
  [(VideosExtrasGridCellStyle *)v4 setDefaultTextAlignment:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:v4];
  v9 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v9 setImageSize:{125.0, 70.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:v9];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:112.0, 0.0, 0.0, 0.0];
  v10 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  [(VideosExtrasGridSectionHeaderStyle *)v10 setTextStyle:*MEMORY[0x1E69DDD80]];
  [(VideosExtrasGridSectionHeaderStyle *)v10 setDefaultFontAttributes:v6];
  v11 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridSectionHeaderStyle *)v10 setTextColor:v11];

  [(VideosExtrasGridSectionHeaderStyle *)v10 setInsets:15.0, 15.0, 5.0, 15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setSectionHeaderStyle:v10];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultSpacing:45.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageSpacing:45.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoSpacing:37.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductSpacing:45.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCellLineSpacing:0.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellSectionInsets:0.0, 15.0, 0.0, 15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellSectionInsets:0.0, 15.0, 0.0, 15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellSectionInsets:0.0, 15.0, 0.0, 15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellSectionInsets:0.0, 15.0, 0.0, 15.0];
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:v12];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:1];

  return v3;
}

+ (id)mediumGalleryStyle
{
  v2 = [a1 smallGalleryStyle];
  [v2 setDefaultSpacing:19.0];
  [v2 setImageSpacing:19.0];
  [v2 setVideoSpacing:12.0];
  [v2 setProductSpacing:19.0];

  return v2;
}

+ (id)largeGalleryStyle
{
  v2 = [a1 smallGalleryStyle];
  [v2 collectionViewInsets];
  [v2 setCollectionViewInsets:155.0];
  [v2 setDefaultSpacing:8.0];
  [v2 setImageSpacing:8.0];
  [v2 setVideoSpacing:12.0];
  [v2 setProductSpacing:8.0];

  return v2;
}

+ (id)extraLargeGalleryStyle
{
  v2 = [a1 smallGalleryStyle];
  [v2 collectionViewInsets];
  [v2 setCollectionViewInsets:160.0];
  v3 = [v2 defaultCellStyle];
  [v3 setImageSize:{160.0, 160.0}];

  v4 = [v2 imageCellStyle];
  [v4 setImageSize:{160.0, 160.0}];

  v5 = [v2 videoCellStyle];
  [v5 setImageSize:{160.0, 90.0}];

  v6 = [v2 productCellStyle];
  [v6 setImageSize:{160.0, 160.0}];

  [v2 setDefaultSpacing:22.0];
  [v2 setImageSpacing:22.0];
  [v2 setVideoSpacing:22.0];
  [v2 setProductSpacing:22.0];

  return v2;
}

+ (id)wideDetailStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:160.0, 160.0];
  v5 = *MEMORY[0x1E69DDD08];
  v6 = [a1 _fontAttributesForTextStyle:*MEMORY[0x1E69DDD08]];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];

  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:20.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:v5];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v7];

  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:35.0];
  v8 = [a1 _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v8];

  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:18.0];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextColor:v9];

  [(VideosExtrasGridCellStyle *)v4 setDefaultTextAlignment:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:v4];
  v10 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v10 setImageSize:{160.0, 90.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:v10];
  v11 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v11 setImageSize:{160.0, 170.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:v11];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v12 = objc_alloc_init(VideosExtrasGridHeaderStyle);
  [(VideosExtrasGridHeaderStyle *)v12 setInsets:15.0, 0.0, 0.0, 0.0];
  v13 = *MEMORY[0x1E69DDD00];
  [(VideosExtrasGridHeaderStyle *)v12 setTitleTextStyle:*MEMORY[0x1E69DDD00]];
  v14 = [a1 _fontAttributesForTextStyle:v13];
  [(VideosExtrasGridHeaderStyle *)v12 setTitleDefaultFontAttributes:v14];

  v15 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridHeaderStyle *)v12 setTitleColor:v15];

  v16 = *MEMORY[0x1E69DDD80];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleTextStyle:*MEMORY[0x1E69DDD80]];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleLineHeight:25.0];
  v17 = [a1 _fontAttributesForTextStyle:v16];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleDefaultFontAttributes:v17];

  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleColor:v18];

  [(VideosExtrasGridHeaderStyle *)v12 setBottomLabelDescender:15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setHeaderStyle:v12];
  v19 = *MEMORY[0x1E69DDD28];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailTextStyle:*MEMORY[0x1E69DDD28]];
  v20 = [a1 _fontAttributesForTextStyle:v19];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailDefaultFontAttributes:v20];

  v21 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailTextColor:v21];

  [(VideosExtrasGridViewControllerStyle *)v3 setDetailInsets:23.0, 10.0, 10.0, 10.0];
  v22 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  [(VideosExtrasGridSectionHeaderStyle *)v22 setTextStyle:v16];
  v23 = [a1 _fontAttributesForTextStyle:v16];
  [(VideosExtrasGridSectionHeaderStyle *)v22 setDefaultFontAttributes:v23];

  v24 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridSectionHeaderStyle *)v22 setTextColor:v24];

  [(VideosExtrasGridSectionHeaderStyle *)v22 setInsets:10.0, 10.0, 5.0, 10.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setSectionHeaderStyle:v22];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultSpacing:20.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageSpacing:20.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoSpacing:20.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductSpacing:20.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCellLineSpacing:0.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellSectionInsets:20.0, 0.0, 0.0, 0.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellSectionInsets:20.0, 0.0, 0.0, 0.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellSectionInsets:20.0, 0.0, 0.0, 0.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellSectionInsets:20.0, 0.0, 0.0, 0.0];
  v25 = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:v25];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:1];

  return v3;
}

+ (id)smallDetailStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:90.0, 90.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:18.0];
  v5 = *MEMORY[0x1E69DDD10];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:*MEMORY[0x1E69DDD10]];
  v6 = [a1 _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v7];

  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:30.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v6];
  v8 = *MEMORY[0x1E69DDD08];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:*MEMORY[0x1E69DDD08]];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:18.0];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextColor:v9];

  [(VideosExtrasGridCellStyle *)v4 setDefaultTextAlignment:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:v4];
  v10 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v10 setImageSize:{125.0, 70.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:v10];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v11 = objc_alloc_init(VideosExtrasGridHeaderStyle);
  [(VideosExtrasGridHeaderStyle *)v11 setShowsImage:1];
  [(VideosExtrasGridHeaderStyle *)v11 setInsets:15.0, 34.0, 0.0, 34.0];
  [(VideosExtrasGridHeaderStyle *)v11 setTitleTextStyle:*MEMORY[0x1E69DDD00]];
  [(VideosExtrasGridHeaderStyle *)v11 setTitleLineHeight:21.0];
  [(VideosExtrasGridHeaderStyle *)v11 setTitleDefaultFontAttributes:v6];
  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridHeaderStyle *)v11 setTitleColor:v12];

  v13 = *MEMORY[0x1E69DDD80];
  [(VideosExtrasGridHeaderStyle *)v11 setSubtitleTextStyle:*MEMORY[0x1E69DDD80]];
  [(VideosExtrasGridHeaderStyle *)v11 setSubtitleLineHeight:20.0];
  [(VideosExtrasGridHeaderStyle *)v11 setSubtitleDefaultFontAttributes:v6];
  v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  [(VideosExtrasGridHeaderStyle *)v11 setSubtitleColor:v14];

  [(VideosExtrasGridHeaderStyle *)v11 setBottomLabelDescender:9.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setHeaderStyle:v11];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailTextStyle:v8];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailDefaultFontAttributes:v6];
  v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailTextColor:v15];

  [(VideosExtrasGridViewControllerStyle *)v3 setDetailInsets:15.0, 34.0, 20.0, 34.0];
  v16 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  [(VideosExtrasGridSectionHeaderStyle *)v16 setTextStyle:v13];
  [(VideosExtrasGridSectionHeaderStyle *)v16 setDefaultFontAttributes:v6];
  v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridSectionHeaderStyle *)v16 setTextColor:v17];

  [(VideosExtrasGridSectionHeaderStyle *)v16 setInsets:20.0, 34.0, 5.0, 34.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setSectionHeaderStyle:v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultSpacing:10.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageSpacing:7.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoSpacing:18.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductSpacing:10.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCellLineSpacing:0.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellSectionInsets:15.0, 35.0, 0.0, 35.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellSectionInsets:15.0, 46.0, 0.0, 46.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellSectionInsets:15.0, 34.0, 0.0, 34.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellSectionInsets:15.0, 35.0, 0.0, 35.0];
  v18 = [MEMORY[0x1E69DC888] blackColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:v18];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:1];

  return v3;
}

+ (id)mediumDetailStyle
{
  v2 = [a1 smallDetailStyle];
  [v2 setDetailInsets:{15.0, 78.0, 20.0, 78.0}];
  v3 = [v2 headerStyle];
  [v3 setInsets:{15.0, 78.0, 0.0, 78.0}];

  [v2 setDefaultCellSectionInsets:{15.0, 79.0, 0.0, 79.0}];
  [v2 setImageCellSectionInsets:{15.0, 89.0, 0.0, 89.0}];
  [v2 setVideoCellSectionInsets:{15.0, 78.0, 0.0, 78.0}];
  [v2 setProductCellSectionInsets:{15.0, 79.0, 0.0, 79.0}];

  return v2;
}

+ (id)largeDetailStyle
{
  v2 = [a1 mediumDetailStyle];
  [v2 setDefaultSpacing:14.0];
  [v2 setImageSpacing:7.0];
  [v2 setVideoSpacing:28.0];
  [v2 setProductSpacing:14.0];

  return v2;
}

+ (id)extraLargeDetailStyle
{
  v2 = [a1 smallDetailStyle];
  v3 = [v2 defaultCellStyle];
  [v3 setImageSize:{90.0, 90.0}];

  v4 = [v2 imageCellStyle];
  [v4 setImageSize:{90.0, 90.0}];

  v5 = [v2 videoCellStyle];
  [v5 setImageSize:{150.0, 84.0}];

  v6 = [v2 productCellStyle];
  [v6 setImageSize:{100.0, 100.0}];

  [v2 setDetailInsets:{15.0, 100.0, 20.0, 100.0}];
  v7 = [v2 headerStyle];
  [v7 setInsets:{15.0, 100.0, 0.0, 100.0}];

  [v2 setDefaultCellSectionInsets:{15.0, 107.0, 0.0, 107.0}];
  [v2 setImageCellSectionInsets:{15.0, 100.0, 0.0, 100.0}];
  [v2 setVideoCellSectionInsets:{15.0, 107.0, 0.0, 107.0}];
  [v2 setProductCellSectionInsets:{15.0, 107.0, 0.0, 107.0}];
  [v2 setDefaultSpacing:7.0];
  [v2 setImageSpacing:7.0];
  [v2 setVideoSpacing:7.0];
  [v2 setProductSpacing:7.0];

  return v2;
}

+ (id)wideStackGridStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:114.0, 170.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:20.0];
  v5 = *MEMORY[0x1E69DDD08];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:*MEMORY[0x1E69DDD08]];
  v6 = [a1 _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v7];

  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:27.0];
  [(VideosExtrasGridCellStyle *)v4 setTextLastBaselineToBottom:10.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v6];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:18.0];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextColor:v8];

  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setDefaultTextAlignment:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:v4];
  v9 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v9 setImageSize:{170.0, 170.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:v9];
  v10 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v10 setImageSize:{252.0, 126.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:v10];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:0.0, 20.0, 0.0, 20.0];
  v11 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  [(VideosExtrasGridSectionHeaderStyle *)v11 setTextStyle:*MEMORY[0x1E69DDD80]];
  [(VideosExtrasGridSectionHeaderStyle *)v11 setDefaultFontAttributes:v6];
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridSectionHeaderStyle *)v11 setTextColor:v12];

  UIEdgeInsetsMakeWithEdges();
  [(VideosExtrasGridSectionHeaderStyle *)v11 setInsets:?];
  [(VideosExtrasGridSectionHeaderStyle *)v11 setTextBaselineDescender:15.0];
  [(VideosExtrasGridSectionHeaderStyle *)v11 setTextBaselineHeight:25.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setSectionHeaderStyle:v11];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultSpacing:40.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductSpacing:40.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageSpacing:50.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoSpacing:50.0];
  v13 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  v16 = *(MEMORY[0x1E69DDCE0] + 24);
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellSectionInsets:*MEMORY[0x1E69DDCE0], v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellSectionInsets:v13, v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellSectionInsets:v13, v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellSectionInsets:v13, v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setCellLineSpacing:0.0];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:v17];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:0];

  return v3;
}

+ (id)smallStackGridStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:80.0, 120.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:20.0];
  v5 = *MEMORY[0x1E69DDD10];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:*MEMORY[0x1E69DDD10]];
  v6 = [a1 _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v7];

  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:30.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleDefaultFontAttributes:v6];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleFirstBaselineHeight:18.0];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextColor:v8];

  [(VideosExtrasGridCellStyle *)v4 setSubtitleTextStyle:*MEMORY[0x1E69DDD08]];
  [(VideosExtrasGridCellStyle *)v4 setDefaultTextAlignment:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:v4];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:v4];
  v9 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v9 setImageSize:{120.0, 120.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:v9];
  v10 = [(VideosExtrasGridCellStyle *)v4 copy];
  [v10 setImageSize:{125.0, 70.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:v10];
  v11 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  [(VideosExtrasGridSectionHeaderStyle *)v11 setTextStyle:*MEMORY[0x1E69DDD80]];
  [(VideosExtrasGridSectionHeaderStyle *)v11 setDefaultFontAttributes:v6];
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridSectionHeaderStyle *)v11 setTextColor:v12];

  [(VideosExtrasGridSectionHeaderStyle *)v11 setInsets:20.0, 15.0, 5.0, 15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setSectionHeaderStyle:v11];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultSpacing:25.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageSpacing:25.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoSpacing:20.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductSpacing:25.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCellLineSpacing:0.0];
  v13 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  v16 = *(MEMORY[0x1E69DDCE0] + 24);
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellSectionInsets:*MEMORY[0x1E69DDCE0], v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellSectionInsets:v13, v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellSectionInsets:v13, v14, v15, v16];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellSectionInsets:v13, v14, v15, v16];
  v17 = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:v17];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:0.0, 15.0, 0.0, 15.0];

  return v3;
}

+ (id)mediumStackGridStyle
{
  v2 = [a1 smallStackGridStyle];
  [v2 setDefaultSpacing:25.0];
  [v2 setImageSpacing:30.0];
  [v2 setVideoSpacing:30.0];
  [v2 setProductSpacing:25.0];

  return v2;
}

+ (id)largeStackGridStyle
{
  v2 = [a1 mediumStackGridStyle];
  v3 = [v2 videoCellStyle];
  [v3 setImageSize:{150.0, 85.0}];

  [v2 setImageSpacing:25.0];
  [v2 setVideoSpacing:25.0];

  return v2;
}

+ (id)extraLargeStackGridStyle
{
  v2 = [a1 largeStackGridStyle];
  v3 = [v2 defaultCellStyle];
  [v3 setImageSize:{160.0, 160.0}];

  v4 = [v2 imageCellStyle];
  [v4 setImageSize:{160.0, 160.0}];

  v5 = [v2 videoCellStyle];
  [v5 setImageSize:{160.0, 90.0}];

  v6 = [v2 productCellStyle];
  [v6 setImageSize:{106.0, 160.0}];

  [v2 setDefaultSpacing:50.0];
  [v2 setImageSpacing:50.0];
  [v2 setVideoSpacing:50.0];
  [v2 setProductSpacing:30.0];

  return v2;
}

@end