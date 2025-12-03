@interface VideosExtrasGridElementViewController
+ (id)_defaultCellStyle;
+ (id)_fontAttributesForTextStyle:(id)style;
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
- (BOOL)_sectionIndexIsDescriptionSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)preferredContentSize;
- (UICollectionView)collectionView;
- (UIEdgeInsets)_sectionInsetsForSection:(id)section;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (VideosExtrasGridElementViewController)initWithViewElement:(id)element;
- (VideosExtrasGridViewControllerStyle)currentStyle;
- (double)_cellSpacingForSection:(id)section;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (id)_cellStyleForSection:(id)section;
- (id)_lockupForIndexPath:(id)path;
- (id)_narrowStyle;
- (id)_sectionElementForIndex:(unint64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)preferredLayoutGuide;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_dynamicTypeDidChange;
- (void)_prepareLayout;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadView;
- (void)setShelfStyle:(BOOL)style;
- (void)setViewElement:(id)element;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasGridElementViewController

- (VideosExtrasGridElementViewController)initWithViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = VideosExtrasGridElementViewController;
  v5 = [(VideosExtrasViewElementViewController *)&v9 initWithViewElement:0];
  v6 = v5;
  if (v5)
  {
    [(VideosExtrasGridElementViewController *)v5 setViewElement:elementCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)setShelfStyle:(BOOL)style
{
  self->_shelfStyle = style;
  [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:style];
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

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
  view = [(VideosExtrasGridElementViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  collectionView = [(VideosExtrasGridElementViewController *)self collectionView];
  [view addSubview:collectionView];

  initForAutolayout = [[_VideosExtrasGridHeaderView alloc] initForAutolayout];
  headerView = self->_headerView;
  self->_headerView = initForAutolayout;

  [view addSubview:self->_headerView];
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

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = VideosExtrasGridElementViewController;
  [(VideosExtrasElementViewController *)&v16 viewWillAppear:appear];
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  header = [viewElement header];

  image = [header image];
  title = [header title];
  subtitle = [header subtitle];
  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  headerStyle = [currentStyle headerStyle];
  if (headerStyle)
  {
    [(_VideosExtrasGridHeaderView *)self->_headerView configureForImage:image title:title subtitle:subtitle style:headerStyle];
  }

  collectionView = [(VideosExtrasGridElementViewController *)self collectionView];
  [collectionView reloadData];

  view = [(VideosExtrasGridElementViewController *)self view];
  [view bringSubviewToFront:self->_headerView];

  view2 = [(VideosExtrasGridElementViewController *)self view];
  [view2 bringSubviewToFront:self->_titleRule];

  view3 = [(VideosExtrasGridElementViewController *)self view];
  collectionView2 = [(VideosExtrasGridElementViewController *)self collectionView];
  [view3 bringSubviewToFront:collectionView2];
}

- (void)setViewElement:(id)element
{
  elementCopy = element;
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];

  if (viewElement != elementCopy)
  {
    v13.receiver = self;
    v13.super_class = VideosExtrasGridElementViewController;
    [(VideosExtrasViewElementViewController *)&v13 setViewElement:elementCopy];
    viewElement2 = [(VideosExtrasViewElementViewController *)self viewElement];
    header = [viewElement2 header];

    image = [header image];
    title = [header title];
    subtitle = [header subtitle];
    currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
    headerStyle = [currentStyle headerStyle];
    if (headerStyle)
    {
      [(_VideosExtrasGridHeaderView *)self->_headerView configureForImage:image title:title subtitle:subtitle style:headerStyle];
    }

    objc_opt_class();
    [(VideosExtrasGridElementViewController *)self setShelfStyle:(objc_opt_isKindOfClass() & 1) == 0];
  }
}

- (BOOL)_hasDescriptionText
{
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  header = [viewElement header];
  descriptionText = [header descriptionText];
  text = [descriptionText text];
  v6 = [text length] != 0;

  return v6;
}

- (BOOL)_sectionIndexIsDescriptionSection:(int64_t)section
{
  result = [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
  if (section)
  {
    return 0;
  }

  return result;
}

- (id)_lockupForIndexPath:(id)path
{
  pathCopy = path;
  _hasDescriptionText = [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
  v6 = [pathCopy section] - _hasDescriptionText;
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  sections = [viewElement sections];
  v9 = [sections objectAtIndex:v6];
  items = [v9 items];
  v11 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  return v11;
}

- (id)_sectionElementForIndex:(unint64_t)index
{
  if ([(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = index - [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
    viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
    sections = [viewElement sections];
    v5 = [sections objectAtIndex:v6];
  }

  return v5;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  if (-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [pathCopy section]))
  {
    if (collectionView_layout_sizeForItemAtIndexPath__onceToken != -1)
    {
      [VideosExtrasGridElementViewController collectionView:layout:sizeForItemAtIndexPath:];
    }

    v12 = collectionView_layout_sizeForItemAtIndexPath____textCell;
    viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
    header = [viewElement header];
    descriptionText = [header descriptionText];
    detailTextStyle = [currentStyle detailTextStyle];
    [v12 configureForTextElement:descriptionText style:detailTextStyle];

    -[VideosExtrasGridElementViewController collectionView:layout:insetForSectionAtIndex:](self, "collectionView:layout:insetForSectionAtIndex:", viewCopy, layoutCopy, [pathCopy section]);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [viewCopy frame];
    [collectionView_layout_sizeForItemAtIndexPath____textCell sizeThatFits:{v25 - v20 - v24, v26 - v18 - v22}];
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v31 = -[VideosExtrasGridElementViewController _sectionElementForIndex:](self, "_sectionElementForIndex:", [pathCopy section]);
    v32 = [(VideosExtrasGridElementViewController *)self _cellStyleForSection:v31];
    v33 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:pathCopy];
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v7 = [(VideosExtrasGridElementViewController *)self currentStyle:view];
  if ([(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:index])
  {
    [v7 detailInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = [(VideosExtrasGridElementViewController *)self _sectionElementForIndex:index];
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

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  layout = [(VideosExtrasGridElementViewController *)self _sectionElementForIndex:index, layout];

  if (!layout)
  {
    return 0.0;
  }

  v8 = [(VideosExtrasGridElementViewController *)self _sectionElementForIndex:index];
  [(VideosExtrasGridElementViewController *)self _cellSpacingForSection:v8];
  v10 = v9;

  return v10;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  sections = [viewElement sections];
  v6 = [sections count];

  return v6 + [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(VideosExtrasGridElementViewController *)self _hasDescriptionText])
  {
    if ([(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:section])
    {
      return 1;
    }

    viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
    sections = [viewElement sections];
    v9 = sections;
    sectionCopy = section - 1;
  }

  else
  {
    viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
    sections = [viewElement sections];
    v9 = sections;
    sectionCopy = section;
  }

  v11 = [sections objectAtIndex:sectionCopy];
  items = [v11 items];
  v13 = [items count];

  return v13;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  if (-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [pathCopy section]))
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TextCellID" forIndexPath:pathCopy];

    viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
    header = [viewElement header];
    descriptionText = [header descriptionText];

    detailTextStyle = [currentStyle detailTextStyle];
    [v9 configureForTextElement:descriptionText style:detailTextStyle];
  }

  else
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"GridCellID" forIndexPath:pathCopy];

    descriptionText = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:pathCopy];
    detailTextStyle = -[VideosExtrasGridElementViewController _sectionElementForIndex:](self, "_sectionElementForIndex:", [pathCopy section]);
    v14 = [(VideosExtrasGridElementViewController *)self _cellStyleForSection:detailTextStyle];
    [v9 configureForLockup:descriptionText cellStyle:v14];
  }

  return v9;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [pathCopy section]))
  {
    v5 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:pathCopy];
    [v5 dispatchEventOfType:4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!-[VideosExtrasGridElementViewController _sectionIndexIsDescriptionSection:](self, "_sectionIndexIsDescriptionSection:", [pathCopy section]))
  {
    v7 = [(VideosExtrasGridElementViewController *)self _lockupForIndexPath:pathCopy];
    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
    [v7 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v9 = [view dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"ReusableHeaderID" forIndexPath:pathCopy];
  LODWORD(view) = [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
  section = [pathCopy section];

  v11 = section - view;
  viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
  sections = [viewElement sections];
  v14 = [sections objectAtIndex:v11];

  header = [v14 header];
  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  sectionHeaderStyle = [currentStyle sectionHeaderStyle];

  [v9 configureForHeaderElement:header headerStyle:sectionHeaderStyle];

  return v9;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (collectionView_layout_referenceSizeForHeaderInSection__onceToken != -1)
  {
    [VideosExtrasGridElementViewController collectionView:layout:referenceSizeForHeaderInSection:];
  }

  v10 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  if (![(VideosExtrasGridElementViewController *)self _sectionIndexIsDescriptionSection:section])
  {
    v12 = section - [(VideosExtrasGridElementViewController *)self _hasDescriptionText];
    viewElement = [(VideosExtrasViewElementViewController *)self viewElement];
    sections = [viewElement sections];
    v15 = [sections objectAtIndex:v12];

    header = [v15 header];
    if (header)
    {
      currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
      sectionHeaderStyle = [currentStyle sectionHeaderStyle];

      [collectionView_layout_referenceSizeForHeaderInSection____sizingView configureForHeaderElement:header headerStyle:sectionHeaderStyle];
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
  titleLabel = [(_VideosExtrasGridHeaderView *)self->_headerView titleLabel];
  v4 = titleLabel;
  if (titleLabel)
  {
    view = titleLabel;
  }

  else
  {
    view = [(VideosExtrasGridElementViewController *)self view];
  }

  v6 = view;

  return v6;
}

- (id)_cellStyleForSection:(id)section
{
  style = [section style];
  v5 = [style valueForStyle:@"extras-itml-section-content-type"];

  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"extras-image"])
    {
      imageCellStyle = [currentStyle imageCellStyle];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"extras-video"])
    {
      imageCellStyle = [currentStyle videoCellStyle];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"extras-product"])
    {
      imageCellStyle = [currentStyle productCellStyle];
LABEL_8:
      defaultCellStyle = imageCellStyle;
      if (imageCellStyle)
      {
        goto LABEL_10;
      }
    }
  }

  defaultCellStyle = [currentStyle defaultCellStyle];
LABEL_10:

  return defaultCellStyle;
}

- (UIEdgeInsets)_sectionInsetsForSection:(id)section
{
  style = [section style];
  v5 = [style valueForStyle:@"extras-itml-section-content-type"];

  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  [currentStyle defaultCellSectionInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"extras-image"])
    {
      [currentStyle imageCellSectionInsets];
LABEL_8:
      v8 = v15;
      v10 = v16;
      v12 = v17;
      v14 = v18;
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"extras-video"])
    {
      [currentStyle videoCellSectionInsets];
      goto LABEL_8;
    }

    if ([v5 isEqualToString:@"extras-product"])
    {
      [currentStyle productCellSectionInsets];
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

- (double)_cellSpacingForSection:(id)section
{
  sectionCopy = section;
  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  [currentStyle defaultSpacing];
  v7 = v6;
  style = [sectionCopy style];

  v9 = [style valueForStyle:@"extras-itml-section-content-type"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 isEqualToString:@"extras-image"])
    {
      [currentStyle imageSpacing];
LABEL_8:
      v7 = v10;
      goto LABEL_9;
    }

    if ([v9 isEqualToString:@"extras-video"])
    {
      [currentStyle videoSpacing];
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"extras-product"])
    {
      [currentStyle productSpacing];
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
    _narrowStyle = self->_wideStyle;
  }

  else
  {
    _narrowStyle = [(VideosExtrasGridElementViewController *)self _narrowStyle];
  }

  return _narrowStyle;
}

