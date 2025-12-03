@interface _UIHorizontalIndexTitleBar
- (BOOL)_isViewEntryCell:(id)cell;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (NSDirectionalEdgeInsets)_combinedSectionInset;
- (UIEdgeInsets)_parentContentInset;
- (UIEdgeInsets)sectionInset;
- (_UIHorizontalIndexTitleBar)init;
- (_UIHorizontalIndexTitleBarCell)focusedCell;
- (_UIHorizontalIndexTitleBarDelegate)delegate;
- (id)_existingCellForSelectedIndexPath;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)preferredFocusEnvironments;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_cancelDelayedFocusAction;
- (void)_flipIfRightToLeft;
- (void)_selectEntryForTitleIndex:(int64_t)index;
- (void)_selectFocusedCell;
- (void)_sendDelayedFocusActionIfNecessary;
- (void)_setParentContentInset:(UIEdgeInsets)inset;
- (void)_updateWithEntries:(id)entries;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)commonInit;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setEntries:(id)entries;
- (void)setSectionInset:(UIEdgeInsets)inset;
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
  layout = [(_UIHorizontalIndexTitleBar *)self layout];
  v11 = [(UICollectionView *)v9 initWithFrame:layout collectionViewLayout:0.0, 0.0, v6, v8];
  [(_UIHorizontalIndexTitleBar *)self setCollectionView:v11];

  collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"_UIHorizontalIndexTitleBarCell"];

  collectionView2 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView2 setDataSource:self];

  collectionView3 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView3 setDelegate:self];

  collectionView4 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView4 setAllowsSelection:1];

  collectionView5 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView5 _setSafeAreaInsetsFrozen:1];

  collectionView6 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView6 setClipsToBounds:0];

  collectionView7 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [(UIView *)self addSubview:collectionView7];

  collectionView8 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView8 setAutoresizingMask:18];

  collectionView9 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView9 setTranslatesAutoresizingMaskIntoConstraints:1];

  v21 = objc_alloc_init(UIFocusGuide);
  [(_UIHorizontalIndexTitleBar *)self setHorizontalIndexTitleBarFocusGuide:v21];

  collectionView10 = [(_UIHorizontalIndexTitleBar *)self collectionView];
  v51[0] = collectionView10;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  horizontalIndexTitleBarFocusGuide = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  [horizontalIndexTitleBarFocusGuide setPreferredFocusEnvironments:v23];

  horizontalIndexTitleBarFocusGuide2 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  [(UIView *)self addLayoutGuide:horizontalIndexTitleBarFocusGuide2];

  v39 = MEMORY[0x1E69977A0];
  leftAnchor = [(UIView *)self leftAnchor];
  horizontalIndexTitleBarFocusGuide3 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  leftAnchor2 = [horizontalIndexTitleBarFocusGuide3 leftAnchor];
  v43 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v50[0] = v43;
  topAnchor = [(UIView *)self topAnchor];
  horizontalIndexTitleBarFocusGuide4 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  topAnchor2 = [horizontalIndexTitleBarFocusGuide4 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:1.0];
  v50[1] = v38;
  rightAnchor = [(UIView *)self rightAnchor];
  horizontalIndexTitleBarFocusGuide5 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  rightAnchor2 = [horizontalIndexTitleBarFocusGuide5 rightAnchor];
  v29 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v50[2] = v29;
  bottomAnchor = [(UIView *)self bottomAnchor];
  horizontalIndexTitleBarFocusGuide6 = [(_UIHorizontalIndexTitleBar *)self horizontalIndexTitleBarFocusGuide];
  bottomAnchor2 = [horizontalIndexTitleBarFocusGuide6 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-1.0];
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
  traitCollection = [(UIView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if ((layoutDirection == 1) != [(UIView *)self _flipsHorizontalAxis])
  {

    [(UIView *)self _setFlipsHorizontalAxis:layoutDirection == 1];
  }
}

- (void)_updateWithEntries:(id)entries
{
  entriesCopy = entries;
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntry:0];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntryIndexPath:0];
  [(_UIHorizontalIndexTitleBar *)self setEntries:entriesCopy];

  collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
  [collectionView reloadData];
}

