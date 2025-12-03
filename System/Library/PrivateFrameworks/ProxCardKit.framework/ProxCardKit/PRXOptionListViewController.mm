@interface PRXOptionListViewController
- (NSArray)selectedOptions;
- (PRXOptionListViewController)initWithContentView:(id)view;
- (PRXOptionListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_createCollectionViewLayout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setOptions:(id)options;
- (void)setSelectedOptions:(id)options;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation PRXOptionListViewController

- (PRXOptionListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [PRXScrollableContentView alloc];
  v6 = objc_alloc(MEMORY[0x277D752A0]);
  v7 = objc_alloc_init(MEMORY[0x277D752F0]);
  v8 = [v6 initWithFrame:v7 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v9 = [(PRXScrollableContentView *)v5 initWithCardStyle:0 scrollView:v8];
  v10 = [(PRXOptionListViewController *)self initWithContentView:v9];

  return v10;
}

- (PRXOptionListViewController)initWithContentView:(id)view
{
  v8.receiver = self;
  v8.super_class = PRXOptionListViewController;
  v3 = [(PRXCardContentViewController *)&v8 initWithContentView:view];
  v4 = v3;
  if (v3)
  {
    options = v3->_options;
    v3->_options = MEMORY[0x277CBEBF8];

    v6 = v4;
  }

  return v4;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PRXOptionListViewController;
  [(PRXCardContentViewController *)&v17 viewDidLoad];
  contentView = [(PRXCardContentViewController *)self contentView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([contentView scrollView], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@ requires a PRXScrollableContentView with a UICollectionView", v13];
    v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  scrollView = [contentView scrollView];
  collectionView = self->_collectionView;
  self->_collectionView = scrollView;

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PRXOptionCell"];
  [(PRXOptionListViewController *)self _createCollectionViewLayout];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = PRXOptionListViewController;
  [(PRXCardContentViewController *)&v2 viewDidLayoutSubviews];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = PRXOptionListViewController;
  [(PRXOptionListViewController *)&v3 viewLayoutMarginsDidChange];
  [(PRXOptionListViewController *)self _createCollectionViewLayout];
}

- (void)_createCollectionViewLayout
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFB870];
  v4 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v5 = [MEMORY[0x277CFB840] estimatedDimension:50.0];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  v7 = [MEMORY[0x277CFB860] itemWithLayoutSize:v6];
  v8 = MEMORY[0x277CFB850];
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v8 verticalGroupWithLayoutSize:v6 subitems:v9];

  v11 = [MEMORY[0x277CFB868] sectionWithGroup:v10];
  [v11 setInterGroupSpacing:8.0];
  contentView = [(PRXCardContentViewController *)self contentView];
  [contentView directionalLayoutMargins];
  v14 = v13;
  contentView2 = [(PRXCardContentViewController *)self contentView];
  [contentView2 directionalLayoutMargins];
  [v11 setContentInsets:{0.0, v14, 0.0}];

  v16 = [objc_alloc(MEMORY[0x277D752B8]) initWithSection:v11];
  [(UICollectionView *)self->_collectionView setCollectionViewLayout:v16];
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  if (![(NSArray *)self->_options isEqualToArray:?])
  {
    selectedOptions = [(PRXOptionListViewController *)self selectedOptions];
    v5 = [optionsCopy copy];
    options = self->_options;
    self->_options = v5;

    [(UICollectionView *)self->_collectionView reloadData];
    [(PRXOptionListViewController *)self setSelectedOptions:selectedOptions];
  }
}

- (NSArray)selectedOptions
{
  v16 = *MEMORY[0x277D85DE8];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "item")}];
      }

      v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(NSArray *)self->_options objectsAtIndexes:indexSet];

  return v9;
}

- (void)setSelectedOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy count] || (-[UICollectionView indexPathsForSelectedItems](self->_collectionView, "indexPathsForSelectedItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:optionsCopy];
    collectionView = self->_collectionView;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__PRXOptionListViewController_setSelectedOptions___block_invoke;
    v10[3] = &unk_279ACC2B8;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    [(UICollectionView *)collectionView performBatchUpdates:v10 completion:0];
  }
}

void __50__PRXOptionListViewController_setSelectedOptions___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1104);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PRXOptionListViewController_setSelectedOptions___block_invoke_2;
  v5[3] = &unk_279ACC420;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __50__PRXOptionListViewController_setSelectedOptions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCAA70];
  v6 = a2;
  v8 = [v5 indexPathForItem:a3 inSection:0];
  LODWORD(a3) = [*(a1 + 32) containsObject:v6];

  v7 = *(*(a1 + 40) + 1128);
  if (a3)
  {
    [v7 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
  }

  else
  {
    [v7 deselectItemAtIndexPath:v8 animated:0];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"PRXOptionCell" forIndexPath:pathCopy];
  options = self->_options;
  item = [pathCopy item];

  v10 = [(NSArray *)options objectAtIndexedSubscript:item];
  formatterBlock = self->_formatterBlock;
  if (formatterBlock)
  {
    formatterBlock[2](formatterBlock, v10);
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v10];
  }
  v12 = ;
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  if (self->_selectionHandler)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](self->_options, "objectAtIndexedSubscript:", [path item]);
    (*(self->_selectionHandler + 2))();
  }
}

@end