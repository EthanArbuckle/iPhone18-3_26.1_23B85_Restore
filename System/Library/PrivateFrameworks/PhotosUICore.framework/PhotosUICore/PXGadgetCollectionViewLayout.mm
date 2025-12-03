@interface PXGadgetCollectionViewLayout
- (BOOL)_disablesDoubleSidedAnimations;
- (BOOL)_shouldShowSectionHeaderForGadget:(id)gadget;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PXGadgetCollectionViewLayoutDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_titleForGadget:(id)gadget;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (unint64_t)_buttonTypeForGadget:(id)gadget;
- (unint64_t)_sectionHeaderStyleForGadget:(id)gadget;
- (void)_updateMinimumLineSpacing;
- (void)setColumnWidth:(double)width;
- (void)setInterSectionSpacing:(double)spacing;
- (void)setPrefersPagingEnabled:(BOOL)enabled;
- (void)setScrollDirection:(int64_t)direction;
- (void)setSpec:(id)spec;
@end

@implementation PXGadgetCollectionViewLayout

- (PXGadgetCollectionViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)_sectionHeaderStyleForGadget:(id)gadget
{
  gadgetCopy = gadget;
  if (objc_opt_respondsToSelector())
  {
    headerStyle = [gadgetCopy headerStyle];
  }

  else
  {
    headerStyle = 0;
  }

  return headerStyle;
}

- (BOOL)_shouldShowSectionHeaderForGadget:(id)gadget
{
  gadgetCopy = gadget;
  v5 = [(PXGadgetCollectionViewLayout *)self _titleForGadget:gadgetCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PXGadgetCollectionViewLayout *)self _hasButtonForGadget:gadgetCopy];
  spec = [(PXGadgetCollectionViewLayout *)self spec];
  scrollAxis = [spec scrollAxis];

  return (v7 || v8) && scrollAxis == 1;
}

- (unint64_t)_buttonTypeForGadget:(id)gadget
{
  gadgetCopy = gadget;
  if (objc_opt_respondsToSelector())
  {
    accessoryButtonType = [gadgetCopy accessoryButtonType];
  }

  else
  {
    accessoryButtonType = 0;
  }

  return accessoryButtonType;
}

- (id)_titleForGadget:(id)gadget
{
  gadgetCopy = gadget;
  if (objc_opt_respondsToSelector())
  {
    localizedTitle = [gadgetCopy localizedTitle];
  }

  else
  {
    localizedTitle = 0;
  }

  return localizedTitle;
}

- (void)_updateMinimumLineSpacing
{
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1)
  {
    [(PXGadgetCollectionViewLayout *)self interSectionSpacing];

    [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:?];
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v15.receiver = self;
  v15.super_class = PXGadgetCollectionViewLayout;
  v8 = [(UICollectionViewFlowLayout *)&v15 invalidationContextForBoundsChange:?];
  collectionView = [(PXGadgetCollectionViewLayout *)self collectionView];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = CGRectGetWidth(v17);
  [collectionView bounds];
  v11 = v10 != CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetHeight(v19);
  [collectionView bounds];
  v13 = v12 != CGRectGetHeight(v20) || v11;
  [v8 setInvalidateFlowLayoutDelegateMetrics:v13];

  return v8;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  delegate = [(PXGadgetCollectionViewLayout *)self delegate];
  dataSource = [delegate dataSource];

  identifier = [dataSource identifier];
  section = [pathCopy section];
  item = [pathCopy item];

  *&buf = identifier;
  *(&buf + 1) = section;
  v27 = item;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = [dataSource gadgetAtIndexPath:&buf];
  spec = [(PXGadgetCollectionViewLayout *)self spec];
  scrollAxis = [spec scrollAxis];

  if (scrollAxis == 2)
  {
    [viewCopy bounds];
    [viewCopy contentInset];
    PXEdgeInsetsInsetSize();
  }

  if (scrollAxis != 1)
  {
    v18 = 0.0;
    v19 = 0.0;
    if (scrollAxis)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      spec2 = [(PXGadgetCollectionViewLayout *)self spec];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = spec2;
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Undefined scroll axis for spec %@. This shouldn't happen, but actually sometimes still does. See <rdar://problem/49414469> for details.", &buf, 0xCu);
    }
  }

  [viewCopy bounds];
  [v15 sizeThatFits:{CGRectGetWidth(v31), 1.79769313e308}];
  v19 = v20;
  v18 = v21;
  if (v21 >= 1.79769313e308)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"preferredSize.height < CGFLOAT_MAX"}];
  }

