@interface _UITableViewUpdateSupport
- (BOOL)_isReloadSectionUpdate;
- (UIImageView)_imageViewForView:(void *)view;
- (double)_startOfRowAfterFooterInSection:(uint64_t)section withRowData:;
- (double)_startOfRowAfterHeaderInSection:(void *)section withRowData:;
- (double)_startOfRowAfterRow:(void *)row withRowData:;
- (id)_collectionViewUpdateItems;
- (id)_oldMapArray;
- (id)initWithTableView:(void *)view updateItems:(void *)items oldRowData:(void *)data newRowData:(void *)rowData oldRowRange:(void *)range newRowRange:(uint64_t)rowRange context:(void *)context;
- (int64_t)_setupAnimationStructures;
- (uint64_t)finalGlobalIndexForInitialGlobalIndex:(uint64_t)result;
- (uint64_t)finalSectionIndexForInitialSectionIndex:(uint64_t)result;
- (uint64_t)initialGlobalIndexForFinalGlobalIndex:(uint64_t)result;
- (uint64_t)initialSectionIndexForFinalSectionIndex:(uint64_t)result;
- (void)_computeAutomaticAnimationTypes;
- (void)_computeVisibleBounds;
- (void)_faultInRealHeightsOfNeededElements;
- (void)_setupAnimationForReorderingRow;
- (void)_setupAnimationForTableFooter;
- (void)_setupAnimationForTableHeader;
- (void)_setupAnimations;
- (void)_setupAnimationsForDeletedCells;
- (void)_setupAnimationsForDeletedHeadersAndFooters;
- (void)_setupAnimationsForExistingHeadersAndFooters;
- (void)_setupAnimationsForExistingOffscreenCells;
- (void)_setupAnimationsForExistingVisibleCells;
- (void)_setupAnimationsForInsertedHeadersAndFooters;
- (void)_setupAnimationsForNewlyInsertedCells;
- (void)dealloc;
@end

@implementation _UITableViewUpdateSupport

- (void)_setupAnimations
{
  if (self)
  {
    [(_UITableViewUpdateSupport *)self _computeVisibleBounds];
    [(_UITableViewUpdateSupport *)self _faultInRealHeightsOfNeededElements];
    [(_UITableViewUpdateSupport *)self _setupAnimationStructures];
    [(_UITableViewUpdateSupport *)self _computeAutomaticAnimationTypes];
    [(_UITableViewUpdateSupport *)self _setupAnimationsForExistingVisibleCells];
    [(_UITableViewUpdateSupport *)self _setupAnimationForReorderingRow];
    [(_UITableViewUpdateSupport *)self _setupAnimationsForNewlyInsertedCells];
    [(_UITableViewUpdateSupport *)self _setupAnimationsForInsertedHeadersAndFooters];
    [(_UITableViewUpdateSupport *)self _setupAnimationsForExistingOffscreenCells];
    [(_UITableViewUpdateSupport *)self _setupAnimationsForExistingHeadersAndFooters];
    [(_UITableViewUpdateSupport *)self _setupAnimationForTableHeader];
    [(_UITableViewUpdateSupport *)self _setupAnimationForTableFooter];
    [(_UITableViewUpdateSupport *)self _setupAnimationsForDeletedCells];

    [(_UITableViewUpdateSupport *)self _setupAnimationsForDeletedHeadersAndFooters];
  }
}

- (void)_computeVisibleBounds
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    [WeakRetained visibleBounds];
    *(self + 160) = v2;
    *(self + 168) = v3;
    *(self + 176) = v4;
    *(self + 184) = v5;
    if ([WeakRetained isScrollAnimating])
    {
      [WeakRetained _animatedTargetOffset];
      *(self + 160) = v6;
      *(self + 168) = v7;
    }

    rectForTable = [(UITableViewRowData *)*(self + 80) rectForTable];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [WeakRetained _contentInset];
    v16 = v15;
    v18 = -v17;
    v20 = rectForTable - v19;
    v22 = v12 - (-v19 - v21);
    v23 = v10 - v17;
    v24 = v14 - (-v15 - v17);
    v61.origin.x = v20;
    v61.origin.y = v23;
    v61.size.width = v22;
    v61.size.height = v24;
    if (!CGRectContainsRect(v61, *(self + 128)))
    {
      MaxY = CGRectGetMaxY(*(self + 128));
      v62.origin.x = v20;
      v62.origin.y = v23;
      v62.size.width = v22;
      v62.size.height = v24;
      if (MaxY > CGRectGetMaxY(v62))
      {
        v63.origin.x = v20;
        v63.origin.y = v23;
        v63.size.width = v22;
        v63.size.height = v24;
        Height = CGRectGetHeight(v63);
        if (Height <= CGRectGetHeight(*(self + 128)))
        {
          _isTableHeaderViewHidden = [WeakRetained _isTableHeaderViewHidden];
          v28 = v18;
          if (_isTableHeaderViewHidden)
          {
            [WeakRetained contentOffset];
          }
        }

        else
        {
          v27 = CGRectGetMaxY(*(self + 128));
          v64.origin.x = v20;
          v64.origin.y = v23;
          v64.size.width = v22;
          v64.size.height = v24;
          v28 = *(self + 168) - (v27 - CGRectGetMaxY(v64));
        }

        *(self + 168) = v28;
      }
    }

    _visibleGlobalRows = [WeakRetained _visibleGlobalRows];
    if (v31)
    {
      v32 = _visibleGlobalRows;
      if (_visibleGlobalRows)
      {
        if (([WeakRetained _estimatesRowHeights] & 1) != 0 || (objc_msgSend(WeakRetained, "_estimatesSectionHeaderHeights") & 1) != 0 || objc_msgSend(WeakRetained, "_estimatesSectionFooterHeights"))
        {
          v33 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:v32];
          numberOfRows = [(UITableViewRowData *)*(self + 72) numberOfRows];
          if (v33 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = numberOfRows;
            while (1)
            {
              v36 = v32 + 1;
              if ((v32 + 1) >= v35)
              {
                break;
              }

              v37 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:?];
              if (v37 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = v37;
                v32 = v36;
                goto LABEL_24;
              }
            }

            while ((v32 + 1) >= 1)
            {
              v38 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:?];
              if (v38 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = v38;
                ++v32;
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            v39 = [(UITableViewRowData *)*(self + 72) rectForGlobalRow:v32 heightCanBeGuessed:1];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v65.origin.x = [(UITableViewRowData *)*(self + 80) rectForGlobalRow:v33 heightCanBeGuessed:1];
            MinY = CGRectGetMinY(v65);
            v47 = CGRectGetMinY(*(self + 128));
            v66.origin.x = v39;
            v66.origin.y = v41;
            v66.size.width = v43;
            v66.size.height = v45;
            *(self + 168) = MinY + v47 - CGRectGetMinY(v66);
            heightForTable = [(UITableViewRowData *)*(self + 80) heightForTable];
            v49 = heightForTable - (CGRectGetHeight(*(self + 160)) - v16);
            *(self + 168) = fmax(v18, fmin(v49, CGRectGetMinY(*(self + 160))));
          }
        }
      }
    }

    delegate = [WeakRetained delegate];
    v51 = objc_opt_respondsToSelector();
    v52 = *(self + 160);
    v53 = *(self + 168);
    if (v51)
    {
      [delegate tableView:WeakRetained newContentOffsetAfterUpdate:*(self + 296) context:{*(self + 160), *(self + 168)}];
      v52 = v54;
      v53 = v55;
      *(self + 160) = v54;
      *(self + 168) = v55;
    }

    v56 = *(self + 176);
    v57 = *(self + 184);
    *(self + 192) = CGRectUnion(*(self + 128), *&v52);
    v58 = CGRectGetMaxY(*(self + 160));
    *(self + 224) = v58 - CGRectGetMaxY(*(self + 128));
  }
}

- (void)_faultInRealHeightsOfNeededElements
{
  if (self)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 100;
    while (1)
    {
      v18 = v2;
      v19 = v5;
      context = objc_autoreleasePoolPush();
      v7 = [(UITableViewRowData *)*(self + 80) globalRowsInRect:*(self + 160) canGuess:*(self + 168), *(self + 176), *(self + 184)];
      if (v7)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = v8;
      }

      if (v7)
      {
        v10 = v7 - 1;
      }

      else
      {
        v10 = 0;
      }

      if (v9)
      {
        if (v9 + v10 >= [(UITableViewRowData *)*(self + 80) numberOfRows])
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 + 1;
        }
      }

      else
      {
        v11 = 0;
      }

      v5 = [(UITableViewRowData *)*(self + 80) sectionsInRect:*(self + 168), *(self + 176), *(self + 184)];
      v2 = v12;
      v13 = v12;
      v14 = v5;
      if (v5 < v5 + v12)
      {
        do
        {
          [(UITableViewRowData *)*(self + 80) heightForHeaderInSection:v14 canGuess:0];
          [(UITableViewRowData *)*(self + 80) heightForFooterInSection:0 canGuess:?];
          --v13;
        }

        while (v13);
      }

      [(_UITableViewUpdateSupport *)self _computeVisibleBounds];
      objc_autoreleasePoolPop(context);
      if (v3 == v10 && v4 == v11 && v19 == v5 && v18 == v2)
      {
        break;
      }

      v3 = v10;
      v4 = v11;
      if (v6-- < 2)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v17 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *v22 = 0;
            _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Exceeded the maximum number of passes!", v22, 2u);
          }
        }

        else
        {
          v16 = *(__UILogGetCategoryCachedImpl("Assert", &_faultInRealHeightsOfNeededElements___s_category) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Exceeded the maximum number of passes!", buf, 2u);
          }
        }

        return;
      }
    }
  }
}

- (void)_setupAnimationsForExistingVisibleCells
{
  if (!self)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((self + 40));
  v2 = *(self + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v3 = *(v2 + 184);
  if (!v3)
  {
LABEL_7:
    _globalReorderingRow = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  _globalReorderingRow = [WeakRetained _globalReorderingRow];
LABEL_8:
  *(self + 288) = _globalReorderingRow;

  v5 = *(self + 48);
  v6 = *(self + 56);
  *(self + 24) = v5;
  if (v5 < v6 + v5)
  {
    while (1)
    {
      v7 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:v5];
      *(self + 32) = v7;
      v8 = *(self + 24);
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && *(self + 288) != v8)
      {
        break;
      }

LABEL_18:
      v5 = v8 + 1;
      *(self + 24) = v8 + 1;
      if ((v8 + 1) >= *(self + 56) + *(self + 48))
      {
        goto LABEL_22;
      }
    }

    v9 = [WeakRetained _visibleCellForGlobalRow:?];
    v10 = v9;
    if (*(*(self + 264) + 8 * *(self + 32)))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      _collectionViewUpdateItems = [(_UITableViewUpdateSupport *)self _collectionViewUpdateItems];
      [currentHandler handleFailureInMethod:sel__setupAnimationsForExistingVisibleCells object:self file:@"UITableViewSupport.m" lineNumber:735 description:{@"Cannot animate existing visible cell because it already has an animation. Updates: %@; Cell: %@", _collectionViewUpdateItems, *(*(self + 264) + 8 * *(self + 32))}];

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else if (v9)
    {
LABEL_13:
      objc_storeStrong((*(self + 264) + 8 * *(self + 32)), v10);
      if ([*(self + 120) containsIndex:*(self + 32)])
      {
        [WeakRetained _addContentSubview:v10 atBack:0];
      }

      MinX = [(UITableViewRowData *)*(self + 80) rectForGlobalRow:0 heightCanBeGuessed:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      _swipeToDeleteCell = [WeakRetained _swipeToDeleteCell];

      if (v10 == _swipeToDeleteCell)
      {
        [v10 frame];
        MinX = CGRectGetMinX(v28);
      }

      v19 = [(UITableViewRowData *)*(self + 80) indexPathForRowAtGlobalRow:?];
      v20 = [WeakRetained _isEditingRowAtIndexPath:v19];
      v29.origin.x = MinX;
      v29.origin.y = v13;
      v29.size.width = v15;
      v29.size.height = v17;
      v21 = CGRectIntersectsRect(v29, *(self + 160));
      v22 = [[UIViewAnimation alloc] initWithView:v10 indexPath:v19 viewType:1 endRect:0 endAlpha:1 startFraction:!v21 endFraction:v20 curve:MinX animateFromCurrentPosition:v13 shouldDeleteAfterAnimation:v15 editing:v17, 1.0, 0.0, 1.0];
      [*(self + 320) addObject:v22];
      [v10 setSectionLocation:-[UITableViewRowData sectionLocationForRow:inSection:](*(self + 80) animated:{objc_msgSend(v19, "row"), objc_msgSend(v19, "section")), 1}];

      v8 = *(self + 24);
      goto LABEL_18;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__setupAnimationsForExistingVisibleCells object:self file:@"UITableViewSupport.m" lineNumber:736 description:@"Missing visible cell to setup animations"];

    goto LABEL_13;
  }

LABEL_22:
}

- (void)_setupAnimationsForNewlyInsertedCells
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained((self + 40));
    [WeakRetained _currentScreenScale];
    v3 = v2;
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = *(selfCopy + 64);
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v6)
    {
      goto LABEL_28;
    }

    v7 = v6;
    v8 = *v35;
    v26 = selfCopy;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        if (v10)
        {
          if ((*(v10 + 16) & 2) != 0 || *(v10 + 20))
          {
            goto LABEL_21;
          }

          v11 = *(v10 + 24);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v13 = [v12 row];
        [v4 removeAllIndexes];
        v14 = v13 == 0x7FFFFFFFFFFFFFFFLL;
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          section = [v12 section];
          v16 = [(UITableViewRowData *)*(selfCopy + 80) numberOfRowsInSection:section];
          v17 = selfCopy;
          v18 = v16;
          v19 = [(UITableViewRowData *)*(v17 + 80) numberOfRowsBeforeSection:section];
          if (v18 >= 1)
          {
            v20 = v19;
            v21 = v19 + v18;
            do
            {
              [v4 addIndex:v20++];
            }

            while (v20 < v21);
          }
        }

        else
        {
          if (v10)
          {
            v22 = *(v10 + 24);
          }

          else
          {
            v22 = 0;
          }

          v23 = [(UITableViewRowData *)*(selfCopy + 80) globalRowForRowAtIndexPath:v22];
          if (v23 == 0x7FFFFFFFFFFFFFFFLL)
          {

            goto LABEL_28;
          }

          [v4 addIndex:v23];
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __75___UITableViewUpdateSupport_Private___setupAnimationsForNewlyInsertedCells__block_invoke;
        v28[3] = &unk_1E7123A68;
        selfCopy = v26;
        v28[4] = v26;
        v28[5] = v10;
        v31 = sel__setupAnimationsForNewlyInsertedCells;
        v29 = v12;
        v33 = v14;
        v32 = v3;
        v30 = WeakRetained;
        v24 = v12;
        [v4 enumerateIndexesUsingBlock:v28];

LABEL_21:
        ++v9;
      }

      while (v9 != v7);
      v25 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v7 = v25;
      if (!v25)
      {
LABEL_28:

        return;
      }
    }
  }
}