- (id)_narrowStyle
{
  view = [(VideosExtrasGridElementViewController *)self view];
  [view bounds];
  v5 = v4;

  if (fabs(v5 + -480.0) < 0.00000011920929)
  {
    smallStyle = [(VideosExtrasGridElementViewController *)self smallStyle];
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
      smallStyle = [(VideosExtrasGridElementViewController *)self mediumStyle];
      goto LABEL_10;
    }

    smallStyle = [(VideosExtrasGridElementViewController *)self extraLargeStyle];
  }

  else
  {
    smallStyle = [(VideosExtrasGridElementViewController *)self largeStyle];
  }

LABEL_10:

  return smallStyle;
}

- (void)_dynamicTypeDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  [(_VideosExtrasGridHeaderView *)self->_headerView invalidateIntrinsicContentSize];
  collectionView = [(VideosExtrasGridElementViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [collectionViewLayout invalidateLayout];
  collectionView2 = [(VideosExtrasGridElementViewController *)self collectionView];
  visibleCells = [collectionView2 visibleCells];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = visibleCells;
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
  view = [(VideosExtrasGridElementViewController *)self view];
  if (![(VideosExtrasViewElementViewController *)self embedded])
  {
    backgroundViewController = [(VideosExtrasElementViewController *)self backgroundViewController];
    [backgroundViewController setVignetteType:3];
  }

  currentStyle = [(VideosExtrasGridElementViewController *)self currentStyle];
  backgroundColor = [currentStyle backgroundColor];
  [view setBackgroundColor:backgroundColor];

  showsScrollFade = [currentStyle showsScrollFade];
  titleRule = self->_titleRule;
  v9 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;
  if (showsScrollFade)
  {
    if (!titleRule)
    {
      _borderView = [objc_opt_class() _borderView];
      v11 = self->_titleRule;
      self->_titleRule = _borderView;

      [(UIView *)self->_titleRule setTranslatesAutoresizingMaskIntoConstraints:0];
      [view addSubview:self->_titleRule];
    }

    if (!self->_titleRuleConstraints)
    {
      v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleRule attribute:4 relatedBy:0 toItem:self->_headerView attribute:4 multiplier:1.0 constant:0.0];
      headerStyle = [currentStyle headerStyle];
      [headerStyle insets];
      v15 = v14;
      v17 = v16;

      v18 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_titleRule toView:self->_collectionView alongEdges:10 insets:{0.0, v15, 0.0, v17}];
      v19 = [v18 arrayByAddingObject:v12];
      titleRuleConstraints = self->_titleRuleConstraints;
      self->_titleRuleConstraints = v19;
    }

    view2 = [(VideosExtrasGridElementViewController *)self view];
    [view2 addConstraints:self->_titleRuleConstraints];

    view3 = [(VideosExtrasGridElementViewController *)self view];
    [view3 bringSubviewToFront:self->_titleRule];
  }

  else
  {
    if (titleRule)
    {
      [(UIView *)titleRule removeFromSuperview];
    }

    if (self->_titleRuleConstraints)
    {
      [view removeConstraints:?];
    }
  }

  if (self->_headerViewConstraints)
  {
    [view removeConstraints:?];
    headerViewConstraints = self->_headerViewConstraints;
    self->_headerViewConstraints = 0;
  }

  currentStyle2 = [(VideosExtrasGridElementViewController *)self currentStyle];
  headerStyle2 = [currentStyle2 headerStyle];

  array = [MEMORY[0x1E695DF70] array];
  v84 = headerStyle2;
  if (headerStyle2)
  {
    view4 = [(VideosExtrasGridElementViewController *)self view];
    [view4 addSubview:self->_headerView];

    currentStyle3 = [(VideosExtrasGridElementViewController *)self currentStyle];
    headerStyle3 = [currentStyle3 headerStyle];
    [headerStyle3 insets];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = MEMORY[0x1E696ACD8];
    headerView = self->_headerView;
    [(VideosExtrasGridElementViewController *)self view];
    v40 = v83 = currentStyle;
    safeAreaLayoutGuide = [v40 safeAreaLayoutGuide];
    v42 = [v38 constraintWithItem:headerView attribute:3 relatedBy:0 toItem:safeAreaLayoutGuide attribute:3 multiplier:1.0 constant:v31];

    v43 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_headerView toView:view alongEdges:10 insets:{v31, v33, v35, v37}];
    v44 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_headerView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:50.0];
    v45 = MEMORY[0x1E696ACD8];
    [(VideosExtrasGridElementViewController *)self collectionView];
    v47 = v46 = view;
    v48 = [v45 constraintsByAttachingView:v47 toView:v46 alongEdges:14 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    v49 = MEMORY[0x1E696ACD8];
    collectionView = [(VideosExtrasGridElementViewController *)self collectionView];
    v51 = [v49 constraintWithItem:collectionView attribute:3 relatedBy:0 toItem:self->_headerView attribute:4 multiplier:1.0 constant:v35];

    [array addObject:v42];
    [array addObjectsFromArray:v43];
    [array addObject:v44];
    [array addObjectsFromArray:v48];
    [array addObject:v51];

    view = v46;
    v9 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;

    currentStyle = v83;
  }

  else
  {
    [(_VideosExtrasGridHeaderView *)self->_headerView removeFromSuperview];
    v52 = MEMORY[0x1E696ACD8];
    collectionView2 = [(VideosExtrasGridElementViewController *)self collectionView];
    v42 = [v52 constraintsByAttachingView:collectionView2 toView:view alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    [array addObjectsFromArray:v42];
  }

  objc_storeStrong(&self->_headerViewConstraints, array);
  [view addConstraints:array];
  [currentStyle collectionViewInsets];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  parentViewController = [(VideosExtrasGridElementViewController *)self parentViewController];
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

  if ([currentStyle adjustsContentInsetByBottomNavBar])
  {
    navigationController = [(VideosExtrasGridElementViewController *)self navigationController];
    v65 = objc_opt_respondsToSelector();

    if (v65)
    {
      navigationController2 = [(VideosExtrasGridElementViewController *)self navigationController];
      mainTemplateViewController = [navigationController2 mainTemplateViewController];
      view5 = [mainTemplateViewController view];
      [view5 bounds];
      v70 = v69;

      if (v70 > v59)
      {
        menuBarView = [mainTemplateViewController menuBarView];
        [menuBarView bounds];
        v73 = v72;

        if (v59 < v73)
        {
          v59 = v73;
        }
      }
    }
  }

  v74 = MEMORY[0x1E69DDA98];
  keyWindow = [*MEMORY[0x1E69DDA98] keyWindow];
  [keyWindow safeAreaInsets];
  v77 = v57 + v76;

  keyWindow2 = [*v74 keyWindow];
  [keyWindow2 safeAreaInsets];
  v80 = v61 + v79;

  v81 = v9[371];
  [*(&self->super.super.super.super.super.isa + v81) setContentInset:{v55, v77, v59, v80}];
  [*(&self->super.super.super.super.super.isa + v81) setContentInsetAdjustmentBehavior:2];
  collectionViewLayout = [*(&self->super.super.super.super.super.isa + v81) collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  [currentStyle defaultSpacing];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumInteritemSpacing:?];
  [currentStyle cellLineSpacing];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumLineSpacing:?];
}

