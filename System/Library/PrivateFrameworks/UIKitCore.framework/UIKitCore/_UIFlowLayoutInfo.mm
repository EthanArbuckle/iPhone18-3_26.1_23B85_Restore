@interface _UIFlowLayoutInfo
- (_UIFlowLayoutInfo)init;
- (_UIFlowLayoutSection)addSection;
- (id)copy;
- (id)setSize:(double)size forItemAtIndexPath:(double)path;
- (id)specifiedItemSizes;
- (void)didUpdateSizeForSection:(double)section withDelta:;
- (void)invalidate:(uint64_t)invalidate;
- (void)setSizes:(void *)sizes forItemsAtIndexPaths:;
@end

@implementation _UIFlowLayoutInfo

- (_UIFlowLayoutInfo)init
{
  v7.receiver = self;
  v7.super_class = _UIFlowLayoutInfo;
  v2 = [(_UIFlowLayoutInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 97) = 256;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v3->_sections;
    v3->_sections = v4;
  }

  return v3;
}

- (_UIFlowLayoutSection)addSection
{
  if (self)
  {
    v2 = objc_alloc_init(_UIFlowLayoutSection);
    v3 = v2;
    if (v2)
    {
      objc_storeWeak(&v2->_layoutInfo, self);
    }

    [self[13] addObject:v3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)didUpdateSizeForSection:(double)section withDelta:
{
  if (self)
  {
    for (i = a2 + 1; i < [*(self + 104) count]; ++i)
    {
      v6 = [*(self + 104) objectAtIndexedSubscript:i];
      if (v6)
      {
        v7 = v6[39];
        v8 = v6[40];
        if (*(self + 97))
        {
          v7 = v7 + section;
        }

        else
        {
          v8 = v8 + section;
        }

        v6[39] = v7;
        v6[40] = v8;
      }
    }

    WeakRetained = objc_loadWeakRetained((self + 120));
    [WeakRetained _updateContentSizeScrollingDimensionWithDelta:section];
  }
}

- (void)invalidate:(uint64_t)invalidate
{
  if (invalidate)
  {
    *(invalidate + 72) = *MEMORY[0x1E695F060];
    *(invalidate + 88) = 0;
    *(invalidate + 64) = 0;
    if (!a2 || (WeakRetained = objc_loadWeakRetained((invalidate + 120)), v4 = [WeakRetained _estimatesSizes], WeakRetained, v4))
    {
      v5 = *(invalidate + 104);
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(invalidate + 104);
      *(invalidate + 104) = v6;

      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32___UIFlowLayoutInfo_invalidate___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v5;
      dispatch_async(v8, block);
    }
  }
}

- (id)copy
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_UIFlowLayoutInfo);
  p_isa = &v3->super.isa;
  if (v3)
  {
    v3->_usesFloatingHeaderFooter = self->_useFloatingHeaderFooter;
    v3->_horizontal = self->_horizontal;
    v3->_leftToRight = self->_leftToRight;
    size = self->_visibleBounds.size;
    v3->_visibleBounds.origin = self->_visibleBounds.origin;
    v3->_visibleBounds.size = size;
    v3->_layoutSize = self->_layoutSize;
    v3->_dimension = self->_dimension;
    v3->_isValid = self->_isValid;
    v6 = *&self->_rowAlignmentOptions.commonRowHorizontalAlignment;
    v3->_rowAlignmentOptions.rowVerticalAlignment = self->_rowAlignmentOptions.rowVerticalAlignment;
    *&v3->_rowAlignmentOptions.commonRowHorizontalAlignment = v6;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = self->_sections;
    v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v37)
    {
      v35 = p_isa;
      v36 = *v43;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v42 + 1) + 8 * v7);
          v9 = p_isa;
          if (v8 && (v10 = objc_alloc_init(_UIFlowLayoutSection)) != 0)
          {
            v11 = v10;
            v39 = v7;
            v12 = *(v8 + 296);
            *&v10->_sectionMargins.top = *(v8 + 280);
            *&v10->_sectionMargins.bottom = v12;
            v10->_lineSpacing = *(v8 + 112);
            v10->_interItemSpacing = *(v8 + 120);
            v13 = *(v8 + 328);
            v10->_frame.origin = *(v8 + 312);
            v10->_frame.size = v13;
            v10->_isValid = *(v8 + 8);
            v14 = *(v8 + 360);
            v10->_headerFrame.origin = *(v8 + 344);
            v10->_headerFrame.size = v14;
            v15 = *(v8 + 392);
            v10->_footerFrame.origin = *(v8 + 376);
            v10->_footerFrame.size = v15;
            v10->_headerDimension = *(v8 + 128);
            v10->_footerDimension = *(v8 + 136);
            v38 = v9;
            objc_storeWeak(&v10->_layoutInfo, v9);
            v11->_fixedItemSize = *(v8 + 88);
            v11->_itemSize = *(v8 + 248);
            v11->_itemsCount = *(v8 + 208);
            v11->_itemsByRowCount = *(v8 + 216);
            v11->_indexOfIncompleteRow = *(v8 + 224);
            v11->_beginMargin = *(v8 + 160);
            v11->_endMargin = *(v8 + 168);
            v11->_actualGap = *(v8 + 176);
            v11->_lastRowIncomplete = *(v8 + 89);
            v11->_lastRowBeginMargin = *(v8 + 184);
            v11->_lastRowEndMargin = *(v8 + 192);
            v11->_lastRowActualGap = *(v8 + 200);
            v11->_otherMargin = *(v8 + 152);
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v40 = *(v8 + 104);
            v16 = [v40 countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (v16)
            {
              v17 = v16;
              v41 = *v47;
              do
              {
                v18 = 0;
                do
                {
                  if (*v47 != v41)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v19 = *(*(&v46 + 1) + 8 * v18);
                  v20 = v11;
                  if (v19)
                  {
                    v21 = objc_alloc_init(_UIFlowLayoutRow);
                    v22 = v21;
                    if (v21)
                    {
                      objc_storeWeak(&v21->_section, v20);
                      v22->_rowSize = *(v19 + 56);
                      v23 = *(v19 + 72);
                      v22->_rowFrame.size = *(v19 + 88);
                      v22->_rowFrame.origin = v23;
                      v22->_index = *(v19 + 32);
                      v22->_isValid = *(v19 + 8);
                      v22->_complete = *(v19 + 9);
                      v22->_verticalAlignement = *(v19 + 12);
                      v22->_horizontalAlignement = *(v19 + 16);
                      v52 = 0u;
                      v53 = 0u;
                      v50 = 0u;
                      v51 = 0u;
                      v24 = *(v19 + 40);
                      v25 = [v24 countByEnumeratingWithState:&v50 objects:v56 count:16];
                      if (v25)
                      {
                        v26 = v25;
                        v27 = *v51;
                        do
                        {
                          v28 = 0;
                          do
                          {
                            if (*v51 != v27)
                            {
                              objc_enumerationMutation(v24);
                            }

                            v29 = [*(*(&v50 + 1) + 8 * v28) copy];
                            [(NSMutableArray *)v22->_items addObject:v29];
                            if (v29)
                            {
                              objc_storeWeak(v29 + 2, v20);
                              objc_storeWeak(v29 + 3, v22);
                            }

                            ++v28;
                          }

                          while (v26 != v28);
                          v26 = [v24 countByEnumeratingWithState:&v50 objects:v56 count:16];
                        }

                        while (v26);
                      }
                    }
                  }

                  else
                  {
                    v22 = 0;
                  }

                  [(NSMutableArray *)v11->_rows addObject:v22];
                  if (v22)
                  {
                    items = v22->_items;
                  }

                  else
                  {
                    items = 0;
                  }

                  v31 = v11->_items;
                  [(NSMutableArray *)v31 addObjectsFromArray:items];

                  ++v18;
                }

                while (v18 != v17);
                v32 = [v40 countByEnumeratingWithState:&v46 objects:v55 count:16];
                v17 = v32;
              }

              while (v32);
            }

            objc_storeWeak(&v11->_layoutInfo, v38);
            p_isa = v35;
            v7 = v39;
          }

          else
          {

            v11 = 0;
          }

          [p_isa[13] addObject:v11];

          ++v7;
        }

        while (v7 != v37);
        v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v37);
    }
  }

  return p_isa;
}