- (void)_setupAnimationsForExistingHeadersAndFooters
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    *(self + 16) = 0;
    if (*(self + 240) >= 1)
    {
      v2 = 0;
      v211 = *(MEMORY[0x1E695F058] + 8);
      v212 = *MEMORY[0x1E695F058];
      v209 = *(MEMORY[0x1E695F058] + 24);
      v210 = *(MEMORY[0x1E695F058] + 16);
      while (1)
      {
        v3 = [(_UITableViewUpdateSupport *)self initialSectionIndexForFinalSectionIndex:v2];
        v4 = *(self + 16);
        if (v3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        v5 = v3;
        if (!*(*(self + 272) + 8 * v4))
        {
          break;
        }

LABEL_24:
        if (!*(*(self + 280) + 8 * v4))
        {
          v73 = [WeakRetained _visibleFooterViewForSection:v5];
          allowsFooterViewsToFloat = [WeakRetained allowsFooterViewsToFloat];
          v75 = [(UITableViewRowData *)*(self + 72) rectForFooterInSection:v5 heightCanBeGuessed:1];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v82 = [(UITableViewRowData *)*(self + 80) rectForFooterInSection:1 heightCanBeGuessed:?];
          v84 = v83;
          v86 = v85;
          v88 = v87;
          if (allowsFooterViewsToFloat)
          {
            v253.origin.x = v75;
            v253.origin.y = v77;
            v253.size.width = v79;
            v253.size.height = v81;
            if (!CGRectIsEmpty(v253) || (v254.origin.x = v82, v254.origin.y = v84, v254.size.width = v86, v254.size.height = v88, !CGRectIsEmpty(v254)))
            {
              [WeakRetained _contentInset];
              v232 = v91 + *(self + 136);
              v234 = *(self + 128) + v92;
              v228 = *(self + 152) - (v91 + v90);
              v230 = *(self + 144) - (v92 + v89);
              v228 = [(UITableViewRowData *)*(self + 72) floatingRectForFooterInSection:v5 visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v234, v232, v230, v228];
              v95 = v94;
              v97 = v96;
              v99 = v98;
              [WeakRetained _contentInset];
              v224 = v102 + *(self + 168);
              v226 = *(self + 160) + v103;
              rect_16a = *(self + 184) - (v102 + v101);
              rect_24a = *(self + 176) - (v103 + v100);
              rect_16a = [(UITableViewRowData *)*(self + 80) floatingRectForFooterInSection:1 visibleRect:0 heightCanBeGuessed:0 outIsFloating:v226 outVisibleRectDisplacement:v224, rect_24a, rect_16a];
              v106 = v105;
              v108 = v107;
              v110 = v109;
              v255.origin.x = v228;
              v255.origin.y = v95;
              v255.size.width = v97;
              v255.size.height = v99;
              v286.origin.x = rect_16a;
              v286.origin.y = v106;
              v286.size.width = v108;
              v286.size.height = v110;
              v256 = CGRectUnion(v255, v286);
              if (CGRectIntersectsRect(v256, *(self + 192)))
              {
                v257.origin.x = v228;
                v257.origin.y = v95;
                v257.size.width = v97;
                v257.size.height = v99;
                v287.origin.x = rect_16a;
                v287.origin.y = v106;
                v287.size.width = v108;
                v287.size.height = v110;
                if (!CGRectEqualToRect(v257, v287))
                {
                  v206 = rect_16a;
                  v208 = v106;
                  v258.origin.x = rect_16a;
                  v258.origin.y = v106;
                  recta = v108;
                  rect_8a = v110;
                  v258.size.width = v108;
                  v258.size.height = v110;
                  MaxY = CGRectGetMaxY(v258);
                  v259.origin.x = v228;
                  v259.origin.y = v95;
                  v259.size.width = v97;
                  v259.size.height = v99;
                  v112 = MaxY - CGRectGetMaxY(v259);
                  v260.origin.y = v232;
                  v260.origin.x = v234;
                  v260.size.height = v228;
                  v260.size.width = v230;
                  v113 = CGRectGetMaxY(v260);
                  v261.origin.x = v228;
                  v261.origin.y = v95;
                  v261.size.width = v97;
                  v261.size.height = v99;
                  v114 = v113 - CGRectGetMaxY(v261);
                  v214 = 0.0;
                  if (v114 > 0.0 && v112 < 0.0)
                  {
                    v115 = rect_8a;
                    v117 = v206;
                    v116 = v208;
                    goto LABEL_91;
                  }

                  v115 = rect_8a;
                  v117 = v206;
                  v116 = v208;
                  if (v114 < 0.0 && v112 > 0.0)
                  {
                    goto LABEL_91;
                  }

                  if (v114 <= 0.0 || (v112 > 0.0 ? (v146 = v114 <= v112) : (v146 = 1), v146))
                  {
                    if (v114 >= 0.0)
                    {
                      v214 = v114;
                    }

                    else
                    {
                      v147 = v112 < 0.0 && v114 < v112;
                      v214 = v114;
                      if (v147)
                      {
                        goto LABEL_90;
                      }
                    }
                  }

                  else
                  {
LABEL_90:
                    v214 = v112;
                  }

LABEL_91:
                  v148 = v117;
                  v149 = v116;
                  v150 = recta;
                  v151 = CGRectGetMaxY(*(&v115 - 3));
                  v268.origin.y = v224;
                  v268.origin.x = v226;
                  v268.size.height = rect_16a;
                  v268.size.width = rect_24a;
                  v152 = v151 - CGRectGetMaxY(v268);
                  v153 = 0.0;
                  if (v152 > 0.0 && v112 < 0.0 || v152 < 0.0 && v112 > 0.0)
                  {
                    goto LABEL_102;
                  }

                  if (v152 > 0.0 && v112 > 0.0 && v152 > v112)
                  {
LABEL_101:
                    v153 = v112;
                    goto LABEL_102;
                  }

                  if (v152 >= 0.0 || v112 >= 0.0)
                  {
                    v153 = v152;
                    if (!v73)
                    {
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v153 = v152;
                    if (v152 < v112)
                    {
                      goto LABEL_101;
                    }

LABEL_102:
                    if (!v73)
                    {
LABEL_103:
                      if (([WeakRetained _delegateWantsFooterForSection:*(self + 16)] & 1) != 0 || (v154 = objc_msgSend(WeakRetained, "style"), v73 = 0, v154 <= 0x10) && ((1 << v154) & 0x10006) != 0)
                      {
                        v73 = [WeakRetained _sectionFooterViewWithFrame:*(self + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v212 willDisplay:{v211, v210, v209, 0.0}];
                        [WeakRetained _addContentSubview:v73 atBack:0];
                      }
                    }
                  }

                  [v73 setFrame:{v228, v95, v97, v99}];
                  if (v112 != 0.0)
                  {
                    v269.origin.x = v117;
                    v269.origin.y = v116;
                    v269.size.width = recta;
                    v269.size.height = rect_8a;
                    LODWORD(v155) = !CGRectIntersectsRect(v269, *(self + 160));
                    if (v214 == 0.0 && v153 == 0.0 || (v270.origin.x = v228, v270.origin.y = v95, v270.size.width = v97, v270.size.height = v99, MinY = CGRectGetMinY(v270), v271.origin.y = v232, v271.origin.x = v234, v271.size.height = v228, v271.size.width = v230, v157 = MinY - CGRectGetMinY(v271), v272.origin.x = v117, v272.origin.y = v116, v272.size.width = recta, v272.size.height = rect_8a, v158 = CGRectGetMinY(v272), v273.origin.y = v224, v273.origin.x = v226, v273.size.height = rect_16a, v273.size.width = rect_24a, v157 == v158 - CGRectGetMinY(v273)))
                    {
                      v159 = [UIViewAnimation alloc];
                      _isEditingWithNoSwipedCell = [WeakRetained _isEditingWithNoSwipedCell];
                      v121 = 1.0;
                      v122 = 0.0;
                      v123 = 1.0;
                      p_isa = &v159->super.isa;
                      v130 = v73;
                      v126 = v117;
                      v127 = v116;
                      v128 = recta;
                      v129 = rect_8a;
                      goto LABEL_112;
                    }

                    v166 = fabs(v214 / v112);
                    [v73 frame];
                    v171 = v167;
                    v172 = v169;
                    v173 = v170;
                    v174 = v168 + v214 + v214 / v112 * *(self + 224);
                    if (v214 / v112 != 0.0)
                    {
                      v289.origin.x = v167;
                      v289.origin.y = v168 + v214 + v214 / v112 * *(self + 224);
                      v289.size.width = v169;
                      v289.size.height = v170;
                      if (!CGRectEqualToRect(*&v167, v289))
                      {
                        v155 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v73, 0, 3, 0, 1, v155, [WeakRetained _isEditingWithNoSwipedCell], v171, v174, v172, v173, 1.0, 0.0, v166);
                        [*(self + 320) addObject:v155];

                        LOBYTE(v155) = 0;
                      }
                    }

                    v175 = fmax(fabs((v112 - v153) / v112), v166);
                    v176 = v112;
                    v177 = v166 == 1.0 ? 1.0 : v175;
                    v178 = v174 + (v176 - v214 - v153) / v176 * *(self + 224);
                    if (v166 == v177)
                    {
                      v179 = rect_8a;
                    }

                    else
                    {
                      v279.origin.x = v171;
                      v279.origin.y = v174;
                      v279.size.width = v172;
                      v279.size.height = v173;
                      v290.origin.x = v171;
                      v290.origin.y = v178;
                      v290.size.width = v172;
                      v290.size.height = v173;
                      v179 = rect_8a;
                      if (!CGRectEqualToRect(v279, v290))
                      {
                        v155 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v73, 0, 3, 3, 1, v155, [WeakRetained _isEditingWithNoSwipedCell], v171, v178, v172, v173, 1.0, v166, v177);
                        [*(self + 320) addObject:v155];

                        LOBYTE(v155) = 0;
                      }
                    }

                    if (v177 != 1.0)
                    {
                      v280.origin.x = v171;
                      v280.origin.y = v178;
                      v280.size.width = v172;
                      v280.size.height = v173;
                      v292.origin.x = v206;
                      v292.origin.y = v208;
                      v292.size.width = recta;
                      v292.size.height = v179;
                      if (!CGRectEqualToRect(v280, v292))
                      {
                        v191 = [UIViewAnimation alloc];
                        _isEditingWithNoSwipedCell = [WeakRetained _isEditingWithNoSwipedCell];
                        v121 = 1.0;
                        v123 = 1.0;
                        p_isa = &v191->super.isa;
                        v130 = v73;
                        v126 = v206;
                        v127 = v208;
                        v128 = recta;
                        v129 = v179;
                        v122 = v177;
LABEL_112:
                        v124 = v155;
LABEL_37:
                        v123 = [(UIViewAnimation *)p_isa initWithView:v130 indexPath:0 viewType:3 endRect:0 endAlpha:1 startFraction:v124 endFraction:_isEditingWithNoSwipedCell curve:v126 animateFromCurrentPosition:v127 shouldDeleteAfterAnimation:v128 editing:v129, v121, v122, v123];
                        [*(self + 320) addObject:v123];
                      }
                    }
                  }
                }
              }
            }

LABEL_38:
            v132 = *(self + 280);
            v133 = *(self + 16);
            v134 = *(v132 + 8 * v133);
            if (v134)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:sel__setupAnimationsForExistingHeadersAndFooters object:self file:@"UITableViewSupport.m" lineNumber:2296 description:@"Attempt to create two animations for footer view"];

              v132 = *(self + 280);
              v133 = *(self + 16);
              v134 = *(v132 + 8 * v133);
            }

            *(v132 + 8 * v133) = v73;

            v4 = *(self + 16);
            goto LABEL_41;
          }

          v262.origin.x = v75;
          v262.origin.y = v77;
          v262.size.width = v79;
          v262.size.height = v81;
          if (CGRectIsEmpty(v262))
          {
            v263.origin.x = v82;
            v263.origin.y = v84;
            v263.size.width = v86;
            v263.size.height = v88;
            if (CGRectIsEmpty(v263))
            {
              goto LABEL_38;
            }
          }

          v264.origin.x = v75;
          v264.origin.y = v77;
          v264.size.width = v79;
          v264.size.height = v81;
          v288.origin.x = v82;
          v288.origin.y = v84;
          v288.size.width = v86;
          v288.size.height = v88;
          v265 = CGRectUnion(v264, v288);
          if (!v73)
          {
            if (!CGRectIntersectsRect(v265, *(self + 192)))
            {
              v73 = 0;
              goto LABEL_38;
            }

            if (([WeakRetained _delegateWantsFooterForSection:*(self + 16)] & 1) == 0)
            {
              style = [WeakRetained style];
              v73 = 0;
              if (style > 0x10 || ((1 << style) & 0x10006) == 0)
              {
                goto LABEL_38;
              }
            }

            v73 = [WeakRetained _sectionFooterViewWithFrame:*(self + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v75 willDisplay:{v77, v79, v81, 0.0}];
            [WeakRetained _addContentSubview:v73 atBack:0];
            if (!v73)
            {
              goto LABEL_38;
            }
          }

          v266.origin.x = v82;
          v266.origin.y = v84;
          v266.size.width = v86;
          v266.size.height = v88;
          v118 = CGRectIntersectsRect(v266, *(self + 160));
          v119 = [UIViewAnimation alloc];
          _isEditingWithNoSwipedCell = [WeakRetained _isEditingWithNoSwipedCell];
          v121 = 1.0;
          v122 = 0.0;
          v123 = 1.0;
          v124 = !v118;
          p_isa = &v119->super.isa;
          v126 = v82;
          v127 = v84;
          v128 = v86;
          v129 = v88;
          v130 = v73;
          goto LABEL_37;
        }

LABEL_41:
        v2 = v4 + 1;
        *(self + 16) = v4 + 1;
        if (v4 + 1 >= *(self + 240))
        {
          goto LABEL_168;
        }
      }

      v6 = [WeakRetained _visibleHeaderViewForSection:v3];
      allowsHeaderViewsToFloat = [WeakRetained allowsHeaderViewsToFloat];
      v8 = [(UITableViewRowData *)*(self + 72) rectForHeaderInSection:v5 heightCanBeGuessed:1];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(UITableViewRowData *)*(self + 80) rectForHeaderInSection:1 heightCanBeGuessed:?];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if (!allowsHeaderViewsToFloat)
      {
        v248.origin.x = v8;
        v248.origin.y = v10;
        v248.size.width = v12;
        v248.size.height = v14;
        if (CGRectIsEmpty(v248))
        {
          v249.origin.x = v15;
          v249.origin.y = v17;
          v249.size.width = v19;
          v249.size.height = v21;
          if (CGRectIsEmpty(v249))
          {
            goto LABEL_21;
          }
        }

        v250.origin.x = v8;
        v250.origin.y = v10;
        v250.size.width = v12;
        v250.size.height = v14;
        v285.origin.x = v15;
        v285.origin.y = v17;
        v285.size.width = v19;
        v285.size.height = v21;
        v251 = CGRectUnion(v250, v285);
        if (!v6)
        {
          if (!CGRectIntersectsRect(v251, *(self + 192)))
          {
            v6 = 0;
            goto LABEL_21;
          }

          if (([WeakRetained _delegateWantsHeaderForSection:*(self + 16)] & 1) == 0)
          {
            style2 = [WeakRetained style];
            v6 = 0;
            if (style2 > 0x10 || ((1 << style2) & 0x10006) == 0)
            {
              goto LABEL_21;
            }
          }

          v6 = [WeakRetained _sectionHeaderViewWithFrame:*(self + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v8 willDisplay:{v10, v12, v14, 0.0}];
          [WeakRetained _addContentSubview:v6 atBack:0];
          if (!v6)
          {
            goto LABEL_21;
          }
        }

        v252.origin.x = v15;
        v252.origin.y = v17;
        v252.size.width = v19;
        v252.size.height = v21;
        v56 = CGRectIntersectsRect(v252, *(self + 160));
        v57 = [UIViewAnimation alloc];
        _isEditingWithNoSwipedCell2 = [WeakRetained _isEditingWithNoSwipedCell];
        v59 = 1.0;
        v60 = 0.0;
        v61 = 1.0;
        v62 = !v56;
        v63 = &v57->super.isa;
        v64 = v15;
        v65 = v17;
        v66 = v19;
        v67 = v21;
        v68 = v6;
LABEL_20:
        v69 = [(UIViewAnimation *)v63 initWithView:v68 indexPath:0 viewType:2 endRect:0 endAlpha:1 startFraction:v62 endFraction:_isEditingWithNoSwipedCell2 curve:v64 animateFromCurrentPosition:v65 shouldDeleteAfterAnimation:v66 editing:v67, v59, v60, v61];
        [*(self + 320) addObject:v69];

LABEL_21:
        v70 = *(self + 272);
        v71 = *(self + 16);
        v72 = *(v70 + 8 * v71);
        if (v72)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:sel__setupAnimationsForExistingHeadersAndFooters object:self file:@"UITableViewSupport.m" lineNumber:2187 description:@"Attempt to create two animations for header view"];

          v70 = *(self + 272);
          v71 = *(self + 16);
          v72 = *(v70 + 8 * v71);
        }

        *(v70 + 8 * v71) = v6;

        v4 = *(self + 16);
        goto LABEL_24;
      }

      v237.origin.x = v8;
      v237.origin.y = v10;
      v237.size.width = v12;
      v237.size.height = v14;
      if (CGRectIsEmpty(v237))
      {
        v238.origin.x = v15;
        v238.origin.y = v17;
        v238.size.width = v19;
        v238.size.height = v21;
        if (CGRectIsEmpty(v238))
        {
          goto LABEL_21;
        }
      }

      [WeakRetained _contentInset];
      v231 = v25 + *(self + 136);
      v233 = *(self + 128) + v26;
      v227 = *(self + 152) - (v25 + v24);
      v229 = *(self + 144) - (v26 + v23);
      v227 = [(UITableViewRowData *)*(self + 72) floatingRectForHeaderInSection:v5 visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v233, v231, v229, v227];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [WeakRetained _contentInset];
      v223 = v36 + *(self + 168);
      v225 = *(self + 160) + v37;
      rect_16 = *(self + 184) - (v36 + v35);
      rect_24 = *(self + 176) - (v37 + v34);
      rect_16 = [(UITableViewRowData *)*(self + 80) floatingRectForHeaderInSection:1 visibleRect:0 heightCanBeGuessed:0 outIsFloating:v225 outVisibleRectDisplacement:v223, rect_24, rect_16];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v239.origin.x = v227;
      v239.origin.y = v29;
      v239.size.width = v31;
      v239.size.height = v33;
      v283.origin.x = rect_16;
      v283.origin.y = v40;
      v283.size.width = v42;
      v283.size.height = v44;
      v240 = CGRectUnion(v239, v283);
      if (!CGRectIntersectsRect(v240, *(self + 192)))
      {
        goto LABEL_21;
      }

      v241.origin.x = v227;
      v241.origin.y = v29;
      v241.size.width = v31;
      v241.size.height = v33;
      v284.origin.x = rect_16;
      v284.origin.y = v40;
      v284.size.width = v42;
      v284.size.height = v44;
      if (CGRectEqualToRect(v241, v284))
      {
        goto LABEL_21;
      }

      v242.origin.x = rect_16;
      v242.origin.y = v40;
      v242.size.width = v42;
      v242.size.height = v44;
      rect = rect_16;
      v45 = v40;
      v46 = v42;
      v47 = v44;
      v48 = CGRectGetMinY(v242);
      v243.origin.x = v227;
      v243.origin.y = v29;
      v243.size.width = v31;
      v243.size.height = v33;
      v49 = v48 - CGRectGetMinY(v243);
      if (v49 == 0.0)
      {
        v244.origin.x = rect;
        v244.origin.y = v45;
        v244.size.width = v46;
        v244.size.height = v47;
        v50 = CGRectGetMinY(v244);
        v245.origin.x = v227;
        v245.origin.y = v29;
        v245.size.width = v31;
        v245.size.height = v33;
        v49 = v50 - CGRectGetMinY(v245);
      }

      rect_8 = v49;
      v204 = v45;
      v205 = v46;
      v213 = v47;
      v246.origin.y = v231;
      v246.origin.x = v233;
      v246.size.height = v227;
      v246.size.width = v229;
      v51 = CGRectGetMinY(v246);
      v247.origin.x = v227;
      v247.origin.y = v29;
      v247.size.width = v31;
      v247.size.height = v33;
      v52 = v51 - CGRectGetMinY(v247);
      v207 = 0.0;
      if (v52 > 0.0 && rect_8 < 0.0)
      {
        v53 = v47;
        v55 = v45;
        v54 = v205;
        goto LABEL_72;
      }

      v53 = v47;
      v55 = v45;
      v54 = v205;
      if (v52 < 0.0 && rect_8 > 0.0)
      {
        goto LABEL_72;
      }

      if (v52 <= 0.0 || (rect_8 > 0.0 ? (v137 = v52 <= rect_8) : (v137 = 1), v137))
      {
        if (v52 >= 0.0)
        {
          v207 = v52;
LABEL_72:
          v139 = rect;
          v140 = v55;
          v141 = v54;
          v142 = CGRectGetMinY(*(&v53 - 3));
          v267.origin.y = v223;
          v267.origin.x = v225;
          v267.size.height = rect_16;
          v267.size.width = rect_24;
          v143 = v142 - CGRectGetMinY(v267);
          v144 = 0.0;
          if (v143 > 0.0 && rect_8 < 0.0)
          {
            v145 = v227;
            if (v6)
            {
              goto LABEL_128;
            }

            goto LABEL_123;
          }

          v145 = v227;
          if (v143 >= 0.0 || rect_8 <= 0.0)
          {
            if (v143 > 0.0 && rect_8 > 0.0 && v143 > rect_8)
            {
              goto LABEL_121;
            }

            if (v143 >= 0.0 || rect_8 >= 0.0)
            {
              v144 = v143;
              if (v6)
              {
                goto LABEL_128;
              }

LABEL_123:
              if ([WeakRetained _delegateWantsHeaderForSection:{*(self + 16), v145, rect_8}])
              {
                goto LABEL_126;
              }

              style3 = [WeakRetained style];
              v6 = 0;
              if (style3 > 0x10)
              {
LABEL_127:
                v145 = v227;
                goto LABEL_128;
              }

              v145 = v227;
              if (((1 << style3) & 0x10006) != 0)
              {
LABEL_126:
                v6 = [WeakRetained _sectionHeaderViewWithFrame:*(self + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v212 willDisplay:{v211, v210, v209, 0.0}];
                [WeakRetained _addContentSubview:v6 atBack:0];
                goto LABEL_127;
              }

LABEL_128:
              [v6 setFrame:{v145, v29, v31, v33}];
              v22 = rect_8;
              if (rect_8 == 0.0)
              {
                goto LABEL_21;
              }

              v274.size.height = v213;
              v274.origin.x = rect;
              v274.origin.y = v55;
              v274.size.width = v54;
              LODWORD(v180) = !CGRectIntersectsRect(v274, *(self + 160));
              if (v207 == 0.0 && v144 == 0.0 || (v275.origin.x = v227, v275.origin.y = v29, v275.size.width = v31, v275.size.height = v33, v162 = CGRectGetMinY(v275), v276.origin.y = v231, v276.origin.x = v233, v276.size.height = v227, v276.size.width = v229, v163 = v162 - CGRectGetMinY(v276), v277.size.height = v213, v277.origin.x = rect, v277.origin.y = v55, v277.size.width = v54, v164 = CGRectGetMinY(v277), v278.origin.y = v223, v278.origin.x = v225, v278.size.height = rect_16, v278.size.width = rect_24, v163 == v164 - CGRectGetMinY(v278)))
              {
                v165 = [UIViewAnimation alloc];
                _isEditingWithNoSwipedCell2 = [WeakRetained _isEditingWithNoSwipedCell];
                v59 = 1.0;
                v60 = 0.0;
                v61 = 1.0;
                v63 = &v165->super.isa;
                v68 = v6;
                v67 = v213;
                v64 = rect;
                v65 = v55;
                v66 = v54;
              }

              else
              {
                v180 = fabs(v207 / rect_8);
                [v6 frame];
                v185 = v181;
                v186 = v183;
                v187 = v184;
                v188 = v182 + v207 + v207 / rect_8 * *(self + 224);
                if (v207 / rect_8 == 0.0 || (v291.origin.x = v181, v291.origin.y = v182 + v207 + v207 / rect_8 * *(self + 224), v291.size.width = v183, v291.size.height = v184, CGRectEqualToRect(*&v181, v291)))
                {
                  v189 = v185;
                  v190 = v186;
                }

                else
                {
                  v192 = [UIViewAnimation alloc];
                  _isEditingWithNoSwipedCell3 = [WeakRetained _isEditingWithNoSwipedCell];
                  v189 = v185;
                  v194 = v185;
                  v190 = v186;
                  v180 = [(UIViewAnimation *)&v192->super.isa initWithView:v6 indexPath:0 viewType:2 endRect:0 endAlpha:1 startFraction:v180 endFraction:_isEditingWithNoSwipedCell3 curve:v194 animateFromCurrentPosition:v188 shouldDeleteAfterAnimation:v186 editing:v187, 1.0, 0.0, v180];
                  [*(self + 320) addObject:v180];

                  LOBYTE(v180) = 0;
                }

                v195 = fmax(fabs((rect_8 - v144) / rect_8), v180);
                if (v180 == 1.0)
                {
                  v196 = 1.0;
                }

                else
                {
                  v196 = v195;
                }

                v197 = v188 + (rect_8 - v207 - v144) / rect_8 * *(self + 224);
                if (v180 == v196)
                {
                  v199 = v213;
                  v200 = v205;
                  v198 = v190;
                }

                else
                {
                  v281.origin.x = v189;
                  v281.origin.y = v188;
                  v198 = v190;
                  v281.size.width = v190;
                  v281.size.height = v187;
                  v293.origin.x = v189;
                  v293.origin.y = v197;
                  v293.size.width = v190;
                  v293.size.height = v187;
                  v199 = v213;
                  if (!CGRectEqualToRect(v281, v293))
                  {
                    v180 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v6, 0, 2, 3, 1, v180, [WeakRetained _isEditingWithNoSwipedCell], v189, v197, v190, v187, 1.0, v180, v196);
                    [*(self + 320) addObject:v180];

                    LOBYTE(v180) = 0;
                  }

                  v200 = v205;
                }

                v22 = 1.0;
                if (v196 == 1.0)
                {
                  goto LABEL_21;
                }

                v282.origin.x = v189;
                v282.origin.y = v197;
                v282.size.width = v198;
                v282.size.height = v187;
                v294.origin.x = rect;
                v294.origin.y = v204;
                v294.size.width = v200;
                v294.size.height = v199;
                if (CGRectEqualToRect(v282, v294))
                {
                  goto LABEL_21;
                }

                v201 = [UIViewAnimation alloc];
                _isEditingWithNoSwipedCell2 = [WeakRetained _isEditingWithNoSwipedCell];
                v59 = 1.0;
                v61 = 1.0;
                v63 = &v201->super.isa;
                v68 = v6;
                v64 = rect;
                v65 = v204;
                v66 = v200;
                v67 = v199;
                v60 = v196;
              }

              v62 = v180;
              goto LABEL_20;
            }

            v144 = v143;
            if (v143 < rect_8)
            {
LABEL_121:
              v144 = rect_8;
            }
          }

          if (v6)
          {
            goto LABEL_128;
          }

          goto LABEL_123;
        }

        v138 = rect_8 < 0.0 && v52 < rect_8;
        v207 = v52;
        if (!v138)
        {
          goto LABEL_72;
        }
      }

      v207 = rect_8;
      goto LABEL_72;
    }