+ (id)_fontAttributesForTextStyle:(id)style
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:style];
  v8[0] = *MEMORY[0x1E69DB8A8];
  familyName = [v3 familyName];
  v9[0] = familyName;
  v8[1] = *MEMORY[0x1E69DB8B8];
  fontName = [v3 fontName];
  v9[1] = fontName;
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
  v5 = [self _fontAttributesForTextStyle:v4];
  [(VideosExtrasGridCellStyle *)v3 setTitleDefaultFontAttributes:v5];

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v3 setTitleTextColor:v6];

  [(VideosExtrasGridCellStyle *)v3 setTextFirstBaselineToBottom:30.0];
  [(VideosExtrasGridCellStyle *)v3 setTextLastBaselineToBottom:10.0];
  v7 = [self _fontAttributesForTextStyle:v4];
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
  _defaultCellStyle = [self _defaultCellStyle];
  [_defaultCellStyle setImageSize:{170.0, 170.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setDefaultCellStyle:_defaultCellStyle];
  [(VideosExtrasGridViewControllerStyle *)v3 setImageCellStyle:_defaultCellStyle];
  _defaultCellStyle2 = [self _defaultCellStyle];
  [_defaultCellStyle2 setImageSize:{224.0, 126.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setVideoCellStyle:_defaultCellStyle2];
  _defaultCellStyle3 = [self _defaultCellStyle];
  [_defaultCellStyle3 setImageSize:{114.0, 170.0}];
  [(VideosExtrasGridViewControllerStyle *)v3 setProductCellStyle:_defaultCellStyle3];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:280.0, 15.0, 0.0, 15.0];
  v7 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  v8 = *MEMORY[0x1E69DDCF8];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setTextStyle:*MEMORY[0x1E69DDCF8]];
  v9 = [self _fontAttributesForTextStyle:v8];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setDefaultFontAttributes:v9];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridSectionHeaderStyle *)v7 setTextColor:whiteColor];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:clearColor];

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
  v6 = [self _fontAttributesForTextStyle:v5];
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
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridSectionHeaderStyle *)v10 setTextColor:whiteColor];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:clearColor];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:1];

  return v3;
}

