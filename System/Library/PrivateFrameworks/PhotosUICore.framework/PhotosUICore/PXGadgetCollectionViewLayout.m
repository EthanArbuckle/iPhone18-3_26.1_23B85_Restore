@interface PXGadgetCollectionViewLayout
- (BOOL)_disablesDoubleSidedAnimations;
- (BOOL)_shouldShowSectionHeaderForGadget:(id)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXGadgetCollectionViewLayoutDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_titleForGadget:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (unint64_t)_buttonTypeForGadget:(id)a3;
- (unint64_t)_sectionHeaderStyleForGadget:(id)a3;
- (void)_updateMinimumLineSpacing;
- (void)setColumnWidth:(double)a3;
- (void)setInterSectionSpacing:(double)a3;
- (void)setPrefersPagingEnabled:(BOOL)a3;
- (void)setScrollDirection:(int64_t)a3;
- (void)setSpec:(id)a3;
@end

@implementation PXGadgetCollectionViewLayout

- (PXGadgetCollectionViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)_sectionHeaderStyleForGadget:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 headerStyle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldShowSectionHeaderForGadget:(id)a3
{
  v4 = a3;
  v5 = [(PXGadgetCollectionViewLayout *)self _titleForGadget:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PXGadgetCollectionViewLayout *)self _hasButtonForGadget:v4];
  v9 = [(PXGadgetCollectionViewLayout *)self spec];
  v10 = [v9 scrollAxis];

  return (v7 || v8) && v10 == 1;
}

- (unint64_t)_buttonTypeForGadget:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 accessoryButtonType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_titleForGadget:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 localizedTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateMinimumLineSpacing
{
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1)
  {
    [(PXGadgetCollectionViewLayout *)self interSectionSpacing];

    [(UICollectionViewFlowLayout *)self setMinimumLineSpacing:?];
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = PXGadgetCollectionViewLayout;
  v8 = [(UICollectionViewFlowLayout *)&v15 invalidationContextForBoundsChange:?];
  v9 = [(PXGadgetCollectionViewLayout *)self collectionView];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = CGRectGetWidth(v17);
  [v9 bounds];
  v11 = v10 != CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetHeight(v19);
  [v9 bounds];
  v13 = v12 != CGRectGetHeight(v20) || v11;
  [v8 setInvalidateFlowLayoutDelegateMetrics:v13];

  return v8;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PXGadgetCollectionViewLayout *)self delegate];
  v11 = [v10 dataSource];

  v12 = [v11 identifier];
  v13 = [v9 section];
  v14 = [v9 item];

  *&buf = v12;
  *(&buf + 1) = v13;
  v27 = v14;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = [v11 gadgetAtIndexPath:&buf];
  v16 = [(PXGadgetCollectionViewLayout *)self spec];
  v17 = [v16 scrollAxis];

  if (v17 == 2)
  {
    [v8 bounds];
    [v8 contentInset];
    PXEdgeInsetsInsetSize();
  }

  if (v17 != 1)
  {
    v18 = 0.0;
    v19 = 0.0;
    if (v17)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v25 = [(PXGadgetCollectionViewLayout *)self spec];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Undefined scroll axis for spec %@. This shouldn't happen, but actually sometimes still does. See <rdar://problem/49414469> for details.", &buf, 0xCu);
    }
  }

  [v8 bounds];
  [v15 sizeThatFits:{CGRectGetWidth(v31), 1.79769313e308}];
  v19 = v20;
  v18 = v21;
  if (v21 >= 1.79769313e308)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"preferredSize.height < CGFLOAT_MAX"}];
  }

LABEL_9:

  v23 = v19;
  v24 = v18;
  result.height = v24;
  result.width = v23;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(PXGadgetCollectionViewLayout *)self interSectionSpacing:a3];
  v8 = v7;
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1 && v8 > 0.0)
  {
    v9 = 0.0;
    if (a5)
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

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXGadgetCollectionViewLayout *)self delegate];
  v7 = [v6 dataSource];
  v8 = [v7 numberOfSections];

  if (v8)
  {
    v9 = [(PXGadgetCollectionViewLayout *)self collectionView];
    if (([v9 isPagingEnabled] & 1) == 0 && -[UICollectionViewFlowLayout scrollDirection](self, "scrollDirection") == 1)
    {
      [v9 contentInset];
      v11 = v10;
      [v9 contentSize];
      v13 = v12;
      [v9 bounds];
      if (x < v13 - CGRectGetWidth(v28) - v11)
      {
        [(PXGadgetCollectionViewLayout *)self interSectionSpacing];
        v15 = v14;
        [(UICollectionViewFlowLayout *)self itemSize];
        v17 = v16;
        v18 = [(PXGadgetCollectionViewLayout *)self delegate];
        v19 = [v18 dataSource];
        v20 = [v19 numberOfItemsInSection:0];

        if (v20 >= 1)
        {
          v21 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
          [(PXGadgetCollectionViewLayout *)self collectionView:v9 layout:self sizeForItemAtIndexPath:v21];
          v17 = v22;
        }

        if (v15 + v17 > 0.0)
        {
          v23 = [(PXGadgetCollectionViewLayout *)self spec];
          [v23 displayScale];
          if (v24 == 0.0)
          {
            [v9 px_screenScale];
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

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  v7.receiver = self;
  v7.super_class = PXGadgetCollectionViewLayout;
  [(PXGadgetCollectionViewLayout *)&v7 targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, a4.x, a4.y];
  [(PXGadgetCollectionViewLayout *)self targetContentOffsetForProposedContentOffset:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setScrollDirection:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PXGadgetCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v4 setScrollDirection:a3];
  [(PXGadgetCollectionViewLayout *)self _updateMinimumLineSpacing];
}

- (void)setInterSectionSpacing:(double)a3
{
  if (a3 < 0.0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"interSectionSpacing >= 0"}];
  }

  PXFloatApproximatelyEqualToFloat();
}

- (void)setColumnWidth:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"columnWidth > 0"}];
  }

  if (self->_columnWidth != a3)
  {
    self->_columnWidth = a3;

    [(PXGadgetCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setPrefersPagingEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && [(UICollectionViewFlowLayout *)self scrollDirection]!= 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"!prefersPagingEnabled || (self.scrollDirection == UICollectionViewScrollDirectionHorizontal)"}];
  }

  if (self->_prefersPagingEnabled != v3)
  {
    self->_prefersPagingEnabled = v3;

    [(PXGadgetCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setSpec:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGadgetCollectionViewLayout.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"spec"}];
  }

  objc_storeStrong(&self->_spec, a3);
  [v7 layoutInsets];
  [(PXGadgetSpec *)self->_spec layoutInsets];
  PXEdgeInsetsEqualToEdgeInsets();
}

- (BOOL)_disablesDoubleSidedAnimations
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(UICollectionViewFlowLayout *)self scrollDirection];
  v6 = [(PXGadgetCollectionViewLayout *)self delegate];
  v7 = [v6 isTogglingSidebarNoRotating];

  v9 = v4 == 1 && v5 == 0;
  return v9 & v7;
}

@end