LABEL_168:
  }
}

- (void)_setupAnimationsForDeletedCells
{
  v246 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained((self + 40));
    _swipeActionController = [WeakRetained _swipeActionController];
    currentSwipeOccurrence = [_swipeActionController currentSwipeOccurrence];

    v217 = currentSwipeOccurrence;
    v5 = _tableViewIsAnimatingSwipeToDelete(currentSwipeOccurrence, *(selfCopy + 64));
    v6 = *(selfCopy + 96) + *(selfCopy + 88);
    v229 = selfCopy;
    v216 = v5;
    if (v6 && [*(selfCopy + 64) count])
    {
      v224 = WeakRetained;
      v7 = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v8 = *(selfCopy + 64);
      v9 = [v8 countByEnumeratingWithState:&v230 objects:buf count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v231;
        v227 = v7;
        do
        {
          v12 = 0;
          do
          {
            if (*v231 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v230 + 1) + 8 * v12);
            if (v13 && (*(v13 + 16) & 2) == 0 && *(v13 + 20) == 1)
            {
              v14 = *(v13 + 24);
              if ([v14 row] == 0x7FFFFFFFFFFFFFFFLL)
              {
                section = [v14 section];
                v16 = [(UITableViewRowData *)*(selfCopy + 72) numberOfRowsBeforeSection:section];
                v17 = [(UITableViewRowData *)*(selfCopy + 72) numberOfRowsInSection:section];
                v18 = v17 + v16;
                if (v16 < 0 || v18 > v6)
                {
                  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                  v218 = NSStringFromRange(*(v229 + 88));
                  [currentHandler handleFailureInMethod:sel__buildDeleteUpdateItemsByOldGlobalRowLookupTable object:v229 file:@"UITableViewSupport.m" lineNumber:1390 description:{@"Old global rows out of bounds: numRowsBeforeSection=%ld, numRowsInSection=%ld, oldRowRange=%@", v16, v17, v218}];
                }

                v19 = v17 < 1;
                v7 = v227;
                if (!v19)
                {
                  v20 = 0;
                  if (v18 <= v16 + 1)
                  {
                    v21 = v16 + 1;
                  }

                  else
                  {
                    v21 = v18;
                  }

                  v22 = v21 - v16;
                  v23 = (v21 - v16 + 1) & 0xFFFFFFFFFFFFFFFELL;
                  v24 = vdupq_n_s64(v22 - 1);
                  v25 = &v227[v16];
                  do
                  {
                    v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_18A64C520)));
                    if (v26.i8[0])
                    {
                      *&v25[8 * v20] = v13;
                    }

                    if (v26.i8[4])
                    {
                      *&v25[8 * v20 + 8] = v13;
                    }

                    v20 += 2;
                  }

                  while (v23 != v20);
                }
              }

              else
              {
                v27 = [(UITableViewRowData *)*(selfCopy + 72) globalRowForRowAtIndexPath:v14];
                v28 = v27;
                if ((v27 & 0x8000000000000000) != 0 || v27 >= v6)
                {
                  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                  v29 = NSStringFromRange(*(selfCopy + 88));
                  [currentHandler2 handleFailureInMethod:sel__buildDeleteUpdateItemsByOldGlobalRowLookupTable object:selfCopy file:@"UITableViewSupport.m" lineNumber:1398 description:{@"Old global row out of bounds: deletedGlobalRow=%ld, oldRowRange=%@", v28, v29}];

                  v7 = v227;
                }

                v7[v28] = v13;
              }

              selfCopy = v229;
            }

            ++v12;
          }

          while (v12 != v10);
          v30 = [v8 countByEnumeratingWithState:&v230 objects:buf count:16];
          v10 = v30;
        }

        while (v30);
      }

      WeakRetained = v224;
      v5 = v216;
    }

    else
    {
      v7 = 0;
    }

    [WeakRetained _currentScreenScale];
    v215 = v31;
    v32 = *(selfCopy + 88);
    v33 = *(selfCopy + 96);
    *(selfCopy + 24) = v32;
    if (v32 < v33 + v32)
    {
      v34 = 1.0;
      v228 = v7;
      do
      {
        v35 = [(_UITableViewUpdateSupport *)selfCopy finalGlobalIndexForInitialGlobalIndex:v32];
        v36 = *(selfCopy + 24);
        if (v35 != 0x7FFFFFFFFFFFFFFFLL || *(selfCopy + 288) == v36)
        {
          goto LABEL_208;
        }

        v37 = [(UITableViewRowData *)*(selfCopy + 72) rectForGlobalRow:v36 heightCanBeGuessed:1];
        v222 = v38;
        v40 = v39;
        if (v7)
        {
          v41 = v7[*(selfCopy + 24)];
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;
        if (os_variant_has_internal_diagnostics())
        {
          if (v42)
          {
LABEL_46:
            v225 = 0;
            v223 = v42[2] & 1;
            goto LABEL_47;
          }

          v196 = WeakRetained;
          v197 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v197, OS_LOG_TYPE_FAULT))
          {
            v209 = *(v229 + 24);
            v210 = *(v229 + 64);
            v211 = *(v229 + 72);
            v212 = *(v229 + 80);
            _oldMapArray = [(_UITableViewUpdateSupport *)v229 _oldMapArray];
            v214 = objc_loadWeakRetained((v229 + 40));
            *buf = 134219266;
            v235 = v209;
            v236 = 2112;
            v237 = v210;
            v238 = 2112;
            v239 = v211;
            v240 = 2112;
            v241 = v212;
            v242 = 2112;
            v243 = _oldMapArray;
            v244 = 2112;
            v245 = v214;
            _os_log_fault_impl(&dword_188A29000, v197, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: missing delete update item for old global row (%ld) that does not exist after updates updateItems=%@; oldRowData=%@; newRowData=%@; oldGlobalRowMap: %@; tableView=%@", buf, 0x3Eu);
          }

          v223 = 0;
          v225 = 1;
          WeakRetained = v196;
          v7 = v228;
          selfCopy = v229;
          v5 = v216;
          v34 = 1.0;
        }

        else
        {
          if (v42)
          {
            goto LABEL_46;
          }

          v198 = *(__UILogGetCategoryCachedImpl("Assert", &_setupAnimationsForDeletedCells___s_category) + 8);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
          {
            v199 = *(v229 + 24);
            v200 = *(v229 + 64);
            v201 = *(v229 + 72);
            v202 = WeakRetained;
            v203 = *(v229 + 80);
            _oldMapArray2 = [(_UITableViewUpdateSupport *)v229 _oldMapArray];
            v205 = objc_loadWeakRetained((v229 + 40));
            *buf = 134219266;
            v235 = v199;
            selfCopy = v229;
            v236 = 2112;
            v237 = v200;
            v5 = v216;
            v238 = 2112;
            v239 = v201;
            v240 = 2112;
            v241 = v203;
            WeakRetained = v202;
            v242 = 2112;
            v243 = _oldMapArray2;
            v244 = 2112;
            v245 = v205;
            _os_log_impl(&dword_188A29000, v198, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: missing delete update item for old global row (%ld) that does not exist after updates updateItems=%@; oldRowData=%@; newRowData=%@; oldGlobalRowMap: %@; tableView=%@", buf, 0x3Eu);

            v7 = v228;
          }

          v223 = 0;
          v225 = 1;
        }

LABEL_47:
        v226 = [(UITableViewRowData *)*(selfCopy + 72) indexPathForRowAtGlobalRow:?];
        v43 = *(selfCopy + 24);
        do
        {
          v44 = v43;
          v19 = v43-- < 1;
        }

        while (!v19 && [(_UITableViewUpdateSupport *)selfCopy finalGlobalIndexForInitialGlobalIndex:v43]== 0x7FFFFFFFFFFFFFFFLL);
        v45 = v44;
        if (v44 < *(selfCopy + 248))
        {
          v45 = v44;
          do
          {
            if ([(_UITableViewUpdateSupport *)selfCopy finalGlobalIndexForInitialGlobalIndex:v45]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            ++v45;
          }

          while (v45 < *(selfCopy + 248));
        }

        if (v44 < 0)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v52 = currentHandler3;
          if (v225)
          {
            v54 = 0;
          }

          else
          {
            v53 = *(v42 + 5);
            v54 = @"unknown";
            if (v53 <= 3)
            {
              v54 = off_1E7123B00[v53];
            }
          }

          [currentHandler3 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:selfCopy file:@"UITableViewSupport.m" lineNumber:1448 description:{@"Invalid prior old global row when computing beginning of old gap for %@ of row at index path %@", v54, v226}];
        }

        else
        {
          if (v44 < *(selfCopy + 248))
          {
            rectForTableFooterView = [(UITableViewRowData *)*(selfCopy + 72) rectForGlobalRow:v44 heightCanBeGuessed:1];
LABEL_57:
            MinY = CGRectGetMinY(*&rectForTableFooterView);
            goto LABEL_67;
          }

          if (v226)
          {
            if (!v223)
            {
              v71 = *(selfCopy + 72);
              v72 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](selfCopy, [v226 section]);
              v249.origin.x = [(UITableViewRowData *)v71 rectForFooterInSection:v72 heightCanBeGuessed:1];
              MinY = CGRectGetMinY(v249);
              v219 = v45 - 1;
              if (v45 < 1)
              {
                goto LABEL_81;
              }

              goto LABEL_68;
            }

            v55 = [v226 section] + 1;
            v56 = *(selfCopy + 72);
            if (v55 >= *(selfCopy + 232))
            {
              rectForTableFooterView = [(UITableViewRowData *)v56 rectForTableFooterView];
            }

            else
            {
              rectForTableFooterView = [(UITableViewRowData *)v56 rectForHeaderInSection:v55 heightCanBeGuessed:1];
            }

            goto LABEL_57;
          }
        }

        MinY = 0.0;
LABEL_67:
        v219 = v45 - 1;
        if (v45 <= 0)
        {
          if (v223)
          {
            section2 = [v226 section];
            if (section2 < 1)
            {
              rectForTableHeaderView = [(UITableViewRowData *)*(selfCopy + 72) rectForTableHeaderView];
            }

            else
            {
              rectForTableHeaderView = [(UITableViewRowData *)*(selfCopy + 72) rectForFooterInSection:1 heightCanBeGuessed:?];
            }

            MaxY = CGRectGetMaxY(*&rectForTableHeaderView);
          }

          else
          {
            if (!v226)
            {
              goto LABEL_73;
            }

LABEL_81:
            v73 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](selfCopy, [v226 section]);
            MaxY = [(_UITableViewUpdateSupport *)selfCopy _startOfRowAfterHeaderInSection:v73 withRowData:*(selfCopy + 72)];
          }

          v61 = MaxY;
          goto LABEL_85;
        }

LABEL_68:
        if (v45 > *(selfCopy + 248))
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          v58 = currentHandler4;
          if (v225)
          {
            v60 = 0;
          }

          else
          {
            v59 = *(v42 + 5);
            v60 = @"unknown";
            if (v59 <= 3)
            {
              v60 = off_1E7123B00[v59];
            }
          }

          [currentHandler4 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:selfCopy file:@"UITableViewSupport.m" lineNumber:1504 description:{@"Invalid subsequent old global row when computing end of old gap for %@ of row at index path %@", v60, v226}];

LABEL_73:
          v61 = 0.0;
          goto LABEL_85;
        }

        v247.origin.x = [(UITableViewRowData *)*(selfCopy + 72) rectForGlobalRow:v219 heightCanBeGuessed:1];
        x = v247.origin.x;
        y = v247.origin.y;
        width = v247.size.width;
        height = v247.size.height;
        v61 = CGRectGetMinY(v247);
        v248.origin.x = x;
        v248.origin.y = y;
        v248.size.width = width;
        v248.size.height = height;
        v34 = 1.0;
        CGRectGetMaxY(v248);
LABEL_85:
        if (v61 < MinY)
        {
          v75 = 1;
          v76 = v61;
          v77 = MinY;
          v78 = v226;
          goto LABEL_151;
        }

        if (v44 < 1)
        {
          v79 = 0;
          v80 = -1;
          if (v45 < 0)
          {
            goto LABEL_90;
          }
        }

        else if (v44 <= *(selfCopy + 248))
        {
          v82 = [(_UITableViewUpdateSupport *)selfCopy finalGlobalIndexForInitialGlobalIndex:v43];
          v80 = 0x7FFFFFFFFFFFFFFFLL;
          if (v82 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v79 = 0;
          }

          else
          {
            v109 = v82;
            v110 = [(UITableViewRowData *)*(selfCopy + 72) indexPathForRowAtGlobalRow:v43];
            section3 = [v110 section];
            v79 = section3 == [v226 section];

            v80 = v109;
          }

          v7 = v228;
          if (v45 < 0)
          {
LABEL_90:
            v81 = -1;
            goto LABEL_97;
          }
        }

        else
        {
          v79 = 0;
          v80 = *(selfCopy + 256);
          if (v45 < 0)
          {
            goto LABEL_90;
          }
        }

        if (v45 >= *(selfCopy + 248))
        {
          v81 = *(selfCopy + 256);
        }

        else
        {
          v81 = [(_UITableViewUpdateSupport *)selfCopy finalGlobalIndexForInitialGlobalIndex:v45];
        }

