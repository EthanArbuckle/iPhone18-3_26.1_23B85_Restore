@interface TUICandidateLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGPoint)gridLineOffset;
- (CGSize)collectionViewContentSize;
- (TUICandidateLayout)init;
- (UIEdgeInsets)gridLinePadding;
- (UIEdgeInsets)gridPadding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyForDummyCandidateIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)clearLayoutAttributes;
- (void)invalidateLayout;
- (void)justify:(id)justify rowStartX:(double)x maxWidth:(double)width remainingWidth:(double)remainingWidth endOfSection:(BOOL)section;
- (void)layoutSlottedCandidates;
- (void)prepareLayout;
- (void)prepareLayoutForMultiRow;
- (void)prepareLayoutForSingleRow;
- (void)rotateAttributesBy90Degrees;
@end

@implementation TUICandidateLayout

- (CGPoint)gridLineOffset
{
  x = self->_gridLineOffset.x;
  y = self->_gridLineOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)gridLinePadding
{
  top = self->_gridLinePadding.top;
  left = self->_gridLinePadding.left;
  bottom = self->_gridLinePadding.bottom;
  right = self->_gridLinePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gridPadding
{
  top = self->_gridPadding.top;
  left = self->_gridPadding.left;
  bottom = self->_gridPadding.bottom;
  right = self->_gridPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"Line"])
  {
    v8 = [pathCopy row];
    v9 = 288;
    goto LABEL_5;
  }

  if ([kindCopy isEqualToString:@"SlottedCellSeparator"])
  {
    v8 = [pathCopy row];
    v9 = 296;
LABEL_5:
    if (v8 < [*(&self->super.super.isa + v9) count])
    {
      groupHeaderAttributes = *(&self->super.super.isa + v9);
      section2 = [pathCopy row];
LABEL_7:
      v12 = [(NSMutableArray *)groupHeaderAttributes objectAtIndexedSubscript:section2];
LABEL_8:
      v13 = v12;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ([kindCopy isEqualToString:@"GroupHeader"])
  {
    section = [pathCopy section];
    if (section < [(NSMutableArray *)self->_groupHeaderAttributes count])
    {
      groupHeaderAttributes = self->_groupHeaderAttributes;
      section2 = [pathCopy section];
      goto LABEL_7;
    }
  }

  else
  {
    if ([kindCopy isEqualToString:@"CustomHeader"])
    {
      v12 = self->_customHeaderAttributes;
      goto LABEL_8;
    }

    if ([kindCopy isEqualToString:@"DummyCandidate"])
    {
      v15 = [(TUICandidateLayout *)self keyForDummyCandidateIndexPath:pathCopy];
      v13 = [(NSMutableDictionary *)self->_dummyCandidateAttributes objectForKey:v15];

      goto LABEL_17;
    }
  }

LABEL_16:
  v13 = 0;
LABEL_17:

  return v13;
}

- (id)keyForDummyCandidateIndexPath:(id)path
{
  v3 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  return [v3 stringWithFormat:@"%lld, %lld", section, v6];
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= -[NSMutableArray count](self->_candidateAttributes, "count") || (v6 = [pathCopy row], -[NSMutableArray objectAtIndexedSubscript:](self->_candidateAttributes, "objectAtIndexedSubscript:", objc_msgSend(pathCopy, "section")), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 >= v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_candidateAttributes, "objectAtIndexedSubscript:", [pathCopy section]);
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v10;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  CGRectGetMaxY(rect);
  v8 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__TUICandidateLayout_layoutAttributesForElementsInRect___block_invoke;
  aBlock[3] = &unk_1E72D1538;
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  v9 = v8;
  v29 = v9;
  v10 = _Block_copy(aBlock);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_candidateAttributes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v10[2](v10, *(*(&v24 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  (v10)[2](v10, self->_lineAttributes);
  (v10)[2](v10, self->_slottedCellSeparatorAttributes);
  (v10)[2](v10, self->_groupHeaderAttributes);
  customHeaderAttributes = self->_customHeaderAttributes;
  if (customHeaderAttributes)
  {
    [(UICollectionViewLayoutAttributes *)customHeaderAttributes frame];
    v37.origin.x = v17;
    v37.origin.y = v18;
    v37.size.width = v19;
    v37.size.height = v20;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    if (CGRectIntersectsRect(v36, v37))
    {
      [v9 addObject:self->_customHeaderAttributes];
    }
  }

  allValues = [(NSMutableDictionary *)self->_dummyCandidateAttributes allValues];
  [v9 addObjectsFromArray:allValues];

  v22 = v9;
  return v9;
}

void __56__TUICandidateLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 frame];
        v19.origin.x = v9;
        v19.origin.y = v10;
        v19.size.width = v11;
        v19.size.height = v12;
        if (CGRectIntersectsRect(*(a1 + 40), v19))
        {
          [*(a1 + 32) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (CGSize)collectionViewContentSize
{
  lastObject = [(NSMutableArray *)self->_candidateAttributes lastObject];
  v3LastObject = [lastObject lastObject];

  if ([(TUICandidateLayout *)self rowType])
  {
    if ([(TUICandidateLayout *)self layoutOrientation]== 1)
    {
      firstObject = [(NSMutableArray *)self->_candidateAttributes firstObject];
      v5FirstObject = [firstObject firstObject];
      [v5FirstObject frame];
      MaxX = CGRectGetMaxX(v21);
      collectionView = [(TUICandidateLayout *)self collectionView];
      [collectionView frame];
      MaxY = v9;
    }

    else
    {
      if ([(TUICandidateLayout *)self transitionState])
      {
        collectionView2 = [(TUICandidateLayout *)self collectionView];
        [collectionView2 bounds];
        Height = CGRectGetHeight(v23);
      }

      else
      {
        Height = 0.0;
      }

      collectionView3 = [(TUICandidateLayout *)self collectionView];
      [collectionView3 bounds];
      MaxX = CGRectGetWidth(v26);
      [v3LastObject frame];
      MaxY = Height + CGRectGetMaxY(v27);
    }
  }

  else
  {
    if ([(NSMutableArray *)self->_slottedCellSeparatorAttributes count])
    {
      collectionView4 = [(TUICandidateLayout *)self collectionView];
      [collectionView4 bounds];
      MaxX = CGRectGetWidth(v22);
    }

    else
    {
      [v3LastObject frame];
      MaxX = CGRectGetMaxX(v24);
    }

    [v3LastObject frame];
    MaxY = CGRectGetMaxY(v25);
    collectionView5 = [(TUICandidateLayout *)self collectionView];
    [collectionView5 frame];
    v16 = v15;

    if (MaxY >= v16)
    {
      MaxY = v16;
    }
  }

  v18 = MaxX;
  v19 = MaxY;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)justify:(id)justify rowStartX:(double)x maxWidth:(double)width remainingWidth:(double)remainingWidth endOfSection:(BOOL)section
{
  sectionCopy = section;
  v63 = *MEMORY[0x1E69E9840];
  justifyCopy = justify;
  if ([justifyCopy count])
  {
    v13 = width - x;
    v14 = [justifyCopy count];
    [(TUICandidateLayout *)self minimumInterItemSpacing];
    v16 = v15;
    v17 = [justifyCopy count];
    columnsCount = [(TUICandidateLayout *)self columnsCount];
    v19 = [justifyCopy count];
    if (columnsCount <= v19)
    {
      columnsCount = v19;
    }

    if (v13 > 0.0)
    {
      v20 = [justifyCopy count];
      if (remainingWidth > 0.0)
      {
        if (v20)
        {
          v21 = v13 - (v14 - 1) * v16;
          v22 = v21 / v17;
          if (sectionCopy && v21 * 0.5 < remainingWidth)
          {
            [(TUICandidateLayout *)self minimumInterItemSpacing];
            v22 = (v13 - (columnsCount + -1.0) * v23) / columnsCount;
            v24 = fmax(columnsCount - [justifyCopy count], 0.0);
            [(TUICandidateLayout *)self minimumInterItemSpacing];
            v26 = floor((remainingWidth - v24 * v25) / v22);
            if (v26 > v24)
            {
              v26 = v24;
            }

            v27 = v26;
            [(TUICandidateLayout *)self minimumInterItemSpacing];
            remainingWidth = remainingWidth - v22 * v27 - v27 * v28;
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v29 = justifyCopy;
          v30 = [v29 countByEnumeratingWithState:&v57 objects:v62 count:16];
          if (!v30)
          {
            goto LABEL_31;
          }

          v31 = v30;
          v32 = *v58;
          v33 = 0.0;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v58 != v32)
              {
                objc_enumerationMutation(v29);
              }

              [*(*(&v57 + 1) + 8 * i) frame];
              v35 = v22 - CGRectGetWidth(v64);
              if (v35 < 1.0)
              {
                v35 = 1.0;
              }

              v33 = v33 + v35;
            }

            v31 = [v29 countByEnumeratingWithState:&v57 objects:v62 count:16];
          }

          while (v31);

          if (v33 > 0.0)
          {
            collectionView = [(TUICandidateLayout *)self collectionView];
            v52 = TUIScreenScaleForView(collectionView);

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v37 = v29;
            v38 = [v37 countByEnumeratingWithState:&v53 objects:v61 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v54;
              v41 = remainingWidth / v33;
              do
              {
                v42 = 0;
                xCopy2 = x;
                do
                {
                  if (*v54 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v44 = *(*(&v53 + 1) + 8 * v42);
                  [v44 frame];
                  y = v65.origin.y;
                  width = v65.size.width;
                  height = v65.size.height;
                  v48 = v22 - CGRectGetWidth(v65);
                  if (v48 < 1.0)
                  {
                    v48 = 1.0;
                  }

                  v49 = width + v41 * v48;
                  v66.origin.x = xCopy2;
                  v66.origin.y = y;
                  v66.size.width = v49;
                  v66.size.height = height;
                  MaxX = CGRectGetMaxX(v66);
                  [(TUICandidateLayout *)self minimumInterItemSpacing];
                  x = MaxX + v51;
                  [v44 setFrame:{TUIRectIntegralWithScale(xCopy2, y, v49, height, v52)}];
                  ++v42;
                  xCopy2 = x;
                }

                while (v39 != v42);
                v39 = [v37 countByEnumeratingWithState:&v53 objects:v61 count:16];
              }

              while (v39);
            }

LABEL_31:
          }
        }
      }
    }
  }
}

- (void)rotateAttributesBy90Degrees
{
  v43 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_lineAttributes removeAllObjects];
  lastObject = [(NSMutableArray *)self->_candidateAttributes lastObject];
  v3LastObject = [lastObject lastObject];
  [v3LastObject frame];
  MaxY = CGRectGetMaxY(v44);

  collectionView = [(TUICandidateLayout *)self collectionView];
  [collectionView bounds];
  v8 = v7;

  if (MaxY >= v8)
  {
    v9 = MaxY;
  }

  else
  {
    v9 = v8;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = self->_candidateAttributes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v32 + 1) + 8 * j);
              [v21 frame];
              [v21 setFrame:{v9 - CGRectGetMaxY(v45), v45.origin.x, v45.size.height, v45.size.width}];
            }

            v18 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v18);
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = self->_groupHeaderAttributes;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * k);
        [v27 frame];
        [v27 setFrame:{v9 - CGRectGetMaxY(v46), v46.origin.x, v46.size.height, v46.size.width}];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v24);
  }
}

