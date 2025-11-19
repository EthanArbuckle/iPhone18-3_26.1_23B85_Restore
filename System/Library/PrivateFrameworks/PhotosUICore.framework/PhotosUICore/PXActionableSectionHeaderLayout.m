@interface PXActionableSectionHeaderLayout
- (PXActionableSectionHeaderLayout)init;
- (PXActionableSectionHeaderLayout)initWithSpec:(id)a3;
- (PXActionableSectionHeaderLayoutInteractionDelegate)interactionDelegate;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (PXSimpleIndexPath)sectionIndexPath;
- (id)axGroup;
- (void)_setAreAllItemsSelected:(BOOL)a3;
- (void)_setWantsBackground:(BOOL)a3;
- (void)floatingOffsetDidChange;
- (void)headerViewDidPressActionButton:(id)a3 inHeaderView:(id)a4;
- (void)scrollSpeedRegimeDidChange;
- (void)setIsInSelectMode:(BOOL)a3;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)setSpec:(id)a3;
@end

@implementation PXActionableSectionHeaderLayout

- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);

  return WeakRetained;
}

- (PXActionableSectionHeaderLayoutInteractionDelegate)interactionDelegate
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

- (id)axGroup
{
  v3 = objc_alloc_init(off_1E7721598);
  v4 = [(PXActionableSectionHeaderLayout *)self accessibilityElements];
  [v3 setAccessibilityElements:v4];

  return v3;
}

- (void)headerViewDidPressActionButton:(id)a3 inHeaderView:(id)a4
{
  v7 = a3;
  v14 = [a4 userData];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v14 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:493 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[(id<PXGReusableView>)headerView userData]", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:493 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[(id<PXGReusableView>)headerView userData]", v11}];
  }

LABEL_3:
  v8 = [(PXActionableSectionHeaderLayout *)self interactionDelegate];
  [v8 sectionHeader:self didPressButtonForActionType:objc_msgSend(v14 sender:{"actionType"), v7}];
}

- (void)floatingOffsetDidChange
{
  v13.receiver = self;
  v13.super_class = PXActionableSectionHeaderLayout;
  [(PXActionableSectionHeaderLayout *)&v13 floatingOffsetDidChange];
  v3 = [(PXActionableSectionHeaderLayout *)self viewProvider];
  v4 = [(PXGSingleViewLayout *)self viewSpriteReference];
  v5 = [v3 sectionHeaderLayout:self viewForSpriteReference:v4];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    [(PXActionableSectionHeaderLayout *)self floatingOffset];
    v8 = v7;
    [v6 baselineToBottomSpacing];
    v10 = v8 > v9 || [(PXActionableSectionHeaderLayout *)self alwaysWantsBackground];
  }

  else
  {
    v10 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PXActionableSectionHeaderLayout_floatingOffsetDidChange__block_invoke;
  v11[3] = &unk_1E7749428;
  v11[4] = self;
  v12 = v10;
  [(PXActionableSectionHeaderLayout *)self performChangesWithLocalUpdate:v11];
}

- (void)scrollSpeedRegimeDidChange
{
  v3.receiver = self;
  v3.super_class = PXActionableSectionHeaderLayout;
  [(PXActionableSectionHeaderLayout *)&v3 scrollSpeedRegimeDidChange];
  [(PXGSingleViewLayout *)self viewContentDidChange];
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
      [(PXActionableSectionHeaderLayout *)self sectionIndexPath];
      v10 = [off_1E7721768 indexPathSetWithIndexPath:&v14];
      v11 = [v9 itemIndexPathsForSections:v10];

      v12 = [(PXSelectionSnapshot *)v5 selectedIndexPaths];
      v13 = [v12 isSupersetOfSet:v11];

      [(PXActionableSectionHeaderLayout *)self _setAreAllItemsSelected:v13];
    }
  }
}

- (void)setIsInSelectMode:(BOOL)a3
{
  if (self->_isInSelectMode != a3)
  {
    self->_isInSelectMode = a3;
    [(PXGSingleViewLayout *)self viewSizeDidChange];

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
    [(PXGSingleViewLayout *)self viewSizeDidChange];
    [(PXGSingleViewLayout *)self viewContentDidChange];
    v5 = v6;
  }
}

- (PXActionableSectionHeaderLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:420 description:{@"%s is not available as initializer", "-[PXActionableSectionHeaderLayout init]"}];

  abort();
}

- (PXActionableSectionHeaderLayout)initWithSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXActionableSectionHeaderLayout;
  v6 = [(PXGSingleViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spec, a3);
  }

  return v7;
}

@end