LABEL_97:
        v78 = v226;
        if (v80 < -1)
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          v86 = currentHandler5;
          if (v225)
          {
            v88 = 0;
            v5 = v216;
          }

          else
          {
            v87 = *(v42 + 5);
            v88 = @"unknown";
            v5 = v216;
            if (v87 <= 3)
            {
              v88 = off_1E7123B00[v87];
            }
          }

          [currentHandler5 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:selfCopy file:@"UITableViewSupport.m" lineNumber:1573 description:{@"Invalid prior new global row when computing beginning of new gap for %@ of row at index path %@", v88, v226}];

          v77 = MinY;
        }

        else
        {
          v83 = v80 + 1;
          if (v80 + 1 >= *(selfCopy + 256))
          {
            if (!v223)
            {
              v123 = *(selfCopy + 80);
              v124 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](selfCopy, [v226 section]);
              v251.origin.x = [(UITableViewRowData *)v123 rectForFooterInSection:v124 heightCanBeGuessed:1];
              v77 = CGRectGetMinY(v251);
              v5 = v216;
              if (v81 < 1)
              {
                goto LABEL_142;
              }

              goto LABEL_109;
            }

            v5 = v216;
            if (v225)
            {
              v98 = 0;
            }

            else
            {
              v98 = v42[3];
            }

            v99 = v98;
            section4 = [v99 section];

            v101 = *(selfCopy + 240);
            v102 = section4 + 1;
            while (v102 < *(selfCopy + 232))
            {
              v103 = [(_UITableViewUpdateSupport *)selfCopy finalSectionIndexForInitialSectionIndex:?];
              if (v103 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v101 = v103;
                break;
              }
            }

            v104 = *(selfCopy + 80);
            if (v101 >= *(selfCopy + 240))
            {
              rectForTableFooterView2 = [(UITableViewRowData *)v104 rectForTableFooterView];
            }

            else
            {
              rectForTableFooterView2 = [(UITableViewRowData *)v104 rectForHeaderInSection:v101 heightCanBeGuessed:1];
            }

            v77 = CGRectGetMinY(*&rectForTableFooterView2);
          }

          else if (v80 != -1 && v79)
          {
            v77 = [(_UITableViewUpdateSupport *)selfCopy _startOfRowAfterRow:v80 withRowData:*(selfCopy + 80)];
            v5 = v216;
          }

          else
          {
            v112 = selfCopy;
            v113 = WeakRetained;
            v114 = [(UITableViewRowData *)*(v112 + 72) indexPathForRowAtGlobalRow:?];
            v115 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](v112, [v114 section]);

            v116 = [(UITableViewRowData *)*(v112 + 80) indexPathForRowAtGlobalRow:?];
            v117 = 72;
            if (v80 == -1)
            {
              v118 = 0;
            }

            else
            {
              v117 = 80;
              v118 = v80;
            }

            v119 = [(UITableViewRowData *)*(v112 + v117) indexPathForRowAtGlobalRow:v118];
            section5 = [v119 section];

            if (section5 < [v116 section])
            {
              v121 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:section5 + 1];

              v116 = v121;
            }

            v5 = v216;
            WeakRetained = v113;
            if (v116)
            {
              section6 = [v116 section];
            }

            else
            {
              section6 = 0x7FFFFFFFFFFFFFFFLL;
            }

            selfCopy = v229;
            if (v115 >= section6)
            {
              v189 = section6;
            }

            else
            {
              v189 = v115;
            }

            if (v189 == 0x7FFFFFFFFFFFFFFFLL || [v116 section] < v115 && objc_msgSend(v116, "row") >= 1)
            {
              v255.origin.x = [(UITableViewRowData *)*(v229 + 80) rectForGlobalRow:v83 heightCanBeGuessed:1];
              v190 = CGRectGetMinY(v255);
            }

            else
            {
              v190 = [(_UITableViewUpdateSupport *)v229 _startOfRowAfterHeaderInSection:v189 withRowData:*(v229 + 80)];
            }

            v77 = v190;

            v7 = v228;
            v78 = v226;
          }
        }

        if (v81 <= 0)
        {
          if (v223)
          {
            if (v225)
            {
              v93 = 0;
            }

            else
            {
              v93 = v42[3];
            }

            v94 = v93;
            section7 = [v94 section];

            while (1)
            {
              v19 = section7-- < 1;
              if (v19)
              {
                break;
              }

              v96 = [(_UITableViewUpdateSupport *)selfCopy finalSectionIndexForInitialSectionIndex:section7];
              if (v96 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v97 = [(_UITableViewUpdateSupport *)selfCopy _startOfRowAfterFooterInSection:v96 withRowData:*(selfCopy + 80)];
                goto LABEL_145;
              }
            }

            v252.origin.x = [(UITableViewRowData *)*(selfCopy + 80) rectForTableHeaderView];
            v97 = CGRectGetMaxY(v252);
            goto LABEL_145;
          }

LABEL_142:
          v125 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](selfCopy, [v78 section]);
          v97 = [(_UITableViewUpdateSupport *)selfCopy _startOfRowAfterHeaderInSection:v125 withRowData:*(selfCopy + 80)];
          goto LABEL_145;
        }

LABEL_109:
        if (v81 > *(selfCopy + 256))
        {
          currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
          v90 = currentHandler6;
          if (v225)
          {
            v92 = 0;
          }

          else
          {
            v91 = *(v42 + 5);
            v92 = @"unknown";
            if (v91 <= 3)
            {
              v92 = off_1E7123B00[v91];
            }
          }

          [currentHandler6 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:selfCopy file:@"UITableViewSupport.m" lineNumber:1637 description:{@"Invalid subsequent new global row when computing end of new gap for %@ of row at index path %@", v92, v78}];

          v76 = v61;
          goto LABEL_146;
        }

        v250.origin.x = [(UITableViewRowData *)*(selfCopy + 80) rectForGlobalRow:1 heightCanBeGuessed:?];
        v97 = CGRectGetMinY(v250);
LABEL_145:
        v76 = v97;
LABEL_146:
        v126 = v77;
        if (v76 > v77)
        {
          v253.origin.x = [(UITableViewRowData *)*(selfCopy + 72) rectForGlobalRow:1 heightCanBeGuessed:?];
          v127 = CGRectGetMinY(v253);
          v128 = 0.0;
          if (v61 > MinY)
          {
            v128 = (v127 - MinY) / (v61 - MinY);
          }

          v126 = v77 + UIPixelBoundaryOffset(0, (v76 - v77) * v128, v215);
        }

        v75 = v81 == 0;
        MinY = v126;
LABEL_151:
        if (v5)
        {
          direction = [v217 direction];
          v40 = 0.0;
          if (direction)
          {
            if (direction != 1)
            {
              goto LABEL_167;
            }

LABEL_166:
            [WeakRetained bounds];
            v37 = v37 + v136;
            goto LABEL_167;
          }

LABEL_165:
          [WeakRetained bounds];
          v37 = v37 - v135;
          goto LABEL_167;
        }

        if ((v225 & 1) == 0)
        {
          v130 = v42[4];
          if (v130 <= 2)
          {
            if (v130 == 1)
            {
              goto LABEL_166;
            }

            if (v130 == 2)
            {
              goto LABEL_165;
            }
          }

          else
          {
            switch(v130)
            {
              case 3:
                if (v77 > v76 && [v78 row])
                {
LABEL_212:
                  MinY = v76;
                  break;
                }

                v181 = *(selfCopy + 72);
                v182 = [v78 row];
                section8 = [v78 section];
                if (v181)
                {
                  v184 = [(UITableViewRowData *)v181 heightForRow:v182 inSection:section8 canGuess:1 adjustForReorderedRow:1];
                }

                else
                {
                  v184 = 0.0;
                }

                MinY = v77 - v184;
                break;
              case 4:
                if (v77 <= v76)
                {
                  if (v77 != v76)
                  {
                    v256.origin.x = [(UITableViewRowData *)*(selfCopy + 72) rectForGlobalRow:v219 heightCanBeGuessed:1];
                    v191 = CGRectGetHeight(v256);
                    v192 = *(selfCopy + 72);
                    v193 = [v78 row];
                    section9 = [v78 section];
                    if (v192)
                    {
                      v195 = [(UITableViewRowData *)v192 heightForRow:v193 inSection:section9 canGuess:1 adjustForReorderedRow:1];
                    }

                    else
                    {
                      v195 = 0.0;
                    }

                    MinY = v76 + v191 + v195;
                    break;
                  }

                  if (![v78 row] && objc_msgSend(v78, "section") == 0 && v75)
                  {
                    goto LABEL_212;
                  }
                }

                else if (![v78 row])
                {
                  MinY = v77;
                  break;
                }

                v185 = *(selfCopy + 72);
                v186 = [v78 row];
                section10 = [v78 section];
                if (v185)
                {
                  v188 = [(UITableViewRowData *)v185 heightForRow:v186 inSection:section10 canGuess:1 adjustForReorderedRow:1];
                }

                else
                {
                  v188 = 0.0;
                }

                MinY = v76 + v188;
                break;
              case 6:
                v131 = *(selfCopy + 72);
                v132 = [v78 row];
                section11 = [v78 section];
                if (v131)
                {
                  v134 = [(UITableViewRowData *)v131 heightForRow:v132 inSection:section11 canGuess:1 adjustForReorderedRow:1]* 0.5;
                }

                else
                {
                  v134 = 0.0;
                }

                MinY = MinY - UIPixelBoundaryOffset(0, v134, v215);
                break;
            }
          }
        }

LABEL_167:
        v137 = *(selfCopy + 24);
        v138 = *(selfCopy + 48);
        v139 = v137 >= v138;
        v140 = v137 - v138;
        if (v139 && v140 < *(selfCopy + 56))
        {
          v141 = [WeakRetained _visibleCellForGlobalRow:?];
          v142 = [(_UITableViewUpdateSupport *)selfCopy finalGlobalIndexForInitialGlobalIndex:?];
          *(selfCopy + 32) = v142;
          if (v142 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (*(*(selfCopy + 264) + 8 * v142))
            {
              currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
              _collectionViewUpdateItems = [(_UITableViewUpdateSupport *)selfCopy _collectionViewUpdateItems];
              [currentHandler7 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:selfCopy file:@"UITableViewSupport.m" lineNumber:1735 description:{@"Cannot animate deleted cell because it already has an animation. Updates: %@; Cell: %@", _collectionViewUpdateItems, *(*(selfCopy + 264) + 8 * *(selfCopy + 32))}];

              if (!v141)
              {
                goto LABEL_249;
              }
            }

            else
            {
              if (v141)
              {
                goto LABEL_173;
              }

LABEL_249:
              currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler8 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:selfCopy file:@"UITableViewSupport.m" lineNumber:1736 description:@"Missing deleted cell to setup animations"];
            }

LABEL_173:
            objc_storeStrong((*(selfCopy + 264) + 8 * *(selfCopy + 32)), v141);
          }

          [WeakRetained sendSubviewToBack:v141];
          if (v225)
          {
            v144 = 0.0;
          }

          else
          {
            v143 = v42[4];
            if (v143 == 6)
            {
              v144 = 0.0;
            }

            else
            {
              v144 = v34;
            }

            if (v143 < 3)
            {
              v144 = 0.0;
            }
          }

          if (v5)
          {
            v145 = v34;
          }

          else
          {
            v145 = v144;
          }

          v146 = [UIViewAnimation alloc];
          v147 = [(UITableViewRowData *)*(selfCopy + 72) indexPathForRowAtGlobalRow:?];
          v148 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:](&v146->super.isa, v141, v147, 1, 0, 1, 1, [v141 isEditing], v37, MinY, v222, v40, v145, 0.0, 1.0);

          _showsBackgroundShadow = [WeakRetained _showsBackgroundShadow];
          if ((v225 | _showsBackgroundShadow ^ 1))
          {
            v150 = v225 | _showsBackgroundShadow;
            goto LABEL_185;
          }

          v7 = v228;
          if ((v42[4] - 1) <= 1 && (v151 = *(selfCopy + 24), v151 == ([(UITableViewRowData *)*(selfCopy + 72) numberOfRows]- 1)))
          {
            v152 = selfCopy;
            v153 = WeakRetained;
            v154 = v148;
            v155 = objc_loadWeakRetained((v152 + 40));
            _backgroundShadowForSlideAnimation = [v155 _backgroundShadowForSlideAnimation];
            if (_backgroundShadowForSlideAnimation)
            {
              [v155 insertSubview:_backgroundShadowForSlideAnimation atIndex:0];
              [_backgroundShadowForSlideAnimation frame];
              v158 = v157;
              v160 = v159;
              v162 = v161;
              v164 = v163;
              if (v154)
              {
                v165 = v154[3];
              }

              else
              {
                v165 = 0;
              }

              [v165 frame];
              MinX = CGRectGetMinX(v254);
              v167 = 0.0;
              v168 = 0;
              v169 = 0;
              v170 = 0;
              v171 = 0;
              if (v154)
              {
                v171 = v154[8];
                v168 = v154[9];
                v169 = v154[10];
                v170 = v154[11];
              }

              v172 = CGRectGetMinX(*&v171);
              v173 = [UIViewAnimation alloc];
              if (v154)
              {
                v174 = *(v154 + 5);
                v175 = *(v154 + 6);
                v167 = *(v154 + 7);
                v176 = *(v154 + 5);
              }

              else
              {
                v176 = 0;
                v174 = 0.0;
                v175 = 0.0;
              }

              v167 = [(UIViewAnimation *)&v173->super.isa initWithView:_backgroundShadowForSlideAnimation indexPath:0 viewType:1 endRect:v176 endAlpha:1 startFraction:1 endFraction:0 curve:v158 - (MinX - v172) animateFromCurrentPosition:v160 shouldDeleteAfterAnimation:v162 editing:v164, v174, v175, v167];
              v178 = v167;
              if (v167)
              {
                *(v167 + 11) = 0;
              }

              [*(v229 + 320) addObject:v167];

              v34 = 1.0;
            }

            v150 = 0;
            WeakRetained = v153;
            selfCopy = v229;
LABEL_185:
            v7 = v228;
          }

          else
          {
            v150 = 0;
          }

          [*(selfCopy + 320) addObject:v148];
          if (!v5)
          {
            if (v150)
            {
              v179 = 0;
            }

            else
            {
              v179 = v42[4];
            }

            [v141 _animateFloatingSeparatorForInsertion:0 withRowAnimation:v179];
          }

          if (v150)
          {
            v180 = 0;
          }

          else
          {
            v180 = v42[4];
          }

          [v141 _animateInnerShadowForInsertion:0 withRowAnimation:v180];

          v78 = v226;
        }

        v36 = *(selfCopy + 24);
LABEL_208:
        v32 = v36 + 1;
        *(selfCopy + 24) = v32;
      }

      while (v32 < *(selfCopy + 96) + *(selfCopy + 88));
    }

    if (v7)
    {
      free(v7);
    }
  }
}

