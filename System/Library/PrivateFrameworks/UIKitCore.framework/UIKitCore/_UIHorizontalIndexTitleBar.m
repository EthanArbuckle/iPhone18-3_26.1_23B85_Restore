@interface _UIHorizontalIndexTitleBar
- (BOOL)_isViewEntryCell:(id)a3;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (NSDirectionalEdgeInsets)_combinedSectionInset;
- (UIEdgeInsets)_parentContentInset;
- (UIEdgeInsets)sectionInset;
- (_UIHorizontalIndexTitleBar)init;
- (_UIHorizontalIndexTitleBarCell)focusedCell;
- (_UIHorizontalIndexTitleBarDelegate)delegate;
- (id)_existingCellForSelectedIndexPath;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)preferredFocusEnvironments;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cancelDelayedFocusAction;
- (void)_flipIfRightToLeft;
- (void)_selectEntryForTitleIndex:(int64_t)a3;
- (void)_selectFocusedCell;
- (void)_sendDelayedFocusActionIfNecessary;
- (void)_setParentContentInset:(UIEdgeInsets)a3;
- (void)_updateWithEntries:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)commonInit;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setEntries:(id)a3;
- (void)setSectionInset:(UIEdgeInsets)a3;
@end

@implementation _UIHorizontalIndexTitleBar

- (_UIHorizontalIndexTitleBar)init
{
  v5.receiver = self;
  v5.super_class = _UIHorizontalIndexTitleBar;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIHorizontalIndexTitleBar *)v2 commonInit];
  }

  return v3;
}

- (void)commonInit
{
  v51[1] = *MEMORY[0x1E69E9840];
  [(_UIHorizontalIndexTitleBar *)self setEntries:MEMORY[0x1E695E0F0]];
  v47 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  [(UICollectionViewCompositionalLayoutConfiguration *)v47 setScrollDirection:1];
  v3 = [UICollectionViewCompositionalLayout alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __40___UIHorizontalIndexTitleBar_commonInit__block_invoke;
  v48[3] = &unk_1E71061B8;
  v48[4] = self;
  v4 = [(UICollectionViewCompositionalLayout *)v3 initWithSectionProvider:v48 configuration:v47];
  [(_UIHorizontalIndexTitleBar *)self setLayout:v4];

  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v9 = [UICollectionView alloc];
  v10 = [(_UIHorizontalIndexTitleBar *)self layout];
  v11 = [(UICollectionView *)v9 initWithFrame:v10 collectionViewLayout:0.0, 0.0, v6, v8];
  [(_UIHorizontalIndexTitleBar *)self setCollectionView:v11];

  v12 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v12 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_UIHorizontalIndexTitleBarCell"];

  v13 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v13 setDataSource:self];

  v14 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v14 setDelegate:self];

  v15 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v15 setAllowsSelection:1];

  v16 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v16 _setSafeAreaInsetsFrozen:1];

  v17 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v17 setClipsToBounds:0];

  v18 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [(UIView *)self addSubview:v18];

  v19 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v19 setAutoresizingMask:18];

  v20 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:1];

  v21 = objc_alloc_init(UIFocusGuide);
  [(_UIHorizontalIndexTitleBar *)self setHorizontalIndexTitleBarFocusGuide:v21];

  v22 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  v51[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v24 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  [v24 setPreferredFocusEnvironments:v23];

  v25 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  [(UIView *)self addLayoutGuide:v25];

  v39 = MEMORY[0x1E69977A0];
  v45 = [(UIView *)self leftAnchor];
  v46 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  v44 = [v46 leftAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v50[0] = v43;
  v41 = [(UIView *)self topAnchor];
  v42 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  v40 = [v42 topAnchor];
  v38 = [v41 constraintEqualToAnchor:v40 constant:1.0];
  v50[1] = v38;
  v26 = [(UIView *)self rightAnchor];
  v27 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  v28 = [v27 rightAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v50[2] = v29;
  v30 = [(UIView *)self bottomAnchor];
  v31 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:-1.0];
  v50[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
  [v39 activateConstraints:v34];

  [(_UIHorizontalIndexTitleBar *)self _flipIfRightToLeft];
  v35 = objc_opt_self();
  v49 = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v37 = [(UIView *)self registerForTraitChanges:v36 withAction:sel__flipIfRightToLeft];
}

- (void)_flipIfRightToLeft
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 layoutDirection];

  if ((v4 == 1) != [(UIView *)self _flipsHorizontalAxis])
  {

    [(UIView *)self _setFlipsHorizontalAxis:v4 == 1];
  }
}

- (void)_updateWithEntries:(id)a3
{
  v4 = a3;
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntry:0];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntryIndexPath:0];
  [(_UIHorizontalIndexTitleBar *)self setEntries:v4];

  v5 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [v5 reloadData];
}

- (void)_selectEntryForTitleIndex:(int64_t)a3
{
  v5 = [(_UIHorizontalIndexTitleBar *)self entries];
  v6 = [v5 objectAtIndexedSubscript:a3];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntry:v6];

  v7 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntryIndexPath:v7];

  v8 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  v9 = [v8 indexPathsForSelectedItems];
  v14 = [v9 firstObject];

  if (!v14 || (-[_UIHorizontalIndexTitleBar selectedEntryIndexPath](self, "selectedEntryIndexPath"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v14 isEqual:v10], v10, (v11 & 1) == 0))
  {
    v12 = [(_UIHorizontalIndexTitleBar *)self collectionView];
    v13 = [(_UIHorizontalIndexTitleBar *)self selectedEntryIndexPath];
    [v12 selectItemAtIndexPath:v13 animated:1 scrollPosition:16];
  }
}