+ (id)mediumGalleryStyle
{
  smallGalleryStyle = [self smallGalleryStyle];
  [smallGalleryStyle setDefaultSpacing:19.0];
  [smallGalleryStyle setImageSpacing:19.0];
  [smallGalleryStyle setVideoSpacing:12.0];
  [smallGalleryStyle setProductSpacing:19.0];

  return smallGalleryStyle;
}

+ (id)largeGalleryStyle
{
  smallGalleryStyle = [self smallGalleryStyle];
  [smallGalleryStyle collectionViewInsets];
  [smallGalleryStyle setCollectionViewInsets:155.0];
  [smallGalleryStyle setDefaultSpacing:8.0];
  [smallGalleryStyle setImageSpacing:8.0];
  [smallGalleryStyle setVideoSpacing:12.0];
  [smallGalleryStyle setProductSpacing:8.0];

  return smallGalleryStyle;
}

+ (id)extraLargeGalleryStyle
{
  smallGalleryStyle = [self smallGalleryStyle];
  [smallGalleryStyle collectionViewInsets];
  [smallGalleryStyle setCollectionViewInsets:160.0];
  defaultCellStyle = [smallGalleryStyle defaultCellStyle];
  [defaultCellStyle setImageSize:{160.0, 160.0}];

  imageCellStyle = [smallGalleryStyle imageCellStyle];
  [imageCellStyle setImageSize:{160.0, 160.0}];

  videoCellStyle = [smallGalleryStyle videoCellStyle];
  [videoCellStyle setImageSize:{160.0, 90.0}];

  productCellStyle = [smallGalleryStyle productCellStyle];
  [productCellStyle setImageSize:{160.0, 160.0}];

  [smallGalleryStyle setDefaultSpacing:22.0];
  [smallGalleryStyle setImageSpacing:22.0];
  [smallGalleryStyle setVideoSpacing:22.0];
  [smallGalleryStyle setProductSpacing:22.0];

  return smallGalleryStyle;
}