- (void)_setupAnimationsForDeletedHeadersAndFooters
{
  v153 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    [WeakRetained _currentScreenScale];
    v134 = v3;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = *(self + 328);
    v137 = [obj countByEnumeratingWithState:&v148 objects:v152 count:16];
    if (!v137)
    {
      goto LABEL_143;
    }

    v135 = WeakRetained;
    v136 = *v149;
    while (1)
    {
      v4 = 0;
      do
      {
        if (*v149 != v136)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v148 + 1) + 8 * v4);
        v6 = [v5 valueForKey:@"Section"];
        intValue = [v6 intValue];

        v8 = [v5 valueForKey:@"UpdateItem"];
        v9 = [v5 valueForKey:@"NewHeaderRect"];
        v10 = v9;
        if (v9)
        {
          [v9 CGRectValue];
        }

        v11 = [(UITableViewRowData *)*(self + 72) rectForHeaderInSection:intValue heightCanBeGuessed:1];
        v13 = v12;
        v15 = v14;
        v16 = [v5 valueForKey:{@"NewFooterRect", v11}];
        v17 = v16;
        if (v16)
        {
          [v16 CGRectValue];
        }

        [(UITableViewRowData *)*(self + 72) rectForFooterInSection:intValue heightCanBeGuessed:1];
        v19 = v18;
        v143 = v20;
        rect = v15;
        v141 = v17;
        if (v8 && (*(v8 + 16) & 2) != 0)
        {
          v22 = [(_UITableViewUpdateSupport *)self finalSectionIndexForInitialSectionIndex:intValue];
          v23 = 1;
          v24 = [(UITableViewRowData *)*(self + 80) rectForHeaderInSection:v22 heightCanBeGuessed:1];
          rect2 = v25;
          v26 = [(UITableViewRowData *)*(self + 80) rectForFooterInSection:v22 heightCanBeGuessed:1];
          v28 = v27;
          MaxY = 0.0;
          goto LABEL_59;
        }

        if (intValue >= 1)
        {
          v21 = intValue;
          while ([(_UITableViewUpdateSupport *)self finalSectionIndexForInitialSectionIndex:?]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v21 <= 0)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v30 = *(self + 80);
          v31 = [(_UITableViewUpdateSupport *)self finalSectionIndexForInitialSectionIndex:v21];
          v154.origin.x = [(UITableViewRowData *)v30 rectForFooterInSection:v31 heightCanBeGuessed:1];
          MaxY = CGRectGetMaxY(v154);
          v32 = v21 + 1;
          goto LABEL_22;
        }

        v21 = intValue - 1;
        if (intValue)
        {
          goto LABEL_20;
        }

LABEL_21:
        v155.origin.x = [(UITableViewRowData *)*(self + 80) rectForTableHeaderView];
        MaxY = CGRectGetMaxY(v155);
        v32 = 0;
LABEL_22:
        v33 = *(self + 232);
        v34 = v32;
        if (v32 < v33)
        {
          v34 = v32;
          do
          {
            v35 = [(_UITableViewUpdateSupport *)self finalSectionIndexForInitialSectionIndex:v34];
            v33 = *(self + 232);
            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            ++v34;
          }

          while (v34 < v33);
        }

        if (v34 == v33)
        {
          v156.origin.x = [(UITableViewRowData *)*(self + 80) rectForTableFooterView];
          MinY = CGRectGetMinY(v156);
        }

        else
        {
          v37 = [(_UITableViewUpdateSupport *)self finalSectionIndexForInitialSectionIndex:v34];
          v157.origin.x = [(UITableViewRowData *)*(self + 80) rectForHeaderInSection:v37 heightCanBeGuessed:1];
          v38 = CGRectGetMinY(v157);
          MinY = v38 - [(UITableViewRowData *)*(self + 80) offsetForHeaderInSection:v37];
        }

        v39 = *(self + 72);
        v139 = v19;
        v140 = v13;
        if (intValue < 1)
        {
          rectForTableHeaderView = [(UITableViewRowData *)v39 rectForTableHeaderView];
        }

        else
        {
          rectForTableHeaderView = [(UITableViewRowData *)v39 rectForFooterInSection:1 heightCanBeGuessed:?];
        }

        v41 = rectForTableHeaderView;
        v42 = MaxY;
        v43 = MaxY;
        if (v34 > v32)
        {
          v44 = v32;
          v43 = MaxY;
          v42 = MaxY;
          do
          {
            if (intValue == v44)
            {
              v43 = v42 - MaxY;
            }

            v42 = v42 + [(UITableViewRowData *)*(self + 72) heightForSection:?];
          }

          while (v34 != v44);
        }

        v138 = v41;
        v45 = 0.0;
        if (MaxY != v42)
        {
          v45 = (MinY - MaxY) / (v42 - MaxY);
        }

        v46 = MaxY + UIPixelBoundaryOffset(0, v43 * v45, v134);
        v47 = v143;
        v48 = v46 + v45 * ([(UITableViewRowData *)*(self + 72) heightForSection:intValue]- v143);
        rect2 = v46 + [(UITableViewRowData *)*(self + 72) offsetForHeaderInSection:intValue];
        WeakRetained = v135;
        [v135 _contentInset];
        v50 = *(self + 128) + v49;
        v52 = v51 + *(self + 136);
        v54 = *(self + 144) - (v49 + v53);
        v56 = *(self + 152) - (v51 + v55);
        v145 = v48;
        if (![v135 allowsHeaderViewsToFloat])
        {
          v19 = v139;
          v13 = v140;
          goto LABEL_48;
        }

        v158.origin.x = v50;
        v158.origin.y = v52;
        v158.size.width = v54;
        v158.size.height = v56;
        v178.origin.x = v138;
        v178.origin.y = v48;
        v19 = v139;
        v178.size.width = v139;
        v178.size.height = v143;
        if (!CGRectIntersectsRect(v158, v178))
        {
          goto LABEL_47;
        }

        v159.origin.x = v138;
        v159.origin.y = rect2;
        v159.size.width = v140;
        v159.size.height = rect;
        v57 = CGRectGetMinY(v159);
        v160.origin.x = v50;
        v160.origin.y = v52;
        v160.size.width = v54;
        v160.size.height = v56;
        if (v57 >= CGRectGetMinY(v160))
        {
          v19 = v139;
LABEL_47:
          v47 = v143;
          v13 = v140;
          goto LABEL_48;
        }

        v161.origin.x = v50;
        v161.origin.y = v52;
        v161.size.width = v54;
        v161.size.height = v56;
        v132 = CGRectGetMinY(v161);
        v162.origin.x = v138;
        v162.origin.y = v145;
        v19 = v139;
        v162.size.width = v139;
        v47 = v143;
        v162.size.height = v143;
        v131 = CGRectGetMinY(v162);
        v163.origin.x = v138;
        v163.origin.y = rect2;
        v13 = v140;
        v163.size.width = v140;
        v163.size.height = rect;
        v58 = v131 - CGRectGetHeight(v163);
        if (v132 < v58)
        {
          v58 = v132;
        }

        rect2 = v58;
LABEL_48:
        if (![v135 allowsFooterViewsToFloat])
        {
          v23 = 0;
          v26 = v138;
          v24 = v138;
          v28 = v145;
          goto LABEL_59;
        }

        v164.origin.x = v50;
        v164.origin.y = v52;
        v164.size.width = v54;
        v164.size.height = v56;
        v179.size.width = v13;
        v179.origin.x = v138;
        v179.origin.y = rect2;
        v179.size.height = rect;
        if (!CGRectIntersectsRect(v164, v179))
        {
          v23 = 0;
          v24 = v138;
LABEL_58:
          v26 = v138;
          v28 = v145;
          v13 = v140;
          goto LABEL_59;
        }

        v165.origin.x = v138;
        v165.origin.y = v145;
        v165.size.width = v19;
        v165.size.height = v47;
        v59 = CGRectGetMaxY(v165);
        v166.origin.x = v50;
        v166.origin.y = v52;
        v166.size.width = v54;
        v166.size.height = v56;
        if (v59 <= CGRectGetMaxY(v166))
        {
          v23 = 0;
          v24 = v138;
          v19 = v139;
          goto LABEL_58;
        }

        v167.origin.x = v50;
        v167.origin.y = v52;
        v167.size.width = v54;
        v167.size.height = v56;
        v60 = CGRectGetMaxY(v167);
        v168.origin.x = v138;
        v168.origin.y = v145;
        v19 = v139;
        v168.size.width = v139;
        v168.size.height = v47;
        v61 = v60 - CGRectGetHeight(v168);
        v169.origin.x = v138;
        v169.origin.y = rect2;
        v169.size.width = v140;
        v169.size.height = rect;
        v62 = CGRectGetMaxY(v169);
        v23 = 0;
        if (v61 >= v62)
        {
          v28 = v61;
        }

        else
        {
          v28 = v62;
        }

        v24 = v138;
        v26 = v138;
        v13 = v140;
LABEL_59:
        v63 = [(UITableViewRowData *)*(self + 72) heightForHeaderInSection:intValue canGuess:1];
        v64 = [(UITableViewRowData *)*(self + 72) heightForFooterInSection:intValue canGuess:1];
        [WeakRetained bounds];
        v142 = v10;
        if (!v8)
        {
          goto LABEL_75;
        }

        v66 = *(v8 + 32);
        if (v66 > 2)
        {
          if (v66 != 3)
          {
            if (v66 == 6)
            {
              v71 = [(UITableViewRowData *)*(self + 72) heightForSection:intValue];
              Height = UIPixelBoundaryOffset(0, v71 * 0.5, v134);
              rect2 = rect2 - Height;
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          if (v23)
          {
            v170.origin.x = v24;
            v170.origin.y = rect2;
            v170.size.width = v13;
            v170.size.height = rect;
            rect2 = rect2 - CGRectGetHeight(v170);
            v171.origin.x = v26;
            v171.origin.y = v28;
            v171.size.width = v19;
            v171.size.height = v143;
            Height = CGRectGetHeight(v171);
LABEL_74:
            v28 = v28 - Height;
LABEL_75:
            v146 = v28;
            goto LABEL_76;
          }

          if (v64 <= v63)
          {
            v99 = v63;
          }

          else
          {
            v99 = v64;
          }

          v146 = MaxY - v99;
          rect2 = MaxY - v99;
        }

        else
        {
          v146 = v28;
          v67 = v24 + v65;
          v68 = v26 + v65;
          v69 = v24 - v65;
          v70 = v26 - v65;
          if (v66 != 2)
          {
            v70 = v26;
            v69 = v24;
          }

          if (v66 == 1)
          {
            v26 = v68;
          }

          else
          {
            v26 = v70;
          }

          if (v66 == 1)
          {
            v24 = v67;
          }

          else
          {
            v24 = v69;
          }
        }

LABEL_76:
        v73 = v26;
        v74 = v8;
        v75 = objc_loadWeakRetained((self + 40));
        allowsHeaderViewsToFloat = [v75 allowsHeaderViewsToFloat];
        v77 = *(self + 72);
        if (allowsHeaderViewsToFloat)
        {
          [v75 _contentInset];
          v82 = [(UITableViewRowData *)v77 floatingRectForHeaderInSection:intValue visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:*(self + 128) + v81, v78 + *(self + 136), *(self + 144) - (v81 + v79), *(self + 152) - (v78 + v80)];
        }

        else
        {
          v82 = [(UITableViewRowData *)*(self + 72) rectForHeaderInSection:intValue heightCanBeGuessed:1];
        }

        v86 = v82;
        v87 = v83;
        v88 = v84;
        v89 = v85;
        if (!CGRectIsEmpty(*&v82) || (v172.origin.x = v24, v172.origin.y = rect2, v172.size.width = v13, v172.size.height = rect, !CGRectIsEmpty(v172)))
        {
          v173.origin.x = v86;
          v173.origin.y = v87;
          v173.size.width = v88;
          v173.size.height = v89;
          v180.origin.x = v24;
          v180.origin.y = rect2;
          v180.size.width = v13;
          v180.size.height = rect;
          v174 = CGRectUnion(v173, v180);
          if (CGRectIntersectsRect(v174, *(self + 192)))
          {
            if ([(_UITableViewUpdateSupport *)self _isReloadSectionUpdate])
            {
              v90 = [*(self + 64) objectAtIndex:0];
              v91 = v90;
              if (v90)
              {
                v90 = v90[3];
              }

              section = [v90 section];

              v93 = *(*(self + 272) + 8 * section);
            }

            else
            {
              v93 = 0;
            }

            v94 = [v75 _visibleHeaderViewForSection:intValue];
            if (!v94)
            {
              goto LABEL_107;
            }

            v95 = v94;
            if (v93 == v94)
            {
              v96 = [_UITableViewUpdateSupport _imageViewForView:v94];

              v95 = v96;
            }

            [v95 setFrame:{v86, v87, v88, v89}];
            if (v93)
            {
              v97 = rect2;
              if (v8)
              {
                if (v74[4] == 5)
                {
                  v98 = 0.0;
                  [v95 setAlpha:0.0];
                  goto LABEL_106;
                }

                [v95 setAlpha:1.0];
LABEL_101:
                v100 = v74[4];
                v101 = 1.0;
                if (v100 == 6)
                {
                  v101 = 0.0;
                }

                if (v100 >= 3)
                {
                  v98 = v101;
                }

                else
                {
                  v98 = 0.0;
                }

LABEL_106:
                v102 = [[UIViewAnimation alloc] initWithView:v95 indexPath:0 viewType:2 endRect:0 endAlpha:1 startFraction:1 endFraction:0 curve:v24 animateFromCurrentPosition:v97 shouldDeleteAfterAnimation:v13 editing:rect, v98, 0.0, 1.0];
                [*(self + 320) addObject:v102];
                [v75 _addContentSubview:v95 atBack:{objc_msgSend(v75, "allowsHeaderViewsToFloat") ^ 1}];

LABEL_107:
                WeakRetained = v135;
                goto LABEL_108;
              }

              [v95 setAlpha:1.0];
            }

            else
            {
              [v95 setAlpha:1.0];
              v97 = rect2;
              if (v8)
              {
                goto LABEL_101;
              }
            }

            v98 = 0.0;
            goto LABEL_106;
          }
        }

LABEL_108:

        v103 = v74;
        v104 = objc_loadWeakRetained((self + 40));
        allowsFooterViewsToFloat = [v104 allowsFooterViewsToFloat];
        v106 = *(self + 72);
        if (allowsFooterViewsToFloat)
        {
          [v104 _contentInset];
          v111 = [(UITableViewRowData *)v106 floatingRectForFooterInSection:intValue visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:*(self + 128) + v110, v107 + *(self + 136), *(self + 144) - (v110 + v108), *(self + 152) - (v107 + v109)];
        }

        else
        {
          v111 = [(UITableViewRowData *)*(self + 72) rectForFooterInSection:intValue heightCanBeGuessed:1];
        }

        v115 = v111;
        v116 = v112;
        v117 = v113;
        v118 = v114;
        if (!CGRectIsEmpty(*&v111) || (v175.origin.x = v73, v175.origin.y = v146, v175.size.width = v19, v175.size.height = v143, !CGRectIsEmpty(v175)))
        {
          v176.origin.x = v115;
          v176.origin.y = v116;
          v176.size.width = v117;
          v176.size.height = v118;
          v181.origin.x = v73;
          v181.origin.y = v146;
          v181.size.width = v19;
          v181.size.height = v143;
          v177 = CGRectUnion(v176, v181);
          if (CGRectIntersectsRect(v177, *(self + 192)))
          {
            if ([(_UITableViewUpdateSupport *)self _isReloadSectionUpdate])
            {
              v119 = [*(self + 64) objectAtIndex:0];
              v120 = v119;
              if (v119)
              {
                v119 = v119[3];
              }

              section2 = [v119 section];

              v122 = *(*(self + 280) + 8 * section2);
            }

            else
            {
              v122 = 0;
            }

            v123 = [v104 _visibleFooterViewForSection:intValue];
            if (!v123)
            {
              goto LABEL_135;
            }

            v124 = v123;
            if (v122 == v123)
            {
              v125 = [_UITableViewUpdateSupport _imageViewForView:v123];

              v124 = v125;
            }

            [v124 setFrame:{v115, v116, v117, v118}];
            if (v122)
            {
              if (v8)
              {
                if (v103[4] == 5)
                {
                  v126 = 0.0;
                  [v124 setAlpha:0.0];
                  goto LABEL_134;
                }

                [v124 setAlpha:1.0];
LABEL_129:
                v127 = v103[4];
                v128 = 1.0;
                if (v127 == 6)
                {
                  v128 = 0.0;
                }

                if (v127 >= 3)
                {
                  v126 = v128;
                }

                else
                {
                  v126 = 0.0;
                }

LABEL_134:
                v129 = [[UIViewAnimation alloc] initWithView:v124 indexPath:0 viewType:3 endRect:0 endAlpha:1 startFraction:1 endFraction:0 curve:v73 animateFromCurrentPosition:v146 shouldDeleteAfterAnimation:v19 editing:v143, v126, 0.0, 1.0];
                [*(self + 320) addObject:v129];
                [v104 _addContentSubview:v124 atBack:{objc_msgSend(v104, "allowsFooterViewsToFloat") ^ 1}];

LABEL_135:
                goto LABEL_136;
              }

              [v124 setAlpha:1.0];
            }

            else
            {
              [v124 setAlpha:1.0];
              if (v8)
              {
                goto LABEL_129;
              }
            }

            v126 = 0.0;
            goto LABEL_134;
          }
        }

LABEL_136:

        ++v4;
      }

      while (v4 != v137);
      v130 = [obj countByEnumeratingWithState:&v148 objects:v152 count:16];
      v137 = v130;
      if (!v130)
      {
LABEL_143:

        return;
      }
    }
  }
}

- (void)_setupAnimationForTableFooter
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    rectForTableFooterView = [(UITableViewRowData *)*(self + 72) rectForTableFooterView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    rectForTableFooterView2 = [(UITableViewRowData *)*(self + 80) rectForTableFooterView];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v22.origin.x = rectForTableFooterView;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = v8;
    if (!CGRectIsEmpty(v22) || (v23.origin.x = rectForTableFooterView2, v23.origin.y = v11, v23.size.width = v13, v23.size.height = v15, !CGRectIsEmpty(v23)))
    {
      v24.origin.x = rectForTableFooterView;
      v24.origin.y = v4;
      v24.size.width = v6;
      v24.size.height = v8;
      v27.origin.x = rectForTableFooterView2;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      v25 = CGRectUnion(v24, v27);
      if (CGRectIntersectsRect(v25, *(self + 192)))
      {
        if ([WeakRetained _shouldUseNewHeaderFooterBehavior])
        {
          [WeakRetained _tableFooterView:1];
        }

        else
        {
          [WeakRetained tableFooterView];
        }
        v16 = ;
        v17 = v16;
        if (v16)
        {
          [v16 setFrame:{rectForTableFooterView, v4, v6, v8}];
          if ([WeakRetained _shouldUseNewHeaderFooterBehavior])
          {
            v26.origin.x = rectForTableFooterView2;
            v26.origin.y = v11;
            v26.size.width = v13;
            v26.size.height = v15;
            v18 = !CGRectIntersectsRect(v26, *(self + 160));
          }

          else
          {
            v18 = 0;
          }

          v19 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v17, 0, 5, 0, 1, v18, [WeakRetained _isEditingWithNoSwipedCell], rectForTableFooterView2, v11, v13, v15, 1.0, 0.0, 1.0);
          [*(self + 320) addObject:v19];
        }
      }
    }
  }
}

- (void)_setupAnimationForTableHeader
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    rectForTableHeaderView = [(UITableViewRowData *)*(self + 72) rectForTableHeaderView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    rectForTableHeaderView2 = [(UITableViewRowData *)*(self + 80) rectForTableHeaderView];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v22.origin.x = rectForTableHeaderView;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = v8;
    if (!CGRectIsEmpty(v22) || (v23.origin.x = rectForTableHeaderView2, v23.origin.y = v11, v23.size.width = v13, v23.size.height = v15, !CGRectIsEmpty(v23)))
    {
      v24.origin.x = rectForTableHeaderView;
      v24.origin.y = v4;
      v24.size.width = v6;
      v24.size.height = v8;
      v27.origin.x = rectForTableHeaderView2;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      v25 = CGRectUnion(v24, v27);
      if (CGRectIntersectsRect(v25, *(self + 192)))
      {
        if ([WeakRetained _shouldUseNewHeaderFooterBehavior])
        {
          [WeakRetained _tableHeaderView:1];
        }

        else
        {
          [WeakRetained tableHeaderView];
        }
        v16 = ;
        v17 = v16;
        if (v16)
        {
          [v16 setFrame:{rectForTableHeaderView, v4, v6, v8}];
          if ([WeakRetained _shouldUseNewHeaderFooterBehavior])
          {
            v26.origin.x = rectForTableHeaderView2;
            v26.origin.y = v11;
            v26.size.width = v13;
            v26.size.height = v15;
            v18 = !CGRectIntersectsRect(v26, *(self + 160));
          }

          else
          {
            v18 = 0;
          }

          v19 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v17, 0, 4, 0, 1, v18, [WeakRetained _isEditingWithNoSwipedCell], rectForTableHeaderView2, v11, v13, v15, 1.0, 0.0, 1.0);
          [*(self + 320) addObject:v19];
        }
      }
    }
  }
}

- (void)_setupAnimationsForExistingOffscreenCells
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    v3 = WeakRetained;
    v4 = *(self + 88);
    v5 = *(self + 96);
    *(self + 24) = v4;
    if (v4 < v5 + v4)
    {
      v47 = WeakRetained;
      do
      {
        v6 = *(self + 48);
        v8 = v4 >= v6;
        v7 = v4 - v6;
        v8 = !v8 || v7 >= *(self + 56);
        if (!v8)
        {
          goto LABEL_27;
        }

        v9 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:v4];
        v3 = v47;
        *(self + 32) = v9;
        if (v9 == 0x7FFFFFFFFFFFFFFFLL || *(*(self + 264) + 8 * v9))
        {
          goto LABEL_27;
        }

        v10 = [(UITableViewRowData *)*(self + 80) rectForGlobalRow:v9 heightCanBeGuessed:1];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = *(self + 24);
        v18 = v15;
        rect = v13;
        v19 = v11;
        v20 = v10;
        if (v17 < *(self + 248))
        {
          v20 = [(UITableViewRowData *)*(self + 72) rectForGlobalRow:v17 heightCanBeGuessed:1];
          v19 = v21;
          rect = v22;
          v18 = v23;
        }

        v49.origin.x = v10;
        v49.origin.y = v12;
        v49.size.width = v14;
        v49.size.height = v16;
        v24 = CGRectIntersectsRect(v49, *(self + 160));
        v3 = v47;
        if (!v24)
        {
          v51.origin.x = v20;
          v51.origin.y = v19;
          v51.size.width = rect;
          v51.size.height = v18;
          v33 = v18;
          MaxY = CGRectGetMaxY(v51);
          v35 = MaxY < CGRectGetMinY(*(self + 128));
          v18 = v33;
          if (!v35 || (v52.origin.x = v10, v52.origin.y = v12, v52.size.width = v14, v52.size.height = v16, v36 = CGRectGetMinY(v52), v37 = CGRectGetMaxY(*(self + 160)), v3 = v47, v38 = v36 <= v37, v18 = v33, v38))
          {
            v53.origin.x = v20;
            v53.origin.y = v19;
            v53.size.width = rect;
            v53.size.height = v18;
            MinY = CGRectGetMinY(v53);
            v40 = CGRectGetMaxY(*(self + 128));
            v3 = v47;
            if (MinY <= v40)
            {
              goto LABEL_27;
            }

            v54.origin.x = v10;
            v54.origin.y = v12;
            v54.size.width = v14;
            v54.size.height = v16;
            v41 = CGRectGetMaxY(v54);
            v42 = CGRectGetMinY(*(self + 160));
            v3 = v47;
            v35 = v41 < v42;
            v18 = v33;
            if (!v35)
            {
              goto LABEL_27;
            }
          }
        }

        v25 = [v3 _createPreparedCellForGlobalRow:*(self + 32) willDisplay:1];
        v26 = v25;
        if (*(*(self + 264) + 8 * *(self + 32)))
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          _collectionViewUpdateItems = [(_UITableViewUpdateSupport *)self _collectionViewUpdateItems];
          [currentHandler handleFailureInMethod:sel__setupAnimationsForExistingOffscreenCells object:self file:@"UITableViewSupport.m" lineNumber:2037 description:{@"Cannot animate existing offscreen cell because it already has an animation. Updates: %@; Cell: %@", _collectionViewUpdateItems, *(*(self + 264) + 8 * *(self + 32))}];

          if (!v26)
          {
LABEL_30:
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__setupAnimationsForExistingOffscreenCells object:self file:@"UITableViewSupport.m" lineNumber:2038 description:@"Missing offscreen cell to setup animations"];
          }
        }

        else if (!v25)
        {
          goto LABEL_30;
        }

        objc_storeStrong((*(self + 264) + 8 * *(self + 32)), v26);
        if (*(self + 288) != *(self + 32))
        {
          [v26 setFrame:{v20, v19, rect, v18}];
          v50.origin.x = v10;
          v50.origin.y = v12;
          v50.size.width = v14;
          v50.size.height = v16;
          v27 = CGRectIntersectsRect(v50, *(self + 160));
          v28 = [(UITableViewRowData *)*(self + 80) indexPathForRowAtGlobalRow:?];
          v29 = [v47 _wasEditingRowAtIndexPath:v28];
          v30 = [v47 _isEditingRowAtIndexPath:v28];
          v31 = v30;
          if (v29 != v30)
          {
            [v47 _setupCell:v26 forEditing:v29 atIndexPath:v28 animated:0 updateSeparators:1];
          }

          v32 = [[UIViewAnimation alloc] initWithView:v26 indexPath:v28 viewType:1 endRect:0 endAlpha:0 startFraction:!v27 endFraction:v31 curve:v10 animateFromCurrentPosition:v12 shouldDeleteAfterAnimation:v14 editing:v16, 1.0, 0.0, 1.0];
          [*(self + 320) addObject:v32];
          [v47 _addContentSubview:v26 atBack:{objc_msgSend(*(self + 120), "containsIndex:", *(self + 32)) ^ 1}];
        }

        v3 = v47;
