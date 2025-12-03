@interface VUIShelfViewLayout
- (BOOL)_bumpHeaderForLayoutSection:(id)section forIndexPath:(id)path;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGRect)boundingSelectionFrameForFrame:(CGRect)frame;
- (CGSize)collectionViewContentSize;
- (CGSize)headerReferenceSize;
- (CGSize)itemSize;
- (UIEdgeInsets)sectionInset;
- (VUIShelfViewLayout)init;
- (VUIShelfViewLayoutDelegate)delegate;
- (double)computedContentHeight;
- (id)_indexPathForItemAtProposedContentOffset:(CGPoint)offset;
- (id)indexPathForSnappedContent;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)computedRowCount;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setRowCount:(int64_t)count;
- (void)setShouldSnapContent:(BOOL)content;
- (void)snapContentToIndexPath:(id)path;
@end

@implementation VUIShelfViewLayout

- (VUIShelfViewLayout)init
{
  v5.receiver = self;
  v5.super_class = VUIShelfViewLayout;
  v2 = [(VUIShelfViewLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_prominentSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    v2->_rowCount = 1;
    v2->_minimumInteritemSpacing = 10.0;
    v2->_minimumLineSpacing = 10.0;
    v2->_headerSelectionMargin = 7.0;
    v2->_headerBottomMargin = 12.0;
    v2->_shouldSnapContent = 1;
    [(VUIShelfViewLayout *)v2 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
  }

  return v3;
}

- (void)setShouldSnapContent:(BOOL)content
{
  if (self->_shouldSnapContent != content)
  {
    self->_shouldSnapContent = content;
    if (content)
    {
      [(VUIShelfViewLayout *)self snapContent];
    }
  }
}

- (void)setRowCount:(int64_t)count
{
  if (count >= 1)
  {
    self->_rowCount = count;
  }
}

- (void)prepareLayout
{
  v79.receiver = self;
  v79.super_class = VUIShelfViewLayout;
  [(VUIShelfViewLayout *)&v79 prepareLayout];
  collectionView = [(VUIShelfViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];

  if (!shelfLayoutSections)
  {
    layoutHelper = [(VUIShelfViewLayout *)self layoutHelper];
    if (!layoutHelper)
    {
      layoutHelper = [[VUIShelfLayoutHelper alloc] initWithShelfViewLayout:self];
      [(VUIShelfViewLayout *)self setLayoutHelper:layoutHelper];
    }

    v70 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
    if (numberOfSections >= 1)
    {
      v7 = 0;
      v75 = *(MEMORY[0x1E695F058] + 8);
      rect1 = *MEMORY[0x1E695F058];
      v72 = *(MEMORY[0x1E695F058] + 24);
      rect = *(MEMORY[0x1E695F058] + 16);
      do
      {
        v8 = objc_alloc_init(VUIShelfLayoutSection);
        [(VUIShelfLayoutHelper *)layoutHelper frameForHeaderInSection:v7];
        [(VUIShelfLayoutSection *)v8 setSectionHeaderFrame:?];
        [(VUIShelfLayoutHelper *)layoutHelper insetForSection:v7];
        [(VUIShelfLayoutSection *)v8 setSectionInset:?];
        v9 = collectionView;
        v10 = [collectionView numberOfItemsInSection:v7];
        [(VUIShelfLayoutSection *)v8 setNumberOfItems:v10];
        height = v72;
        width = rect;
        y = v75;
        x = rect1;
        if (v10 >= 1)
        {
          v15 = 0;
          y = v75;
          x = rect1;
          height = v72;
          width = rect;
          do
          {
            v16 = [MEMORY[0x1E696AC88] indexPathForItem:v15 inSection:v7];
            [(VUIShelfLayoutHelper *)layoutHelper frameForItemAtIndexPath:v16];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;

            [(VUIShelfLayoutSection *)v8 setItemFrame:v15 atIndex:v18, v20, v22, v24];
            v80.origin.x = x;
            v80.origin.y = y;
            v80.size.width = width;
            v80.size.height = height;
            v89.origin.x = v18;
            v89.origin.y = v20;
            v89.size.width = v22;
            v89.size.height = v24;
            v81 = CGRectUnion(v80, v89);
            x = v81.origin.x;
            y = v81.origin.y;
            width = v81.size.width;
            height = v81.size.height;
            ++v15;
          }

          while (v10 != v15);
        }

        [(VUIShelfLayoutSection *)v8 setItemsBoundingFrame:x, y, width, height];
        [v70 addObject:v8];

        ++v7;
        collectionView = v9;
      }

      while (v7 != numberOfSections);
    }

    v25 = [v70 copy];
    [(VUIShelfViewLayout *)self setShelfLayoutSections:v25];

    shelfLayoutSections = 0;
  }

  [collectionView vuiContentOffset];
  v27 = v26;
  [collectionView vuiContentInsets];
  if (numberOfSections >= 1)
  {
    v29 = 0;
    v30 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 8);
    v32 = *(MEMORY[0x1E695F058] + 16);
    rect1a = *(MEMORY[0x1E695F058] + 24);
    v67 = v27 + v28;
    v68 = v32;
    v69 = v31;
    v71 = *MEMORY[0x1E695F058];
    do
    {
      shelfLayoutSections2 = [(VUIShelfViewLayout *)self shelfLayoutSections];
      v34 = [shelfLayoutSections2 objectAtIndex:v29];

      [v34 sectionHeaderFrame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v82.origin.x = v30;
      v82.origin.y = v31;
      v82.size.width = v32;
      v82.size.height = rect1a;
      v90.origin.x = v36;
      v90.origin.y = v38;
      v90.size.width = v40;
      v90.size.height = v42;
      if (!CGRectEqualToRect(v82, v90))
      {
        v73 = v38;
        v76 = v36;
        [v34 firstItemFrame];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        [v34 lastItemFrame];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v83.origin.x = v44;
        v83.origin.y = v46;
        v83.size.width = v48;
        v59 = v52;
        v83.size.height = v50;
        v60 = v54;
        v61 = fmax(v67, CGRectGetMinX(v83));
        v84.origin.x = v59;
        v84.origin.y = v60;
        v84.size.width = v56;
        v84.size.height = v58;
        v62 = fmin(v61, CGRectGetMinX(v84));
        if (numberOfSections == 1)
        {
          v63 = v76;
        }

        else
        {
          v85.origin.x = v62;
          v85.origin.y = v73;
          v85.size.width = v40;
          v85.size.height = v42;
          MaxX = CGRectGetMaxX(v85);
          v86.origin.x = v59;
          v86.origin.y = v60;
          v86.size.width = v56;
          v86.size.height = v58;
          v65 = MaxX < CGRectGetMaxX(v86);
          v63 = v76;
          if (!v65)
          {
            v87.origin.x = v59;
            v87.origin.y = v60;
            v87.size.width = v56;
            v87.size.height = v58;
            v66 = CGRectGetMaxX(v87);
            v88.origin.x = v76;
            v88.origin.y = v73;
            v88.size.width = v40;
            v88.size.height = v42;
            v62 = v66 - CGRectGetWidth(v88);
          }
        }

        [v34 setSectionHeaderHorizontalOffset:v62 - v63];
        v31 = v69;
        v30 = v71;
        v32 = v68;
      }

      ++v29;
      --numberOfSections;
    }

    while (numberOfSections);
  }

  if (!shelfLayoutSections)
  {
    [(VUIShelfViewLayout *)self snapContent];
  }
}

- (CGSize)collectionViewContentSize
{
  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
  lastObject = [shelfLayoutSections lastObject];

  [lastObject lastItemFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [lastObject sectionInset];
  v14 = v13;
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v15 = CGRectGetMaxX(v21) + v14;
  [(VUIShelfViewLayout *)self computedContentHeight];
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [contextCopy invalidateVerticalBumps])
  {
    v5 = contextCopy;
    array = [MEMORY[0x1E695DF70] array];
    focusedItemIndexPath = [v5 focusedItemIndexPath];
    v8 = focusedItemIndexPath;
    if (focusedItemIndexPath)
    {
      v9 = focusedItemIndexPath;
    }

    else
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0x7FFFFFFFFFFFFFFFLL];
    }

    v10 = v9;

    item = [v10 item];
    v12 = item % [(VUIShelfViewLayout *)self rowCount]== 0;
    shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__VUIShelfViewLayout_invalidateLayoutWithContext___block_invoke;
    v17[3] = &unk_1E872F628;
    v21 = v12;
    v18 = v10;
    selfCopy = self;
    v20 = array;
    v14 = array;
    v15 = v10;
    [shelfLayoutSections enumerateObjectsUsingBlock:v17];

    [v5 invalidateSupplementaryElementsOfKind:@"VUIShelfLayoutElementKindHeader" atIndexPaths:v14];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([contextCopy invalidateLayout] & 1) != 0 || (objc_msgSend(contextCopy, "invalidateEverything") & 1) != 0 || objc_msgSend(contextCopy, "invalidateDataSourceCounts"))
  {
    [(VUIShelfViewLayout *)self setLayoutHelper:0];
    [(VUIShelfViewLayout *)self setShelfLayoutSections:0];
  }

  v16.receiver = self;
  v16.super_class = VUIShelfViewLayout;
  [(VUIShelfViewLayout *)&v16 invalidateLayoutWithContext:contextCopy];
}

void __50__VUIShelfViewLayout_invalidateLayoutWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if ([*(a1 + 32) section] != a3 || *(a1 + 56) != 1 || (objc_msgSend(*(a1 + 40), "_bumpHeaderForLayoutSection:forIndexPath:", v9, *(a1 + 32)) & 1) == 0)
  {
    [v9 sectionHeaderVerticalBump];
    v5 = v9;
    if (v6 == 0.0)
    {
      goto LABEL_7;
    }

    [v9 setSectionHeaderVerticalBump:0.0];
  }

  v7 = *(a1 + 48);
  v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
  [v7 addObject:v8];

  v5 = v9;
LABEL_7:
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  array = [MEMORY[0x1E695DF70] array];
  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
  v10 = [shelfLayoutSections count];

  if (v10)
  {
    v11 = 0;
    v37 = *(MEMORY[0x1E695F060] + 8);
    v38 = *MEMORY[0x1E695F060];
    v41 = *(MEMORY[0x1E695F058] + 8);
    v42 = *MEMORY[0x1E695F058];
    v39 = *(MEMORY[0x1E695F058] + 24);
    v40 = *(MEMORY[0x1E695F058] + 16);
    do
    {
      shelfLayoutSections2 = [(VUIShelfViewLayout *)self shelfLayoutSections];
      v13 = [shelfLayoutSections2 objectAtIndex:v11];

      [v13 sectionHeaderFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v13 sectionHeaderHorizontalOffset];
      if (v19 != v38 || v21 != v37)
      {
        v44.origin.x = v22 + v15;
        v44.origin.y = v17;
        v44.size.width = v19;
        v44.size.height = v21;
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        if (CGRectIntersectsRect(v44, v47))
        {
          v24 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v11];
          v25 = [(VUIShelfViewLayout *)self layoutAttributesForSupplementaryViewOfKind:@"VUIShelfLayoutElementKindHeader" atIndexPath:v24];
          [array addObject:v25];
        }
      }

      numberOfItems = [v13 numberOfItems];
      if (numberOfItems)
      {
        v27 = numberOfItems;
        for (i = 0; i != v27; ++i)
        {
          [v13 itemFrameAtIndex:i];
          v29 = v45.origin.x;
          v30 = v45.origin.y;
          v31 = v45.size.width;
          v32 = v45.size.height;
          v48.origin.x = x;
          v48.origin.y = y;
          v48.size.width = width;
          v48.size.height = height;
          if (CGRectIntersectsRect(v45, v48))
          {
            v46.origin.y = v41;
            v46.origin.x = v42;
            v46.size.height = v39;
            v46.size.width = v40;
            v49.origin.x = v29;
            v49.origin.y = v30;
            v49.size.width = v31;
            v49.size.height = v32;
            if (!CGRectEqualToRect(v46, v49))
            {
              v33 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v11];
              v34 = [(VUIShelfViewLayout *)self layoutAttributesForItemAtIndexPath:v33];
              [array addObject:v34];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v10);
  }

  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v35;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:pathCopy];
  section = [pathCopy section];
  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
  v8 = [shelfLayoutSections count];

  if (section < v8)
  {
    shelfLayoutSections2 = [(VUIShelfViewLayout *)self shelfLayoutSections];
    v10 = [shelfLayoutSections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    item = [pathCopy item];
    if (item < [v10 numberOfItems])
    {
      [v10 itemFrameAtIndex:{objc_msgSend(pathCopy, "item")}];
      [v5 setFrame:?];
    }
  }

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:kind withIndexPath:pathCopy];
  section = [pathCopy section];
  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
  v10 = [shelfLayoutSections count];

  if (section < v10)
  {
    shelfLayoutSections2 = [(VUIShelfViewLayout *)self shelfLayoutSections];
    v12 = [shelfLayoutSections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    [v12 sectionHeaderFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 sectionHeaderVerticalBump];
    v22 = v16 - v21;
    if (![pathCopy section])
    {
      collectionView = [(VUIShelfViewLayout *)self collectionView];
      [collectionView vuiContentOffset];
      v25 = v24;
      [collectionView vuiContentInsets];
      v27 = 0.0 - v26;
      v28 = v25 + v26;
      if (v25 < v27)
      {
        v14 = v28;
      }
    }

    [v7 setFrame:{v14, v22, v18, v20}];
    memset(&v32, 0, sizeof(v32));
    [v12 sectionHeaderHorizontalOffset];
    CGAffineTransformMakeTranslation(&v32, v29, 0.0);
    v31 = v32;
    [v7 setTransform:&v31];
  }

  return v7;
}

- (int64_t)computedRowCount
{
  layoutHelper = [(VUIShelfViewLayout *)self layoutHelper];
  layoutHelper2 = [(VUIShelfViewLayout *)self layoutHelper];

  if (!layoutHelper2)
  {
    v5 = [[VUIShelfLayoutHelper alloc] initWithShelfViewLayout:self];

    [(VUIShelfViewLayout *)self setLayoutHelper:v5];
    layoutHelper = v5;
  }

  actualRowCount = [layoutHelper actualRowCount];

  return actualRowCount;
}

- (double)computedContentHeight
{
  layoutHelper = [(VUIShelfViewLayout *)self layoutHelper];
  layoutHelper2 = [(VUIShelfViewLayout *)self layoutHelper];

  if (!layoutHelper2)
  {
    v5 = [[VUIShelfLayoutHelper alloc] initWithShelfViewLayout:self];

    [(VUIShelfViewLayout *)self setLayoutHelper:v5];
    layoutHelper = v5;
  }

  [layoutHelper tallestHeaderHeight];
  v6 = 0.0;
  if (v7 > 0.0)
  {
    [(VUIShelfViewLayout *)self headerBottomMargin];
    v6 = v8;
  }

  [layoutHelper tallestInsetTop];
  v10 = v9;
  [layoutHelper tallestHeaderHeight];
  v12 = v6 + v10 + v11;
  [layoutHelper tallestColumnHeight];
  v14 = v13 + v12;
  [layoutHelper tallestInsetBottom];
  v16 = v15 + v14;

  return v16;
}

- (CGRect)boundingSelectionFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  MidX = CGRectGetMidX(frame);
  v51.origin.x = x;
  v51.origin.y = y;
  v43 = width;
  v51.size.width = width;
  v51.size.height = height;
  MidY = CGRectGetMidY(v51);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v42 = *(MEMORY[0x1E695F058] + 24);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
  v14 = [shelfLayoutSections countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v40 = v10;
    r2 = height;
    v38 = v12;
    v39 = v11;
    v16 = *v45;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(shelfLayoutSections);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        if ([v18 numberOfItems])
        {
          [v18 sectionHeaderFrame];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v18 sectionHeaderVerticalBump];
          v28 = v22 - v27;
          [v18 itemsBoundingFrame];
          v57.origin.x = v29;
          v57.origin.y = v30;
          v57.size.width = v31;
          v57.size.height = v32;
          v52.origin.x = v20;
          v52.origin.y = v28;
          v52.size.width = v24;
          v52.size.height = v26;
          v53 = CGRectUnion(v52, v57);
          v50.x = MidX;
          v50.y = MidY;
          if (CGRectContainsPoint(v53, v50))
          {
            v54.origin.x = v20;
            v54.origin.y = v28;
            v54.size.width = v24;
            v54.size.height = v26;
            v58.origin.x = x;
            v58.origin.y = y;
            v58.size.width = v43;
            v58.size.height = r2;
            v55 = CGRectUnion(v54, v58);
            v10 = v55.origin.x;
            v11 = v55.origin.y;
            v12 = v55.size.width;
            v33 = v55.size.height;
            goto LABEL_13;
          }
        }
      }

      v15 = [shelfLayoutSections countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v11 = v39;
    v10 = v40;
    v12 = v38;
  }

  v33 = v42;
LABEL_13:

  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  v3 = [(VUIShelfViewLayout *)self layoutHelper:change.origin.x];
  [v3 tallestHeaderHeight];
  v5 = v4 > 0.0;

  return v5;
}

