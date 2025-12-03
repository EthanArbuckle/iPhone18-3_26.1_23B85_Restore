@interface PXActionableSectionHeaderLayout
- (PXActionableSectionHeaderLayout)init;
- (PXActionableSectionHeaderLayout)initWithSpec:(id)spec;
- (PXActionableSectionHeaderLayoutInteractionDelegate)interactionDelegate;
- (PXPhotosSectionHeaderLayoutViewProvider)viewProvider;
- (PXSimpleIndexPath)sectionIndexPath;
- (id)axGroup;
- (void)_setAreAllItemsSelected:(BOOL)selected;
- (void)_setWantsBackground:(BOOL)background;
- (void)floatingOffsetDidChange;
- (void)headerViewDidPressActionButton:(id)button inHeaderView:(id)view;
- (void)scrollSpeedRegimeDidChange;
- (void)setIsInSelectMode:(BOOL)mode;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setSpec:(id)spec;
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

- (id)axGroup
{
  v3 = objc_alloc_init(off_1E7721598);
  accessibilityElements = [(PXActionableSectionHeaderLayout *)self accessibilityElements];
  [v3 setAccessibilityElements:accessibilityElements];

  return v3;
}

- (void)headerViewDidPressActionButton:(id)button inHeaderView:(id)view
{
  buttonCopy = button;
  userData = [view userData];
  if (userData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [userData px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:493 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[(id<PXGReusableView>)headerView userData]", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:493 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[(id<PXGReusableView>)headerView userData]", v11}];
  }

LABEL_3:
  interactionDelegate = [(PXActionableSectionHeaderLayout *)self interactionDelegate];
  [interactionDelegate sectionHeader:self didPressButtonForActionType:objc_msgSend(userData sender:{"actionType"), buttonCopy}];
}

- (void)floatingOffsetDidChange
{
  v13.receiver = self;
  v13.super_class = PXActionableSectionHeaderLayout;
  [(PXActionableSectionHeaderLayout *)&v13 floatingOffsetDidChange];
  viewProvider = [(PXActionableSectionHeaderLayout *)self viewProvider];
  viewSpriteReference = [(PXGSingleViewLayout *)self viewSpriteReference];
  v5 = [viewProvider sectionHeaderLayout:self viewForSpriteReference:viewSpriteReference];

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
      [(PXActionableSectionHeaderLayout *)self sectionIndexPath];
      v10 = [off_1E7721768 indexPathSetWithIndexPath:&v14];
      v11 = [dataSource itemIndexPathsForSections:v10];

      selectedIndexPaths = [(PXSelectionSnapshot *)snapshotCopy selectedIndexPaths];
      v13 = [selectedIndexPaths isSupersetOfSet:v11];

      [(PXActionableSectionHeaderLayout *)self _setAreAllItemsSelected:v13];
    }
  }
}

- (void)setIsInSelectMode:(BOOL)mode
{
  if (self->_isInSelectMode != mode)
  {
    self->_isInSelectMode = mode;
    [(PXGSingleViewLayout *)self viewSizeDidChange];

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
    [(PXGSingleViewLayout *)self viewSizeDidChange];
    [(PXGSingleViewLayout *)self viewContentDidChange];
    specCopy = v6;
  }
}

- (PXActionableSectionHeaderLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:420 description:{@"%s is not available as initializer", "-[PXActionableSectionHeaderLayout init]"}];

  abort();
}

- (PXActionableSectionHeaderLayout)initWithSpec:(id)spec
{
  specCopy = spec;
  v9.receiver = self;
  v9.super_class = PXActionableSectionHeaderLayout;
  v6 = [(PXGSingleViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spec, spec);
  }

  return v7;
}

@end