- (void)prepareLayoutForMultiRow
{
  collectionView = [(TUICandidateLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  layoutOrientation = [(TUICandidateLayout *)self layoutOrientation];
  collectionView2 = [(TUICandidateLayout *)self collectionView];
  [collectionView2 bounds];
  if (layoutOrientation == 1)
  {
    Height = CGRectGetHeight(*&v7);
  }

  else
  {
    Height = CGRectGetWidth(*&v7);
  }

  v12 = Height;

  v13 = 0.0;
  v14 = 0.0;
  if ([(TUICandidateLayout *)self gridContainsArrowButton])
  {
    [(TUICandidateLayout *)self gridPadding];
    v14 = v15;
  }

  [(TUICandidateLayout *)self gridLinePadding];
  v17 = v16;
  collectionView3 = [(TUICandidateLayout *)self collectionView];
  v19 = [dataSource numberOfSectionsInCollectionView:collectionView3];

  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      collectionView4 = [(TUICandidateLayout *)self collectionView];
      [dataSource collectionView:collectionView4 layout:self widthForGroupHeaderInSection:i];
      v23 = v22;

      if (v13 < v23)
      {
        v13 = v23;
      }
    }

    shouldJustifyRow = 0;
    v25 = v13 > 0.0;
    if (v19 == 1 && v13 <= 0.0)
    {
      shouldJustifyRow = [(TUICandidateLayout *)self shouldJustifyRow];
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    shouldJustifyRow = 0;
  }

  v26 = v12 - v14;
  v96 = shouldJustifyRow;
  if (!shouldJustifyRow && v26 > 15.0 && [(TUICandidateLayout *)self showsIndex])
  {
    v26 = v26 + -15.0;
  }

  collectionView5 = [(TUICandidateLayout *)self collectionView];
  v28 = TUIScreenScaleForView(collectionView5);

  if (v25)
  {
    v29 = v13;
  }

  else
  {
    v29 = 0.0;
  }

  [(TUICandidateLayout *)self gridPadding];
  v31 = v29 + v30;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = v29 + v30;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  [(TUICandidateLayout *)self gridPadding];
  v33 = v32;
  [(TUICandidateLayout *)self gridLinePadding];
  v122 = v33 + v34;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3010000000;
  v117 = &unk_1900D41E9;
  v94 = *MEMORY[0x1E695F060];
  v118 = *MEMORY[0x1E695F060];
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  oldFirstVisibleIndexPath = [(TUICandidateLayout *)self oldFirstVisibleIndexPath];
  if ([oldFirstVisibleIndexPath row])
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = 0;
  }

  v109 = v36;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x3032000000;
  v100[3] = __Block_byref_object_copy_;
  v100[4] = __Block_byref_object_dispose_;
  v101 = 0;
  if (v31 < v26 && v19 >= 1)
  {
    v93 = v19;
    aBlock[1] = 3221225472;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[2] = __46__TUICandidateLayout_prepareLayoutForMultiRow__block_invoke;
    aBlock[3] = &unk_1E72D1510;
    v92 = v25;
    v98 = v25;
    aBlock[4] = self;
    aBlock[5] = &v110;
    aBlock[6] = &v106;
    aBlock[7] = &v102;
    aBlock[8] = v100;
    aBlock[9] = &v114;
    v99 = v96;
    *&aBlock[12] = v31;
    *&aBlock[13] = v26;
    aBlock[10] = &v123;
    aBlock[11] = &v119;
    *&aBlock[14] = v28;
    *&aBlock[15] = v12 - v17;
    v38 = _Block_copy(aBlock);
    if ([(TUICandidateLayout *)self showExtraLineBeforeFirstRow])
    {
      v38[2](v38, 0, 1);
    }

    v39 = 0;
    v40 = v26 - v31;
    v95 = v38;
    do
    {
      collectionView6 = [(TUICandidateLayout *)self collectionView];
      v42 = dataSource;
      v43 = [dataSource collectionView:collectionView6 numberOfItemsInSection:v39];

      *(v115 + 2) = v94;
      v44 = v120[3];
      array = [MEMORY[0x1E695DF70] array];
      [(NSMutableArray *)self->_candidateAttributes addObject:array];
      array2 = [MEMORY[0x1E695DF70] array];
      if (v43 >= 1)
      {
        for (j = 0; j != v43; ++j)
        {
          v48 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:v39];
          layoutOrientation2 = [(TUICandidateLayout *)self layoutOrientation];
          collectionView7 = [(TUICandidateLayout *)self collectionView];
          if (layoutOrientation2)
          {
            v51 = 0;
          }

          else
          {
            v51 = v48;
          }

          [v42 collectionView:collectionView7 layout:self sizeForItemAtIndexPath:v51];
          v52 = v115;
          v115[4] = v53;
          v52[5] = v54;

          v55 = v124[3];
          [(TUICandidateLayout *)self minimumInterItemSpacing];
          if (v124[3] > v31)
          {
            if (v55 + v56 + *(v115 + 4) > v26 || -[TUICandidateLayout columnsCount](self, "columnsCount") && (v57 = [array2 count], v57 >= -[TUICandidateLayout columnsCount](self, "columnsCount")))
            {
              (v95)[2](v95, array2, 0);
            }
          }

          if (v107[3] != v111[3] || [(TUICandidateLayout *)self transitionState]!= 1)
          {
            v58 = *(v115 + 4);
            if (v58 >= v40)
            {
              v58 = v26 - v31;
            }

            *(v115 + 4) = v58;
          }

          if (!v96 && [(TUICandidateLayout *)self columnsCount])
          {
            v59 = *(v115 + 4);
            [(TUICandidateLayout *)self minimumInterItemSpacing];
            v61 = v40 - v60 * [(TUICandidateLayout *)self columnsCount];
            v62 = v61 / [(TUICandidateLayout *)self columnsCount];
            if (v59 >= v62)
            {
              v62 = v59;
            }

            *(v115 + 4) = v62;
          }

          if ([(TUICandidateLayout *)self transitionState])
          {
            oldFirstVisibleIndexPath2 = [(TUICandidateLayout *)self oldFirstVisibleIndexPath];
            v64 = [v48 isEqual:oldFirstVisibleIndexPath2];

            if (v64)
            {
              v107[3] = v111[3];
              if (-[TUICandidateLayout transitionState](self, "transitionState") != 1 || [v48 item] || objc_msgSend(v48, "section") || (-[TUICandidateLayout oldFirstVisibleOffset](self, "oldFirstVisibleOffset"), v65 < 0.0))
              {
                v66 = v124[3];
                [(TUICandidateLayout *)self oldFirstVisibleOffset];
                v68 = v66 - v67;
              }

              else
              {
                v68 = fmax(*(v115 + 4) - v40, 0.0);
              }

              v103[3] = v68;
            }
          }

          v69 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForCellWithIndexPath:v48];
          if ([array2 count])
          {
            [(TUICandidateLayout *)self minimumInterItemSpacing];
            v71 = v70 + v124[3];
            v124[3] = v71;
          }

          else
          {
            v71 = v124[3];
          }

          [v69 setFrame:{v71, v120[3], *(v115 + 4), *(v115 + 5)}];
          [v69 setRow:v111[3]];
          [array addObject:v69];
          [array2 addObject:v69];
          v124[3] = *(v115 + 4) + v124[3];
        }
      }

      (v95)[2](v95, array2, 1);
      if (v92)
      {
        v72 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v39];
        v73 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"GroupHeader" withIndexPath:v72];

        [(TUICandidateLayout *)self gridPadding];
        [v73 setFrame:{v74, v44, v13, v120[3] - v44}];
        [(NSMutableArray *)self->_groupHeaderAttributes addObject:v73];
      }

      ++v39;
      dataSource = v42;
    }

    while (v39 != v93);
    if (*(v115 + 5) < 1.0)
    {
      collectionView8 = [(TUICandidateLayout *)self collectionView];
      [v42 collectionView:collectionView8 layout:self sizeForItemAtIndexPath:0];
      v76 = v115;
      v115[4] = v77;
      v76[5] = v78;
    }

    if ([(TUICandidateLayout *)self fillGridWithLines])
    {
      v79 = *(v115 + 5);
      if (v79 >= 1.0)
      {
        v87 = v120[3];
        for (k = v87 + v79; ; k = v120[3] + *(v115 + 5))
        {
          collectionView9 = [(TUICandidateLayout *)self collectionView];
          [collectionView9 bounds];
          v91 = v87 + v90;

          if (k >= v91)
          {
            break;
          }

          v95[2](v95, 0, 1);
        }
      }
    }

    [(TUICandidateLayout *)self customHeaderHeight];
    if (v80 > 0.0)
    {
      v81 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      v82 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"CustomHeader" withIndexPath:v81];
      customHeaderAttributes = self->_customHeaderAttributes;
      self->_customHeaderAttributes = v82;

      [(TUICandidateLayout *)self customHeaderHeight];
      v85 = -v84;
      [(TUICandidateLayout *)self customHeaderHeight];
      [(UICollectionViewLayoutAttributes *)self->_customHeaderAttributes setFrame:0.0, v85, v26, v86];
    }

    if ([(TUICandidateLayout *)self layoutOrientation]== 1 && [(TUICandidateLayout *)self columnsCount]== 1 && ![(TUICandidateLayout *)self fillGridWithLines])
    {
      [(TUICandidateLayout *)self rotateAttributesBy90Degrees];
    }
  }

  _Block_object_dispose(v100, 8);

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);
}