LABEL_27:
        v4 = *(self + 24) + 1;
        *(self + 24) = v4;
      }

      while (v4 < *(self + 96) + *(self + 88));
    }
  }
}

- (void)_setupAnimationsForInsertedHeadersAndFooters
{
  v153 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    [WeakRetained _currentScreenScale];
    v134 = v2;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    obj = *(self + 336);
    v138 = [obj countByEnumeratingWithState:&v146 objects:v152 count:16];
    if (!v138)
    {
      goto LABEL_120;
    }

    v137 = *v147;
    v132 = *(MEMORY[0x1E695F058] + 8);
    v133 = *MEMORY[0x1E695F058];
    v130 = *(MEMORY[0x1E695F058] + 24);
    v131 = *(MEMORY[0x1E695F058] + 16);
    while (1)
    {
      v3 = 0;
      do
      {
        if (*v147 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v146 + 1) + 8 * v3);
        v5 = [v4 valueForKey:@"Section"];
        intValue = [v5 intValue];

        v7 = [v4 valueForKey:@"UpdateItem"];
        v8 = [v4 valueForKey:@"OldHeaderRect"];
        v9 = v8;
        if (v8)
        {
          [v8 CGRectValue];
        }

        v139 = v9;
        v10 = [(UITableViewRowData *)*(self + 80) rectForHeaderInSection:intValue heightCanBeGuessed:1];
        r1 = v11;
        v13 = v12;
        v14 = [v4 valueForKey:{@"OldFooterRect", v10}];
        v15 = v14;
        if (v14)
        {
          [v14 CGRectValue];
        }

        [(UITableViewRowData *)*(self + 80) rectForFooterInSection:intValue heightCanBeGuessed:1];
        v18 = v17;
        v141 = v17;
        rect2 = v16;
        rect = v13;
        if (v7 && (*(v7 + 16) & 2) != 0)
        {
          v20 = v16;
          v21 = [(_UITableViewUpdateSupport *)self initialSectionIndexForFinalSectionIndex:intValue];
          v22 = 1;
          v23 = [(UITableViewRowData *)*(self + 72) rectForHeaderInSection:v21 heightCanBeGuessed:1];
          v25 = v24;
          v26 = [(UITableViewRowData *)*(self + 72) rectForFooterInSection:v21 heightCanBeGuessed:1];
          v144 = v27;
          MaxY = 0.0;
          goto LABEL_57;
        }

        if (intValue >= 1)
        {
          v19 = intValue;
          while ([(_UITableViewUpdateSupport *)self initialSectionIndexForFinalSectionIndex:?]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v19 <= 0)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v29 = *(self + 72);
          v30 = [(_UITableViewUpdateSupport *)self initialSectionIndexForFinalSectionIndex:v19];
          v154.origin.x = [(UITableViewRowData *)v29 rectForFooterInSection:v30 heightCanBeGuessed:1];
          MaxY = CGRectGetMaxY(v154);
          v31 = v19 + 1;
          goto LABEL_22;
        }

        v19 = intValue - 1;
        if (intValue)
        {
          goto LABEL_20;
        }

LABEL_21:
        v155.origin.x = [(UITableViewRowData *)*(self + 72) rectForTableHeaderView];
        MaxY = CGRectGetMaxY(v155);
        v31 = 0;
LABEL_22:
        v32 = intValue + 1;
        while (1)
        {
          v33 = v32;
          v34 = *(self + 240);
          if (v33 >= v34)
          {
            break;
          }

          v35 = [(_UITableViewUpdateSupport *)self initialSectionIndexForFinalSectionIndex:v33];
          v32 = v33 + 1;
          if (v35 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = *(self + 240);
            break;
          }
        }

        if (v34 == v33)
        {
          v156.origin.x = [(UITableViewRowData *)*(self + 72) rectForTableFooterView];
          MinY = CGRectGetMinY(v156);
        }

        else
        {
          v37 = [(_UITableViewUpdateSupport *)self initialSectionIndexForFinalSectionIndex:v33];
          v157.origin.x = [(UITableViewRowData *)*(self + 72) rectForHeaderInSection:v37 heightCanBeGuessed:1];
          v38 = CGRectGetMinY(v157);
          MinY = v38 - [(UITableViewRowData *)*(self + 72) offsetForHeaderInSection:v37];
        }

        v39 = *(self + 80);
        if (intValue < 1)
        {
          rectForTableHeaderView = [(UITableViewRowData *)v39 rectForTableHeaderView];
        }

        else
        {
          rectForTableHeaderView = [(UITableViewRowData *)v39 rectForFooterInSection:1 heightCanBeGuessed:?];
        }

        v41 = rectForTableHeaderView;
        v42 = v33 - 1;
        v43 = MaxY;
        v44 = MaxY;
        if (v42 >= v31)
        {
          v45 = v31;
          v46 = v31 + 1;
          v44 = MaxY;
          v43 = MaxY;
          do
          {
            if (v46 - intValue == 1)
            {
              v44 = v43 - MaxY;
            }

            v43 = v43 + [(UITableViewRowData *)*(self + 80) heightForSection:v45];
            v45 = v46;
          }

          while (v42 >= v46++);
        }

        v136 = v41;
        v48 = 0.0;
        if (MaxY != v43)
        {
          v48 = (MinY - MaxY) / (v43 - MaxY);
        }

        v49 = MaxY + UIPixelBoundaryOffset(0, v44 * v48, v134);
        v50 = v49 + v48 * ([(UITableViewRowData *)*(self + 80) heightForSection:intValue]- v18);
        v51 = v18;
        v25 = v49 + [(UITableViewRowData *)*(self + 80) offsetForHeaderInSection:intValue];
        [WeakRetained _contentInset];
        v53 = *(self + 128) + v52;
        v55 = v54 + *(self + 136);
        v57 = *(self + 144) - (v52 + v56);
        v59 = *(self + 152) - (v54 + v58);
        v144 = v50;
        v135 = v59;
        if ([WeakRetained allowsHeaderViewsToFloat])
        {
          v158.origin.x = v53;
          v158.origin.y = v55;
          v158.size.width = v57;
          v158.size.height = v59;
          v182.origin.x = v136;
          v182.origin.y = v50;
          v182.size.width = rect2;
          v20 = rect2;
          v182.size.height = v51;
          if (CGRectIntersectsRect(v158, v182))
          {
            v159.origin.x = v136;
            v159.origin.y = v25;
            v159.size.width = r1;
            v159.size.height = rect;
            v60 = CGRectGetMinY(v159);
            v160.origin.x = v53;
            v160.origin.y = v55;
            v160.size.width = v57;
            v160.size.height = v59;
            v61 = v60 < CGRectGetMinY(v160);
            v26 = v136;
            if (v61)
            {
              v161.size.width = v57;
              v161.origin.x = v53;
              v161.origin.y = v55;
              v161.size.height = v59;
              v128 = CGRectGetMinY(v161);
              v162.origin.x = v136;
              v162.origin.y = v144;
              v162.size.height = v141;
              v162.size.width = rect2;
              v127 = CGRectGetMinY(v162);
              v163.origin.x = v136;
              v163.origin.y = v25;
              v163.size.width = r1;
              v63 = rect;
              v163.size.height = rect;
              v62 = v127 - CGRectGetHeight(v163);
              if (v128 >= v62)
              {
                v25 = v62;
              }

              else
              {
                v25 = v128;
              }

              v20 = rect2;
            }

            else
            {
              v20 = rect2;
              v63 = rect;
            }
          }

          else
          {
            v26 = v136;
            v63 = rect;
          }
        }

        else
        {
          v20 = rect2;
          v63 = rect;
          v26 = v136;
        }

        if ([WeakRetained allowsFooterViewsToFloat] && (v164.origin.x = v53, v164.origin.y = v55, v164.size.height = v135, v164.size.width = v57, v183.origin.x = v26, v183.origin.y = v25, v183.size.width = r1, v183.size.height = v63, CGRectIntersectsRect(v164, v183)))
        {
          v165.origin.x = v26;
          v165.origin.y = v144;
          v165.size.width = v20;
          v165.size.height = v141;
          v64 = CGRectGetMaxY(v165);
          v166.origin.x = v53;
          v166.origin.y = v55;
          v166.size.width = v57;
          v166.size.height = v135;
          if (v64 <= CGRectGetMaxY(v166))
          {
            v22 = 0;
            v23 = v26;
            v20 = rect2;
          }

          else
          {
            v167.origin.x = v53;
            v167.origin.y = v55;
            v167.size.width = v57;
            v167.size.height = v135;
            v65 = CGRectGetMaxY(v167);
            v168.origin.x = v26;
            v168.origin.y = v144;
            v168.size.width = rect2;
            v168.size.height = v141;
            v66 = v65 - CGRectGetHeight(v168);
            v169.origin.x = v26;
            v169.origin.y = v25;
            v169.size.width = r1;
            v169.size.height = rect;
            v67 = CGRectGetMaxY(v169);
            v22 = 0;
            if (v66 >= v67)
            {
              v67 = v66;
            }

            v144 = v67;
            v23 = v26;
            v20 = rect2;
          }
        }

        else
        {
          v22 = 0;
          v23 = v26;
        }

LABEL_57:
        v68 = [(UITableViewRowData *)*(self + 80) heightForHeaderInSection:intValue canGuess:1];
        v69 = [(UITableViewRowData *)*(self + 80) heightForFooterInSection:intValue canGuess:1];
        [WeakRetained bounds];
        if (v7)
        {
          v71 = *(v7 + 32);
          if (v71 > 2)
          {
            if (v71 == 3)
            {
              if (v22)
              {
                v170.origin.x = v23;
                v170.origin.y = v25;
                v170.size.width = r1;
                v170.size.height = rect;
                v25 = v25 - CGRectGetHeight(v170);
                v171.origin.x = v26;
                v171.origin.y = v144;
                v171.size.width = v20;
                v171.size.height = v141;
                v144 = v144 - CGRectGetHeight(v171);
              }

              else
              {
                if (v69 <= v68)
                {
                  v78 = v68;
                }

                else
                {
                  v78 = v69;
                }

                v25 = MaxY - v78;
                v144 = MaxY - v78;
              }
            }

            else if (v71 == 6)
            {
              v76 = [(UITableViewRowData *)*(self + 80) heightForSection:intValue];
              v77 = UIPixelBoundaryOffset(0, v76 * 0.5, v134);
              v25 = v25 - v77;
              v144 = v144 - v77;
            }
          }

          else
          {
            v72 = v23 + v70;
            v73 = v26 + v70;
            v74 = v23 - v70;
            v75 = v26 - v70;
            if (v71 != 2)
            {
              v75 = v26;
              v74 = v23;
            }

            if (v71 == 1)
            {
              v26 = v73;
            }

            else
            {
              v26 = v75;
            }

            if (v71 == 1)
            {
              v23 = v72;
            }

            else
            {
              v23 = v74;
            }
          }
        }

        v79 = v25;
        v80 = v7;
        v81 = objc_loadWeakRetained((self + 40));
        v151 = 0;
        v150 = 0.0;
        allowsHeaderViewsToFloat = [v81 allowsHeaderViewsToFloat];
        v83 = *(self + 80);
        if (allowsHeaderViewsToFloat)
        {
          [v81 _contentInset];
          v88 = [(UITableViewRowData *)v83 floatingRectForHeaderInSection:intValue visibleRect:1 heightCanBeGuessed:&v151 outIsFloating:&v150 outVisibleRectDisplacement:*(self + 128) + v87, v84 + *(self + 136), *(self + 144) - (v87 + v85), *(self + 152) - (v84 + v86)];
        }

        else
        {
          v88 = [(UITableViewRowData *)*(self + 80) rectForHeaderInSection:intValue heightCanBeGuessed:1];
        }

        v92 = v88;
        v93 = v89;
        v94 = v90;
        v95 = v91;
        v172.origin.x = v23;
        v172.origin.y = v79;
        v172.size.width = r1;
        v172.size.height = rect;
        if (!CGRectIsEmpty(v172) || (v173.origin.x = v92, v173.origin.y = v93, v173.size.width = v94, v173.size.height = v95, !CGRectIsEmpty(v173)))
        {
          v174.origin.x = v23;
          v174.origin.y = v79;
          v174.size.width = r1;
          v174.size.height = rect;
          v184.origin.x = v92;
          v184.origin.y = v93;
          v184.size.width = v94;
          v184.size.height = v95;
          v175 = CGRectUnion(v174, v184);
          if (CGRectIntersectsRect(v175, *(self + 192)))
          {
            if (([v81 _delegateWantsHeaderForSection:intValue] & 1) != 0 || (v96 = objc_msgSend(v81, "style"), v96 <= 0x10) && ((1 << v96) & 0x10006) != 0)
            {
              v97 = [v81 _sectionHeaderViewWithFrame:intValue forSection:v151 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v133 willDisplay:{v132, v131, v130, v150}];
              [v81 _addContentSubview:v97 atBack:{objc_msgSend(v81, "allowsHeaderViewsToFloat") ^ 1}];
              if (*(*(self + 272) + 8 * intValue))
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:sel__setupInsertAnimationForHeaderInSection_withTargetRect_forUpdateItem_ object:self file:@"UITableViewSupport.m" lineNumber:1295 description:@"Attempt to create two animations for header view"];
              }

              null = v97;
              if (!v97)
              {
                null = [MEMORY[0x1E695DFB0] null];
              }

              objc_storeStrong((*(self + 272) + 8 * intValue), null);
              if (!v97)
              {
              }

              if (!v7 || (v99 = v80[4], v99 <= 6) && ((1 << v99) & 0x47) != 0)
              {
                [v97 setAlpha:0.0];
              }

              [v97 setFrame:{v23, v79, r1, rect}];
              v176.origin.x = v92;
              v176.origin.y = v93;
              v176.size.width = v94;
              v176.size.height = v95;
              v100 = CGRectIntersectsRect(v176, *(self + 160));
              v101 = [[UIViewAnimation alloc] initWithView:v97 indexPath:0 viewType:2 endRect:0 endAlpha:0 startFraction:!v100 endFraction:0 curve:v92 animateFromCurrentPosition:v93 shouldDeleteAfterAnimation:v94 editing:v95, 1.0, 0.0, 1.0];
              [*(self + 320) addObject:v101];
            }
          }
        }

        v102 = v80;
        v103 = objc_loadWeakRetained((self + 40));
        v151 = 0;
        v150 = 0.0;
        allowsFooterViewsToFloat = [v103 allowsFooterViewsToFloat];
        v105 = *(self + 80);
        if (allowsFooterViewsToFloat)
        {
          [v103 _contentInset];
          v110 = [(UITableViewRowData *)v105 floatingRectForFooterInSection:intValue visibleRect:1 heightCanBeGuessed:&v151 outIsFloating:&v150 outVisibleRectDisplacement:*(self + 128) + v109, v106 + *(self + 136), *(self + 144) - (v109 + v107), *(self + 152) - (v106 + v108)];
        }

        else
        {
          v110 = [(UITableViewRowData *)*(self + 80) rectForFooterInSection:intValue heightCanBeGuessed:1];
        }

        v114 = v110;
        v115 = v111;
        v116 = v112;
        v117 = v113;
        v177.origin.x = v26;
        v177.origin.y = v144;
        v177.size.width = rect2;
        v177.size.height = v141;
        if (!CGRectIsEmpty(v177) || (v178.origin.x = v114, v178.origin.y = v115, v178.size.width = v116, v178.size.height = v117, !CGRectIsEmpty(v178)))
        {
          v179.origin.x = v26;
          v179.origin.y = v144;
          v179.size.width = rect2;
          v179.size.height = v141;
          v185.origin.x = v114;
          v185.origin.y = v115;
          v185.size.width = v116;
          v185.size.height = v117;
          v180 = CGRectUnion(v179, v185);
          if (CGRectIntersectsRect(v180, *(self + 192)))
          {
            if (([v103 _delegateWantsFooterForSection:intValue] & 1) != 0 || (v118 = objc_msgSend(v103, "style"), v118 <= 0x10) && ((1 << v118) & 0x10006) != 0)
            {
              v119 = [v103 _sectionFooterViewWithFrame:intValue forSection:v151 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v133 willDisplay:{v132, v131, v130, v150}];
              [v103 _addContentSubview:v119 atBack:{objc_msgSend(v103, "allowsFooterViewsToFloat") ^ 1}];
              if (*(*(self + 280) + 8 * intValue))
              {
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler2 handleFailureInMethod:sel__setupInsertAnimationForFooterInSection_withTargetRect_forUpdateItem_ object:self file:@"UITableViewSupport.m" lineNumber:1326 description:@"Attempt to create two animations for footer view"];
              }

              null2 = v119;
              if (!v119)
              {
                null2 = [MEMORY[0x1E695DFB0] null];
              }

              objc_storeStrong((*(self + 280) + 8 * intValue), null2);
              if (!v119)
              {
              }

              if (!v7 || (v121 = v102[4], v121 <= 6) && ((1 << v121) & 0x47) != 0)
              {
                [v119 setAlpha:0.0];
              }

              [v119 setFrame:{v26, v144, rect2, v141}];
              v181.origin.x = v114;
              v181.origin.y = v115;
              v181.size.width = v116;
              v181.size.height = v117;
              v122 = CGRectIntersectsRect(v181, *(self + 160));
              v123 = [[UIViewAnimation alloc] initWithView:v119 indexPath:0 viewType:3 endRect:0 endAlpha:0 startFraction:!v122 endFraction:0 curve:v114 animateFromCurrentPosition:v115 shouldDeleteAfterAnimation:v116 editing:v117, 1.0, 0.0, 1.0];
              [*(self + 320) addObject:v123];
            }
          }
        }

        ++v3;
      }

      while (v3 != v138);
      v126 = [obj countByEnumeratingWithState:&v146 objects:v152 count:16];
      v138 = v126;
      if (!v126)
      {
LABEL_120:

        return;
      }
    }
  }
}

