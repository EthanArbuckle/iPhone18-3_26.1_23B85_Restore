@interface _PXAlbumSectionHeaderLayout
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (PXSimpleIndexPath)sectionIndexPath;
- (_PXAlbumSectionHeaderLayout)init;
- (_PXAlbumSectionHeaderLayout)initWithSpec:(id)a3;
- (_PXAlbumSectionHeaderLayoutInteractionDelegate)interactionDelegate;
- (void)_setAreAllItemsSelected:(BOOL)a3;
- (void)_setWantsBackground:(BOOL)a3;
- (void)_updateWantsBackground;
- (void)didTapHeaderView:(id)a3;
- (void)floatingOffsetDidChange;
- (void)headerView:(id)a3 actionButtonPressed:(id)a4;
- (void)setAllowsFloatingBackground:(BOOL)a3;
- (void)setAlwaysWantsBackground:(BOOL)a3;
- (void)setIsInSelectMode:(BOOL)a3;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)setSpec:(id)a3;
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

- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[32].subitem;
  *&retstr->dataSourceIdentifier = *&self[32].section;
  *&retstr->item = v3;
  return self;
}

- (void)headerView:(id)a3 actionButtonPressed:(id)a4
{
  v23 = a3;
  v7 = a4;
  v8 = [v23 userData];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v8 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:384 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[(id<PXGReusableView>)headerView userData]", v20, v22}];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:384 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[(id<PXGReusableView>)headerView userData]", v20}];
  }

LABEL_3:
  v9 = [v8 actionType];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v14 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = v14;
      v15 = self;
      v16 = 1;
    }

    else
    {
      if (v9 != 4)
      {
        goto LABEL_15;
      }

      v14 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = v14;
      v15 = self;
      v16 = 0;
    }

    [v14 sectionHeader:v15 didToggleFiltersDisabled:v16];
    goto LABEL_14;
  }

  switch(v9)
  {
    case 1:
      v10 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = v10;
      v12 = self;
      v13 = 1;
      goto LABEL_13;
    case 2:
      v10 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
      v11 = v10;
      v12 = self;
      v13 = 0;
LABEL_13:
      [v10 sectionHeader:v12 didToggleSelectedState:v13];
LABEL_14:

      break;
    case 0:
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:387 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_15:
}

- (void)didTapHeaderView:(id)a3
{
  v4 = [(_PXAlbumSectionHeaderLayout *)self interactionDelegate];
  [v4 didTapSectionHeader:self];
}

- (void)_updateWantsBackground
{
  v3 = [(_PXAlbumSectionHeaderLayout *)self viewProvider];
  v4 = [(PXGSingleViewLayout *)self viewSpriteReference];
  v5 = [v3 sectionHeaderLayout:self viewForSpriteReference:v4];

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

- (void)setAllowsFloatingBackground:(BOOL)a3
{
  if (self->_allowsFloatingBackground != a3)
  {
    self->_allowsFloatingBackground = a3;
    [(_PXAlbumSectionHeaderLayout *)self _updateWantsBackground];
  }
}

- (void)setAlwaysWantsBackground:(BOOL)a3
{
  if (self->_alwaysWantsBackground != a3)
  {
    self->_alwaysWantsBackground = a3;
    [(_PXAlbumSectionHeaderLayout *)self _updateWantsBackground];
  }
}

- (void)_setWantsBackground:(BOOL)a3
{
  if (self->_wantsBackground != a3)
  {
    self->_wantsBackground = a3;
    [(PXGSingleViewLayout *)self viewContentDidChange];
  }
}

- (void)_setAreAllItemsSelected:(BOOL)a3
{
  if (self->_areAllItemsSelected != a3)
  {
    self->_areAllItemsSelected = a3;
    [(PXGSingleViewLayout *)self viewContentDidChange];
  }
}

- (void)setSelectionSnapshot:(id)a3
{
  v5 = a3;
  v6 = self->_selectionSnapshot;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(PXSelectionSnapshot *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, a3);
      v9 = [(PXSelectionSnapshot *)v5 dataSource];
      [(_PXAlbumSectionHeaderLayout *)self sectionIndexPath];
      v10 = [off_1E7721768 indexPathSetWithIndexPath:&v14];
      v11 = [v9 itemIndexPathsForSections:v10];

      v12 = [(PXSelectionSnapshot *)v5 selectedIndexPaths];
      v13 = [v12 isSupersetOfSet:v11];

      [(_PXAlbumSectionHeaderLayout *)self _setAreAllItemsSelected:v13];
    }
  }
}

- (void)setIsInSelectMode:(BOOL)a3
{
  if (self->_isInSelectMode != a3)
  {
    self->_isInSelectMode = a3;
    [(PXGSingleViewLayout *)self viewContentDidChange];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXGSingleViewLayout *)self viewContentDidChange];
    v5 = v6;
  }
}

- (_PXAlbumSectionHeaderLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:290 description:{@"%s is not available as initializer", "-[_PXAlbumSectionHeaderLayout init]"}];

  abort();
}

- (_PXAlbumSectionHeaderLayout)initWithSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXAlbumSectionHeaderLayout;
  v6 = [(PXGSingleViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spec, a3);
    v7->_allowsFloatingBackground = 1;
  }

  return v7;
}

@end