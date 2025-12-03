@interface _TVShelfViewLayout
- (BOOL)_bumpHeaderForLayoutSection:(id)section forIndexPath:(id)path;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGRect)boundingSelectionFrameForFrame:(CGRect)frame;
- (CGSize)collectionViewContentSize;
- (CGSize)headerReferenceSize;
- (CGSize)itemSize;
- (UIEdgeInsets)sectionInset;
- (_TVShelfViewLayout)init;
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

@implementation _TVShelfViewLayout

- (_TVShelfViewLayout)init
{
  v5.receiver = self;
  v5.super_class = _TVShelfViewLayout;
  v2 = [(_TVShelfViewLayout *)&v5 init];
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
    [(_TVShelfViewLayout *)v2 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
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
      [(_TVShelfViewLayout *)self snapContent];
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
  v87.receiver = self;
  v87.super_class = _TVShelfViewLayout;
  [(_TVShelfViewLayout *)&v87 prepareLayout];
  collectionView = [(_TVShelfViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];

  if (!shelfLayoutSections)
  {
    layoutHelper = [(_TVShelfViewLayout *)self layoutHelper];
    if (!layoutHelper)
    {
      layoutHelper = [[_TVShelfLayoutHelper alloc] initWithShelfViewLayout:self];
      [(_TVShelfViewLayout *)self setLayoutHelper:layoutHelper];
    }

    v78 = [MEMORY[0x277CBEB18] arrayWithCapacity:numberOfSections];
    if (numberOfSections >= 1)
    {
      v7 = 0;
      v83 = *(MEMORY[0x277CBF3A0] + 8);
      rect1 = *MEMORY[0x277CBF3A0];
      v80 = *(MEMORY[0x277CBF3A0] + 24);
      rect = *(MEMORY[0x277CBF3A0] + 16);
      do
      {
        v8 = objc_alloc_init(TVShelfLayoutSection);
        [(_TVShelfLayoutHelper *)layoutHelper frameForHeaderInSection:v7];
        [(TVShelfLayoutSection *)v8 setSectionHeaderFrame:?];
        [(_TVShelfLayoutHelper *)layoutHelper insetForSection:v7];
        [(TVShelfLayoutSection *)v8 setSectionInset:?];
        v9 = [collectionView numberOfItemsInSection:v7];
        [(TVShelfLayoutSection *)v8 setNumberOfItems:v9];
        height = v80;
        width = rect;
        y = v83;
        x = rect1;
        if (v9 >= 1)
        {
          v14 = 0;
          y = v83;
          x = rect1;
          height = v80;
          width = rect;
          do
          {
            v15 = [MEMORY[0x277CCAA70] indexPathForItem:v14 inSection:v7];
            [(_TVShelfLayoutHelper *)layoutHelper frameForItemAtIndexPath:v15];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            [(TVShelfLayoutSection *)v8 setItemFrame:v14 atIndex:v17, v19, v21, v23];
            v88.origin.x = x;
            v88.origin.y = y;
            v88.size.width = width;
            v88.size.height = height;
            v97.origin.x = v17;
            v97.origin.y = v19;
            v97.size.width = v21;
            v97.size.height = v23;
            v89 = CGRectUnion(v88, v97);
            x = v89.origin.x;
            y = v89.origin.y;
            width = v89.size.width;
            height = v89.size.height;
            ++v14;
          }

          while (v9 != v14);
        }

        [(TVShelfLayoutSection *)v8 setItemsBoundingFrame:x, y, width, height];
        [v78 addObject:v8];

        ++v7;
      }

      while (v7 != numberOfSections);
    }

    v24 = [v78 copy];
    [(_TVShelfViewLayout *)self setShelfLayoutSections:v24];

    delegate = [collectionView delegate];
    v26 = [delegate indexPathForPreferredFocusedViewInCollectionView:collectionView];

    rowCount = [(_TVShelfViewLayout *)self rowCount];
    item = [v26 item];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    focusedView = [mainScreen focusedView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [collectionView indexPathForCell:focusedView];
      v32 = [v31 isEqual:v26];

      if (v32)
      {
        if (!(item % rowCount))
        {
          v33 = [v78 objectAtIndexedSubscript:{objc_msgSend(v26, "section")}];
          [(_TVShelfViewLayout *)self _bumpHeaderForLayoutSection:v33 forIndexPath:v26];
        }
      }
    }

    shelfLayoutSections = 0;
  }

  [collectionView contentOffset];
  v35 = v34;
  [collectionView contentInset];
  if (numberOfSections >= 1)
  {
    v37 = 0;
    v38 = *MEMORY[0x277CBF3A0];
    v39 = *(MEMORY[0x277CBF3A0] + 8);
    v40 = *(MEMORY[0x277CBF3A0] + 16);
    rect1a = *(MEMORY[0x277CBF3A0] + 24);
    v75 = v35 + v36;
    v76 = v40;
    v77 = v39;
    v79 = *MEMORY[0x277CBF3A0];
    do
    {
      shelfLayoutSections2 = [(_TVShelfViewLayout *)self shelfLayoutSections];
      v42 = [shelfLayoutSections2 objectAtIndex:v37];

      [v42 sectionHeaderFrame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v90.origin.x = v38;
      v90.origin.y = v39;
      v90.size.width = v40;
      v90.size.height = rect1a;
      v98.origin.x = v44;
      v98.origin.y = v46;
      v98.size.width = v48;
      v98.size.height = v50;
      if (!CGRectEqualToRect(v90, v98))
      {
        v81 = v46;
        v84 = v44;
        [v42 firstItemFrame];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        [v42 lastItemFrame];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v91.origin.x = v52;
        v91.origin.y = v54;
        v91.size.width = v56;
        v67 = v60;
        v91.size.height = v58;
        v68 = v62;
        v69 = fmax(v75, CGRectGetMinX(v91));
        v92.origin.x = v67;
        v92.origin.y = v68;
        v92.size.width = v64;
        v92.size.height = v66;
        v70 = fmin(v69, CGRectGetMinX(v92));
        if (numberOfSections == 1)
        {
          v71 = v84;
        }

        else
        {
          v93.origin.x = v70;
          v93.origin.y = v81;
          v93.size.width = v48;
          v93.size.height = v50;
          MaxX = CGRectGetMaxX(v93);
          v94.origin.x = v67;
          v94.origin.y = v68;
          v94.size.width = v64;
          v94.size.height = v66;
          v73 = MaxX < CGRectGetMaxX(v94);
          v71 = v84;
          if (!v73)
          {
            v95.origin.x = v67;
            v95.origin.y = v68;
            v95.size.width = v64;
            v95.size.height = v66;
            v74 = CGRectGetMaxX(v95);
            v96.origin.x = v84;
            v96.origin.y = v81;
            v96.size.width = v48;
            v96.size.height = v50;
            v70 = v74 - CGRectGetWidth(v96);
          }
        }

        [v42 setSectionHeaderHorizontalOffset:v70 - v71];
        v39 = v77;
        v38 = v79;
        v40 = v76;
      }

      ++v37;
      --numberOfSections;
    }

    while (numberOfSections);
  }

  if (!shelfLayoutSections)
  {
    [(_TVShelfViewLayout *)self snapContent];
  }
}

- (CGSize)collectionViewContentSize
{
  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
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
  [(_TVShelfViewLayout *)self computedContentHeight];
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
    array = [MEMORY[0x277CBEB18] array];
    focusedItemIndexPath = [v5 focusedItemIndexPath];
    v8 = focusedItemIndexPath;
    if (focusedItemIndexPath)
    {
      v9 = focusedItemIndexPath;
    }

    else
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0x7FFFFFFFFFFFFFFFLL];
    }

    v10 = v9;

    item = [v10 item];
    v12 = item % [(_TVShelfViewLayout *)self rowCount]== 0;
    shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50___TVShelfViewLayout_invalidateLayoutWithContext___block_invoke;
    v17[3] = &unk_279D6F0E8;
    v21 = v12;
    v18 = v10;
    selfCopy = self;
    v20 = array;
    v14 = array;
    v15 = v10;
    [shelfLayoutSections enumerateObjectsUsingBlock:v17];

    [v5 invalidateSupplementaryElementsOfKind:@"TVShelfLayoutElementKindHeader" atIndexPaths:v14];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([contextCopy invalidateLayout] & 1) != 0 || (objc_msgSend(contextCopy, "invalidateEverything") & 1) != 0 || objc_msgSend(contextCopy, "invalidateDataSourceCounts"))
  {
    [(_TVShelfViewLayout *)self setLayoutHelper:0];
    [(_TVShelfViewLayout *)self setShelfLayoutSections:0];
  }

  v16.receiver = self;
  v16.super_class = _TVShelfViewLayout;
  [(_TVShelfViewLayout *)&v16 invalidateLayoutWithContext:contextCopy];
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  array = [MEMORY[0x277CBEB18] array];
  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
  v10 = [shelfLayoutSections count];

  if (v10)
  {
    v11 = 0;
    v37 = *(MEMORY[0x277CBF3A8] + 8);
    v38 = *MEMORY[0x277CBF3A8];
    v41 = *(MEMORY[0x277CBF3A0] + 8);
    v42 = *MEMORY[0x277CBF3A0];
    v39 = *(MEMORY[0x277CBF3A0] + 24);
    v40 = *(MEMORY[0x277CBF3A0] + 16);
    do
    {
      shelfLayoutSections2 = [(_TVShelfViewLayout *)self shelfLayoutSections];
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
          v24 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v11];
          v25 = [(_TVShelfViewLayout *)self layoutAttributesForSupplementaryViewOfKind:@"TVShelfLayoutElementKindHeader" atIndexPath:v24];
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
              v33 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:v11];
              v34 = [(_TVShelfViewLayout *)self layoutAttributesForItemAtIndexPath:v33];
              [array addObject:v34];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v10);
  }

  v35 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v35;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:pathCopy];
  section = [pathCopy section];
  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
  v8 = [shelfLayoutSections count];

  if (section < v8)
  {
    shelfLayoutSections2 = [(_TVShelfViewLayout *)self shelfLayoutSections];
    v10 = [shelfLayoutSections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    item = [pathCopy item];
    if (item < [v10 numberOfItems])
    {
      [v10 itemFrameAtIndex:{objc_msgSend(pathCopy, "item")}];
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v16 = TVMLKitLogObject;
        if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = pathCopy;
          _os_log_impl(&dword_26CD9A000, v16, OS_LOG_TYPE_DEFAULT, "shelf cell frame not finite for %@", &v18, 0xCu);
        }

        v12 = *MEMORY[0x277CBF3A0];
        v13 = *(MEMORY[0x277CBF3A0] + 8);
        v14 = *(MEMORY[0x277CBF3A0] + 16);
        v15 = *(MEMORY[0x277CBF3A0] + 24);
      }

      [v5 setFrame:{v12, v13, v14, v15}];
    }
  }

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:kind withIndexPath:pathCopy];
  section = [pathCopy section];
  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
  v10 = [shelfLayoutSections count];

  if (section < v10)
  {
    shelfLayoutSections2 = [(_TVShelfViewLayout *)self shelfLayoutSections];
    v12 = [shelfLayoutSections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    [v12 sectionHeaderFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 sectionHeaderVerticalBump];
    [v7 setFrame:{v14, v16 - v21, v18, v20}];
    memset(&v25, 0, sizeof(v25));
    [v12 sectionHeaderHorizontalOffset];
    CGAffineTransformMakeTranslation(&v25, v22, 0.0);
    v24 = v25;
    [v7 setTransform:&v24];
  }

  return v7;
}

