@interface _UIKeyShortcutHUDSearchButton
- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager;
- (_UIKeyShortcutHUDIndexPath)searchButtonIndexPath;
- (_UIKeyShortcutHUDSearchButton)initWithFrame:(CGRect)frame;
- (_UIKeyShortcutHUDSearchButtonDelegate)delegate;
- (_UIKeyShortcutHUDToolbarViewController)toolbarVC;
- (id)_collectionViewLayout;
- (void)_configureCollectionView;
- (void)_setupSubviews;
- (void)performActionForSelectingCellAtIndexPath:(id)path;
- (void)setSearching:(BOOL)searching;
@end

@implementation _UIKeyShortcutHUDSearchButton

- (_UIKeyShortcutHUDSearchButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDSearchButton;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIKeyShortcutHUDSearchButton *)v3 _setupSubviews];
    [(_UIKeyShortcutHUDSearchButton *)v4 _configureCollectionView];
  }

  return v4;
}

- (void)_setupSubviews
{
  v3 = [UICollectionView alloc];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _collectionViewLayout = [(_UIKeyShortcutHUDSearchButton *)self _collectionViewLayout];
  v13 = [(UICollectionView *)v3 initWithFrame:_collectionViewLayout collectionViewLayout:v5, v7, v9, v11];
  collectionView = self->_collectionView;
  self->_collectionView = v13;

  [(UIView *)self->_collectionView setAutoresizingMask:18];
  v15 = self->_collectionView;

  [(UIView *)self addSubview:v15];
}

- (void)_configureCollectionView
{
  objc_initWeak(&location, self);
  v3 = objc_opt_self();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57___UIKeyShortcutHUDSearchButton__configureCollectionView__block_invoke;
  v13[3] = &unk_1E71261E8;
  objc_copyWeak(&v14, &location);
  v4 = [UICollectionViewCellRegistration registrationWithCellClass:v3 configurationHandler:v13];

  v5 = [UICollectionViewDiffableDataSource alloc];
  collectionView = self->_collectionView;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57___UIKeyShortcutHUDSearchButton__configureCollectionView__block_invoke_3;
  v11[3] = &unk_1E7109670;
  v7 = v4;
  v12 = v7;
  v8 = [(UICollectionViewDiffableDataSource *)v5 initWithCollectionView:collectionView cellProvider:v11];
  dataSource = self->_dataSource;
  self->_dataSource = v8;

  objc_storeStrong(&self->_searchCellRegistration, v4);
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  [snapshot appendSectionsWithIdentifiers:&unk_1EFE2DBA0];
  [snapshot appendItemsWithIdentifiers:&unk_1EFE2DBB8];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)_collectionViewLayout
{
  v2 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v3 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v4 = [off_1E70ECB40 sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [off_1E70ECB30 itemWithLayoutSize:v4];
  v6 = [off_1E70ECB18 fractionalWidthDimension:1.0];
  v7 = [off_1E70ECB18 fractionalHeightDimension:1.0];
  v8 = [off_1E70ECB40 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [off_1E70ECB28 horizontalGroupWithLayoutSize:v8 subitem:v5 count:1];
  v10 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v10 toolbarContentInset];
  v12 = v11;

  [v9 setContentInsets:{v12, v12, v12, 0.0}];
  v13 = [off_1E70ECB38 sectionWithGroup:v9];
  v14 = [[UICollectionViewCompositionalLayout alloc] initWithSection:v13];

  return v14;
}

- (void)performActionForSelectingCellAtIndexPath:(id)path
{
  delegate = [(_UIKeyShortcutHUDSearchButton *)self delegate];
  [delegate searchButtonDidPress:self];
}

- (_UIKeyShortcutHUDIndexPath)searchButtonIndexPath
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4 = [_UIKeyShortcutHUDIndexPath hudIndexPathWithClient:self indexPath:v3];

  return v4;
}

- (void)setSearching:(BOOL)searching
{
  if (self->_searching != searching)
  {
    searchingCopy = searching;
    self->_searching = searching;
    collectionView = self->_collectionView;
    searchButtonIndexPath = [(_UIKeyShortcutHUDSearchButton *)self searchButtonIndexPath];
    indexPath = [searchButtonIndexPath indexPath];
    v11 = [(UICollectionView *)collectionView cellForItemAtIndexPath:indexPath];

    v8 = +[UIKeyShortcutHUDMetrics currentMetrics];
    v9 = v8;
    if (searchingCopy)
    {
      [v8 searchHUDTextColor];
    }

    else
    {
      [v8 standardHUDTextColor];
    }
    v10 = ;
    [v11 setSearchIconColor:v10];
  }
}

- (_UIKeyShortcutHUDCollectionViewManager)collectionViewManager
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionViewManager);

  return WeakRetained;
}

- (_UIKeyShortcutHUDSearchButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIKeyShortcutHUDToolbarViewController)toolbarVC
{
  WeakRetained = objc_loadWeakRetained(&self->_toolbarVC);

  return WeakRetained;
}

@end