+ (id)wideDetailStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:160.0, 160.0];
  v5 = *MEMORY[0x1E69DDD08];
  v6 = [self _fontAttributesForTextStyle:*MEMORY[0x1E69DDD08]];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];

  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:20.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:v5];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:v7];

  [(VideosExtrasGridCellStyle *)v4 setTextFirstBaselineToBottom:35.0];
  v8 = [self _fontAttributesForTextStyle:v5];
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
  v14 = [self _fontAttributesForTextStyle:v13];
  [(VideosExtrasGridHeaderStyle *)v12 setTitleDefaultFontAttributes:v14];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridHeaderStyle *)v12 setTitleColor:whiteColor];

  v16 = *MEMORY[0x1E69DDD80];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleTextStyle:*MEMORY[0x1E69DDD80]];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleLineHeight:25.0];
  v17 = [self _fontAttributesForTextStyle:v16];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleDefaultFontAttributes:v17];

  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
  [(VideosExtrasGridHeaderStyle *)v12 setSubtitleColor:v18];

  [(VideosExtrasGridHeaderStyle *)v12 setBottomLabelDescender:15.0];
  [(VideosExtrasGridViewControllerStyle *)v3 setHeaderStyle:v12];
  v19 = *MEMORY[0x1E69DDD28];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailTextStyle:*MEMORY[0x1E69DDD28]];
  v20 = [self _fontAttributesForTextStyle:v19];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailDefaultFontAttributes:v20];

  v21 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  [(VideosExtrasGridViewControllerStyle *)v3 setDetailTextColor:v21];

  [(VideosExtrasGridViewControllerStyle *)v3 setDetailInsets:23.0, 10.0, 10.0, 10.0];
  v22 = objc_alloc_init(VideosExtrasGridSectionHeaderStyle);
  [(VideosExtrasGridSectionHeaderStyle *)v22 setTextStyle:v16];
  v23 = [self _fontAttributesForTextStyle:v16];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:clearColor];

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
  v6 = [self _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:whiteColor];

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
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridHeaderStyle *)v11 setTitleColor:whiteColor2];

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
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:blackColor];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:1];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:1];

  return v3;
}