LABEL_9:

  v23 = v19;
  v24 = v18;
  result.height = v24;
  result.width = v23;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(PXGadgetCollectionViewLayout *)self interSectionSpacing:view];
  v8 = v7;
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1 && v8 > 0.0)
  {
    v9 = 0.0;
    if (index)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v12 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v9 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v9;
  result.bottom = v11;
  result.left = v10;
  result.top = v12;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  delegate = [(PXGadgetCollectionViewLayout *)self delegate];
  dataSource = [delegate dataSource];
  numberOfSections = [dataSource numberOfSections];

  if (numberOfSections)
  {
    collectionView = [(PXGadgetCollectionViewLayout *)self collectionView];
    if (([collectionView isPagingEnabled] & 1) == 0 && -[UICollectionViewFlowLayout scrollDirection](self, "scrollDirection") == 1)
    {
      [collectionView contentInset];
      v11 = v10;
      [collectionView contentSize];
      v13 = v12;
      [collectionView bounds];
      if (x < v13 - CGRectGetWidth(v28) - v11)
      {
        [(PXGadgetCollectionViewLayout *)self interSectionSpacing];
        v15 = v14;
        [(UICollectionViewFlowLayout *)self itemSize];
        v17 = v16;
        delegate2 = [(PXGadgetCollectionViewLayout *)self delegate];
        dataSource2 = [delegate2 dataSource];
        v20 = [dataSource2 numberOfItemsInSection:0];

        if (v20 >= 1)
        {
          v21 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
          [(PXGadgetCollectionViewLayout *)self collectionView:collectionView layout:self sizeForItemAtIndexPath:v21];
          v17 = v22;
        }

        if (v15 + v17 > 0.0)
        {
          spec = [(PXGadgetCollectionViewLayout *)self spec];
          [spec displayScale];
          if (v24 == 0.0)
          {
            [collectionView px_screenScale];
          }

          PXFloatRoundToPixel();
        }
      }
    }
  }

  v25 = x;
  v26 = y;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  v7.receiver = self;
  v7.super_class = PXGadgetCollectionViewLayout;
  [(PXGadgetCollectionViewLayout *)&v7 targetContentOffsetForProposedContentOffset:offset.x withScrollingVelocity:offset.y, velocity.x, velocity.y];
  [(PXGadgetCollectionViewLayout *)self targetContentOffsetForProposedContentOffset:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setScrollDirection:(int64_t)direction
{
  v4.receiver = self;
  v4.super_class = PXGadgetCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v4 setScrollDirection:direction];
  [(PXGadgetCollectionViewLayout *)self _updateMinimumLineSpacing];
}

- (void)setInterSectionSpacing:(double)spacing
{
  if (spacing < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"interSectionSpacing >= 0"}];
  }

  PXFloatApproximatelyEqualToFloat();
}

- (void)setColumnWidth:(double)width
{
  if (width <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"columnWidth > 0"}];
  }

  if (self->_columnWidth != width)
  {
    self->_columnWidth = width;

    [(PXGadgetCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setPrefersPagingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled && [(UICollectionViewFlowLayout *)self scrollDirection]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"!prefersPagingEnabled || (self.scrollDirection == UICollectionViewScrollDirectionHorizontal)"}];
  }

  if (self->_prefersPagingEnabled != enabledCopy)
  {
    self->_prefersPagingEnabled = enabledCopy;

    [(PXGadgetCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (!specCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"spec"}];
  }

  objc_storeStrong(&self->_spec, spec);
  [specCopy layoutInsets];
  [(PXGadgetSpec *)self->_spec layoutInsets];
  PXEdgeInsetsEqualToEdgeInsets();
}

- (BOOL)_disablesDoubleSidedAnimations
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
  delegate = [(PXGadgetCollectionViewLayout *)self delegate];
  isTogglingSidebarNoRotating = [delegate isTogglingSidebarNoRotating];

  v9 = userInterfaceIdiom == 1 && scrollDirection == 0;
  return v9 & isTogglingSidebarNoRotating;
}

@end