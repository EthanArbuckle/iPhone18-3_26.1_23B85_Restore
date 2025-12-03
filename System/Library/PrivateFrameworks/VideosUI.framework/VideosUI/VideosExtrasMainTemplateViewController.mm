@interface VideosExtrasMainTemplateViewController
- (BOOL)_collectionView:(id)view indexPathShouldDisplayAsSelected:(id)selected;
- (BOOL)_isFeatureItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)sectionMetrics:(id)metrics sizeForItemAtIndex:(int64_t)index withFontDescriptor:(id)descriptor;
- (NSIndexPath)indexPathOfFeaturedItem;
- (UICollectionViewDelegate)didSelectDelegate;
- (VideosExtrasMainTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context;
- (id)_menuItems;
- (id)_textElementAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)templateElement;
- (int64_t)numberOfItemsForSectionMetrics:(id)metrics;
- (void)_configureCell:(id)cell forIndexPath:(id)path;
- (void)_prepareCollectionView;
- (void)_prepareLayout;
- (void)_recalculateSizes;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)setCollectionViewHeight:(double)height;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasMainTemplateViewController

- (id)templateElement
{
  document = [(VideosExtrasTemplateViewController *)self document];
  templateElement = [document templateElement];

  return templateElement;
}

- (VideosExtrasMainTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context
{
  v8.receiver = self;
  v8.super_class = VideosExtrasMainTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v8 initWithDocument:document options:options context:context];
  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__dynamicTypeChanged name:*MEMORY[0x1E69DDC48] object:0];

    [(VideosExtrasMainTemplateViewController *)v5 _prepareCollectionView];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasMainTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v4 dealloc];
}

- (void)_prepareCollectionView
{
  v3 = objc_alloc_init(VideosExtrasMainMenuSectionMetrics);
  mainMenuMetrics = self->_mainMenuMetrics;
  self->_mainMenuMetrics = v3;

  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics setDataSource:self];
  v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v5;

  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:0.0];
  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v8 = [v7 initWithFrame:self->_collectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  menuBarCollectionView = self->_menuBarCollectionView;
  self->_menuBarCollectionView = v8;

  [(UICollectionView *)self->_menuBarCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_menuBarCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VideosExtrasMenuBarItemIdentifier"];
  v12 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:11050];
  [v12 setComputesColorSettings:0];
  [v12 setSimulatesMasks:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_menuBarCollectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_menuBarCollectionView setBackgroundView:v12];
  [(UICollectionView *)self->_menuBarCollectionView setShowsVerticalScrollIndicator:0];
  v10 = self->_menuBarCollectionView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v10 setBackgroundColor:clearColor];

  [(UICollectionView *)self->_menuBarCollectionView setDataSource:self];
  [(UICollectionView *)self->_menuBarCollectionView setDelegate:self];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setScrollDirection:1];
  [(UICollectionView *)self->_menuBarCollectionView setContentInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  objc_storeStrong(&self->_menuBarView, self->_menuBarCollectionView);
  [(VideosExtrasMainTemplateViewController *)self _recalculateSizes];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = VideosExtrasMainTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v8 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  templateElement = [(VideosExtrasMainTemplateViewController *)self templateElement];
  background = [templateElement background];

  if (background)
  {
    templateElement2 = [(VideosExtrasMainTemplateViewController *)self templateElement];
    background2 = [templateElement2 background];
    [v3 addObject:background2];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = VideosExtrasMainTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 viewWillAppear:appear];
}

- (void)_prepareLayout
{
  v3.receiver = self;
  v3.super_class = VideosExtrasMainTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 _prepareLayout];
  [(VideosExtrasMainTemplateViewController *)self _recalculateSizes];
}