- (void)setSizes:(void *)sizes forItemsAtIndexPaths:
{
  v5 = a2;
  sizesCopy = sizes;
  if (self)
  {
    v7 = [v5 count];
    if (v7 != [sizesCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setSizes_forItemsAtIndexPaths_ object:self file:@"UIFlowLayoutSupport.m" lineNumber:2011 description:{@"Invalid parameter not satisfying: %@", @"sizes.count == indexPaths.count"}];
    }

    WeakRetained = objc_loadWeakRetained((self + 120));
    _estimatesSizes = [WeakRetained _estimatesSizes];

    if ((_estimatesSizes & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = NSStringFromSelector(sel_setSizes_forItemsAtIndexPaths_);
      [currentHandler2 handleFailureInMethod:sel_setSizes_forItemsAtIndexPaths_ object:self file:@"UIFlowLayoutSupport.m" lineNumber:2012 description:{@"This method %@ should only be called for layouts with estimated item sizes.", v34}];
    }

    v35 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v10 = objc_opt_new();
    if ([v5 count])
    {
      v11 = 0;
      do
      {
        v12 = [v5 objectAtIndexedSubscript:v11];
        [v12 CGSizeValue];
        v36 = v14;
        v37 = v13;

        v15 = sizesCopy;
        v16 = [sizesCopy objectAtIndexedSubscript:v11];
        [v35 addIndex:{objc_msgSend(v16, "section")}];
        v17.f64[0] = v37;
        v17.f64[1] = v36;
        *(self + 72) = vaddq_f64(v17, *(self + 72));
        ++*(self + 88);
        v18 = *(self + 104);
        v19 = objc_loadWeakRetained((self + 120));
        v20 = [v18 objectAtIndex:{objc_msgSend(v19, "_sectionArrayIndexForIndexPath:", v16)}];

        v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "section")}];
        v22 = [v10 objectForKeyedSubscript:v21];

        if (!v22 || (v23 = [v22 integerValue], v23 > objc_msgSend(v16, "item")))
        {
          if (v20)
          {
            v25 = *(v20 + 264);
            v24 = *(v20 + 272);
          }

          else
          {
            v24 = 0;
            v25 = 0;
          }

          item = [v16 item];
          if (item >= v25 && item - v25 < v24)
          {
            [(_UIFlowLayoutSection *)v20 frameForItemAtIndexPath:v16];
            if (v28 != v37 || v27 != v36)
            {
              v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "item")}];
              v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "section")}];
              [v10 setObject:v29 forKeyedSubscript:v30];
            }
          }
        }

        if (v20)
        {
          v31 = [*(v20 + 96) objectAtIndexedSubscript:{objc_msgSend(v16, "item")}];
          if (v31)
          {
            *(v31 + 48) = v37;
            *(v31 + 56) = v36;
            *(v31 + 8) |= 6u;
          }
        }

        ++v11;
        sizesCopy = v15;
      }

      while (v11 < [v5 count]);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __51___UIFlowLayoutInfo_setSizes_forItemsAtIndexPaths___block_invoke;
    v38[3] = &unk_1E7100338;
    v38[4] = self;
    [v10 enumerateKeysAndObjectsUsingBlock:v38];
  }
}