- (int64_t)computedRowCount
{
  layoutHelper = [(_TVShelfViewLayout *)self layoutHelper];
  layoutHelper2 = [(_TVShelfViewLayout *)self layoutHelper];

  if (!layoutHelper2)
  {
    v5 = [[_TVShelfLayoutHelper alloc] initWithShelfViewLayout:self];

    [(_TVShelfViewLayout *)self setLayoutHelper:v5];
    layoutHelper = v5;
  }

  actualRowCount = [layoutHelper actualRowCount];

  return actualRowCount;
}

- (double)computedContentHeight
{
  layoutHelper = [(_TVShelfViewLayout *)self layoutHelper];
  layoutHelper2 = [(_TVShelfViewLayout *)self layoutHelper];

  if (!layoutHelper2)
  {
    v5 = [[_TVShelfLayoutHelper alloc] initWithShelfViewLayout:self];

    [(_TVShelfViewLayout *)self setLayoutHelper:v5];
    layoutHelper = v5;
  }

  [layoutHelper tallestHeaderHeight];
  v6 = 0.0;
  if (v7 > 0.0)
  {
    [(_TVShelfViewLayout *)self headerBottomMargin];
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
  v49 = *MEMORY[0x277D85DE8];
  MidX = CGRectGetMidX(frame);
  v51.origin.x = x;
  v51.origin.y = y;
  v43 = width;
  v51.size.width = width;
  v51.size.height = height;
  MidY = CGRectGetMidY(v51);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v42 = *(MEMORY[0x277CBF3A0] + 24);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
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
  v3 = [(_TVShelfViewLayout *)self layoutHelper:change.origin.x];
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
    LOBYTE(v20) = 0;
  }

  else
  {
    v10 = v8;
    collectionView = [(_TVShelfViewLayout *)self collectionView];
    [collectionView contentInset];
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [collectionView selectionMarginsForCellAtIndexPath:pathCopy];
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v15 = *MEMORY[0x277D768C8];
      v17 = *(MEMORY[0x277D768C8] + 8);
      v19 = *(MEMORY[0x277D768C8] + 24);
    }

    [collectionView contentOffset];
    v22 = v21;
    [sectionCopy itemFrameAtIndex:{objc_msgSend(pathCopy, "item")}];
    v24 = v23;
    v26 = v25;
    [sectionCopy sectionInset];
    v28 = fmax(v10 - v22, v27);
    [sectionCopy sectionHeaderFrame];
    if (v24 - v17 - v22 >= v13)
    {
      v31 = v24 - v17 - v22;
    }

    else
    {
      v31 = v13;
    }

    v32 = 0;
    v33 = 1.0;
    v34 = 0;
    v35 = 1.0;
    v36 = v28;
    v30 = v19 + v17 + v26;
    v20 = CGRectIntersectsRect(*(&v29 - 2), *&v31);
    if (v20)
    {
      [(_TVShelfViewLayout *)self headerSelectionMargin];
      v38 = v37;
      [(_TVShelfViewLayout *)self headerBottomMargin];
      [sectionCopy setSectionHeaderVerticalBump:{fmax(v38 - (v39 - v15), 0.0)}];
    }
  }

  return v20;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(_TVShelfViewLayout *)self shouldSnapContent])
  {
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);

    [(_TVShelfViewLayout *)self targetContentOffsetForProposedContentOffset:x withScrollingVelocity:y, v6, v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVShelfViewLayout;
    [(_TVShelfViewLayout *)&v10 targetContentOffsetForProposedContentOffset:x, y];
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
  if ([(_TVShelfViewLayout *)self shouldSnapContent])
  {
    v53 = v6;
    collectionView = [(_TVShelfViewLayout *)self collectionView];
    [collectionView bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    collectionView2 = [(_TVShelfViewLayout *)self collectionView];
    [collectionView2 contentSize];
    v20 = v19;

    collectionView3 = [(_TVShelfViewLayout *)self collectionView];
    [collectionView3 contentInset];
    v23 = v22;
    v25 = v24;

    v26 = v25 + v20 + v23;
    v56.origin.x = v11;
    v56.origin.y = v13;
    v56.size.width = v15;
    v56.size.height = v17;
    if (v26 <= CGRectGetWidth(v56))
    {
      v7 = -v23;
      v29 = v53;
    }

    else
    {
      shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
      v28 = [shelfLayoutSections copy];

      v52 = v7 + v23;
      v57.origin.x = v11;
      v57.origin.y = v13;
      v57.size.width = v15;
      v57.size.height = v17;
      if (v26 - (v7 + v23) <= CGRectGetWidth(v57))
      {
        v59.origin.x = v11;
        v59.origin.y = v13;
        v59.size.width = v15;
        v59.size.height = v17;
        v7 = v26 - CGRectGetWidth(v59) - v23;
        v29 = v53;
      }

      else
      {
        v29 = v53;
        v30 = [(_TVShelfViewLayout *)self _indexPathForItemAtProposedContentOffset:v7, v53];
        v31 = v30;
        if (v30)
        {
          v32 = [v28 objectAtIndex:{objc_msgSend(v30, "section")}];
          [v32 itemFrameAtIndex:{objc_msgSend(v31, "item")}];
          v33 = v58.origin.x;
          v34 = v58.origin.y;
          width = v58.size.width;
          height = v58.size.height;
          if (v52 > CGRectGetMidX(v58))
          {
            item = [v31 item];
            if (item >= [v32 numberOfItems])
            {
              v44 = [v28 indexOfObject:v32] + 1;
              if (v44 < [v28 count])
              {
                v45 = [v28 objectAtIndex:v44];

                [v45 firstItemFrame];
                v33 = v46;
                v34 = v47;
                width = v48;
                height = v49;
                v32 = v45;
              }
            }

            else
            {
              [v32 itemFrameAtIndex:{objc_msgSend(v31, "item") + 1}];
              v33 = v38;
              v34 = v39;
              width = v40;
              height = v41;
            }
          }

          v60.origin.x = v33;
          v60.origin.y = v34;
          v60.size.width = width;
          v60.size.height = height;
          v7 = CGRectGetMinX(v60) - v23;
        }
      }
    }
  }

  else
  {
    v54.receiver = self;
    v54.super_class = _TVShelfViewLayout;
    [(_TVShelfViewLayout *)&v54 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
    v7 = v42;
    v29 = v43;
  }

  v50 = v7;
  v51 = v29;
  result.y = v51;
  result.x = v50;
  return result;
}

- (id)_indexPathForItemAtProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v39 = *MEMORY[0x277D85DE8];
  collectionView = [(_TVShelfViewLayout *)self collectionView];
  [collectionView contentInset];
  v8 = v7;
  v10 = v9;

  shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
  v12 = [shelfLayoutSections copy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = y + v8;
    v17 = x + v10;
    v18 = *v35;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v34 + 1) + 8 * v19);
      [v20 itemsBoundingFrame];
      v41.x = v17;
      v41.y = v16;
      if (CGRectContainsPoint(v43, v41))
      {
        break;
      }

      if (v15 == ++v19)
      {
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
      goto LABEL_15;
    }

    v22 = 0;
    while (1)
    {
      [v21 itemFrameAtIndex:v22];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(_TVShelfViewLayout *)self minimumInteritemSpacing];
      v44.size.width = v31 + v28;
      v44.origin.x = v24;
      v44.origin.y = v26;
      v44.size.height = v30;
      v42.x = v17;
      v42.y = v16;
      if (CGRectContainsPoint(v44, v42))
      {
        break;
      }

      if (++v22 >= [v21 numberOfItems])
      {
        goto LABEL_15;
      }
    }

    v32 = [MEMORY[0x277CCAA70] indexPathForItem:v22 inSection:{objc_msgSend(v13, "indexOfObject:", v21)}];
  }

  else
  {
LABEL_9:

    v21 = 0;
LABEL_15:
    v32 = 0;
  }

  return v32;
}

