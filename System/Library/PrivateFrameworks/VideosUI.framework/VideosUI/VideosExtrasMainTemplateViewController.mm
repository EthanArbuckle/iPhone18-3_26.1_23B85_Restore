@interface VideosExtrasMainTemplateViewController
- (BOOL)_collectionView:(id)a3 indexPathShouldDisplayAsSelected:(id)a4;
- (BOOL)_isFeatureItemAtIndexPath:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)sectionMetrics:(id)a3 sizeForItemAtIndex:(int64_t)a4 withFontDescriptor:(id)a5;
- (NSIndexPath)indexPathOfFeaturedItem;
- (UICollectionViewDelegate)didSelectDelegate;
- (VideosExtrasMainTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (id)_menuItems;
- (id)_textElementAtIndex:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)templateElement;
- (int64_t)numberOfItemsForSectionMetrics:(id)a3;
- (void)_configureCell:(id)a3 forIndexPath:(id)a4;
- (void)_prepareCollectionView;
- (void)_prepareLayout;
- (void)_recalculateSizes;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)setCollectionViewHeight:(double)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VideosExtrasMainTemplateViewController

- (id)templateElement
{
  v2 = [(VideosExtrasTemplateViewController *)self document];
  v3 = [v2 templateElement];

  return v3;
}

- (VideosExtrasMainTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v8.receiver = self;
  v8.super_class = VideosExtrasMainTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v8 initWithDocument:a3 options:a4 context:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel__dynamicTypeChanged name:*MEMORY[0x1E69DDC48] object:0];

    [(VideosExtrasMainTemplateViewController *)v5 _prepareCollectionView];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v10 setBackgroundColor:v11];

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
  v4 = [(VideosExtrasMainTemplateViewController *)self templateElement];
  v5 = [v4 background];

  if (v5)
  {
    v6 = [(VideosExtrasMainTemplateViewController *)self templateElement];
    v7 = [v6 background];
    [v3 addObject:v7];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = VideosExtrasMainTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 viewWillAppear:a3];
}

- (void)_prepareLayout
{
  v3.receiver = self;
  v3.super_class = VideosExtrasMainTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 _prepareLayout];
  [(VideosExtrasMainTemplateViewController *)self _recalculateSizes];
}

- (void)setCollectionViewHeight:(double)a3
{
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  if (!collectionViewHeightConstraint)
  {
    v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_menuBarCollectionView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a3];
    v7 = self->_collectionViewHeightConstraint;
    self->_collectionViewHeightConstraint = v6;

    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setIdentifier:@"collectionViewHeight"];
    [(UICollectionView *)self->_menuBarCollectionView addConstraint:self->_collectionViewHeightConstraint];
    collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  }

  [(NSLayoutConstraint *)collectionViewHeightConstraint constant];
  if (v8 != a3)
  {
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:a3];
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v10 postNotificationName:@"VideosExtrasMainTemplateBarHeightChangeNotification" object:v9];
}

- (id)_menuItems
{
  v2 = [(VideosExtrasMainTemplateViewController *)self templateElement];
  v3 = [v2 menuBar];
  v4 = [v3 sections];
  v5 = [v4 lastObject];
  v6 = [v5 items];

  return v6;
}

- (id)_textElementAtIndex:(int64_t)a3
{
  v4 = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 title];

  return v6;
}

- (void)_configureCell:(id)a3 forIndexPath:(id)a4
{
  v16 = a3;
  v6 = -[VideosExtrasMainTemplateViewController _textElementAtIndex:](self, "_textElementAtIndex:", [a4 item]);
  v7 = [v16 textLabel];
  v8 = [(VideosExtrasMainMenuSectionMetrics *)self->_mainMenuMetrics fittingFontDescriptor];
  v9 = [v8 objectForKey:*MEMORY[0x1E69DB8E8]];
  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 keyWindow];
  v12 = [v11 traitCollection];

  v13 = [v12 preferredContentSizeCategory];
  if (v13 <= *MEMORY[0x1E69DDC28])
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:?];
  }

  [v7 configureForIKTextElement:v6 fontDescriptor:v8 textStyle:v9 capitalize:0 overrideWithTraitCollection:v14];
  v15 = [v16 contentView];
  [v15 invalidateIntrinsicContentSize];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"VideosExtrasMenuBarItemIdentifier" forIndexPath:v6];
  [(VideosExtrasMainTemplateViewController *)self _configureCell:v7 forIndexPath:v6];

  return v7;
}