- (void)setCollectionViewHeight:(double)height
{
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  if (!collectionViewHeightConstraint)
  {
    v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_menuBarCollectionView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:height];
    v7 = self->_collectionViewHeightConstraint;
    self->_collectionViewHeightConstraint = v6;

    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setIdentifier:@"collectionViewHeight"];
    [(UICollectionView *)self->_menuBarCollectionView addConstraint:self->_collectionViewHeightConstraint];
    collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  }

  [(NSLayoutConstraint *)collectionViewHeightConstraint constant];
  if (v8 != height)
  {
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:height];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  [defaultCenter postNotificationName:@"VideosExtrasMainTemplateBarHeightChangeNotification" object:v9];
}

- (id)_menuItems
{
  templateElement = [(VideosExtrasMainTemplateViewController *)self templateElement];
  menuBar = [templateElement menuBar];
  sections = [menuBar sections];
  lastObject = [sections lastObject];
  items = [lastObject items];

  return items;
}

- (id)_textElementAtIndex:(int64_t)index
{
  _menuItems = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v5 = [_menuItems objectAtIndex:index];
  title = [v5 title];

  return title;
}

- (void)_configureCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  v6 = -[VideosExtrasMainTemplateViewController _textElementAtIndex:](self, "_textElementAtIndex:", [path item]);
  textLabel = [cellCopy textLabel];
  fittingFontDescriptor = [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics fittingFontDescriptor];
  v9 = [fittingFontDescriptor objectForKey:*MEMORY[0x1E69DB8E8]];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  traitCollection = [keyWindow traitCollection];

  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (preferredContentSizeCategory <= *MEMORY[0x1E69DDC28])
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:?];
  }

  [textLabel configureForIKTextElement:v6 fontDescriptor:fittingFontDescriptor textStyle:v9 capitalize:0 overrideWithTraitCollection:v14];
  contentView = [cellCopy contentView];
  [contentView invalidateIntrinsicContentSize];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"VideosExtrasMenuBarItemIdentifier" forIndexPath:pathCopy];
  [(VideosExtrasMainTemplateViewController *)self _configureCell:v7 forIndexPath:pathCopy];

  return v7;
}

- (BOOL)_collectionView:(id)view indexPathShouldDisplayAsSelected:(id)selected
{
  hasHadMenuSelection = self->_hasHadMenuSelection;
  selectedCopy = selected;
  if (hasHadMenuSelection)
  {
    indexPathsForSelectedItems = [view indexPathsForSelectedItems];
    v9 = [indexPathsForSelectedItems containsObject:selectedCopy];

    selectedCopy = indexPathsForSelectedItems;
  }

  else
  {
    v9 = [(VideosExtrasMainTemplateViewController *)self _isFeatureItemAtIndexPath:selectedCopy];
  }

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setSelected:{-[VideosExtrasMainTemplateViewController _collectionView:indexPathShouldDisplayAsSelected:](self, "_collectionView:indexPathShouldDisplayAsSelected:", view, path)}];
}