- (void)snapContentToIndexPath:(id)path
{
  pathCopy = path;
  if ([(_TVShelfViewLayout *)self shouldSnapContent])
  {
    collectionView = [(_TVShelfViewLayout *)self collectionView];
    [collectionView contentOffset];
    [(_TVShelfViewLayout *)self targetContentOffsetForProposedContentOffset:?];
    v6 = v5;
    v8 = v7;
    if (pathCopy)
    {
      section = [pathCopy section];
      shelfLayoutSections = [(_TVShelfViewLayout *)self shelfLayoutSections];
      v11 = [shelfLayoutSections count];

      if (section < v11)
      {
        collectionView2 = [(_TVShelfViewLayout *)self collectionView];
        [collectionView2 contentInset];
        v14 = v13;

        shelfLayoutSections2 = [(_TVShelfViewLayout *)self shelfLayoutSections];
        v16 = [shelfLayoutSections2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

        item = [pathCopy item];
        if (item < [v16 numberOfItems])
        {
          [v16 itemFrameAtIndex:{objc_msgSend(pathCopy, "item")}];
          v6 = CGRectGetMinX(v20) - v14;
        }
      }
    }

    [collectionView setContentOffset:0 animated:{v6, v8}];
  }
}

- (id)indexPathForSnappedContent
{
  if ([(_TVShelfViewLayout *)self shouldSnapContent])
  {
    collectionView = [(_TVShelfViewLayout *)self collectionView];
    [collectionView contentOffset];
    v4 = [(_TVShelfViewLayout *)self _indexPathForItemAtProposedContentOffset:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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