- (BOOL)_collectionView:(id)a3 indexPathShouldDisplayAsSelected:(id)a4
{
  hasHadMenuSelection = self->_hasHadMenuSelection;
  v7 = a4;
  if (hasHadMenuSelection)
  {
    v8 = [a3 indexPathsForSelectedItems];
    v9 = [v8 containsObject:v7];

    v7 = v8;
  }

  else
  {
    v9 = [(VideosExtrasMainTemplateViewController *)self _isFeatureItemAtIndexPath:v7];
  }

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  [v8 setSelected:{-[VideosExtrasMainTemplateViewController _collectionView:indexPathShouldDisplayAsSelected:](self, "_collectionView:indexPathShouldDisplayAsSelected:", a3, a5)}];
}

- (BOOL)_isFeatureItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v6 = [v4 item];

  v7 = [v5 objectAtIndex:v6];
  v8 = [v7 attributes];
  v9 = [v8 objectForKey:@"type"];

  LOBYTE(v8) = [v9 isEqualToString:@"video"];
  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_hasHadMenuSelection)
  {
    self->_hasHadMenuSelection = 1;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v6 visibleCells];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v6 indexPathForCell:v13];
          [v13 setSelected:{-[VideosExtrasMainTemplateViewController _collectionView:indexPathShouldDisplayAsSelected:](self, "_collectionView:indexPathShouldDisplayAsSelected:", v6, v14)}];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  v15 = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v16 = [v15 objectAtIndex:{objc_msgSend(v7, "item")}];
  v17 = [(VideosExtrasMainTemplateViewController *)self didSelectDelegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(VideosExtrasMainTemplateViewController *)self didSelectDelegate];
    [v19 collectionView:v6 didSelectItemAtIndexPath:v7];
  }

  if ([(VideosExtrasMainTemplateViewController *)self _isFeatureItemAtIndexPath:v7])
  {
    v20 = [(VideosExtrasTemplateViewController *)self context];
    v21 = [v20 extrasRootViewController];
    [v21 popToFeatureOrMain];
  }

  else
  {
    [v16 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:&__block_literal_global_124];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  mainMenuMetrics = self->_mainMenuMetrics;
  v6 = [a5 item];

  [(VideosExtrasMainMenuSectionMetrics *)mainMenuMetrics sizeForCellAtIndex:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)numberOfItemsForSectionMetrics:(id)a3
{
  v3 = [(VideosExtrasMainTemplateViewController *)self _menuItems];
  v4 = [v3 count];

  return v4;
}

- (CGSize)sectionMetrics:(id)a3 sizeForItemAtIndex:(int64_t)a4 withFontDescriptor:(id)a5
{
  v7 = a5;
  v8 = [_VideosExtrasMainMenuItemCollectionViewCell _createLabelInCell:0];
  v9 = [(VideosExtrasMainTemplateViewController *)self _textElementAtIndex:a4];
  v10 = [v7 objectForKey:*MEMORY[0x1E69DB8E8]];
  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  v12 = [v11 keyWindow];
  v13 = [v12 traitCollection];

  v14 = [v13 preferredContentSizeCategory];
  v15 = 0;
  if (v14 > *MEMORY[0x1E69DDC28])
  {
    v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:?];
  }

  [v8 configureForIKTextElement:v9 fontDescriptor:v7 textStyle:v10 capitalize:0 overrideWithTraitCollection:v15];
  [v8 intrinsicContentSize];
  v17 = v16;
  v18 = [v8 font];
  v19 = [MEMORY[0x1E69DC938] currentDevice];
  v20 = [v19 userInterfaceIdiom];
  v21 = 40.0;
  if (!v20)
  {
    v21 = 32.0;
  }

  [v18 _scaledValueForValue:v21];
  v23 = v22;
  v24 = [*MEMORY[0x1E69DDA98] keyWindow];
  [v24 safeAreaInsets];
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
        v8 = [v7 attributes];
        v9 = [v8 objectForKey:@"type"];
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
  v5 = [(VideosExtrasMainTemplateViewController *)self view];
  [v5 bounds];
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