- (BOOL)_isViewEntryCell:(id)a3
{
  v4 = [a3 superview];
  v5 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  LOBYTE(self) = v4 == v5;

  return self;
}

- (void)setSectionInset:(UIEdgeInsets)a3
{
  self->_sectionInset = a3;
  v3 = [(_UIHorizontalIndexTitleBar *)self layout];
  [v3 invalidateLayout];
}

- (void)_setParentContentInset:(UIEdgeInsets)a3
{
  self->_parentContentInset = a3;
  v3 = [(_UIHorizontalIndexTitleBar *)self layout];
  [v3 invalidateLayout];
}

- (void)_selectFocusedCell
{
  v3 = [(_UIHorizontalIndexTitleBar *)self focusedCell];
  v4 = v3;
  if (v3)
  {
    v10 = v3;
    v5 = [v3 isSelected];
    v4 = v10;
    if ((v5 & 1) == 0)
    {
      [(_UIHorizontalIndexTitleBar *)self _cancelDelayedFocusAction];
      v6 = [(_UIHorizontalIndexTitleBar *)self collectionView];
      v7 = [v6 indexPathForCell:v10];

      if (v7)
      {
        v8 = [(_UIHorizontalIndexTitleBar *)self collectionView];
        [v8 selectItemAtIndexPath:v7 animated:1 scrollPosition:0];

        v9 = [(_UIHorizontalIndexTitleBar *)self collectionView];
        [(_UIHorizontalIndexTitleBar *)self collectionView:v9 didSelectItemAtIndexPath:v7];
      }

      v4 = v10;
    }
  }
}

- (void)_sendDelayedFocusActionIfNecessary
{
  [(_UIHorizontalIndexTitleBar *)self _cancelDelayedFocusAction];

  [(_UIHorizontalIndexTitleBar *)self performSelector:sel__selectFocusedCell withObject:0 afterDelay:0.31];
}

- (void)_cancelDelayedFocusAction
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__selectFocusedCell object:0];
}

- (NSDirectionalEdgeInsets)_combinedSectionInset
{
  [(_UIHorizontalIndexTitleBar *)self sectionInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIHorizontalIndexTitleBar *)self _parentContentInset];
  v12 = UIEdgeInsetsAdd(10, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIView *)self traitCollection];
  v20 = [v19 layoutDirection];

  if (v20 == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v14;
  }

  if (v20 == 1)
  {
    v22 = v14;
  }

  else
  {
    v22 = v18;
  }

  v23 = v12;
  v24 = v16;
  result.trailing = v22;
  result.bottom = v24;
  result.leading = v21;
  result.top = v23;
  return result;
}

- (id)_existingCellForSelectedIndexPath
{
  v3 = [(_UIHorizontalIndexTitleBar *)self selectedEntryIndexPath];

  if (v3)
  {
    v4 = [(_UIHorizontalIndexTitleBar *)self collectionView];
    v5 = [(_UIHorizontalIndexTitleBar *)self selectedEntryIndexPath];
    v6 = [v4 cellForItemAtIndexPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEntries:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  entries = self->_entries;
  self->_entries = v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 nextFocusedView];
  if ([(_UIHorizontalIndexTitleBar *)self _isViewEntryCell:v5])
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = _UIHorizontalIndexTitleBar;
    v8 = [(UIView *)&v10 shouldUpdateFocusInContext:v4];
    goto LABEL_6;
  }

  v6 = [(_UIHorizontalIndexTitleBar *)self focusedCell];
  v7 = [(_UIHorizontalIndexTitleBar *)self _existingCellForSelectedIndexPath];

  if (v6 == v7)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UIHorizontalIndexTitleBar;
  [(UIView *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  v8 = [v7 superview];
  v9 = [(_UIHorizontalIndexTitleBar *)self collectionView];

  if (v8 == v9)
  {
    v10 = [v6 nextFocusedItem];
    [(_UIHorizontalIndexTitleBar *)self setFocusedCell:v10];
  }

  else
  {
    [(_UIHorizontalIndexTitleBar *)self setFocusedCell:0];
  }

  [(_UIHorizontalIndexTitleBar *)self _sendDelayedFocusActionIfNecessary];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(_UIHorizontalIndexTitleBar *)self entries:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIHorizontalIndexTitleBar *)self entries];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v10 = [v7 dequeueReusableCellWithReuseIdentifier:@"_UIHorizontalIndexTitleBarCell" forIndexPath:v6];

  [v10 updateForEntry:v9];

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIHorizontalIndexTitleBar *)self entries];
  v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "item")}];

  [(_UIHorizontalIndexTitleBar *)self setSelectedEntry:v8];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntryIndexPath:v5];

  v7 = [(_UIHorizontalIndexTitleBar *)self delegate];
  [v7 horizontalIndexBar:self selectedEntry:v8];
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_UIHorizontalIndexTitleBarCell)focusedCell
{
  WeakRetained = objc_loadWeakRetained(&self->_focusedCell);

  return WeakRetained;
}

- (_UIHorizontalIndexTitleBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)_parentContentInset
{
  top = self->_parentContentInset.top;
  left = self->_parentContentInset.left;
  bottom = self->_parentContentInset.bottom;
  right = self->_parentContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end