- (id)setSize:(double)size forItemAtIndexPath:(double)path
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 120));
    _estimatesSizes = [WeakRetained _estimatesSizes];

    if (_estimatesSizes)
    {
      v8.f64[0] = size;
      v8.f64[1] = path;
      *(self + 72) = vaddq_f64(v8, *(self + 72));
      ++*(self + 88);
    }

    v9 = objc_loadWeakRetained((self + 120));
    v10 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v82 = objc_loadWeakRetained((self + 120));
      invalidationContextClass = [objc_opt_class() invalidationContextClass];
      v84 = NSStringFromClass(invalidationContextClass);
      [currentHandler handleFailureInMethod:sel_setSize_forItemAtIndexPath_ object:self file:@"UIFlowLayoutSupport.m" lineNumber:2063 description:{@"Invalidation context class (%@) must be a subclass of UICollectionViewFlowLayoutInvalidationContext.", v84}];
    }

    [v10 setInvalidateFlowLayoutAttributes:0];
    [v10 setInvalidateFlowLayoutDelegateMetrics:0];
    v11 = objc_loadWeakRetained((self + 120));
    v12 = [v11 _sectionArrayIndexForIndexPath:a2];

    if ((v12 & 0x8000000000000000) == 0 && v12 < [*(self + 104) count])
    {
      v13 = *(self + 104);
      if (v13)
      {
        v14 = [v13 objectAtIndexedSubscript:v12];
        if (!v14)
        {
LABEL_64:

          goto LABEL_40;
        }

        item = [a2 item];
        if (item >= [*(v14 + 96) count])
        {
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __71___UIFlowLayoutSection_setSize_forItemAtIndexPath_invalidationContext___block_invoke;
          v92[3] = &unk_1E70F32F0;
          v92[4] = v14;
          v92[5] = item;
          if (_MergedGlobals_1043 != -1)
          {
            dispatch_once(&_MergedGlobals_1043, v92);
          }

          goto LABEL_64;
        }

        array = [MEMORY[0x1E695DF70] array];
        v17 = [*(v14 + 96) objectAtIndexedSubscript:{objc_msgSend(a2, "item")}];
        v18 = v17;
        if (v17)
        {
          v20 = *(v17 + 32);
          v19 = *(v17 + 40);
          v21 = *(v17 + 48);
          v22 = *(v17 + 56);
        }

        else
        {
          v19 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          v20 = 0.0;
        }

        if (v21 != size || v22 != path)
        {
          v23 = *(v14 + 264);
          v24 = item >= v23;
          v25 = item - v23;
          if (!v24 || v25 >= *(v14 + 272))
          {
            if (v17)
            {
              *(v17 + 32) = v20;
              *(v17 + 40) = v19;
              *(v17 + 48) = v21;
              *(v17 + 56) = v22;
              *(v17 + 8) |= 4u;
            }

            goto LABEL_61;
          }

          v94.origin.x = v20;
          v94.origin.y = v19;
          v94.size.width = v21;
          v94.size.height = v22;
          Width = CGRectGetWidth(v94);
          v95.origin.x = v20;
          v95.origin.y = v19;
          v95.size.width = v21;
          v95.size.height = v22;
          Height = CGRectGetHeight(v95);
          if (v18)
          {
            *(v18 + 32) = v20;
            *(v18 + 40) = v19;
            *(v18 + 48) = size;
            *(v18 + 56) = path;
            *(v18 + 8) |= 4u;
          }

          section = [a2 section];
          if (item < *(v14 + 272) + *(v14 + 264))
          {
            v29 = item;
            do
            {
              v30 = [MEMORY[0x1E696AC88] indexPathForItem:v29 inSection:section];
              [(_UIFlowLayoutSection *)v14 addInvalidatedIndexPath:v30];
              [array addObject:v30];

              ++v29;
            }

            while (v29 < *(v14 + 272) + *(v14 + 264));
          }

          v31 = objc_loadWeakRetained((v14 + 144));
          if (v31 && (v32 = v31[97], v31, (v32 & 1) != 0))
          {
            if (path < Height)
            {
              if (v18)
              {
                v33 = objc_loadWeakRetained((v18 + 24));
              }

              else
              {
                v33 = 0;
              }

              v34 = [*(v14 + 104) indexOfObject:v33];
              MaxX = CGRectGetMaxX(*(v14 + 16));
              if (v33)
              {
                v36 = v33[9];
                v37 = v33[10];
                v38 = v33[11];
                v39 = v33[12];
              }

              else
              {
                v37 = 0;
                v38 = 0;
                v39 = 0;
                v36 = 0;
              }

              v40 = MaxX - CGRectGetMinX(*&v36);
              if (v34 >= 1)
              {
                v41 = [*(v14 + 104) objectAtIndexedSubscript:v34 - 1];
                v89 = v33;
                v86 = v41;
                if (v41)
                {
                  v42 = v41;
                  v43 = [*(v41 + 40) count];
                  v44 = v42[9];
                  v45 = v42[10];
                  v46 = v42[11];
                  v47 = v42[12];
                }

                else
                {
                  v43 = [0 count];
                  v45 = 0;
                  v46 = 0;
                  v47 = 0;
                  v44 = 0;
                }

                v48 = CGRectGetWidth(*&v44);
                if (v43 >= 1)
                {
                  v49 = item - v43;
                  do
                  {
                    v50 = [MEMORY[0x1E696AC88] indexPathForItem:v49 inSection:section];
                    [(_UIFlowLayoutSection *)v14 addInvalidatedIndexPath:v50];
                    [array addObject:v50];

                    ++v49;
                  }

                  while (v49 < item);
                }

                v40 = v40 + v48;

                v33 = v89;
              }

              v96.size.width = fmax(CGRectGetWidth(*(v14 + 16)) - v40, 0.0);
              *(v14 + 32) = v96.size.width;
              v96.origin.x = *(v14 + 16);
              v96.origin.y = *(v14 + 24);
              v96.size.height = *(v14 + 40);
              v51 = CGRectGetMaxX(v96);
              MinY = CGRectGetMinY(*(v14 + 16));
              v53 = CGRectGetHeight(*(v14 + 16));
              section2 = [a2 section];
              v55 = v14;
              v56 = v51;
              v57 = MinY;
              v58 = v40;
              v59 = v53;
LABEL_60:
              [(_UIFlowLayoutSection *)v55 computeLayoutInRect:section2 forSection:1u invalidating:v10 invalidationContext:v56, v57, v58, v59];
            }
          }

          else if (size < Width)
          {
            if (v18)
            {
              v33 = objc_loadWeakRetained((v18 + 24));
            }

            else
            {
              v33 = 0;
            }

            v61 = [*(v14 + 104) indexOfObject:v33];
            MaxY = CGRectGetMaxY(*(v14 + 16));
            if (v33)
            {
              v63 = v33[9];
              v64 = v33[10];
              v65 = v33[11];
              v66 = v33[12];
            }

            else
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v63 = 0;
            }

            v67 = MaxY - CGRectGetMinY(*&v63);
            if ((v61 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
            {
              v68 = [*(v14 + 104) objectAtIndexedSubscript:?];
              v90 = v33;
              v87 = v68;
              if (v68)
              {
                v69 = v68;
                v70 = [*(v68 + 40) count];
                v71 = v69[9];
                v72 = v69[10];
                v73 = v69[11];
                v74 = v69[12];
              }

              else
              {
                v70 = [0 count];
                v72 = 0;
                v73 = 0;
                v74 = 0;
                v71 = 0;
              }

              v75 = CGRectGetHeight(*&v71);
              if (v70 >= 1)
              {
                v76 = item - v70;
                do
                {
                  v77 = [MEMORY[0x1E696AC88] indexPathForItem:v76 inSection:section];
                  [(_UIFlowLayoutSection *)v14 addInvalidatedIndexPath:v77];
                  [array addObject:v77];

                  ++v76;
                }

                while (v76 < item);
              }

              v67 = v67 + v75;

              v33 = v90;
            }

            v97.size.height = fmax(CGRectGetHeight(*(v14 + 16)) - v67, 0.0);
            *(v14 + 40) = v97.size.height;
            v97.origin.x = *(v14 + 16);
            v97.origin.y = *(v14 + 24);
            v97.size.width = *(v14 + 32);
            MinX = CGRectGetMinX(v97);
            v79 = CGRectGetMaxY(*(v14 + 16));
            v80 = CGRectGetWidth(*(v14 + 16));
            section2 = [a2 section];
            v55 = v14;
            v56 = MinX;
            v57 = v79;
            v58 = v80;
            v59 = v67;
            goto LABEL_60;
          }
        }

LABEL_61:
        if ([array count])
        {
          [v10 invalidateItemsAtIndexPaths:array];
        }

        goto LABEL_64;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48___UIFlowLayoutInfo_setSize_forItemAtIndexPath___block_invoke;
    block[3] = &unk_1E70F32F0;
    block[4] = self;
    block[5] = v12;
    if (qword_1ED49D6B0 != -1)
    {
      dispatch_once(&qword_1ED49D6B0, block);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_40:

  return v10;
}

- (id)specifiedItemSizes
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = *(self + 104);
    v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v18)
    {
      v3 = 0;
      v17 = *v25;
      do
      {
        v4 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v24 + 1) + 8 * v4);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v19 = v4;
          if (v5)
          {
            v5 = v5[12];
          }

          v6 = v5;
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = 0;
            v10 = *v21;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(v6);
                }

                v12 = *(*(&v20 + 1) + 8 * i);
                if (v12 && (*(v12 + 8) & 4) != 0)
                {
                  v13 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v3];
                  v14 = [MEMORY[0x1E696B098] valueWithCGSize:{*(v12 + 48), *(v12 + 56)}];
                  [dictionary setObject:v14 forKeyedSubscript:v13];
                }

                ++v9;
              }

              v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v8);
          }

          ++v3;
          v4 = v19 + 1;
        }

        while (v19 + 1 != v18);
        v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

@end