- (BOOL)_isFeatureItemAtIndexPath:(id)path
{
  pathCopy = path;
  _menuItems = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  item = [pathCopy item];

  v7 = [_menuItems objectAtIndex:item];
  attributes = [v7 attributes];
  v9 = [attributes objectForKey:@"type"];

  LOBYTE(attributes) = [v9 isEqualToString:@"video"];
  return attributes;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (!self->_hasHadMenuSelection)
  {
    self->_hasHadMenuSelection = 1;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    visibleCells = [viewCopy visibleCells];
    v9 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(visibleCells);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [viewCopy indexPathForCell:v13];
          [v13 setSelected:{-[VideosExtrasMainTemplateViewController _collectionView:indexPathShouldDisplayAsSelected:](self, "_collectionView:indexPathShouldDisplayAsSelected:", viewCopy, v14)}];
        }

        v10 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  _menuItems = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v16 = [_menuItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  didSelectDelegate = [(VideosExtrasMainTemplateViewController *)self didSelectDelegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    didSelectDelegate2 = [(VideosExtrasMainTemplateViewController *)self didSelectDelegate];
    [didSelectDelegate2 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  }

  if ([(VideosExtrasMainTemplateViewController *)self _isFeatureItemAtIndexPath:pathCopy])
  {
    context = [(VideosExtrasTemplateViewController *)self context];
    extrasRootViewController = [context extrasRootViewController];
    [extrasRootViewController popToFeatureOrMain];
  }

  else
  {
    [v16 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:&__block_literal_global_124];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  mainMenuMetrics = self->_mainMenuMetrics;
  item = [path item];

  [(VideosExtrasMainMenuSectionMetrics *)mainMenuMetrics sizeForCellAtIndex:item];
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)numberOfItemsForSectionMetrics:(id)metrics
{
  _menuItems = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v4 = [_menuItems count];

  return v4;
}

- (CGSize)sectionMetrics:(id)metrics sizeForItemAtIndex:(int64_t)index withFontDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8 = [_VideosExtrasMainMenuItemCollectionViewCell _createLabelInCell:0];
  v9 = [(VideosExtrasMainTemplateViewController *)self _textElementAtIndex:index];
  v10 = [descriptorCopy objectForKey:*MEMORY[0x1E69DB8E8]];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  traitCollection = [keyWindow traitCollection];

  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v15 = 0;
  if (preferredContentSizeCategory > *MEMORY[0x1E69DDC28])
  {
    v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:?];
  }

  [v8 configureForIKTextElement:v9 fontDescriptor:descriptorCopy textStyle:v10 capitalize:0 overrideWithTraitCollection:v15];
  [v8 intrinsicContentSize];
  v17 = v16;
  font = [v8 font];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v21 = 40.0;
  if (!userInterfaceIdiom)
  {
    v21 = 32.0;
  }

  [font _scaledValueForValue:v21];
  v23 = v22;
  keyWindow2 = [*MEMORY[0x1E69DDA98] keyWindow];
  [keyWindow2 safeAreaInsets];
  v26 = v23 + v25;

  v27 = v17;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

- (NSIndexPath)indexPathOfFeaturedItem
{
  v18 = *MEMORY[0x1E69E9840];
  [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        attributes = [v7 attributes];
        v9 = [attributes objectForKey:@"type"];
        v10 = [v9 isEqualToString:@"video"];

        if (v10)
        {
          v11 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v2 inSection:{"indexOfObject:", v7), 0}];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_recalculateSizes
{
  v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08]];
  v4 = self->_menuBarCollectionView;
  view = [(VideosExtrasMainTemplateViewController *)self view];
  [view bounds];
  v6 = fabs(CGRectGetWidth(v15));

  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics setDesiredFontDescriptor:v13];
  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics setMinimumFontDescriptor:v3];
  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics setMinimumCellSpacing:20.0];
  v7 = 40.0;
  if (v6 <= 480.0)
  {
    v7 = 30.0;
  }

  if (v6 >= 1024.0)
  {
    v7 = 55.0;
  }

  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics setDesiredCellSpacing:v7];
  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics setDesiredWidth:v6];
  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics updateSizes];
  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics totalFittingSize];
  v9 = v8;
  [(VideosExtrasMainTemplateViewController *)self setCollectionViewHeight:v10];
  if (v9 >= v6)
  {
    [(UICollectionView *)v4 setScrollEnabled:1];
    collectionViewLayout = self->_collectionViewLayout;
    [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics fittingCellSpacing];
  }

  else
  {
    [(UICollectionView *)v4 setScrollEnabled:0];
    collectionViewLayout = self->_collectionViewLayout;
  }

  UIEdgeInsetsMakeWithEdges();
  [(UICollectionViewFlowLayout *)collectionViewLayout setSectionInset:?];
  v12 = self->_collectionViewLayout;
  [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics fittingCellSpacing];
  [(UICollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:?];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout invalidateLayout];
}

- (UICollectionViewDelegate)didSelectDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_didSelectDelegate);

  return WeakRetained;
}

@end