void __46__TUICandidateLayout_prepareLayoutForMultiRow__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == *(*(*(a1 + 48) + 8) + 24) + 1 && (*(a1 + 128) & 1) == 0)
  {
    v6 = [*(a1 + 32) transitionState] == 1 || objc_msgSend(*(a1 + 32), "transitionState") == 2;
  }

  else
  {
    v6 = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == *(*(*(a1 + 48) + 8) + 24))
  {
    if ([*(a1 + 32) transitionState] == 1)
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v78;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v78 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v77 + 1) + 8 * i);
            [v12 frame];
            [v12 setFrame:v13 - *(*(*(a1 + 56) + 8) + 24)];
          }

          v9 = [v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
        }

        while (v9);
      }
    }

    v14 = [v5 copy];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
LABEL_24:

    goto LABEL_25;
  }

  if (v6)
  {
    v17 = [*(*(*(a1 + 64) + 8) + 40) lastObject];
    [v17 frame];
    MaxX = CGRectGetMaxX(v86);

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v16 = v5;
    v19 = [v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v19)
    {
      v20 = v19;
      v63 = a3;
      v64 = v5;
      v21 = *v74;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v74 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v73 + 1) + 8 * j);
          v24 = [v23 indexPath];
          v25 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"DummyCandidate" withIndexPath:v24];

          [v23 frame];
          [v25 setFrame:{v27 + MaxX - *(*(a1 + 32) + 464), v26 - *(*(*(a1 + 72) + 8) + 40)}];
          v28 = *(a1 + 32);
          v29 = [v25 indexPath];
          v30 = [v28 keyForDummyCandidateIndexPath:v29];

          [*(*(a1 + 32) + 280) setObject:v25 forKey:v30];
        }

        v20 = [v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
      }

      while (v20);
      v5 = v64;
      a3 = v63;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (*(a1 + 129) == 1 && ([*(a1 + 32) transitionState] != 1 || *(*(*(a1 + 40) + 8) + 24) != *(*(*(a1 + 48) + 8) + 24)))
  {
    [*(a1 + 32) justify:v5 rowStartX:a3 maxWidth:*(a1 + 96) remainingWidth:*(a1 + 104) endOfSection:*(a1 + 104) - *(*(*(a1 + 80) + 8) + 24)];
  }

  if ([*(a1 + 32) columnsCount] == 1)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v31 = v5;
    v32 = [v31 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v70;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v70 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v69 + 1) + 8 * k);
          [v36 frame];
          [v36 setFrame:?];
          if ([*(a1 + 32) candidateNumberEnabled])
          {
            [v36 setCandidateNumber:*(*(*(a1 + 40) + 8) + 24)];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v33);
    }
  }

  else
  {
    if (![*(a1 + 32) candidateNumberEnabled])
    {
      goto LABEL_49;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v37 = v5;
    v38 = [v37 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v66;
      v41 = 1;
      do
      {
        v42 = 0;
        v43 = v41;
        do
        {
          if (*v66 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v41 = v43 + 1;
          [*(*(&v65 + 1) + 8 * v42++) setCandidateNumber:v43++];
        }

        while (v39 != v42);
        v39 = [v37 countByEnumeratingWithState:&v65 objects:v81 count:16];
      }

      while (v39);
    }
  }

LABEL_49:
  [v5 removeAllObjects];
  *(*(*(a1 + 80) + 8) + 24) = *(a1 + 96);
  v44 = *(*(*(a1 + 72) + 8) + 40);
  [*(a1 + 32) gridLinePadding];
  v46 = v44 + v45;
  [*(a1 + 32) interRowSpacing];
  *(*(*(a1 + 88) + 8) + 24) = v46 + v47 + *(*(*(a1 + 88) + 8) + 24);
  v48 = [*(a1 + 32) _inheritedRenderConfig];
  v49 = [v48 colorAdaptiveBackground];

  if (v49)
  {
    [*(a1 + 32) cellTopOffset];
    *(*(*(a1 + 88) + 8) + 24) = v50 + *(*(*(a1 + 88) + 8) + 24);
  }

  v51 = [MEMORY[0x1E696AC88] indexPathForRow:*(*(*(a1 + 40) + 8) + 24) inSection:0];
  v52 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"Line" withIndexPath:v51];

  if (a3)
  {
    [*(a1 + 32) gridPadding];
    v54 = v53;
  }

  else
  {
    v54 = *(a1 + 96);
  }

  v55 = 1.0 / *(a1 + 112);
  v56 = *(*(*(a1 + 88) + 8) + 24) - v55;
  v57 = [*(a1 + 32) _inheritedRenderConfig];
  v58 = [v57 colorAdaptiveBackground];

  if (v58)
  {
    [*(a1 + 32) lineTopOffset];
    v56 = v56 + v59 + -0.1;
  }

  [*(a1 + 32) gridLineOffset];
  v61 = v54 + v60;
  [*(a1 + 32) gridLineOffset];
  [v52 setFrame:{v61, v56 + v62, *(a1 + 120) - v54, v55}];
  [v52 setZIndex:10];
  if (*(*(*(a1 + 88) + 8) + 24) == 0.0 && ([*(a1 + 32) showExtraLineBeforeFirstRow] & 1) == 0)
  {
    [v52 setHidden:1];
  }

  [*(*(a1 + 32) + 288) addObject:v52];
  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)layoutSlottedCandidates
{
  v49 = *MEMORY[0x1E69E9840];
  collectionView = [(TUICandidateLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  collectionView2 = [(TUICandidateLayout *)self collectionView];
  v6 = [dataSource numberOfSectionsInCollectionView:collectionView2];

  if (v6 == 1)
  {
    slottedCandidatesCount = [dataSource slottedCandidatesCount];
    extraCandidatesCount = [dataSource extraCandidatesCount];
    collectionView3 = [(TUICandidateLayout *)self collectionView];
    [dataSource collectionView:collectionView3 numberOfItemsInSection:0];

    if (slottedCandidatesCount)
    {
      v10 = slottedCandidatesCount;
    }

    else
    {
      v10 = 1;
    }

    if (extraCandidatesCount)
    {
      v11 = slottedCandidatesCount != 0;
    }

    else
    {
      v11 = 0;
    }

    collectionView4 = [(TUICandidateLayout *)self collectionView];
    [collectionView4 bounds];
    Width = CGRectGetWidth(v50);

    collectionView5 = [(TUICandidateLayout *)self collectionView];
    v15 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    [dataSource collectionView:collectionView5 layout:self sizeForItemAtIndexPath:v15];
    v17 = v16;

    collectionView6 = [(TUICandidateLayout *)self collectionView];
    TUIScreenScaleForView(collectionView6);

    if (v11 || v10 != 1)
    {
      v20 = 0.0;
      if (v11)
      {
        v22 = 50.0;
      }

      else
      {
        v22 = 0.0;
      }

      if (v10 == 1 && v11)
      {
        [(TUICandidateLayout *)self singleSlottedCellMargin];
        v22 = 50.0;
        if (v23 > 0.0)
        {
          v20 = 50.0;
        }

        else
        {
          v20 = 0.0;
        }
      }
    }

    else
    {
      [(TUICandidateLayout *)self singleSlottedCellMargin];
      v20 = v19;
      [(TUICandidateLayout *)self singleSlottedCellMargin];
      v22 = v21;
    }

    [(TUICandidateLayout *)self slottedCandidatesIterItemSpacing];
    if ((Width - v20 - v22 - v24 * (v10 + v11 - 1)) / v10 > 0.0)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(NSMutableArray *)self->_candidateAttributes addObject:array];
      for (i = 0; i != v10; ++i)
      {
        v27 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
        v28 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForCellWithIndexPath:v27];

        [(TUICandidateLayout *)self slottedCandidatesIterItemSpacing];
        UIRectIntegralWithScale();
        [v28 setFrame:?];
        [array addObject:v28];
      }

      if (v11)
      {
        v29 = [MEMORY[0x1E696AC88] indexPathForRow:slottedCandidatesCount inSection:0];
        v30 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForCellWithIndexPath:v29];

        UIRectIntegralWithScale();
        [v30 setFrame:?];
        [array addObject:v30];
      }

      if ([(NSMutableArray *)self->_candidateAttributes count]&& ![(TUICandidateLayout *)self hideSlottedCellSeparators])
      {
        v47[0] = 0;
        v47[1] = v47;
        v47[2] = 0x2020000000;
        v47[3] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __45__TUICandidateLayout_layoutSlottedCandidates__block_invoke;
        aBlock[3] = &unk_1E72D14E8;
        *&aBlock[6] = Width;
        aBlock[7] = 0x3FF0000000000000;
        aBlock[8] = v17;
        aBlock[4] = self;
        aBlock[5] = v47;
        v31 = _Block_copy(aBlock);
        if ([array count])
        {
          firstObject = [array firstObject];
          [firstObject frame];
          MinX = CGRectGetMinX(v51);
          v31[2](v31, MinX);
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v34 = array;
        v35 = [v34 countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = 0;
          v38 = *v43;
          do
          {
            v39 = 0;
            v40 = v37;
            do
            {
              if (*v43 != v38)
              {
                objc_enumerationMutation(v34);
              }

              v37 = *(*(&v42 + 1) + 8 * v39);

              [v37 frame];
              MaxX = CGRectGetMaxX(v52);
              v31[2](v31, MaxX);
              ++v39;
              v40 = v37;
            }

            while (v36 != v39);
            v36 = [v34 countByEnumeratingWithState:&v42 objects:v48 count:16];
          }

          while (v36);
        }

        _Block_object_dispose(v47, 8);
      }
    }
  }
}

