@interface _PXAlbumSectionHeaderLayout
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (PXSimpleIndexPath)sectionIndexPath;
- (_PXAlbumSectionHeaderLayout)init;
- (_PXAlbumSectionHeaderLayout)initWithSpec:(id)spec;
- (_PXAlbumSectionHeaderLayoutInteractionDelegate)interactionDelegate;
- (void)_setAreAllItemsSelected:(BOOL)selected;
- (void)_setWantsBackground:(BOOL)background;
- (void)_updateWantsBackground;
- (void)didTapHeaderView:(id)view;
- (void)floatingOffsetDidChange;
- (void)headerView:(id)view actionButtonPressed:(id)pressed;
- (void)setAllowsFloatingBackground:(BOOL)background;
- (void)setAlwaysWantsBackground:(BOOL)background;
- (void)setIsInSelectMode:(BOOL)mode;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setSpec:(id)spec;
@end

@implementation _PXAlbumSectionHeaderLayout

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (_PXAlbumSectionHeaderLayoutInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[32].subitem;
  *&retstr->dataSourceIdentifier = *&self[32].section;
  *&retstr->item = v3;
  return self;
}

- (void)headerView:(id)view actionButtonPressed:(id)pressed
{
  viewCopy = view;
  pressedCopy = pressed;
  userData = [viewCopy userData];
  if (userData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage = [userData px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:384 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[(id<PXGReusableView>)headerView userData]", v20, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:384 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[(id<PXGReusableView>)headerView userData]", v20}];
  }

LABEL_3:
  actionType = [userData actionType];
  if (actionType > 2)
  {
    if (actionType == 3)
    {
      interactionDelegate = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = interactionDelegate;
      selfCopy2 = self;
      v16 = 1;
    }

    else
    {
      if (actionType != 4)
      {
        goto LABEL_15;
      }

      interactionDelegate = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = interactionDelegate;
      selfCopy2 = self;
      v16 = 0;
    }

    [interactionDelegate sectionHeader:selfCopy2 didToggleFiltersDisabled:v16];
    goto LABEL_14;
  }

  switch(actionType)
  {
    case 1:
      interactionDelegate2 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = interactionDelegate2;
      selfCopy4 = self;
      v13 = 1;
      goto LABEL_13;
    case 2:
      interactionDelegate2 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = interactionDelegate2;
      selfCopy4 = self;
      v13 = 0;
LABEL_13:
      [interactionDelegate2 sectionHeader:selfCopy4 didToggleSelectedState:v13];
LABEL_14:

      break;
    case 0:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:387 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_15:
}

- (void)didTapHeaderView:(id)view
{
  interactionDelegate = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
  [interactionDelegate didTapSectionHeader:self];
}

- (void)_updateWantsBackground
{
  viewProvider = [(_PXAlbumSectionHeaderLayout *)self viewProvider];
  viewSpriteReference = [(PXGSingleViewLayout *)self viewSpriteReference];
  v5 = [viewProvider sectionHeaderLayout:self viewForSpriteReference:viewSpriteReference];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([(_PXAlbumSectionHeaderLayout *)self alwaysWantsBackground])
  {
    v7 = 1;
  }

  else
  {
    [(_PXAlbumSectionHeaderLayout *)self floatingOffset];
    v9 = v8;
    [v6 baselineToBottomSpacing];
    v7 = v9 > v10;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53___PXAlbumSectionHeaderLayout__updateWantsBackground__block_invoke;
  v11[3] = &unk_1E7749428;
  v11[4] = self;
  v12 = v7;
  [(_PXAlbumSectionHeaderLayout *)self performChangesWithLocalUpdate:v11];
}

- (void)floatingOffsetDidChange
{
  v3.receiver = self;
  v3.super_class = _PXAlbumSectionHeaderLayout;
  [(_PXAlbumSectionHeaderLayout *)&v3 floatingOffsetDidChange];
  [(_PXAlbumSectionHeaderLayout *)self _updateWantsBackground];
}

- (void)setAllowsFloatingBackground:(BOOL)background
{
  if (self->_allowsFloatingBackground != background)
  {
    self->_allowsFloatingBackground = background;
    [(_PXAlbumSectionHeaderLayout *)self _updateWantsBackground];
  }
}

- (void)setAlwaysWantsBackground:(BOOL)background
{
  if (self->_alwaysWantsBackground != background)
  {
    self->_alwaysWantsBackground = background;
    [(_PXAlbumSectionHeaderLayout *)self _updateWantsBackground];
  }
}

- (void)_setWantsBackground:(BOOL)background
{
  if (self->_wantsBackground != background)
  {
    self->_wantsBackground = background;
    [(PXGSingleViewLayout *)self viewContentDidChange];
  }
}

- (void)_setAreAllItemsSelected:(BOOL)selected
{
  if (self->_areAllItemsSelected != selected)
  {
    self->_areAllItemsSelected = selected;
    [(PXGSingleViewLayout *)self viewContentDidChange];
  }
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6 = self->_selectionSnapshot;
  v7 = v6;
  if (v6 == snapshotCopy)
  {
  }

  else
  {
    v8 = [(PXSelectionSnapshot *)v6 isEqual:snapshotCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, snapshot);
      dataSource = [(PXSelectionSnapshot *)snapshotCopy dataSource];
      [(_PXAlbumSectionHeaderLayout *)self sectionIndexPath];
      v10 = [off_1E7721768 indexPathSetWithIndexPath:&v14];
      v11 = [dataSource itemIndexPathsForSections:v10];

      selectedIndexPaths = [(PXSelectionSnapshot *)snapshotCopy selectedIndexPaths];
      v13 = [selectedIndexPaths isSupersetOfSet:v11];

      [(_PXAlbumSectionHeaderLayout *)self _setAreAllItemsSelected:v13];
    }
  }
}

- (void)setIsInSelectMode:(BOOL)mode
{
  if (self->_isInSelectMode != mode)
  {
    self->_isInSelectMode = mode;
    [(PXGSingleViewLayout *)self viewContentDidChange];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXGSingleViewLayout *)self viewContentDidChange];
    specCopy = v6;
  }
}

- (_PXAlbumSectionHeaderLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:290 description:{@"%s is not available as initializer", "-[_PXAlbumSectionHeaderLayout init]"}];

  abort();
}

- (_PXAlbumSectionHeaderLayout)initWithSpec:(id)spec
{
  specCopy = spec;
  v9.receiver = self;
  v9.super_class = _PXAlbumSectionHeaderLayout;
  v6 = [(PXGSingleViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spec, spec);
    v7->_allowsFloatingBackground = 1;
  }

  return v7;
}

@end