+ (id)mediumDetailStyle
{
  smallDetailStyle = [self smallDetailStyle];
  [smallDetailStyle setDetailInsets:{15.0, 78.0, 20.0, 78.0}];
  headerStyle = [smallDetailStyle headerStyle];
  [headerStyle setInsets:{15.0, 78.0, 0.0, 78.0}];

  [smallDetailStyle setDefaultCellSectionInsets:{15.0, 79.0, 0.0, 79.0}];
  [smallDetailStyle setImageCellSectionInsets:{15.0, 89.0, 0.0, 89.0}];
  [smallDetailStyle setVideoCellSectionInsets:{15.0, 78.0, 0.0, 78.0}];
  [smallDetailStyle setProductCellSectionInsets:{15.0, 79.0, 0.0, 79.0}];

  return smallDetailStyle;
}

+ (id)largeDetailStyle
{
  mediumDetailStyle = [self mediumDetailStyle];
  [mediumDetailStyle setDefaultSpacing:14.0];
  [mediumDetailStyle setImageSpacing:7.0];
  [mediumDetailStyle setVideoSpacing:28.0];
  [mediumDetailStyle setProductSpacing:14.0];

  return mediumDetailStyle;
}

+ (id)extraLargeDetailStyle
{
  smallDetailStyle = [self smallDetailStyle];
  defaultCellStyle = [smallDetailStyle defaultCellStyle];
  [defaultCellStyle setImageSize:{90.0, 90.0}];

  imageCellStyle = [smallDetailStyle imageCellStyle];
  [imageCellStyle setImageSize:{90.0, 90.0}];

  videoCellStyle = [smallDetailStyle videoCellStyle];
  [videoCellStyle setImageSize:{150.0, 84.0}];

  productCellStyle = [smallDetailStyle productCellStyle];
  [productCellStyle setImageSize:{100.0, 100.0}];

  [smallDetailStyle setDetailInsets:{15.0, 100.0, 20.0, 100.0}];
  headerStyle = [smallDetailStyle headerStyle];
  [headerStyle setInsets:{15.0, 100.0, 0.0, 100.0}];

  [smallDetailStyle setDefaultCellSectionInsets:{15.0, 107.0, 0.0, 107.0}];
  [smallDetailStyle setImageCellSectionInsets:{15.0, 100.0, 0.0, 100.0}];
  [smallDetailStyle setVideoCellSectionInsets:{15.0, 107.0, 0.0, 107.0}];
  [smallDetailStyle setProductCellSectionInsets:{15.0, 107.0, 0.0, 107.0}];
  [smallDetailStyle setDefaultSpacing:7.0];
  [smallDetailStyle setImageSpacing:7.0];
  [smallDetailStyle setVideoSpacing:7.0];
  [smallDetailStyle setProductSpacing:7.0];

  return smallDetailStyle;
}