- (void)_selectEntryForTitleIndex:(int64_t)index
{
  entries = [(_UIHorizontalIndexTitleBar *)self entries];
  v6 = [entries objectAtIndexedSubscript:index];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntry:v6];

  v7 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntryIndexPath:v7];

  collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (!firstObject || (-[_UIHorizontalIndexTitleBar selectedEntryIndexPath](self, "selectedEntryIndexPath"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [firstObject isEqual:v10], v10, (v11 & 1) == 0))
  {
    collectionView2 = [(_UIHorizontalIndexTitleBar *)self collectionView];
    selectedEntryIndexPath = [(_UIHorizontalIndexTitleBar *)self selectedEntryIndexPath];
    [collectionView2 selectItemAtIndexPath:selectedEntryIndexPath animated:1 scrollPosition:16];
  }
}

- (BOOL)_isViewEntryCell:(id)cell
{
  superview = [cell superview];
  collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
  LOBYTE(self) = superview == collectionView;

  return self;
}

- (void)setSectionInset:(UIEdgeInsets)inset
{
  self->_sectionInset = inset;
  layout = [(_UIHorizontalIndexTitleBar *)self layout];
  [layout invalidateLayout];
}

- (void)_setParentContentInset:(UIEdgeInsets)inset
{
  self->_parentContentInset = inset;
  layout = [(_UIHorizontalIndexTitleBar *)self layout];
  [layout invalidateLayout];
}

- (void)_selectFocusedCell
{
  focusedCell = [(_UIHorizontalIndexTitleBar *)self focusedCell];
  v4 = focusedCell;
  if (focusedCell)
  {
    v10 = focusedCell;
    isSelected = [focusedCell isSelected];
    v4 = v10;
    if ((isSelected & 1) == 0)
    {
      [(_UIHorizontalIndexTitleBar *)self _cancelDelayedFocusAction];
      collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
      v7 = [collectionView indexPathForCell:v10];

      if (v7)
      {
        collectionView2 = [(_UIHorizontalIndexTitleBar *)self collectionView];
        [collectionView2 selectItemAtIndexPath:v7 animated:1 scrollPosition:0];

        collectionView3 = [(_UIHorizontalIndexTitleBar *)self collectionView];
        [(_UIHorizontalIndexTitleBar *)self collectionView:collectionView3 didSelectItemAtIndexPath:v7];
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
  traitCollection = [(UIView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v14;
  }

  if (layoutDirection == 1)
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
  selectedEntryIndexPath = [(_UIHorizontalIndexTitleBar *)self selectedEntryIndexPath];

  if (selectedEntryIndexPath)
  {
    collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
    selectedEntryIndexPath2 = [(_UIHorizontalIndexTitleBar *)self selectedEntryIndexPath];
    v6 = [collectionView cellForItemAtIndexPath:selectedEntryIndexPath2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEntries:(id)entries
{
  entriesCopy = entries;
  v7 = entriesCopy;
  if (entriesCopy)
  {
    v5 = entriesCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  entries = self->_entries;
  self->_entries = v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  nextFocusedView = [contextCopy nextFocusedView];
  if ([(_UIHorizontalIndexTitleBar *)self _isViewEntryCell:nextFocusedView])
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = _UIHorizontalIndexTitleBar;
    v8 = [(UIView *)&v10 shouldUpdateFocusInContext:contextCopy];
    goto LABEL_6;
  }

  focusedCell = [(_UIHorizontalIndexTitleBar *)self focusedCell];
  _existingCellForSelectedIndexPath = [(_UIHorizontalIndexTitleBar *)self _existingCellForSelectedIndexPath];

  if (focusedCell == _existingCellForSelectedIndexPath)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = _UIHorizontalIndexTitleBar;
  [(UIView *)&v11 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  superview = [nextFocusedView superview];
  collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];

  if (superview == collectionView)
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    [(_UIHorizontalIndexTitleBar *)self setFocusedCell:nextFocusedItem];
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
  collectionView = [(_UIHorizontalIndexTitleBar *)self collectionView];
  v5[0] = collectionView;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(_UIHorizontalIndexTitleBar *)self entries:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  entries = [(_UIHorizontalIndexTitleBar *)self entries];
  v9 = [entries objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"_UIHorizontalIndexTitleBarCell" forIndexPath:pathCopy];

  [v10 updateForEntry:v9];

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  entries = [(_UIHorizontalIndexTitleBar *)self entries];
  v8 = [entries objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  [(_UIHorizontalIndexTitleBar *)self setSelectedEntry:v8];
  [(_UIHorizontalIndexTitleBar *)self setSelectedEntryIndexPath:pathCopy];

  delegate = [(_UIHorizontalIndexTitleBar *)self delegate];
  [delegate horizontalIndexBar:self selectedEntry:v8];
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