- (BOOL)_bumpHeaderForLayoutSection:(id)section forIndexPath:(id)path
{
  sectionCopy = section;
  pathCopy = path;
  [sectionCopy sectionHeaderFrame];
  if (v9 <= 0.0)
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v10 = v8;
    collectionView = [(VUIShelfViewLayout *)self collectionView];
    [collectionView vuiContentInsets];
    v13 = v12;
    delegate = [(VUIShelfViewLayout *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      collectionViewLayout = [collectionView collectionViewLayout];
      [delegate collectionView:collectionView layout:collectionViewLayout selectionMarginsForItemAtIndexPath:pathCopy];
      v17 = v16;
      v19 = v18;
      v21 = v20;
    }

    else
    {
      v17 = *MEMORY[0x1E69DDCE0];
      v19 = *(MEMORY[0x1E69DDCE0] + 8);
      v21 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    [collectionView vuiContentOffset];
    v24 = v23;
    [sectionCopy itemFrameAtIndex:{objc_msgSend(pathCopy, "item")}];
    v26 = v25;
    v28 = v27;
    [sectionCopy sectionInset];
    v30 = fmax(v10 - v24, v29);
    [sectionCopy sectionHeaderFrame];
    if (v26 - v19 - v24 >= v13)
    {
      v33 = v26 - v19 - v24;
    }

    else
    {
      v33 = v13;
    }

    v34 = 0;
    v35 = 1.0;
    v36 = 0;
    v37 = 1.0;
    v38 = v30;
    v32 = v21 + v19 + v28;
    v22 = CGRectIntersectsRect(*(&v31 - 2), *&v33);
    if (v22)
    {
      [(VUIShelfViewLayout *)self headerSelectionMargin];
      v40 = v39;
      [(VUIShelfViewLayout *)self headerBottomMargin];
      [sectionCopy setSectionHeaderVerticalBump:{fmax(v40 - (v41 - v17), 0.0)}];
    }
  }

  return v22;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(VUIShelfViewLayout *)self shouldSnapContent])
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);

    [(VUIShelfViewLayout *)self targetContentOffsetForProposedContentOffset:x withScrollingVelocity:y, v6, v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VUIShelfViewLayout;
    [(VUIShelfViewLayout *)&v10 targetContentOffsetForProposedContentOffset:x, y];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  if ([(VUIShelfViewLayout *)self shouldSnapContent])
  {
    collectionView = [(VUIShelfViewLayout *)self collectionView];
    [collectionView vuiBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [collectionView vuiContentSize];
    v19 = v18;
    [collectionView vuiContentInsets];
    v21 = v20;
    v23 = v22 + v19 + v20;
    v51.origin.x = v11;
    v51.origin.y = v13;
    v51.size.width = v15;
    v51.size.height = v17;
    if (v23 <= CGRectGetWidth(v51))
    {
      v7 = -v21;
    }

    else
    {
      shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
      v25 = [shelfLayoutSections copy];

      v48 = v7 + v21;
      v52.origin.x = v11;
      v52.origin.y = v13;
      v52.size.width = v15;
      v52.size.height = v17;
      if (v23 - (v7 + v21) <= CGRectGetWidth(v52))
      {
        v54.origin.x = v11;
        v54.origin.y = v13;
        v54.size.width = v15;
        v54.size.height = v17;
        v7 = v23 - CGRectGetWidth(v54) - v21;
      }

      else
      {
        v26 = [(VUIShelfViewLayout *)self _indexPathForItemAtProposedContentOffset:v7, v6];
        v27 = v26;
        if (v26)
        {
          v28 = [v25 objectAtIndex:{objc_msgSend(v26, "section")}];
          [v28 itemFrameAtIndex:{objc_msgSend(v27, "item")}];
          v29 = v53.origin.x;
          v30 = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;
          if (v48 > CGRectGetMidX(v53))
          {
            v33 = [v27 item] + 1;
            if (v33 >= [v28 numberOfItems])
            {
              v40 = [v25 indexOfObject:v28] + 1;
              if (v40 < [v25 count])
              {
                v41 = [v25 objectAtIndex:v40];

                [v41 firstItemFrame];
                v29 = v42;
                v30 = v43;
                width = v44;
                height = v45;
                v28 = v41;
              }
            }

            else
            {
              [v28 itemFrameAtIndex:{objc_msgSend(v27, "item") + 1}];
              v29 = v34;
              v30 = v35;
              width = v36;
              height = v37;
            }
          }

          v55.origin.x = v29;
          v55.origin.y = v30;
          v55.size.width = width;
          v55.size.height = height;
          v7 = CGRectGetMinX(v55) - v21;
        }
      }
    }
  }

  else
  {
    v49.receiver = self;
    v49.super_class = VUIShelfViewLayout;
    [(VUIShelfViewLayout *)&v49 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
    v7 = v38;
    v6 = v39;
  }

  v46 = v7;
  v47 = v6;
  result.y = v47;
  result.x = v46;
  return result;
}

- (id)_indexPathForItemAtProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v43 = *MEMORY[0x1E69E9840];
  collectionView = [(VUIShelfViewLayout *)self collectionView];
  [collectionView vuiContentInsets];
  v8 = v7;
  v10 = v9;

  shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
  v12 = [shelfLayoutSections copy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = x + v10;
    v17 = y + v8;
    v18 = *v39;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v39 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v38 + 1) + 8 * v19);
      [v20 itemsBoundingFrame];
      v45.x = v16;
      v45.y = v17;
      if (CGRectContainsPoint(v46, v45))
      {
        break;
      }

      if (v15 == ++v19)
      {
        v15 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v20;

    if (!v21 || [v21 numberOfItems] < 1)
    {
      goto LABEL_19;
    }

    v22 = 0;
    while (1)
    {
      [v21 itemFrameAtIndex:v22];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(VUIShelfViewLayout *)self minimumInteritemSpacing];
      v32 = v31 + v28;
      v47.origin.x = v24;
      v47.origin.y = v26;
      v47.size.width = v32;
      v47.size.height = v30;
      MinX = CGRectGetMinX(v47);
      v48.origin.x = v24;
      v48.origin.y = v26;
      v48.size.width = v32;
      v48.size.height = v30;
      MaxX = CGRectGetMaxX(v48);
      if (v16 >= MinX && v16 <= MaxX)
      {
        break;
      }

      if (++v22 >= [v21 numberOfItems])
      {
        goto LABEL_19;
      }
    }

    v37 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:{objc_msgSend(v13, "indexOfObject:", v21, MaxX)}];
  }

  else
  {
LABEL_9:

    v21 = 0;
LABEL_19:
    v37 = 0;
  }

  return v37;
}