- (void)_setupAnimationForReorderingRow
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    obj = [WeakRetained _reorderingCell];

    v3 = *(self + 72);
    if (v3)
    {
      v3 = v3[23];
    }

    v4 = v3;
    if (obj && v4)
    {
      v5 = [(UITableViewRowData *)*(self + 72) globalRowForRowAtIndexPath:v4];
      *(self + 24) = v5;
      v6 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:v5];
      *(self + 32) = v6;
      v7 = *(self + 264);
      if (*(v7 + 8 * v6))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        _collectionViewUpdateItems = [(_UITableViewUpdateSupport *)self _collectionViewUpdateItems];
        [currentHandler handleFailureInMethod:sel__setupAnimationForReorderingRow object:self file:@"UITableViewSupport.m" lineNumber:771 description:{@"Cannot animate reordering cell because it already has an animation. Updates: %@; Cell: %@", _collectionViewUpdateItems, *(*(self + 264) + 8 * *(self + 32))}];

        v7 = *(self + 264);
        v6 = *(self + 32);
      }

      objc_storeStrong((v7 + 8 * v6), obj);
    }
  }
}

- (int64_t)_setupAnimationStructures
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v1[40];
    v1[40] = v2;

    v4 = v1[32];
    if (v4 < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
    }

    v1[33] = v5;
    result = v1[30];
    if (result < 1)
    {
      v6 = 0;
      v1[34] = 0;
    }

    else
    {
      v1[34] = malloc_type_calloc(result, 8uLL, 0x80040B8603338uLL);
      v6 = malloc_type_calloc(v1[30], 8uLL, 0x80040B8603338uLL);
      result = v1[30];
    }

    v1[35] = v6;
    v1[4] = v1[32];
    v1[2] = result;
  }

  return result;
}

- (void)_computeAutomaticAnimationTypes
{
  v214 = *MEMORY[0x1E69E9840];
  if (!self || *(self + 312) != 1)
  {
    return;
  }

  if (!+[UIView areAnimationsEnabled])
  {
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v36 = *(self + 64);
    v37 = [v36 countByEnumeratingWithState:&v184 objects:v211 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v185;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v185 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v184 + 1) + 8 * i);
          if (v41 && *(v41 + 32) == 100)
          {
            *(v41 + 32) = 0;
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v184 objects:v211 count:16];
      }

      while (v38);
    }

    goto LABEL_230;
  }

  v200[0] = MEMORY[0x1E69E9820];
  v200[1] = 3221225472;
  v201 = __50___UITableViewUpdateSupport_Private___computeGaps__block_invoke;
  v202 = &unk_1E7123A40;
  selfCopy = self;
  v2 = [*(self + 64) sortedArrayUsingSelector:sel_compareIndexPaths_];
  v196[0] = MEMORY[0x1E69E9820];
  v196[1] = 3221225472;
  v197 = __50___UITableViewUpdateSupport_Private___computeGaps__block_invoke_2;
  v198 = &unk_1E70FFBD8;
  v143 = v2;
  v199 = v143;
  v150 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  selfCopy2 = self;
  obj = *(self + 64);
  v3 = [obj countByEnumeratingWithState:&v192 objects:v213 count:16];
  if (!v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_67;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v193;
  v145 = *v193;
  do
  {
    v10 = 0;
    v147 = v4;
    do
    {
      if (*v193 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v192 + 1) + 8 * v10);
      if (v11 && (v12 = *(v11 + 20)) != 0)
      {
        if (v12 == 1)
        {
          if (v8 && (v201)(v200, *(*(&v192 + 1) + 8 * v10), v8[4]))
          {
            [(UITableViewUpdateGap *)v8 addUpdateItem:v11];
            v6 = v11;
          }

          else
          {
            v17 = [[UITableViewUpdateGap alloc] initWithUpdateItem:v11];

            [v150 addObject:v17];
            v6 = v11;
            v7 = v11;
            v8 = v17;
          }
        }
      }

      else
      {
        if (v5)
        {
          if (v8)
          {
            v13 = v8[2];
            if (!v13)
            {
              v13 = MEMORY[0x1E695E0F0];
            }

            v14 = v13;
            lastObject = [v14 lastObject];
            v16 = (v201)(v200, v11, lastObject);

            if (v16)
            {
              [(UITableViewUpdateGap *)v8 addUpdateItem:v11];
              v5 = 1;
              v7 = v11;
              goto LABEL_50;
            }
          }
        }

        else
        {
          [(UIContentUnavailableImageProperties *)v8 _setTintColor:v6];
          [(UIBackgroundConfiguration *)v8 _setBackgroundColor:v7];

          v8 = 0;
          v7 = 0;
          v6 = 0;
        }

        [(UIContentUnavailableImageProperties *)v8 _setTintColor:v6];
        [(UIBackgroundConfiguration *)v8 _setBackgroundColor:v7];

        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v155 = v150;
        v18 = [v155 countByEnumeratingWithState:&v188 objects:v212 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v189;
LABEL_25:
          v22 = 0;
          while (1)
          {
            if (*v189 != v21)
            {
              objc_enumerationMutation(v155);
            }

            v23 = *(*(&v188 + 1) + 8 * v22);
            if (!v23 || ![*(v23 + 8) count])
            {
              break;
            }

            if (!v20)
            {
              if (v11)
              {
                v24 = *(v11 + 24);
              }

              else
              {
                v24 = 0;
              }

              v20 = v197(v196, v24);
            }

            v25 = *(v23 + 32);
            if (v25)
            {
              v26 = v25[3];
            }

            else
            {
              v26 = 0;
            }

            v27 = v25;
            v28 = [v20 compare:v26];

            if (v28 <= 1)
            {
              v29 = *(v23 + 40);
              v30 = v29 ? v29[3] : 0;
              v31 = v29;
              v32 = [v20 compare:v30];

              if ((v32 - 1) > 0xFFFFFFFFFFFFFFFDLL)
              {
                v8 = v23;
                v34 = *(v23 + 32);
                v7 = *(v23 + 40);

                [(UITableViewUpdateGap *)v8 addUpdateItem:v11];
                v11 = v34;
                goto LABEL_49;
              }
            }

            if (v19 == ++v22)
            {
              v33 = [v155 countByEnumeratingWithState:&v188 objects:v212 count:16];
              v19 = v33;
              if (v33)
              {
                goto LABEL_25;
              }

              break;
            }
          }
        }

        else
        {
          v20 = 0;
        }

        v8 = [[UITableViewUpdateGap alloc] initWithUpdateItem:v11];
        [v155 addObject:v8];
        v7 = v11;
LABEL_49:

        v5 = 1;
        v6 = v11;
        v9 = v145;
        v4 = v147;
      }

LABEL_50:
      ++v10;
    }

    while (v10 != v4);
    v35 = [obj countByEnumeratingWithState:&v192 objects:v213 count:16];
    v4 = v35;
  }

  while (v35);
LABEL_67:

  [(UIContentUnavailableImageProperties *)v8 _setTintColor:v6];
  [(UIBackgroundConfiguration *)v8 _setBackgroundColor:v7];

  WeakRetained = objc_loadWeakRetained((selfCopy2 + 40));
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v36 = v150;
  v42 = [v36 countByEnumeratingWithState:&v180 objects:v210 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v181;
    v45 = (selfCopy2 + 72);
    v46 = (selfCopy2 + 80);
    v140 = *v181;
    v144 = v36;
    do
    {
      v47 = 0;
      v141 = v43;
      do
      {
        if (*v181 != v44)
        {
          objc_enumerationMutation(v36);
        }

        v48 = *(*(&v180 + 1) + 8 * v47);
        if (v48 && (*(v48 + 24) & 1) != 0)
        {
          v151 = *(*(&v180 + 1) + 8 * v47);
          v49 = *(v48 + 32);
          if (!v49 || (*(v49 + 16) & 1) == 0)
          {
            if ([v151[1] count])
            {
              v50 = (selfCopy2 + 72);
            }

            else
            {
              v50 = v46;
            }

            v51 = *v50;
            v52 = v151[4];
            v53 = v151[5];
            if (v52)
            {
              v54 = v52[3];
            }

            else
            {
              v54 = 0;
            }

            obja = v51;
            v154 = v54;
            v142 = v47;
            if (v53)
            {
              v55 = v53[3];
            }

            else
            {
              v55 = 0;
            }

            v149 = v53;
            v146 = v52;
            v148 = v55;
            v215.origin.x = [(UITableViewRowData *)*v45 rectForTableHeaderView];
            MinY = CGRectGetMinY(v215);
            v216.origin.x = [(UITableViewRowData *)*v46 rectForTableHeaderView];
            v57 = CGRectGetMinY(v216);
            v217.origin.x = [(UITableViewRowData *)*v45 rectForTableFooterView];
            MaxY = CGRectGetMaxY(v217);
            v218.origin.x = [(UITableViewRowData *)*v46 rectForTableFooterView];
            v59 = CGRectGetMaxY(v218);
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            v175 = 0u;
            updateItems = [(UITableViewUpdateGap *)v151[1] updateItems];
            v61 = [updateItems countByEnumeratingWithState:&v172 objects:v208 count:16];
            if (v61)
            {
              v62 = v61;
              v63 = *v173;
              v64 = 0.0;
              while (1)
              {
                v65 = 0;
                do
                {
                  if (*v173 != v63)
                  {
                    objc_enumerationMutation(updateItems);
                  }

                  v66 = *(*(&v172 + 1) + 8 * v65);
                  if (!v66)
                  {
                    v69 = *v46;
                    v67 = 0;
LABEL_93:
                    v70 = [v67 row];
                    section = [v67 section];
                    if (v69)
                    {
                      v72 = [(UITableViewRowData *)v69 heightForRow:v70 inSection:section canGuess:1 adjustForReorderedRow:1];
                    }

                    else
                    {
                      v72 = 0.0;
                    }

                    if (v72 > v64)
                    {
                      v64 = v72;
                    }

                    goto LABEL_106;
                  }

                  v67 = *(v66 + 24);
                  if (*(v66 + 20) == 1)
                  {
                    v68 = (selfCopy2 + 72);
                  }

                  else
                  {
                    v68 = v46;
                  }

                  v69 = *v68;
                  if ((*(v66 + 16) & 1) == 0)
                  {
                    goto LABEL_93;
                  }

                  section2 = [v67 section];
                  v74 = [(UITableViewRowData *)v69 numberOfRowsInSection:section2];
                  if (v74 >= 1)
                  {
                    v75 = v74;
                    for (j = 0; j != v75; ++j)
                    {
                      if (v69)
                      {
                        v77 = [(UITableViewRowData *)v69 heightForRow:section2 inSection:1 canGuess:1 adjustForReorderedRow:?];
                      }

                      else
                      {
                        v77 = 0.0;
                      }

                      if (v77 > v64)
                      {
                        v64 = v77;
                      }
                    }

                    v46 = (selfCopy2 + 80);
                  }

LABEL_106:

                  ++v65;
                }

                while (v65 != v62);
                v78 = [updateItems countByEnumeratingWithState:&v172 objects:v208 count:16];
                v62 = v78;
                if (!v78)
                {
                  goto LABEL_126;
                }
              }
            }

            v64 = 0.0;
LABEL_126:

            if (v64 > MaxY - MinY || v64 > v59 - v57)
            {
              v170 = 0u;
              v171 = 0u;
              v168 = 0u;
              v169 = 0u;
              updateItems2 = [(UITableViewUpdateGap *)v151[1] updateItems];
              v88 = [updateItems2 countByEnumeratingWithState:&v168 objects:v207 count:16];
              v89 = v146;
              if (v88)
              {
                v90 = v88;
                v91 = *v169;
                do
                {
                  for (k = 0; k != v90; ++k)
                  {
                    if (*v169 != v91)
                    {
                      objc_enumerationMutation(updateItems2);
                    }

                    v93 = *(*(&v168 + 1) + 8 * k);
                    if (v93 && *(v93 + 32) == 100)
                    {
                      *(v93 + 32) = 0;
                    }
                  }

                  v90 = [updateItems2 countByEnumeratingWithState:&v168 objects:v207 count:16];
                }

                while (v90);
              }

              goto LABEL_218;
            }

            v89 = v146;
            if (obja)
            {
              v94 = obja[8];
            }

            else
            {
              v94 = 0;
            }

            if (v149 && (v149[16] & 1) != 0)
            {
              if ([v148 section] < v94 - 1)
              {
                v96 = 0;
                goto LABEL_151;
              }

              if ((v149[16] & 1) == 0)
              {
                goto LABEL_145;
              }
            }

            else
            {
LABEL_145:
              if ([v148 section] < v94)
              {
                v95 = [v148 row];
                v96 = v95 >= -[UITableViewRowData numberOfRowsInSection:](obja, [v148 section]) - 1;
LABEL_151:
                if (!v146 || (v146[16] & 1) == 0)
                {
LABEL_153:
                  v97 = [v154 row] > 0;
                  goto LABEL_156;
                }

                if ([v154 section] <= 0)
                {
                  if ((v146[16] & 1) == 0)
                  {
                    goto LABEL_153;
                  }

                  v97 = 0;
                  goto LABEL_157;
                }

                v97 = 1;
LABEL_156:
                if (v96 || !v97)
                {
LABEL_157:
                  if ([v151[1] count] && objc_msgSend(v151[2], "count"))
                  {
                    v162 = 0u;
                    v163 = 0u;
                    v160 = 0u;
                    v161 = 0u;
                    updateItems3 = [(UITableViewUpdateGap *)v151[1] updateItems];
                    v99 = [updateItems3 countByEnumeratingWithState:&v160 objects:v205 count:16];
                    if (v99)
                    {
                      v100 = v99;
                      v101 = *v161;
                      do
                      {
                        for (m = 0; m != v100; ++m)
                        {
                          if (*v161 != v101)
                          {
                            objc_enumerationMutation(updateItems3);
                          }

                          v103 = *(*(&v160 + 1) + 8 * m);
                          if (v103 && *(v103 + 32) == 100)
                          {
                            if (*(v103 + 20))
                            {
                              v104 = 1;
                            }

                            else
                            {
                              v104 = 2;
                            }

                            *(v103 + 32) = v104;
                          }
                        }

                        v100 = [updateItems3 countByEnumeratingWithState:&v160 objects:v205 count:16];
                      }

                      while (v100);
                    }

                    v105 = 5;
                  }

                  else
                  {
                    v131 = v97 || v96;
                    if (v97)
                    {
                      v105 = 3;
                    }

                    else
                    {
                      v105 = 0;
                    }

                    if (!v131)
                    {
                      if (v146 == v149)
                      {
                        v105 = 4;
                      }

                      else
                      {
                        v105 = 5;
                      }
                    }
                  }

                  v158 = 0u;
                  v159 = 0u;
                  v156 = 0u;
                  v157 = 0u;
                  updateItems2 = [(UITableViewUpdateGap *)v151[1] updateItems];
                  v132 = [updateItems2 countByEnumeratingWithState:&v156 objects:v204 count:16];
                  if (v132)
                  {
                    v133 = v132;
                    v134 = *v157;
                    do
                    {
                      for (n = 0; n != v133; ++n)
                      {
                        if (*v157 != v134)
                        {
                          objc_enumerationMutation(updateItems2);
                        }

                        v136 = *(*(&v156 + 1) + 8 * n);
                        if (v136 && *(v136 + 32) == 100)
                        {
                          *(v136 + 32) = v105;
                        }
                      }

                      v133 = [updateItems2 countByEnumeratingWithState:&v156 objects:v204 count:16];
                    }

                    while (v133);
                  }

LABEL_218:
                  v110 = v154;
                }

                else
                {
                  v166 = 0u;
                  v167 = 0u;
                  v164 = 0u;
                  v165 = 0u;
                  v106 = v151;
                  updateItems2 = [(UITableViewUpdateGap *)v151[1] updateItems];
                  v107 = [updateItems2 countByEnumeratingWithState:&v164 objects:v206 count:16];
                  if (!v107)
                  {
                    goto LABEL_218;
                  }

                  v108 = v107;
                  v109 = *v165;
                  v110 = v154;
                  do
                  {
                    for (ii = 0; ii != v108; ++ii)
                    {
                      if (*v165 != v109)
                      {
                        objc_enumerationMutation(updateItems2);
                      }

                      v112 = *(*(&v164 + 1) + 8 * ii);
                      if (v112 && *(v112 + 32) == 100)
                      {
                        if ([v110 row])
                        {
                          v113 = [(UITableViewRowData *)obja globalRowForRowAtIndexPath:v110]- 1;
                          v114 = [v106[1] count];
                          v115 = *v45;
                          if (v114)
                          {
                            v219.origin.x = [(UITableViewRowData *)*v45 rectForGlobalRow:v113 heightCanBeGuessed:1];
                            v116 = CGRectGetMaxY(v219);
                            v117 = *(selfCopy2 + 80);
                            v118 = [(_UITableViewUpdateSupport *)selfCopy2 finalGlobalIndexForInitialGlobalIndex:v113];
                            v119 = v117;
                          }

                          else
                          {
                            v127 = [(_UITableViewUpdateSupport *)selfCopy2 initialGlobalIndexForFinalGlobalIndex:v113];
                            v221.origin.x = [(UITableViewRowData *)v115 rectForGlobalRow:v127 heightCanBeGuessed:1];
                            v116 = CGRectGetMaxY(v221);
                            v119 = *(selfCopy2 + 80);
                            v118 = v113;
                          }

                          v222.origin.x = [(UITableViewRowData *)v119 rectForGlobalRow:v118 heightCanBeGuessed:1];
                          if (v116 <= CGRectGetMaxY(v222))
                          {
                            v128 = 3;
                            v129 = 4;
                          }

                          else
                          {
                            v128 = 4;
                            v129 = 3;
                          }

                          v110 = v154;
                        }

                        else
                        {
                          v120 = [v106[1] count];
                          v121 = v110;
                          v122 = *v45;
                          section3 = [v121 section];
                          if (v120)
                          {
                            v220.origin.x = [(UITableViewRowData *)v122 rectForHeaderInSection:section3 heightCanBeGuessed:1];
                            v124 = CGRectGetMaxY(v220);
                            v125 = *(selfCopy2 + 80);
                            section4 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](selfCopy2, [v121 section]);
                          }

                          else
                          {
                            v130 = [(_UITableViewUpdateSupport *)selfCopy2 initialSectionIndexForFinalSectionIndex:section3];
                            v223.origin.x = [(UITableViewRowData *)v122 rectForHeaderInSection:v130 heightCanBeGuessed:1];
                            v124 = CGRectGetMaxY(v223);
                            v125 = *(selfCopy2 + 80);
                            section4 = [v121 section];
                          }

                          v224.origin.x = [(UITableViewRowData *)v125 rectForHeaderInSection:section4 heightCanBeGuessed:1];
                          if (v124 <= CGRectGetMaxY(v224))
                          {
                            v128 = 3;
                            v129 = 4;
                          }

                          else
                          {
                            v128 = 4;
                            v129 = 3;
                          }

                          v110 = v154;
                          v106 = v151;
                        }

                        if (*(v112 + 20))
                        {
                          v128 = v129;
                        }

                        *(v112 + 32) = v128;
                      }
                    }

                    v108 = [updateItems2 countByEnumeratingWithState:&v164 objects:v206 count:16];
                  }

                  while (v108);
                  v46 = (selfCopy2 + 80);
                  v89 = v146;
                }

                v44 = v140;
                v43 = v141;
                v47 = v142;
                updateItems4 = obja;
LABEL_220:

                v36 = v144;
                goto LABEL_221;
              }
            }

            v96 = 1;
            goto LABEL_151;
          }

          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          updateItems4 = [(UITableViewUpdateGap *)v151[1] updateItems];
          v80 = [updateItems4 countByEnumeratingWithState:&v176 objects:v209 count:16];
          if (v80)
          {
            v81 = v80;
            v82 = *v177;
            do
            {
              for (jj = 0; jj != v81; ++jj)
              {
                if (*v177 != v82)
                {
                  objc_enumerationMutation(updateItems4);
                }

                v84 = *(*(&v176 + 1) + 8 * jj);
                if (v84)
                {
                  if (*(v84 + 20))
                  {
                    v85 = 1;
                  }

                  else
                  {
                    v85 = 2;
                  }

                  *(v84 + 32) = v85;
                }
              }

              v81 = [updateItems4 countByEnumeratingWithState:&v176 objects:v209 count:16];
            }

            while (v81);
          }

          goto LABEL_220;
        }

LABEL_221:
        ++v47;
      }

      while (v47 != v43);
      v137 = [v36 countByEnumeratingWithState:&v180 objects:v210 count:16];
      v43 = v137;
    }

    while (v137);
  }