+ (id)wideStackGridStyle
{
  v3 = objc_alloc_init(VideosExtrasGridViewControllerStyle);
  v4 = objc_alloc_init(VideosExtrasGridCellStyle);
  [(VideosExtrasGridCellStyle *)v4 setImageSize:114.0, 170.0];
  [(VideosExtrasGridCellStyle *)v4 setTitleFirstBaselineHeight:20.0];
  v5 = *MEMORY[0x1E69DDD08];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextStyle:*MEMORY[0x1E69DDD08]];
  v6 = [self _fontAttributesForTextStyle:v5];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:clearColor];

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
  v6 = [self _fontAttributesForTextStyle:v5];
  [(VideosExtrasGridCellStyle *)v4 setTitleDefaultFontAttributes:v6];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(VideosExtrasGridCellStyle *)v4 setTitleTextColor:whiteColor];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(VideosExtrasGridViewControllerStyle *)v3 setBackgroundColor:clearColor];

  [(VideosExtrasGridViewControllerStyle *)v3 setShowsScrollFade:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setAdjustsContentInsetByBottomNavBar:0];
  [(VideosExtrasGridViewControllerStyle *)v3 setCollectionViewInsets:0.0, 15.0, 0.0, 15.0];

  return v3;
}

+ (id)mediumStackGridStyle
{
  smallStackGridStyle = [self smallStackGridStyle];
  [smallStackGridStyle setDefaultSpacing:25.0];
  [smallStackGridStyle setImageSpacing:30.0];
  [smallStackGridStyle setVideoSpacing:30.0];
  [smallStackGridStyle setProductSpacing:25.0];

  return smallStackGridStyle;
}