- (void)snapContentToIndexPath:(id)path
{
  pathCopy = path;
  if ([(VUIShelfViewLayout *)self shouldSnapContent])
  {
    collectionView = [(VUIShelfViewLayout *)self collectionView];
    [collectionView vuiContentOffset];
    [(VUIShelfViewLayout *)self targetContentOffsetForProposedContentOffset:?];
    v6 = v5;
    v8 = v7;
    if (pathCopy)
    {
      section = [pathCopy section];
      shelfLayoutSections = [(VUIShelfViewLayout *)self shelfLayoutSections];
      v11 = [shelfLayoutSections count];

      if (section < v11)
      {
        [collectionView vuiContentInsets];
        v13 = v12;
        shelfLayoutSections2 = [(VUIShelfViewLayout *)self shelfLayoutSections];
        v15 = [shelfLayoutSections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

        item = [pathCopy item];
        if (item < [v15 numberOfItems])
        {
          [v15 itemFrameAtIndex:{objc_msgSend(pathCopy, "item")}];
          v6 = CGRectGetMinX(v19) - v13;
        }
      }
    }

    [collectionView setVuiContentOffset:{v6, v8}];
  }
}

- (id)indexPathForSnappedContent
{
  if ([(VUIShelfViewLayout *)self shouldSnapContent])
  {
    collectionView = [(VUIShelfViewLayout *)self collectionView];
    [collectionView vuiContentOffset];
    v4 = [(VUIShelfViewLayout *)self _indexPathForItemAtProposedContentOffset:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VUIShelfViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)headerReferenceSize
{
  width = self->_headerReferenceSize.width;
  height = self->_headerReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
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

@end