LABEL_230:
}

- (void)dealloc
{
  _UIDataSourceDestroyUpdateMaps(&self->_updateMaps);
  animatedCells = self->animatedCells;
  if (animatedCells)
  {
    if (self->newGlobalRowCount >= 1)
    {
      v4 = 0;
      do
      {
        v5 = self->animatedCells;
        v6 = v5[v4];
        v5[v4] = 0;

        ++v4;
      }

      while (v4 < self->newGlobalRowCount);
      animatedCells = self->animatedCells;
    }

    free(animatedCells);
  }

  animatedHeaders = self->animatedHeaders;
  if (animatedHeaders)
  {
    if (self->newSectionCount >= 1)
    {
      v8 = 0;
      do
      {
        v9 = self->animatedHeaders;
        v10 = v9[v8];
        v9[v8] = 0;

        ++v8;
      }

      while (v8 < self->newSectionCount);
      animatedHeaders = self->animatedHeaders;
    }

    free(animatedHeaders);
  }

  animatedFooters = self->animatedFooters;
  if (animatedFooters)
  {
    if (self->newSectionCount >= 1)
    {
      v12 = 0;
      do
      {
        v13 = self->animatedFooters;
        v14 = v13[v12];
        v13[v12] = 0;

        ++v12;
      }

      while (v12 < self->newSectionCount);
      animatedFooters = self->animatedFooters;
    }

    free(animatedFooters);
  }

  v15.receiver = self;
  v15.super_class = _UITableViewUpdateSupport;
  [(_UITableViewUpdateSupport *)&v15 dealloc];
}

- (id)_collectionViewUpdateItems
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(self + 64), "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(self + 64);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          collectionViewUpdateItem = [*(*(&v10 + 1) + 8 * i) collectionViewUpdateItem];
          [v2 addObject:collectionViewUpdateItem];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_isReloadSectionUpdate
{
  if ([*(self + 64) count] != 2)
  {
    return 0;
  }

  v2 = [*(self + 64) objectAtIndexedSubscript:0];
  v3 = [*(self + 64) objectAtIndexedSubscript:1];
  v4 = v3;
  if (v2 && *(v2 + 20) == 1 && (!v3 || !*(v3 + 20)))
  {
    v7 = *(v2 + 24);
    section = [v7 section];
    if (v4)
    {
      v9 = v4[3];
    }

    else
    {
      v9 = 0;
    }

    v5 = section == [v9 section];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)finalGlobalIndexForInitialGlobalIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 352);
    v4 = *(result + 376);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewGlobalItemForOldGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [currentHandler handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldGlobalItemMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id)_oldMapArray
{
  numberOfRows = [(UITableViewRowData *)*(self + 72) numberOfRows];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfRows];
  if (numberOfRows >= 1)
  {
    for (i = 0; i != numberOfRows; ++i)
    {
      v5 = [(_UITableViewUpdateSupport *)self finalGlobalIndexForInitialGlobalIndex:?];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld->X", i, v8];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld->%ld", i, v5];
      }
      v6 = ;
      [v3 addObject:v6];
    }
  }

  return v3;
}

- (double)_startOfRowAfterRow:(void *)row withRowData:
{
  if (!self)
  {
    return 0.0;
  }

  rowCopy = row;
  WeakRetained = objc_loadWeakRetained((self + 40));
  _metricsAdapter = [WeakRetained _metricsAdapter];
  rowSpacing = [(UITableMetricsAdapter *)_metricsAdapter rowSpacing];

  v9 = [(UITableViewRowData *)rowCopy rectForGlobalRow:a2 heightCanBeGuessed:1];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v16 = rowSpacing + CGRectGetMaxY(v18);

  return v16;
}

- (double)_startOfRowAfterHeaderInSection:(void *)section withRowData:
{
  if (!self)
  {
    return 0.0;
  }

  sectionCopy = section;
  WeakRetained = objc_loadWeakRetained((self + 40));
  v7 = [(UITableViewRowData *)sectionCopy rectForHeaderInSection:a2 heightCanBeGuessed:1];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  MaxY = CGRectGetMaxY(v17);
  if (MaxY > 0.0)
  {
    [WeakRetained _sectionHeaderToFirstRowPadding];
    MaxY = MaxY + v15;
  }

  return MaxY;
}

- (double)_startOfRowAfterFooterInSection:(uint64_t)section withRowData:
{
  if (!self)
  {
    return 0.0;
  }

  v3 = [(UITableViewRowData *)section rectForFooterInSection:a2 heightCanBeGuessed:1];

  return CGRectGetMaxY(*&v3);
}

- (uint64_t)finalSectionIndexForInitialSectionIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 344);
    v4 = *(result + 360);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [currentHandler handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (uint64_t)initialSectionIndexForFinalSectionIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 348);
    v4 = *(result + 368);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [currentHandler handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (uint64_t)initialGlobalIndexForFinalGlobalIndex:(uint64_t)result
{
  if (result)
  {
    v3 = *(result + 356);
    v4 = *(result + 384);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldGlobalItemForNewGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [currentHandler handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newGlobalItemMap != NULL"}];
    }

    if (a2 > 0x7FFFFFFFFFFFFFFELL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v3 <= a2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    result = *(v4 + 4 * a2);
    if (result == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (UIImageView)_imageViewForView:(void *)view
{
  viewCopy = view;
  [viewCopy bounds];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v2, v3, 0.0);
  layer = [viewCopy layer];
  presentationLayer = [layer presentationLayer];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [presentationLayer renderInContext:v7];

  v8 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  v9 = [[UIImageView alloc] initWithImage:v8];
  [viewCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(UIImageView *)v9 setFrame:v11, v13, v15, v17];

  return v9;
}

- (id)initWithTableView:(void *)view updateItems:(void *)items oldRowData:(void *)data newRowData:(void *)rowData oldRowRange:(void *)range newRowRange:(uint64_t)rowRange context:(void *)context
{
  v145 = *MEMORY[0x1E69E9840];
  obj = a2;
  viewCopy = view;
  itemsCopy = items;
  dataCopy = data;
  v97 = a11;
  if (self)
  {
    v100.receiver = self;
    v100.super_class = _UITableViewUpdateSupport;
    v17 = objc_msgSendSuper2(&v100, sel_init);
    v99 = v17;
    if (v17)
    {
      objc_storeWeak(v17 + 5, obj);
      v99[6] = [obj _visibleGlobalRows];
      v99[7] = v18;
      objc_storeStrong(v99 + 8, view);
      objc_storeStrong(v99 + 9, items);
      objc_storeStrong(v99 + 10, data);
      v99[11] = rowData;
      v99[12] = range;
      v99[13] = context;
      v99[14] = a10;
      WeakRetained = objc_loadWeakRetained(v99 + 5);
      [WeakRetained visibleBounds];
      v99[16] = v20;
      v99[17] = v21;
      v99[18] = v22;
      v99[19] = v23;

      objc_storeStrong(v99 + 37, a11);
      v24 = v99[9];
      v25 = v24;
      if (v24)
      {
        v26 = *(v24 + 8);
      }

      else
      {
        v26 = 0;
      }

      v99[29] = v26;
      numberOfRows = [(UITableViewRowData *)v24 numberOfRows];
      v99[31] = numberOfRows;
      v28 = v99[29];
      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!HIDWORD(v28))
        {
LABEL_9:
          if (numberOfRows != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!HIDWORD(numberOfRows))
            {
              v29 = numberOfRows << 32;
LABEL_13:
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke;
              aBlock[3] = &unk_1E71001A8;
              v30 = v25;
              v136 = v30;
              v91 = _Block_copy(aBlock);
              v133[0] = MEMORY[0x1E69E9820];
              v133[1] = 3221225472;
              v133[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_2;
              v133[3] = &unk_1E71001A8;
              v86 = v30;
              v134 = v86;
              v90 = _Block_copy(v133);
              v31 = v99[10];
              v32 = v31;
              if (v31)
              {
                v33 = *(v31 + 8);
              }

              else
              {
                v33 = 0;
              }

              v99[30] = v33;
              numberOfRows2 = [(UITableViewRowData *)v31 numberOfRows];
              v99[32] = numberOfRows2;
              v35 = v99[30];
              if (v35 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (!HIDWORD(v35))
                {
LABEL_18:
                  if (numberOfRows2 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (!HIDWORD(numberOfRows2))
                    {
                      v36 = numberOfRows2 << 32;
                      goto LABEL_22;
                    }

                    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                    v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
                    [currentHandler handleFailureInFunction:v84 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", numberOfRows2}];
                  }

                  v36 = 0xFFFFFFFF00000000;
LABEL_22:
                  v131[0] = MEMORY[0x1E69E9820];
                  v131[1] = 3221225472;
                  v131[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_3;
                  v131[3] = &unk_1E71001A8;
                  v37 = v32;
                  v132 = v37;
                  v93 = _Block_copy(v131);
                  v129[0] = MEMORY[0x1E69E9820];
                  v129[1] = 3221225472;
                  v129[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_4;
                  v129[3] = &unk_1E71001A8;
                  v87 = v37;
                  v130 = v87;
                  v92 = _Block_copy(v129);
                  v38 = v99[8];
                  v123 = 0;
                  v124 = &v123;
                  v125 = 0x3032000000;
                  v126 = __Block_byref_object_copy__195;
                  v127 = __Block_byref_object_dispose__195;
                  v128 = 0;
                  v119 = 0;
                  v120 = &v119;
                  v121 = 0x2020000000;
                  v122 = 0;
                  v115[0] = MEMORY[0x1E69E9820];
                  v115[1] = 3221225472;
                  v115[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_143;
                  v115[3] = &unk_1E7123A90;
                  v39 = v38;
                  v116 = v39;
                  v117 = &v123;
                  v118 = &v119;
                  v89 = _Block_copy(v115);
                  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v41 = v99[41];
                  v99[41] = v40;

                  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v43 = v99[42];
                  v99[42] = v42;

                  v44 = objc_alloc_init(MEMORY[0x1E696AD50]);
                  v45 = v99[15];
                  v99[15] = v44;

                  v112[0] = MEMORY[0x1E69E9820];
                  v112[1] = 3221225472;
                  v112[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_2_146;
                  v112[3] = &unk_1E7123AB8;
                  v112[4] = v99;
                  v46 = v39;
                  v113 = v46;
                  v114[0] = _Block_copy(v112);
                  v110[0] = MEMORY[0x1E69E9820];
                  v110[1] = 3221225472;
                  v110[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_3_150;
                  v110[3] = &unk_1E7123AB8;
                  v110[4] = v99;
                  v88 = v46;
                  v111 = v88;
                  v114[1] = _Block_copy(v110);
                  memset(&v114[2], 0, 24);
                  v109[0] = MEMORY[0x1E69E9820];
                  v109[1] = 3221225472;
                  v109[2] = __48___UITableViewUpdateSupport__generateUpdateMaps__block_invoke_4_151;
                  v109[3] = &unk_1E7123AE0;
                  v109[4] = v99;
                  v114[5] = _Block_copy(v109);
                  v108[0] = v29 | v28;
                  v108[1] = _Block_copy(v91);
                  v108[2] = _Block_copy(v90);
                  v107[0] = v36 | v35;
                  v107[1] = _Block_copy(v93);
                  v107[2] = _Block_copy(v92);
                  v47 = [v88 count];
                  __copy_constructor_8_8_sb0_sb8_sb16_sb24_sb32_sb40(v106, v114);
                  v105 = 0;
                  _UIDataSourceGenerateUpdateMaps(v108, v107, v47, v89, v106, &v105, v143);
                  v48 = v105;
                  v49 = v143[1];
                  *(v99 + 43) = v143[0];
                  *(v99 + 45) = v49;
                  *(v99 + 47) = v143[2];
                  v99[49] = v144;
                  v85 = v48;
                  v50 = [v48 stringByReplacingOccurrencesOfString:@"item" withString:@"row"];
                  v51 = v99[50];
                  v99[50] = v50;

                  *(v99 + 312) = *(v120 + 24);
                  v103 = 0u;
                  v104 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v52 = v124[5];
                  v53 = [v52 countByEnumeratingWithState:&v101 objects:v143 count:16];
                  if (!v53)
                  {
                    goto LABEL_53;
                  }

                  v54 = *v102;
                  while (1)
                  {
                    v55 = 0;
                    do
                    {
                      if (*v102 != v54)
                      {
                        objc_enumerationMutation(v52);
                      }

                      v56 = *(*(&v101 + 1) + 8 * v55);
                      if (os_variant_has_internal_diagnostics())
                      {
                        if (v56 && (*(v56 + 16) & 1) != 0)
                        {
                          goto LABEL_30;
                        }

                        v71 = __UIFaultDebugAssertLog();
                        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 0;
                          _os_log_fault_impl(&dword_188A29000, v71, OS_LOG_TYPE_FAULT, "headerFooterOnly updates must be section operations", buf, 2u);
                        }
                      }

                      else
                      {
                        if (v56 && (*(v56 + 16) & 1) != 0)
                        {
                          goto LABEL_30;
                        }

                        v72 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_41_0) + 8);
                        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_188A29000, v72, OS_LOG_TYPE_ERROR, "headerFooterOnly updates must be section operations", buf, 2u);
                        }
                      }

                      if (!v56)
                      {
                        v64 = 0;
                        v63 = v99[42];
                        v139[0] = @"Section";
                        goto LABEL_34;
                      }

LABEL_30:
                      v57 = *(v56 + 20);
                      if (!v57)
                      {
                        v63 = v99[42];
                        v139[0] = @"Section";
                        v64 = *(v56 + 24);
LABEL_34:
                        v65 = MEMORY[0x1E696AD98];
                        v66 = v64;
                        v67 = [v65 numberWithInteger:{objc_msgSend(v66, "section")}];
                        v139[1] = @"UpdateItem";
                        v140[0] = v67;
                        v140[1] = v56;
                        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:2];
                        [v63 addObject:v68];

                        goto LABEL_38;
                      }

                      if (v57 == 1)
                      {
                        v58 = v99[41];
                        v141[0] = @"Section";
                        v59 = MEMORY[0x1E696AD98];
                        v60 = *(v56 + 24);
                        v61 = [v59 numberWithInteger:{objc_msgSend(v60, "section")}];
                        v141[1] = @"UpdateItem";
                        v142[0] = v61;
                        v142[1] = v56;
                        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:2];
                        [v58 addObject:v62];
                      }

                      else if (os_variant_has_internal_diagnostics())
                      {
                        v73 = __UIFaultDebugAssertLog();
                        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
                        {
                          v74 = *(v56 + 20);
                          *buf = 134217984;
                          v138 = v74;
                          _os_log_fault_impl(&dword_188A29000, v73, OS_LOG_TYPE_FAULT, "Unexpected action for headerFooterOnly update: %ld", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v69 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498468) + 8);
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                        {
                          v70 = *(v56 + 20);
                          *buf = 134217984;
                          v138 = v70;
                          _os_log_impl(&dword_188A29000, v69, OS_LOG_TYPE_ERROR, "Unexpected action for headerFooterOnly update: %ld", buf, 0xCu);
                        }
                      }

LABEL_38:
                      ++v55;
                    }

                    while (v53 != v55);
                    v75 = [v52 countByEnumeratingWithState:&v101 objects:v143 count:16];
                    v53 = v75;
                    if (!v75)
                    {
LABEL_53:

                      __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(v114);
                      _Block_object_dispose(&v119, 8);
                      _Block_object_dispose(&v123, 8);

                      goto LABEL_54;
                    }
                  }
                }

                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
                [currentHandler2 handleFailureInFunction:v82 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v35}];

                numberOfRows2 = v99[32];
              }

              v35 = 0xFFFFFFFFLL;
              goto LABEL_18;
            }

            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
            [currentHandler3 handleFailureInFunction:v80 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", numberOfRows}];
          }

          v29 = 0xFFFFFFFF00000000;
          goto LABEL_13;
        }

        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
        [currentHandler4 handleFailureInFunction:v78 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v28}];

        numberOfRows = v99[31];
      }

      v28 = 0xFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  v99 = 0;
LABEL_54:

  return v99;
}

@end