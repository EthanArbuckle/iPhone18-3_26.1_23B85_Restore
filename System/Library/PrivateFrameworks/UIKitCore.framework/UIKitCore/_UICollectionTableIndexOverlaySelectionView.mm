@interface _UICollectionTableIndexOverlaySelectionView
- (_UICollectionTableIndexOverlaySelectionView)initWithHost:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cellTapped:(id)a3;
- (void)_doneTapped;
- (void)layoutSubviews;
@end

@implementation _UICollectionTableIndexOverlaySelectionView

- (void)layoutSubviews
{
  collectionView = self->_collectionView;
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIView *)self safeAreaInsets];
  [(UICollectionView *)collectionView setFrame:v5 + v15, v7 + v12, v9 - (v15 + v13), v11 - (v12 + v14)];
  [(UIView *)self->_collectionView bounds];
  v17 = v16;
  v18 = [(_UICollectionTableIndexOverlaySelectionView *)self collectionView:self->_collectionView numberOfItemsInSection:0];
  v19 = v18;
  v20 = 3.0;
  v21 = 3.0;
  if (v18 >= 9)
  {
    v22 = (v18 + 1);
    v23 = 2.5;
    v24 = 3.0;
    do
    {
      v24 = v24 + 1.0;
      v20 = ceil(v24);
      if (v21 * v20 < v22)
      {
        v23 = v23 + 0.833333333;
      }

      v21 = ceil(v23);
    }

    while (v20 * v21 < v22);
  }

  UIFloorToViewScale(self);
  v26 = v25;
  UIFloorToViewScale(self);
  v28 = v27;
  [(UICollectionViewFlowLayout *)self->_flowLayout setItemSize:v26, v27];
  v29 = v26 * (v19 % v20);
  v30 = [(UIView *)self->_collectionView _shouldReverseLayoutDirection];
  v31 = v17 - (v17 - v29) - v29;
  if (!v30)
  {
    v31 = v26 * (v19 % v20);
  }

  [(_UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout *)self->_flowLayout setFrameForDoneButton:v31, (v21 + -1.0) * v28, v17 - v29, v28];
  v35 = [[_UICollectionTableIndexOverlaySelectionViewCollectionViewCell alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v26, v28];
  [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)v35 setText:@"A"];
  [(UIView *)v35 layoutBelowIfNeeded];
  v32 = [(_UICollectionTableIndexOverlaySelectionViewCollectionViewCell *)v35 label];
  [v32 bounds];
  v34 = (v26 - v33) * 0.5;

  [(_UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout *)self->_flowLayout setRightMarginForDoneButton:v34];
}

- (_UICollectionTableIndexOverlaySelectionView)initWithHost:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UICollectionTableIndexOverlaySelectionView;
  v5 = [(UIView *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(_UICollectionTableIndexOverlaySelectionViewCollectionViewFlowLayout);
    flowLayout = v5->_flowLayout;
    v5->_flowLayout = v6;

    [(UICollectionViewFlowLayout *)v5->_flowLayout setMinimumLineSpacing:0.0];
    [(UICollectionViewFlowLayout *)v5->_flowLayout setMinimumInteritemSpacing:0.0];
    v8 = [UICollectionView alloc];
    v9 = [(UICollectionView *)v8 initWithFrame:v5->_flowLayout collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    collectionView = v5->_collectionView;
    v5->_collectionView = v9;

    [(UICollectionView *)v5->_collectionView setDelegate:v5];
    [(UICollectionView *)v5->_collectionView setDataSource:v5];
    [(UICollectionView *)v5->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"IndexOverlayCell"];
    [(UICollectionView *)v5->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"ExternalDoneKind" withReuseIdentifier:@"ExternalDoneReuse"];
    [(UICollectionView *)v5->_collectionView setBackgroundColor:0];
    [(UIView *)v5 addSubview:v5->_collectionView];
    v11 = +[UIColor tableBackgroundColor];
    [(UIView *)v5 setBackgroundColor:v11];

    objc_storeWeak(&v5->_host, v4);
  }

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v5 = [WeakRetained _dataSourceSectionIndexTitles];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"IndexOverlayCell" forIndexPath:v6];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v9 = [WeakRetained _dataSourceSectionIndexTitles];

  v10 = [v6 item];
  if (v10 >= [v9 count])
  {
    v11 = &stru_1EFB14550;
  }

  else
  {
    v11 = [v9 objectAtIndex:v10];
  }

  [v7 setText:v11];
  v12 = [v7 button];
  [v12 addTarget:self action:sel__cellTapped_ forControlEvents:64];

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v6 = [a3 dequeueReusableSupplementaryViewOfKind:@"ExternalDoneKind" withReuseIdentifier:@"ExternalDoneReuse" forIndexPath:a5];
  v7 = _UINSLocalizedStringWithDefaultValue(@"Done", @"Done");
  [v6 setText:v7];

  [v6 setTextAlignment:2];
  v8 = [v6 button];
  [v8 addTarget:self action:sel__doneTapped forControlEvents:64];

  return v6;
}

- (void)_cellTapped:(id)a3
{
  v9 = [a3 superview];
  v4 = [(UICollectionView *)self->_collectionView indexPathForCell:v9];
  v5 = [v4 item];

  v6 = [v9 text];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  [WeakRetained _sectionIndexChangedToIndex:v5 title:v6];

  v8 = objc_loadWeakRetained(&self->_host);
  [v8 _transitionIndexOverlaySelectionViewToVisible:0];
}

- (void)_doneTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  [WeakRetained _transitionIndexOverlaySelectionViewToVisible:0];
}

@end