+ (id)largeStackGridStyle
{
  mediumStackGridStyle = [self mediumStackGridStyle];
  videoCellStyle = [mediumStackGridStyle videoCellStyle];
  [videoCellStyle setImageSize:{150.0, 85.0}];

  [mediumStackGridStyle setImageSpacing:25.0];
  [mediumStackGridStyle setVideoSpacing:25.0];

  return mediumStackGridStyle;
}

+ (id)extraLargeStackGridStyle
{
  largeStackGridStyle = [self largeStackGridStyle];
  defaultCellStyle = [largeStackGridStyle defaultCellStyle];
  [defaultCellStyle setImageSize:{160.0, 160.0}];

  imageCellStyle = [largeStackGridStyle imageCellStyle];
  [imageCellStyle setImageSize:{160.0, 160.0}];

  videoCellStyle = [largeStackGridStyle videoCellStyle];
  [videoCellStyle setImageSize:{160.0, 90.0}];

  productCellStyle = [largeStackGridStyle productCellStyle];
  [productCellStyle setImageSize:{106.0, 160.0}];

  [largeStackGridStyle setDefaultSpacing:50.0];
  [largeStackGridStyle setImageSpacing:50.0];
  [largeStackGridStyle setVideoSpacing:50.0];
  [largeStackGridStyle setProductSpacing:30.0];

  return largeStackGridStyle;
}

@end