void __45__TUICandidateLayout_layoutSlottedCandidates__block_invoke(uint64_t a1, double a2)
{
  if (a2 > 0.0 && *(a1 + 48) > a2)
  {
    v4 = MEMORY[0x1E696AC88];
    ++*(*(*(a1 + 40) + 8) + 24);
    v5 = [v4 indexPathForRow:? inSection:?];
    v6 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"SlottedCellSeparator" withIndexPath:v5];

    [v6 setFrame:{a2 - *(a1 + 56), 0.0, *(a1 + 56), *(a1 + 64)}];
    [v6 setZIndex:10];
    [*(*(a1 + 32) + 296) addObject:v6];
  }
}

- (void)prepareLayoutForSingleRow
{
  collectionView = [(TUICandidateLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  collectionView2 = [(TUICandidateLayout *)self collectionView];
  v5 = [dataSource numberOfSectionsInCollectionView:collectionView2];

  if (v5)
  {
    [(TUICandidateLayout *)self gridPadding];
    v7 = v6;
    slottedCandidatesCount = [dataSource slottedCandidatesCount];
    if (slottedCandidatesCount + [dataSource extraCandidatesCount])
    {
      [(TUICandidateLayout *)self layoutSlottedCandidates];
    }

    else
    {
      v9 = 0;
      v24 = 1;
      do
      {
        array = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_candidateAttributes addObject:array];
        collectionView3 = [(TUICandidateLayout *)self collectionView];
        v12 = [dataSource collectionView:collectionView3 numberOfItemsInSection:v9];

        if (v12 >= 1)
        {
          for (i = 0; i != v12; ++i)
          {
            v14 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:v9];
            collectionView4 = [(TUICandidateLayout *)self collectionView];
            [dataSource collectionView:collectionView4 layout:self sizeForItemAtIndexPath:v14];
            v17 = v16;
            v19 = v18;

            v20 = [(UICollectionViewLayoutAttributes *)TUICandidateLayoutAttributes layoutAttributesForCellWithIndexPath:v14];
            [v20 setFrame:{v7, 0.0, v17, v19}];
            [(TUICandidateLayout *)self minimumInterItemSpacing];
            v22 = v21;
            [array addObject:v20];
            if ([(TUICandidateLayout *)self candidateNumberEnabled]&& v24 <= 9)
            {
              [v20 setCandidateNumber:?];
              ++v24;
            }

            v7 = v7 + v17 + v22;
          }
        }

        ++v9;
      }

      while (v9 != v5);
    }
  }
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = TUICandidateLayout;
  [(TUICandidateLayout *)&v3 prepareLayout];
  if (self->_dirty)
  {
    [(TUICandidateLayout *)self clearLayoutAttributes];
    if ([(TUICandidateLayout *)self rowType])
    {
      [(TUICandidateLayout *)self prepareLayoutForMultiRow];
    }

    else
    {
      [(TUICandidateLayout *)self prepareLayoutForSingleRow];
    }

    self->_dirty = 0;
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  collectionView = [(TUICandidateLayout *)self collectionView];
  [collectionView bounds];
  v8 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = v8 != CGRectGetWidth(v12);

  return v9;
}

- (void)invalidateLayout
{
  v3.receiver = self;
  v3.super_class = TUICandidateLayout;
  [(TUICandidateLayout *)&v3 invalidateLayout];
  [(TUICandidateLayout *)self clearLayoutAttributes];
  self->_dirty = 1;
}

- (void)clearLayoutAttributes
{
  [(NSMutableArray *)self->_candidateAttributes removeAllObjects];
  [(NSMutableDictionary *)self->_dummyCandidateAttributes removeAllObjects];
  [(NSMutableArray *)self->_lineAttributes removeAllObjects];
  [(NSMutableArray *)self->_slottedCellSeparatorAttributes removeAllObjects];
  [(NSMutableArray *)self->_groupHeaderAttributes removeAllObjects];
  customHeaderAttributes = self->_customHeaderAttributes;
  self->_customHeaderAttributes = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 41) = self->_rowType;
  *(v4 + 42) = self->_transitionState;
  v5 = [(NSIndexPath *)self->_oldFirstVisibleIndexPath copy];
  v6 = *(v4 + 44);
  *(v4 + 44) = v5;

  *(v4 + 45) = *&self->_oldFirstVisibleOffset;
  *(v4 + 46) = *&self->_customHeaderHeight;
  v4[321] = self->_candidateNumberEnabled;
  *(v4 + 47) = self->_columnsCount;
  *(v4 + 48) = *&self->_singleSlottedCellMargin;
  v7 = *&self->_gridPadding.bottom;
  *(v4 + 456) = *&self->_gridPadding.top;
  *(v4 + 472) = v7;
  v8 = *&self->_gridLinePadding.bottom;
  *(v4 + 488) = *&self->_gridLinePadding.top;
  *(v4 + 504) = v8;
  *(v4 + 50) = *&self->_interRowSpacing;
  *(v4 + 51) = *&self->_slottedCandidatesIterItemSpacing;
  v4[323] = self->_hideSlottedCellSeparators;
  *(v4 + 440) = self->_gridLineOffset;
  v4[325] = self->_fillGridWithLines;
  *(v4 + 49) = *&self->_minimumInterItemSpacing;
  v4[322] = self->_shouldJustifyRow;
  v4[327] = self->_gridContainsArrowButton;
  return v4;
}

- (TUICandidateLayout)init
{
  v14.receiver = self;
  v14.super_class = TUICandidateLayout;
  v2 = [(TUICandidateLayout *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    candidateAttributes = v2->_candidateAttributes;
    v2->_candidateAttributes = v3;

    v5 = objc_opt_new();
    dummyCandidateAttributes = v2->_dummyCandidateAttributes;
    v2->_dummyCandidateAttributes = v5;

    v7 = objc_opt_new();
    lineAttributes = v2->_lineAttributes;
    v2->_lineAttributes = v7;

    v9 = objc_opt_new();
    slottedCellSeparatorAttributes = v2->_slottedCellSeparatorAttributes;
    v2->_slottedCellSeparatorAttributes = v9;

    v11 = objc_opt_new();
    groupHeaderAttributes = v2->_groupHeaderAttributes;
    v2->_groupHeaderAttributes = v11;

    v2->_dirty = 1;
  }

  return v2;
}

@end