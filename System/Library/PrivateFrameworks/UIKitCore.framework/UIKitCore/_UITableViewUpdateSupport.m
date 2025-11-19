@interface _UITableViewUpdateSupport
- (BOOL)_isReloadSectionUpdate;
- (UIImageView)_imageViewForView:(void *)a1;
- (double)_startOfRowAfterFooterInSection:(uint64_t)a3 withRowData:;
- (double)_startOfRowAfterHeaderInSection:(void *)a3 withRowData:;
- (double)_startOfRowAfterRow:(void *)a3 withRowData:;
- (id)_collectionViewUpdateItems;
- (id)_oldMapArray;
- (id)initWithTableView:(void *)a3 updateItems:(void *)a4 oldRowData:(void *)a5 newRowData:(void *)a6 oldRowRange:(void *)a7 newRowRange:(uint64_t)a8 context:(void *)a9;
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
  if (a1)
  {
    [(_UITableViewUpdateSupport *)a1 _computeVisibleBounds];
    [(_UITableViewUpdateSupport *)a1 _faultInRealHeightsOfNeededElements];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationStructures];
    [(_UITableViewUpdateSupport *)a1 _computeAutomaticAnimationTypes];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForExistingVisibleCells];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationForReorderingRow];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForNewlyInsertedCells];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForInsertedHeadersAndFooters];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForExistingOffscreenCells];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForExistingHeadersAndFooters];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationForTableHeader];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationForTableFooter];
    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForDeletedCells];

    [(_UITableViewUpdateSupport *)a1 _setupAnimationsForDeletedHeadersAndFooters];
  }
}

- (void)_computeVisibleBounds
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained visibleBounds];
    *(a1 + 160) = v2;
    *(a1 + 168) = v3;
    *(a1 + 176) = v4;
    *(a1 + 184) = v5;
    if ([WeakRetained isScrollAnimating])
    {
      [WeakRetained _animatedTargetOffset];
      *(a1 + 160) = v6;
      *(a1 + 168) = v7;
    }

    v8 = [(UITableViewRowData *)*(a1 + 80) rectForTable];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [WeakRetained _contentInset];
    v16 = v15;
    v18 = -v17;
    v20 = v8 - v19;
    v22 = v12 - (-v19 - v21);
    v23 = v10 - v17;
    v24 = v14 - (-v15 - v17);
    v61.origin.x = v20;
    v61.origin.y = v23;
    v61.size.width = v22;
    v61.size.height = v24;
    if (!CGRectContainsRect(v61, *(a1 + 128)))
    {
      MaxY = CGRectGetMaxY(*(a1 + 128));
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
        if (Height <= CGRectGetHeight(*(a1 + 128)))
        {
          v29 = [WeakRetained _isTableHeaderViewHidden];
          v28 = v18;
          if (v29)
          {
            [WeakRetained contentOffset];
          }
        }

        else
        {
          v27 = CGRectGetMaxY(*(a1 + 128));
          v64.origin.x = v20;
          v64.origin.y = v23;
          v64.size.width = v22;
          v64.size.height = v24;
          v28 = *(a1 + 168) - (v27 - CGRectGetMaxY(v64));
        }

        *(a1 + 168) = v28;
      }
    }

    v30 = [WeakRetained _visibleGlobalRows];
    if (v31)
    {
      v32 = v30;
      if (v30)
      {
        if (([WeakRetained _estimatesRowHeights] & 1) != 0 || (objc_msgSend(WeakRetained, "_estimatesSectionHeaderHeights") & 1) != 0 || objc_msgSend(WeakRetained, "_estimatesSectionFooterHeights"))
        {
          v33 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:v32];
          v34 = [(UITableViewRowData *)*(a1 + 72) numberOfRows];
          if (v33 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = v34;
            while (1)
            {
              v36 = v32 + 1;
              if ((v32 + 1) >= v35)
              {
                break;
              }

              v37 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:?];
              if (v37 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = v37;
                v32 = v36;
                goto LABEL_24;
              }
            }

            while ((v32 + 1) >= 1)
            {
              v38 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:?];
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
            v39 = [(UITableViewRowData *)*(a1 + 72) rectForGlobalRow:v32 heightCanBeGuessed:1];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v65.origin.x = [(UITableViewRowData *)*(a1 + 80) rectForGlobalRow:v33 heightCanBeGuessed:1];
            MinY = CGRectGetMinY(v65);
            v47 = CGRectGetMinY(*(a1 + 128));
            v66.origin.x = v39;
            v66.origin.y = v41;
            v66.size.width = v43;
            v66.size.height = v45;
            *(a1 + 168) = MinY + v47 - CGRectGetMinY(v66);
            v48 = [(UITableViewRowData *)*(a1 + 80) heightForTable];
            v49 = v48 - (CGRectGetHeight(*(a1 + 160)) - v16);
            *(a1 + 168) = fmax(v18, fmin(v49, CGRectGetMinY(*(a1 + 160))));
          }
        }
      }
    }

    v50 = [WeakRetained delegate];
    v51 = objc_opt_respondsToSelector();
    v52 = *(a1 + 160);
    v53 = *(a1 + 168);
    if (v51)
    {
      [v50 tableView:WeakRetained newContentOffsetAfterUpdate:*(a1 + 296) context:{*(a1 + 160), *(a1 + 168)}];
      v52 = v54;
      v53 = v55;
      *(a1 + 160) = v54;
      *(a1 + 168) = v55;
    }

    v56 = *(a1 + 176);
    v57 = *(a1 + 184);
    *(a1 + 192) = CGRectUnion(*(a1 + 128), *&v52);
    v58 = CGRectGetMaxY(*(a1 + 160));
    *(a1 + 224) = v58 - CGRectGetMaxY(*(a1 + 128));
  }
}

- (void)_faultInRealHeightsOfNeededElements
{
  if (a1)
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
      v7 = [(UITableViewRowData *)*(a1 + 80) globalRowsInRect:*(a1 + 160) canGuess:*(a1 + 168), *(a1 + 176), *(a1 + 184)];
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
        if (v9 + v10 >= [(UITableViewRowData *)*(a1 + 80) numberOfRows])
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

      v5 = [(UITableViewRowData *)*(a1 + 80) sectionsInRect:*(a1 + 168), *(a1 + 176), *(a1 + 184)];
      v2 = v12;
      v13 = v12;
      v14 = v5;
      if (v5 < v5 + v12)
      {
        do
        {
          [(UITableViewRowData *)*(a1 + 80) heightForHeaderInSection:v14 canGuess:0];
          [(UITableViewRowData *)*(a1 + 80) heightForFooterInSection:0 canGuess:?];
          --v13;
        }

        while (v13);
      }

      [(_UITableViewUpdateSupport *)a1 _computeVisibleBounds];
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
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 72);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v3 = *(v2 + 184);
  if (!v3)
  {
LABEL_7:
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  v4 = [WeakRetained _globalReorderingRow];
LABEL_8:
  *(a1 + 288) = v4;

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 24) = v5;
  if (v5 < v6 + v5)
  {
    while (1)
    {
      v7 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:v5];
      *(a1 + 32) = v7;
      v8 = *(a1 + 24);
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && *(a1 + 288) != v8)
      {
        break;
      }

LABEL_18:
      v5 = v8 + 1;
      *(a1 + 24) = v8 + 1;
      if ((v8 + 1) >= *(a1 + 56) + *(a1 + 48))
      {
        goto LABEL_22;
      }
    }

    v9 = [WeakRetained _visibleCellForGlobalRow:?];
    v10 = v9;
    if (*(*(a1 + 264) + 8 * *(a1 + 32)))
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [(_UITableViewUpdateSupport *)a1 _collectionViewUpdateItems];
      [v23 handleFailureInMethod:sel__setupAnimationsForExistingVisibleCells object:a1 file:@"UITableViewSupport.m" lineNumber:735 description:{@"Cannot animate existing visible cell because it already has an animation. Updates: %@; Cell: %@", v24, *(*(a1 + 264) + 8 * *(a1 + 32))}];

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else if (v9)
    {
LABEL_13:
      objc_storeStrong((*(a1 + 264) + 8 * *(a1 + 32)), v10);
      if ([*(a1 + 120) containsIndex:*(a1 + 32)])
      {
        [WeakRetained _addContentSubview:v10 atBack:0];
      }

      MinX = [(UITableViewRowData *)*(a1 + 80) rectForGlobalRow:0 heightCanBeGuessed:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [WeakRetained _swipeToDeleteCell];

      if (v10 == v18)
      {
        [v10 frame];
        MinX = CGRectGetMinX(v28);
      }

      v19 = [(UITableViewRowData *)*(a1 + 80) indexPathForRowAtGlobalRow:?];
      v20 = [WeakRetained _isEditingRowAtIndexPath:v19];
      v29.origin.x = MinX;
      v29.origin.y = v13;
      v29.size.width = v15;
      v29.size.height = v17;
      v21 = CGRectIntersectsRect(v29, *(a1 + 160));
      v22 = [[UIViewAnimation alloc] initWithView:v10 indexPath:v19 viewType:1 endRect:0 endAlpha:1 startFraction:!v21 endFraction:v20 curve:MinX animateFromCurrentPosition:v13 shouldDeleteAfterAnimation:v15 editing:v17, 1.0, 0.0, 1.0];
      [*(a1 + 320) addObject:v22];
      [v10 setSectionLocation:-[UITableViewRowData sectionLocationForRow:inSection:](*(a1 + 80) animated:{objc_msgSend(v19, "row"), objc_msgSend(v19, "section")), 1}];

      v8 = *(a1 + 24);
      goto LABEL_18;
    }

    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:sel__setupAnimationsForExistingVisibleCells object:a1 file:@"UITableViewSupport.m" lineNumber:736 description:@"Missing visible cell to setup animations"];

    goto LABEL_13;
  }

LABEL_22:
}

- (void)_setupAnimationsForNewlyInsertedCells
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _currentScreenScale];
    v3 = v2;
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = *(v1 + 64);
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v6)
    {
      goto LABEL_28;
    }

    v7 = v6;
    v8 = *v35;
    v26 = v1;
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
          v15 = [v12 section];
          v16 = [(UITableViewRowData *)*(v1 + 80) numberOfRowsInSection:v15];
          v17 = v1;
          v18 = v16;
          v19 = [(UITableViewRowData *)*(v17 + 80) numberOfRowsBeforeSection:v15];
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

          v23 = [(UITableViewRowData *)*(v1 + 80) globalRowForRowAtIndexPath:v22];
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
        v1 = v26;
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    *(a1 + 16) = 0;
    if (*(a1 + 240) >= 1)
    {
      v2 = 0;
      v211 = *(MEMORY[0x1E695F058] + 8);
      v212 = *MEMORY[0x1E695F058];
      v209 = *(MEMORY[0x1E695F058] + 24);
      v210 = *(MEMORY[0x1E695F058] + 16);
      while (1)
      {
        v3 = [(_UITableViewUpdateSupport *)a1 initialSectionIndexForFinalSectionIndex:v2];
        v4 = *(a1 + 16);
        if (v3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        v5 = v3;
        if (!*(*(a1 + 272) + 8 * v4))
        {
          break;
        }

LABEL_24:
        if (!*(*(a1 + 280) + 8 * v4))
        {
          v73 = [WeakRetained _visibleFooterViewForSection:v5];
          v74 = [WeakRetained allowsFooterViewsToFloat];
          v75 = [(UITableViewRowData *)*(a1 + 72) rectForFooterInSection:v5 heightCanBeGuessed:1];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v82 = [(UITableViewRowData *)*(a1 + 80) rectForFooterInSection:1 heightCanBeGuessed:?];
          v84 = v83;
          v86 = v85;
          v88 = v87;
          if (v74)
          {
            v253.origin.x = v75;
            v253.origin.y = v77;
            v253.size.width = v79;
            v253.size.height = v81;
            if (!CGRectIsEmpty(v253) || (v254.origin.x = v82, v254.origin.y = v84, v254.size.width = v86, v254.size.height = v88, !CGRectIsEmpty(v254)))
            {
              [WeakRetained _contentInset];
              v232 = v91 + *(a1 + 136);
              v234 = *(a1 + 128) + v92;
              v228 = *(a1 + 152) - (v91 + v90);
              v230 = *(a1 + 144) - (v92 + v89);
              v93 = [(UITableViewRowData *)*(a1 + 72) floatingRectForFooterInSection:v5 visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v234, v232, v230, v228];
              v95 = v94;
              v97 = v96;
              v99 = v98;
              [WeakRetained _contentInset];
              v224 = v102 + *(a1 + 168);
              v226 = *(a1 + 160) + v103;
              rect_16a = *(a1 + 184) - (v102 + v101);
              rect_24a = *(a1 + 176) - (v103 + v100);
              v104 = [(UITableViewRowData *)*(a1 + 80) floatingRectForFooterInSection:1 visibleRect:0 heightCanBeGuessed:0 outIsFloating:v226 outVisibleRectDisplacement:v224, rect_24a, rect_16a];
              v106 = v105;
              v108 = v107;
              v110 = v109;
              v255.origin.x = v93;
              v255.origin.y = v95;
              v255.size.width = v97;
              v255.size.height = v99;
              v286.origin.x = v104;
              v286.origin.y = v106;
              v286.size.width = v108;
              v286.size.height = v110;
              v256 = CGRectUnion(v255, v286);
              if (CGRectIntersectsRect(v256, *(a1 + 192)))
              {
                v257.origin.x = v93;
                v257.origin.y = v95;
                v257.size.width = v97;
                v257.size.height = v99;
                v287.origin.x = v104;
                v287.origin.y = v106;
                v287.size.width = v108;
                v287.size.height = v110;
                if (!CGRectEqualToRect(v257, v287))
                {
                  v206 = v104;
                  v208 = v106;
                  v258.origin.x = v104;
                  v258.origin.y = v106;
                  recta = v108;
                  rect_8a = v110;
                  v258.size.width = v108;
                  v258.size.height = v110;
                  MaxY = CGRectGetMaxY(v258);
                  v259.origin.x = v93;
                  v259.origin.y = v95;
                  v259.size.width = v97;
                  v259.size.height = v99;
                  v112 = MaxY - CGRectGetMaxY(v259);
                  v260.origin.y = v232;
                  v260.origin.x = v234;
                  v260.size.height = v228;
                  v260.size.width = v230;
                  v113 = CGRectGetMaxY(v260);
                  v261.origin.x = v93;
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
                      if (([WeakRetained _delegateWantsFooterForSection:*(a1 + 16)] & 1) != 0 || (v154 = objc_msgSend(WeakRetained, "style"), v73 = 0, v154 <= 0x10) && ((1 << v154) & 0x10006) != 0)
                      {
                        v73 = [WeakRetained _sectionFooterViewWithFrame:*(a1 + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v212 willDisplay:{v211, v210, v209, 0.0}];
                        [WeakRetained _addContentSubview:v73 atBack:0];
                      }
                    }
                  }

                  [v73 setFrame:{v93, v95, v97, v99}];
                  if (v112 != 0.0)
                  {
                    v269.origin.x = v117;
                    v269.origin.y = v116;
                    v269.size.width = recta;
                    v269.size.height = rect_8a;
                    LODWORD(v155) = !CGRectIntersectsRect(v269, *(a1 + 160));
                    if (v214 == 0.0 && v153 == 0.0 || (v270.origin.x = v93, v270.origin.y = v95, v270.size.width = v97, v270.size.height = v99, MinY = CGRectGetMinY(v270), v271.origin.y = v232, v271.origin.x = v234, v271.size.height = v228, v271.size.width = v230, v157 = MinY - CGRectGetMinY(v271), v272.origin.x = v117, v272.origin.y = v116, v272.size.width = recta, v272.size.height = rect_8a, v158 = CGRectGetMinY(v272), v273.origin.y = v224, v273.origin.x = v226, v273.size.height = rect_16a, v273.size.width = rect_24a, v157 == v158 - CGRectGetMinY(v273)))
                    {
                      v159 = [UIViewAnimation alloc];
                      v120 = [WeakRetained _isEditingWithNoSwipedCell];
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
                    v174 = v168 + v214 + v214 / v112 * *(a1 + 224);
                    if (v214 / v112 != 0.0)
                    {
                      v289.origin.x = v167;
                      v289.origin.y = v168 + v214 + v214 / v112 * *(a1 + 224);
                      v289.size.width = v169;
                      v289.size.height = v170;
                      if (!CGRectEqualToRect(*&v167, v289))
                      {
                        v155 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v73, 0, 3, 0, 1, v155, [WeakRetained _isEditingWithNoSwipedCell], v171, v174, v172, v173, 1.0, 0.0, v166);
                        [*(a1 + 320) addObject:v155];

                        LOBYTE(v155) = 0;
                      }
                    }

                    v175 = fmax(fabs((v112 - v153) / v112), v166);
                    v176 = v112;
                    v177 = v166 == 1.0 ? 1.0 : v175;
                    v178 = v174 + (v176 - v214 - v153) / v176 * *(a1 + 224);
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
                        [*(a1 + 320) addObject:v155];

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
                        v120 = [WeakRetained _isEditingWithNoSwipedCell];
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
                        v131 = [(UIViewAnimation *)p_isa initWithView:v130 indexPath:0 viewType:3 endRect:0 endAlpha:1 startFraction:v124 endFraction:v120 curve:v126 animateFromCurrentPosition:v127 shouldDeleteAfterAnimation:v128 editing:v129, v121, v122, v123];
                        [*(a1 + 320) addObject:v131];
                      }
                    }
                  }
                }
              }
            }

LABEL_38:
            v132 = *(a1 + 280);
            v133 = *(a1 + 16);
            v134 = *(v132 + 8 * v133);
            if (v134)
            {
              v203 = [MEMORY[0x1E696AAA8] currentHandler];
              [v203 handleFailureInMethod:sel__setupAnimationsForExistingHeadersAndFooters object:a1 file:@"UITableViewSupport.m" lineNumber:2296 description:@"Attempt to create two animations for footer view"];

              v132 = *(a1 + 280);
              v133 = *(a1 + 16);
              v134 = *(v132 + 8 * v133);
            }

            *(v132 + 8 * v133) = v73;

            v4 = *(a1 + 16);
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
            if (!CGRectIntersectsRect(v265, *(a1 + 192)))
            {
              v73 = 0;
              goto LABEL_38;
            }

            if (([WeakRetained _delegateWantsFooterForSection:*(a1 + 16)] & 1) == 0)
            {
              v136 = [WeakRetained style];
              v73 = 0;
              if (v136 > 0x10 || ((1 << v136) & 0x10006) == 0)
              {
                goto LABEL_38;
              }
            }

            v73 = [WeakRetained _sectionFooterViewWithFrame:*(a1 + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v75 willDisplay:{v77, v79, v81, 0.0}];
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
          v118 = CGRectIntersectsRect(v266, *(a1 + 160));
          v119 = [UIViewAnimation alloc];
          v120 = [WeakRetained _isEditingWithNoSwipedCell];
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
        *(a1 + 16) = v4 + 1;
        if (v4 + 1 >= *(a1 + 240))
        {
          goto LABEL_168;
        }
      }

      v6 = [WeakRetained _visibleHeaderViewForSection:v3];
      v7 = [WeakRetained allowsHeaderViewsToFloat];
      v8 = [(UITableViewRowData *)*(a1 + 72) rectForHeaderInSection:v5 heightCanBeGuessed:1];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(UITableViewRowData *)*(a1 + 80) rectForHeaderInSection:1 heightCanBeGuessed:?];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if (!v7)
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
          if (!CGRectIntersectsRect(v251, *(a1 + 192)))
          {
            v6 = 0;
            goto LABEL_21;
          }

          if (([WeakRetained _delegateWantsHeaderForSection:*(a1 + 16)] & 1) == 0)
          {
            v135 = [WeakRetained style];
            v6 = 0;
            if (v135 > 0x10 || ((1 << v135) & 0x10006) == 0)
            {
              goto LABEL_21;
            }
          }

          v6 = [WeakRetained _sectionHeaderViewWithFrame:*(a1 + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v8 willDisplay:{v10, v12, v14, 0.0}];
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
        v56 = CGRectIntersectsRect(v252, *(a1 + 160));
        v57 = [UIViewAnimation alloc];
        v58 = [WeakRetained _isEditingWithNoSwipedCell];
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
        v69 = [(UIViewAnimation *)v63 initWithView:v68 indexPath:0 viewType:2 endRect:0 endAlpha:1 startFraction:v62 endFraction:v58 curve:v64 animateFromCurrentPosition:v65 shouldDeleteAfterAnimation:v66 editing:v67, v59, v60, v61];
        [*(a1 + 320) addObject:v69];

LABEL_21:
        v70 = *(a1 + 272);
        v71 = *(a1 + 16);
        v72 = *(v70 + 8 * v71);
        if (v72)
        {
          v202 = [MEMORY[0x1E696AAA8] currentHandler];
          [v202 handleFailureInMethod:sel__setupAnimationsForExistingHeadersAndFooters object:a1 file:@"UITableViewSupport.m" lineNumber:2187 description:@"Attempt to create two animations for header view"];

          v70 = *(a1 + 272);
          v71 = *(a1 + 16);
          v72 = *(v70 + 8 * v71);
        }

        *(v70 + 8 * v71) = v6;

        v4 = *(a1 + 16);
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
      v231 = v25 + *(a1 + 136);
      v233 = *(a1 + 128) + v26;
      v227 = *(a1 + 152) - (v25 + v24);
      v229 = *(a1 + 144) - (v26 + v23);
      v27 = [(UITableViewRowData *)*(a1 + 72) floatingRectForHeaderInSection:v5 visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v233, v231, v229, v227];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [WeakRetained _contentInset];
      v223 = v36 + *(a1 + 168);
      v225 = *(a1 + 160) + v37;
      rect_16 = *(a1 + 184) - (v36 + v35);
      rect_24 = *(a1 + 176) - (v37 + v34);
      v38 = [(UITableViewRowData *)*(a1 + 80) floatingRectForHeaderInSection:1 visibleRect:0 heightCanBeGuessed:0 outIsFloating:v225 outVisibleRectDisplacement:v223, rect_24, rect_16];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v239.origin.x = v27;
      v239.origin.y = v29;
      v239.size.width = v31;
      v239.size.height = v33;
      v283.origin.x = v38;
      v283.origin.y = v40;
      v283.size.width = v42;
      v283.size.height = v44;
      v240 = CGRectUnion(v239, v283);
      if (!CGRectIntersectsRect(v240, *(a1 + 192)))
      {
        goto LABEL_21;
      }

      v241.origin.x = v27;
      v241.origin.y = v29;
      v241.size.width = v31;
      v241.size.height = v33;
      v284.origin.x = v38;
      v284.origin.y = v40;
      v284.size.width = v42;
      v284.size.height = v44;
      if (CGRectEqualToRect(v241, v284))
      {
        goto LABEL_21;
      }

      v242.origin.x = v38;
      v242.origin.y = v40;
      v242.size.width = v42;
      v242.size.height = v44;
      rect = v38;
      v45 = v40;
      v46 = v42;
      v47 = v44;
      v48 = CGRectGetMinY(v242);
      v243.origin.x = v27;
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
        v245.origin.x = v27;
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
      v247.origin.x = v27;
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
            v145 = v27;
            if (v6)
            {
              goto LABEL_128;
            }

            goto LABEL_123;
          }

          v145 = v27;
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
              if ([WeakRetained _delegateWantsHeaderForSection:{*(a1 + 16), v145, rect_8}])
              {
                goto LABEL_126;
              }

              v160 = [WeakRetained style];
              v6 = 0;
              if (v160 > 0x10)
              {
LABEL_127:
                v145 = v27;
                goto LABEL_128;
              }

              v145 = v27;
              if (((1 << v160) & 0x10006) != 0)
              {
LABEL_126:
                v6 = [WeakRetained _sectionHeaderViewWithFrame:*(a1 + 16) forSection:0 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v212 willDisplay:{v211, v210, v209, 0.0}];
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
              LODWORD(v161) = !CGRectIntersectsRect(v274, *(a1 + 160));
              if (v207 == 0.0 && v144 == 0.0 || (v275.origin.x = v27, v275.origin.y = v29, v275.size.width = v31, v275.size.height = v33, v162 = CGRectGetMinY(v275), v276.origin.y = v231, v276.origin.x = v233, v276.size.height = v227, v276.size.width = v229, v163 = v162 - CGRectGetMinY(v276), v277.size.height = v213, v277.origin.x = rect, v277.origin.y = v55, v277.size.width = v54, v164 = CGRectGetMinY(v277), v278.origin.y = v223, v278.origin.x = v225, v278.size.height = rect_16, v278.size.width = rect_24, v163 == v164 - CGRectGetMinY(v278)))
              {
                v165 = [UIViewAnimation alloc];
                v58 = [WeakRetained _isEditingWithNoSwipedCell];
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
                v188 = v182 + v207 + v207 / rect_8 * *(a1 + 224);
                if (v207 / rect_8 == 0.0 || (v291.origin.x = v181, v291.origin.y = v182 + v207 + v207 / rect_8 * *(a1 + 224), v291.size.width = v183, v291.size.height = v184, CGRectEqualToRect(*&v181, v291)))
                {
                  v189 = v185;
                  v190 = v186;
                }

                else
                {
                  v192 = [UIViewAnimation alloc];
                  v193 = [WeakRetained _isEditingWithNoSwipedCell];
                  v189 = v185;
                  v194 = v185;
                  v190 = v186;
                  v161 = [(UIViewAnimation *)&v192->super.isa initWithView:v6 indexPath:0 viewType:2 endRect:0 endAlpha:1 startFraction:v161 endFraction:v193 curve:v194 animateFromCurrentPosition:v188 shouldDeleteAfterAnimation:v186 editing:v187, 1.0, 0.0, v180];
                  [*(a1 + 320) addObject:v161];

                  LOBYTE(v161) = 0;
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

                v197 = v188 + (rect_8 - v207 - v144) / rect_8 * *(a1 + 224);
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
                    v161 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v6, 0, 2, 3, 1, v161, [WeakRetained _isEditingWithNoSwipedCell], v189, v197, v190, v187, 1.0, v180, v196);
                    [*(a1 + 320) addObject:v161];

                    LOBYTE(v161) = 0;
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
                v58 = [WeakRetained _isEditingWithNoSwipedCell];
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

              v62 = v161;
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
  if (a1)
  {
    v1 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained _swipeActionController];
    v4 = [v3 currentSwipeOccurrence];

    v217 = v4;
    v5 = _tableViewIsAnimatingSwipeToDelete(v4, *(v1 + 64));
    v6 = *(v1 + 96) + *(v1 + 88);
    v229 = v1;
    v216 = v5;
    if (v6 && [*(v1 + 64) count])
    {
      v224 = WeakRetained;
      v7 = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v8 = *(v1 + 64);
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
                v15 = [v14 section];
                v16 = [(UITableViewRowData *)*(v1 + 72) numberOfRowsBeforeSection:v15];
                v17 = [(UITableViewRowData *)*(v1 + 72) numberOfRowsInSection:v15];
                v18 = v17 + v16;
                if (v16 < 0 || v18 > v6)
                {
                  v220 = [MEMORY[0x1E696AAA8] currentHandler];
                  v218 = NSStringFromRange(*(v229 + 88));
                  [v220 handleFailureInMethod:sel__buildDeleteUpdateItemsByOldGlobalRowLookupTable object:v229 file:@"UITableViewSupport.m" lineNumber:1390 description:{@"Old global rows out of bounds: numRowsBeforeSection=%ld, numRowsInSection=%ld, oldRowRange=%@", v16, v17, v218}];
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
                v27 = [(UITableViewRowData *)*(v1 + 72) globalRowForRowAtIndexPath:v14];
                v28 = v27;
                if ((v27 & 0x8000000000000000) != 0 || v27 >= v6)
                {
                  v221 = [MEMORY[0x1E696AAA8] currentHandler];
                  v29 = NSStringFromRange(*(v1 + 88));
                  [v221 handleFailureInMethod:sel__buildDeleteUpdateItemsByOldGlobalRowLookupTable object:v1 file:@"UITableViewSupport.m" lineNumber:1398 description:{@"Old global row out of bounds: deletedGlobalRow=%ld, oldRowRange=%@", v28, v29}];

                  v7 = v227;
                }

                v7[v28] = v13;
              }

              v1 = v229;
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
    v32 = *(v1 + 88);
    v33 = *(v1 + 96);
    *(v1 + 24) = v32;
    if (v32 < v33 + v32)
    {
      v34 = 1.0;
      v228 = v7;
      do
      {
        v35 = [(_UITableViewUpdateSupport *)v1 finalGlobalIndexForInitialGlobalIndex:v32];
        v36 = *(v1 + 24);
        if (v35 != 0x7FFFFFFFFFFFFFFFLL || *(v1 + 288) == v36)
        {
          goto LABEL_208;
        }

        v37 = [(UITableViewRowData *)*(v1 + 72) rectForGlobalRow:v36 heightCanBeGuessed:1];
        v222 = v38;
        v40 = v39;
        if (v7)
        {
          v41 = v7[*(v1 + 24)];
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
            v213 = [(_UITableViewUpdateSupport *)v229 _oldMapArray];
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
            v243 = v213;
            v244 = 2112;
            v245 = v214;
            _os_log_fault_impl(&dword_188A29000, v197, OS_LOG_TYPE_FAULT, "UITableView internal inconsistency: missing delete update item for old global row (%ld) that does not exist after updates updateItems=%@; oldRowData=%@; newRowData=%@; oldGlobalRowMap: %@; tableView=%@", buf, 0x3Eu);
          }

          v223 = 0;
          v225 = 1;
          WeakRetained = v196;
          v7 = v228;
          v1 = v229;
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
            v204 = [(_UITableViewUpdateSupport *)v229 _oldMapArray];
            v205 = objc_loadWeakRetained((v229 + 40));
            *buf = 134219266;
            v235 = v199;
            v1 = v229;
            v236 = 2112;
            v237 = v200;
            v5 = v216;
            v238 = 2112;
            v239 = v201;
            v240 = 2112;
            v241 = v203;
            WeakRetained = v202;
            v242 = 2112;
            v243 = v204;
            v244 = 2112;
            v245 = v205;
            _os_log_impl(&dword_188A29000, v198, OS_LOG_TYPE_ERROR, "UITableView internal inconsistency: missing delete update item for old global row (%ld) that does not exist after updates updateItems=%@; oldRowData=%@; newRowData=%@; oldGlobalRowMap: %@; tableView=%@", buf, 0x3Eu);

            v7 = v228;
          }

          v223 = 0;
          v225 = 1;
        }

LABEL_47:
        v226 = [(UITableViewRowData *)*(v1 + 72) indexPathForRowAtGlobalRow:?];
        v43 = *(v1 + 24);
        do
        {
          v44 = v43;
          v19 = v43-- < 1;
        }

        while (!v19 && [(_UITableViewUpdateSupport *)v1 finalGlobalIndexForInitialGlobalIndex:v43]== 0x7FFFFFFFFFFFFFFFLL);
        v45 = v44;
        if (v44 < *(v1 + 248))
        {
          v45 = v44;
          do
          {
            if ([(_UITableViewUpdateSupport *)v1 finalGlobalIndexForInitialGlobalIndex:v45]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            ++v45;
          }

          while (v45 < *(v1 + 248));
        }

        if (v44 < 0)
        {
          v51 = [MEMORY[0x1E696AAA8] currentHandler];
          v52 = v51;
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

          [v51 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:v1 file:@"UITableViewSupport.m" lineNumber:1448 description:{@"Invalid prior old global row when computing beginning of old gap for %@ of row at index path %@", v54, v226}];
        }

        else
        {
          if (v44 < *(v1 + 248))
          {
            v46 = [(UITableViewRowData *)*(v1 + 72) rectForGlobalRow:v44 heightCanBeGuessed:1];
LABEL_57:
            MinY = CGRectGetMinY(*&v46);
            goto LABEL_67;
          }

          if (v226)
          {
            if (!v223)
            {
              v71 = *(v1 + 72);
              v72 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](v1, [v226 section]);
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
            v56 = *(v1 + 72);
            if (v55 >= *(v1 + 232))
            {
              v46 = [(UITableViewRowData *)v56 rectForTableFooterView];
            }

            else
            {
              v46 = [(UITableViewRowData *)v56 rectForHeaderInSection:v55 heightCanBeGuessed:1];
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
            v62 = [v226 section];
            if (v62 < 1)
            {
              v63 = [(UITableViewRowData *)*(v1 + 72) rectForTableHeaderView];
            }

            else
            {
              v63 = [(UITableViewRowData *)*(v1 + 72) rectForFooterInSection:1 heightCanBeGuessed:?];
            }

            MaxY = CGRectGetMaxY(*&v63);
          }

          else
          {
            if (!v226)
            {
              goto LABEL_73;
            }

LABEL_81:
            v73 = -[_UITableViewUpdateSupport initialSectionIndexForFinalSectionIndex:](v1, [v226 section]);
            MaxY = [(_UITableViewUpdateSupport *)v1 _startOfRowAfterHeaderInSection:v73 withRowData:*(v1 + 72)];
          }

          v61 = MaxY;
          goto LABEL_85;
        }

LABEL_68:
        if (v45 > *(v1 + 248))
        {
          v57 = [MEMORY[0x1E696AAA8] currentHandler];
          v58 = v57;
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

          [v57 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:v1 file:@"UITableViewSupport.m" lineNumber:1504 description:{@"Invalid subsequent old global row when computing end of old gap for %@ of row at index path %@", v60, v226}];

LABEL_73:
          v61 = 0.0;
          goto LABEL_85;
        }

        v247.origin.x = [(UITableViewRowData *)*(v1 + 72) rectForGlobalRow:v219 heightCanBeGuessed:1];
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

        else if (v44 <= *(v1 + 248))
        {
          v82 = [(_UITableViewUpdateSupport *)v1 finalGlobalIndexForInitialGlobalIndex:v43];
          v80 = 0x7FFFFFFFFFFFFFFFLL;
          if (v82 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v79 = 0;
          }

          else
          {
            v109 = v82;
            v110 = [(UITableViewRowData *)*(v1 + 72) indexPathForRowAtGlobalRow:v43];
            v111 = [v110 section];
            v79 = v111 == [v226 section];

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
          v80 = *(v1 + 256);
          if (v45 < 0)
          {
            goto LABEL_90;
          }
        }

        if (v45 >= *(v1 + 248))
        {
          v81 = *(v1 + 256);
        }

        else
        {
          v81 = [(_UITableViewUpdateSupport *)v1 finalGlobalIndexForInitialGlobalIndex:v45];
        }

LABEL_97:
        v78 = v226;
        if (v80 < -1)
        {
          v85 = [MEMORY[0x1E696AAA8] currentHandler];
          v86 = v85;
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

          [v85 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:v1 file:@"UITableViewSupport.m" lineNumber:1573 description:{@"Invalid prior new global row when computing beginning of new gap for %@ of row at index path %@", v88, v226}];

          v77 = MinY;
        }

        else
        {
          v83 = v80 + 1;
          if (v80 + 1 >= *(v1 + 256))
          {
            if (!v223)
            {
              v123 = *(v1 + 80);
              v124 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](v1, [v226 section]);
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
            v100 = [v99 section];

            v101 = *(v1 + 240);
            v102 = v100 + 1;
            while (v102 < *(v1 + 232))
            {
              v103 = [(_UITableViewUpdateSupport *)v1 finalSectionIndexForInitialSectionIndex:?];
              if (v103 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v101 = v103;
                break;
              }
            }

            v104 = *(v1 + 80);
            if (v101 >= *(v1 + 240))
            {
              v105 = [(UITableViewRowData *)v104 rectForTableFooterView];
            }

            else
            {
              v105 = [(UITableViewRowData *)v104 rectForHeaderInSection:v101 heightCanBeGuessed:1];
            }

            v77 = CGRectGetMinY(*&v105);
          }

          else if (v80 != -1 && v79)
          {
            v77 = [(_UITableViewUpdateSupport *)v1 _startOfRowAfterRow:v80 withRowData:*(v1 + 80)];
            v5 = v216;
          }

          else
          {
            v112 = v1;
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
            v120 = [v119 section];

            if (v120 < [v116 section])
            {
              v121 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v120 + 1];

              v116 = v121;
            }

            v5 = v216;
            WeakRetained = v113;
            if (v116)
            {
              v122 = [v116 section];
            }

            else
            {
              v122 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v1 = v229;
            if (v115 >= v122)
            {
              v189 = v122;
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
            v95 = [v94 section];

            while (1)
            {
              v19 = v95-- < 1;
              if (v19)
              {
                break;
              }

              v96 = [(_UITableViewUpdateSupport *)v1 finalSectionIndexForInitialSectionIndex:v95];
              if (v96 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v97 = [(_UITableViewUpdateSupport *)v1 _startOfRowAfterFooterInSection:v96 withRowData:*(v1 + 80)];
                goto LABEL_145;
              }
            }

            v252.origin.x = [(UITableViewRowData *)*(v1 + 80) rectForTableHeaderView];
            v97 = CGRectGetMaxY(v252);
            goto LABEL_145;
          }

LABEL_142:
          v125 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](v1, [v78 section]);
          v97 = [(_UITableViewUpdateSupport *)v1 _startOfRowAfterHeaderInSection:v125 withRowData:*(v1 + 80)];
          goto LABEL_145;
        }

LABEL_109:
        if (v81 > *(v1 + 256))
        {
          v89 = [MEMORY[0x1E696AAA8] currentHandler];
          v90 = v89;
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

          [v89 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:v1 file:@"UITableViewSupport.m" lineNumber:1637 description:{@"Invalid subsequent new global row when computing end of new gap for %@ of row at index path %@", v92, v78}];

          v76 = v61;
          goto LABEL_146;
        }

        v250.origin.x = [(UITableViewRowData *)*(v1 + 80) rectForGlobalRow:1 heightCanBeGuessed:?];
        v97 = CGRectGetMinY(v250);
LABEL_145:
        v76 = v97;
LABEL_146:
        v126 = v77;
        if (v76 > v77)
        {
          v253.origin.x = [(UITableViewRowData *)*(v1 + 72) rectForGlobalRow:1 heightCanBeGuessed:?];
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
          v129 = [v217 direction];
          v40 = 0.0;
          if (v129)
          {
            if (v129 != 1)
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

                v181 = *(v1 + 72);
                v182 = [v78 row];
                v183 = [v78 section];
                if (v181)
                {
                  v184 = [(UITableViewRowData *)v181 heightForRow:v182 inSection:v183 canGuess:1 adjustForReorderedRow:1];
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
                    v256.origin.x = [(UITableViewRowData *)*(v1 + 72) rectForGlobalRow:v219 heightCanBeGuessed:1];
                    v191 = CGRectGetHeight(v256);
                    v192 = *(v1 + 72);
                    v193 = [v78 row];
                    v194 = [v78 section];
                    if (v192)
                    {
                      v195 = [(UITableViewRowData *)v192 heightForRow:v193 inSection:v194 canGuess:1 adjustForReorderedRow:1];
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

                v185 = *(v1 + 72);
                v186 = [v78 row];
                v187 = [v78 section];
                if (v185)
                {
                  v188 = [(UITableViewRowData *)v185 heightForRow:v186 inSection:v187 canGuess:1 adjustForReorderedRow:1];
                }

                else
                {
                  v188 = 0.0;
                }

                MinY = v76 + v188;
                break;
              case 6:
                v131 = *(v1 + 72);
                v132 = [v78 row];
                v133 = [v78 section];
                if (v131)
                {
                  v134 = [(UITableViewRowData *)v131 heightForRow:v132 inSection:v133 canGuess:1 adjustForReorderedRow:1]* 0.5;
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
        v137 = *(v1 + 24);
        v138 = *(v1 + 48);
        v139 = v137 >= v138;
        v140 = v137 - v138;
        if (v139 && v140 < *(v1 + 56))
        {
          v141 = [WeakRetained _visibleCellForGlobalRow:?];
          v142 = [(_UITableViewUpdateSupport *)v1 finalGlobalIndexForInitialGlobalIndex:?];
          *(v1 + 32) = v142;
          if (v142 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (*(*(v1 + 264) + 8 * v142))
            {
              v206 = [MEMORY[0x1E696AAA8] currentHandler];
              v207 = [(_UITableViewUpdateSupport *)v1 _collectionViewUpdateItems];
              [v206 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:v1 file:@"UITableViewSupport.m" lineNumber:1735 description:{@"Cannot animate deleted cell because it already has an animation. Updates: %@; Cell: %@", v207, *(*(v1 + 264) + 8 * *(v1 + 32))}];

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
              v208 = [MEMORY[0x1E696AAA8] currentHandler];
              [v208 handleFailureInMethod:sel__setupAnimationsForDeletedCells object:v1 file:@"UITableViewSupport.m" lineNumber:1736 description:@"Missing deleted cell to setup animations"];
            }

LABEL_173:
            objc_storeStrong((*(v1 + 264) + 8 * *(v1 + 32)), v141);
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
          v147 = [(UITableViewRowData *)*(v1 + 72) indexPathForRowAtGlobalRow:?];
          v148 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:](&v146->super.isa, v141, v147, 1, 0, 1, 1, [v141 isEditing], v37, MinY, v222, v40, v145, 0.0, 1.0);

          v149 = [WeakRetained _showsBackgroundShadow];
          if ((v225 | v149 ^ 1))
          {
            v150 = v225 | v149;
            goto LABEL_185;
          }

          v7 = v228;
          if ((v42[4] - 1) <= 1 && (v151 = *(v1 + 24), v151 == ([(UITableViewRowData *)*(v1 + 72) numberOfRows]- 1)))
          {
            v152 = v1;
            v153 = WeakRetained;
            v154 = v148;
            v155 = objc_loadWeakRetained((v152 + 40));
            v156 = [v155 _backgroundShadowForSlideAnimation];
            if (v156)
            {
              [v155 insertSubview:v156 atIndex:0];
              [v156 frame];
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

              v177 = [(UIViewAnimation *)&v173->super.isa initWithView:v156 indexPath:0 viewType:1 endRect:v176 endAlpha:1 startFraction:1 endFraction:0 curve:v158 - (MinX - v172) animateFromCurrentPosition:v160 shouldDeleteAfterAnimation:v162 editing:v164, v174, v175, v167];
              v178 = v177;
              if (v177)
              {
                *(v177 + 11) = 0;
              }

              [*(v229 + 320) addObject:v177];

              v34 = 1.0;
            }

            v150 = 0;
            WeakRetained = v153;
            v1 = v229;
LABEL_185:
            v7 = v228;
          }

          else
          {
            v150 = 0;
          }

          [*(v1 + 320) addObject:v148];
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

        v36 = *(v1 + 24);
LABEL_208:
        v32 = v36 + 1;
        *(v1 + 24) = v32;
      }

      while (v32 < *(v1 + 96) + *(v1 + 88));
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _currentScreenScale];
    v134 = v3;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = *(a1 + 328);
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
        v7 = [v6 intValue];

        v8 = [v5 valueForKey:@"UpdateItem"];
        v9 = [v5 valueForKey:@"NewHeaderRect"];
        v10 = v9;
        if (v9)
        {
          [v9 CGRectValue];
        }

        v11 = [(UITableViewRowData *)*(a1 + 72) rectForHeaderInSection:v7 heightCanBeGuessed:1];
        v13 = v12;
        v15 = v14;
        v16 = [v5 valueForKey:{@"NewFooterRect", v11}];
        v17 = v16;
        if (v16)
        {
          [v16 CGRectValue];
        }

        [(UITableViewRowData *)*(a1 + 72) rectForFooterInSection:v7 heightCanBeGuessed:1];
        v19 = v18;
        v143 = v20;
        rect = v15;
        v141 = v17;
        if (v8 && (*(v8 + 16) & 2) != 0)
        {
          v22 = [(_UITableViewUpdateSupport *)a1 finalSectionIndexForInitialSectionIndex:v7];
          v23 = 1;
          v24 = [(UITableViewRowData *)*(a1 + 80) rectForHeaderInSection:v22 heightCanBeGuessed:1];
          rect2 = v25;
          v26 = [(UITableViewRowData *)*(a1 + 80) rectForFooterInSection:v22 heightCanBeGuessed:1];
          v28 = v27;
          MaxY = 0.0;
          goto LABEL_59;
        }

        if (v7 >= 1)
        {
          v21 = v7;
          while ([(_UITableViewUpdateSupport *)a1 finalSectionIndexForInitialSectionIndex:?]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v21 <= 0)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v30 = *(a1 + 80);
          v31 = [(_UITableViewUpdateSupport *)a1 finalSectionIndexForInitialSectionIndex:v21];
          v154.origin.x = [(UITableViewRowData *)v30 rectForFooterInSection:v31 heightCanBeGuessed:1];
          MaxY = CGRectGetMaxY(v154);
          v32 = v21 + 1;
          goto LABEL_22;
        }

        v21 = v7 - 1;
        if (v7)
        {
          goto LABEL_20;
        }

LABEL_21:
        v155.origin.x = [(UITableViewRowData *)*(a1 + 80) rectForTableHeaderView];
        MaxY = CGRectGetMaxY(v155);
        v32 = 0;
LABEL_22:
        v33 = *(a1 + 232);
        v34 = v32;
        if (v32 < v33)
        {
          v34 = v32;
          do
          {
            v35 = [(_UITableViewUpdateSupport *)a1 finalSectionIndexForInitialSectionIndex:v34];
            v33 = *(a1 + 232);
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
          v156.origin.x = [(UITableViewRowData *)*(a1 + 80) rectForTableFooterView];
          MinY = CGRectGetMinY(v156);
        }

        else
        {
          v37 = [(_UITableViewUpdateSupport *)a1 finalSectionIndexForInitialSectionIndex:v34];
          v157.origin.x = [(UITableViewRowData *)*(a1 + 80) rectForHeaderInSection:v37 heightCanBeGuessed:1];
          v38 = CGRectGetMinY(v157);
          MinY = v38 - [(UITableViewRowData *)*(a1 + 80) offsetForHeaderInSection:v37];
        }

        v39 = *(a1 + 72);
        v139 = v19;
        v140 = v13;
        if (v7 < 1)
        {
          v40 = [(UITableViewRowData *)v39 rectForTableHeaderView];
        }

        else
        {
          v40 = [(UITableViewRowData *)v39 rectForFooterInSection:1 heightCanBeGuessed:?];
        }

        v41 = v40;
        v42 = MaxY;
        v43 = MaxY;
        if (v34 > v32)
        {
          v44 = v32;
          v43 = MaxY;
          v42 = MaxY;
          do
          {
            if (v7 == v44)
            {
              v43 = v42 - MaxY;
            }

            v42 = v42 + [(UITableViewRowData *)*(a1 + 72) heightForSection:?];
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
        v48 = v46 + v45 * ([(UITableViewRowData *)*(a1 + 72) heightForSection:v7]- v143);
        rect2 = v46 + [(UITableViewRowData *)*(a1 + 72) offsetForHeaderInSection:v7];
        WeakRetained = v135;
        [v135 _contentInset];
        v50 = *(a1 + 128) + v49;
        v52 = v51 + *(a1 + 136);
        v54 = *(a1 + 144) - (v49 + v53);
        v56 = *(a1 + 152) - (v51 + v55);
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
        v63 = [(UITableViewRowData *)*(a1 + 72) heightForHeaderInSection:v7 canGuess:1];
        v64 = [(UITableViewRowData *)*(a1 + 72) heightForFooterInSection:v7 canGuess:1];
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
              v71 = [(UITableViewRowData *)*(a1 + 72) heightForSection:v7];
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
        v75 = objc_loadWeakRetained((a1 + 40));
        v76 = [v75 allowsHeaderViewsToFloat];
        v77 = *(a1 + 72);
        if (v76)
        {
          [v75 _contentInset];
          v82 = [(UITableViewRowData *)v77 floatingRectForHeaderInSection:v7 visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:*(a1 + 128) + v81, v78 + *(a1 + 136), *(a1 + 144) - (v81 + v79), *(a1 + 152) - (v78 + v80)];
        }

        else
        {
          v82 = [(UITableViewRowData *)*(a1 + 72) rectForHeaderInSection:v7 heightCanBeGuessed:1];
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
          if (CGRectIntersectsRect(v174, *(a1 + 192)))
          {
            if ([(_UITableViewUpdateSupport *)a1 _isReloadSectionUpdate])
            {
              v90 = [*(a1 + 64) objectAtIndex:0];
              v91 = v90;
              if (v90)
              {
                v90 = v90[3];
              }

              v92 = [v90 section];

              v93 = *(*(a1 + 272) + 8 * v92);
            }

            else
            {
              v93 = 0;
            }

            v94 = [v75 _visibleHeaderViewForSection:v7];
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
                [*(a1 + 320) addObject:v102];
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
        v104 = objc_loadWeakRetained((a1 + 40));
        v105 = [v104 allowsFooterViewsToFloat];
        v106 = *(a1 + 72);
        if (v105)
        {
          [v104 _contentInset];
          v111 = [(UITableViewRowData *)v106 floatingRectForFooterInSection:v7 visibleRect:1 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:*(a1 + 128) + v110, v107 + *(a1 + 136), *(a1 + 144) - (v110 + v108), *(a1 + 152) - (v107 + v109)];
        }

        else
        {
          v111 = [(UITableViewRowData *)*(a1 + 72) rectForFooterInSection:v7 heightCanBeGuessed:1];
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
          if (CGRectIntersectsRect(v177, *(a1 + 192)))
          {
            if ([(_UITableViewUpdateSupport *)a1 _isReloadSectionUpdate])
            {
              v119 = [*(a1 + 64) objectAtIndex:0];
              v120 = v119;
              if (v119)
              {
                v119 = v119[3];
              }

              v121 = [v119 section];

              v122 = *(*(a1 + 280) + 8 * v121);
            }

            else
            {
              v122 = 0;
            }

            v123 = [v104 _visibleFooterViewForSection:v7];
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
                [*(a1 + 320) addObject:v129];
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [(UITableViewRowData *)*(a1 + 72) rectForTableFooterView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [(UITableViewRowData *)*(a1 + 80) rectForTableFooterView];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v22.origin.x = v2;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = v8;
    if (!CGRectIsEmpty(v22) || (v23.origin.x = v9, v23.origin.y = v11, v23.size.width = v13, v23.size.height = v15, !CGRectIsEmpty(v23)))
    {
      v24.origin.x = v2;
      v24.origin.y = v4;
      v24.size.width = v6;
      v24.size.height = v8;
      v27.origin.x = v9;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      v25 = CGRectUnion(v24, v27);
      if (CGRectIntersectsRect(v25, *(a1 + 192)))
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
          [v16 setFrame:{v2, v4, v6, v8}];
          if ([WeakRetained _shouldUseNewHeaderFooterBehavior])
          {
            v26.origin.x = v9;
            v26.origin.y = v11;
            v26.size.width = v13;
            v26.size.height = v15;
            v18 = !CGRectIntersectsRect(v26, *(a1 + 160));
          }

          else
          {
            v18 = 0;
          }

          v19 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v17, 0, 5, 0, 1, v18, [WeakRetained _isEditingWithNoSwipedCell], v9, v11, v13, v15, 1.0, 0.0, 1.0);
          [*(a1 + 320) addObject:v19];
        }
      }
    }
  }
}

- (void)_setupAnimationForTableHeader
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [(UITableViewRowData *)*(a1 + 72) rectForTableHeaderView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [(UITableViewRowData *)*(a1 + 80) rectForTableHeaderView];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v22.origin.x = v2;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = v8;
    if (!CGRectIsEmpty(v22) || (v23.origin.x = v9, v23.origin.y = v11, v23.size.width = v13, v23.size.height = v15, !CGRectIsEmpty(v23)))
    {
      v24.origin.x = v2;
      v24.origin.y = v4;
      v24.size.width = v6;
      v24.size.height = v8;
      v27.origin.x = v9;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      v25 = CGRectUnion(v24, v27);
      if (CGRectIntersectsRect(v25, *(a1 + 192)))
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
          [v16 setFrame:{v2, v4, v6, v8}];
          if ([WeakRetained _shouldUseNewHeaderFooterBehavior])
          {
            v26.origin.x = v9;
            v26.origin.y = v11;
            v26.size.width = v13;
            v26.size.height = v15;
            v18 = !CGRectIntersectsRect(v26, *(a1 + 160));
          }

          else
          {
            v18 = 0;
          }

          v19 = -[UIViewAnimation initWithView:indexPath:viewType:endRect:endAlpha:startFraction:endFraction:curve:animateFromCurrentPosition:shouldDeleteAfterAnimation:editing:]([UIViewAnimation alloc], v17, 0, 4, 0, 1, v18, [WeakRetained _isEditingWithNoSwipedCell], v9, v11, v13, v15, 1.0, 0.0, 1.0);
          [*(a1 + 320) addObject:v19];
        }
      }
    }
  }
}

- (void)_setupAnimationsForExistingOffscreenCells
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = WeakRetained;
    v4 = *(a1 + 88);
    v5 = *(a1 + 96);
    *(a1 + 24) = v4;
    if (v4 < v5 + v4)
    {
      v47 = WeakRetained;
      do
      {
        v6 = *(a1 + 48);
        v8 = v4 >= v6;
        v7 = v4 - v6;
        v8 = !v8 || v7 >= *(a1 + 56);
        if (!v8)
        {
          goto LABEL_27;
        }

        v9 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:v4];
        v3 = v47;
        *(a1 + 32) = v9;
        if (v9 == 0x7FFFFFFFFFFFFFFFLL || *(*(a1 + 264) + 8 * v9))
        {
          goto LABEL_27;
        }

        v10 = [(UITableViewRowData *)*(a1 + 80) rectForGlobalRow:v9 heightCanBeGuessed:1];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = *(a1 + 24);
        v18 = v15;
        rect = v13;
        v19 = v11;
        v20 = v10;
        if (v17 < *(a1 + 248))
        {
          v20 = [(UITableViewRowData *)*(a1 + 72) rectForGlobalRow:v17 heightCanBeGuessed:1];
          v19 = v21;
          rect = v22;
          v18 = v23;
        }

        v49.origin.x = v10;
        v49.origin.y = v12;
        v49.size.width = v14;
        v49.size.height = v16;
        v24 = CGRectIntersectsRect(v49, *(a1 + 160));
        v3 = v47;
        if (!v24)
        {
          v51.origin.x = v20;
          v51.origin.y = v19;
          v51.size.width = rect;
          v51.size.height = v18;
          v33 = v18;
          MaxY = CGRectGetMaxY(v51);
          v35 = MaxY < CGRectGetMinY(*(a1 + 128));
          v18 = v33;
          if (!v35 || (v52.origin.x = v10, v52.origin.y = v12, v52.size.width = v14, v52.size.height = v16, v36 = CGRectGetMinY(v52), v37 = CGRectGetMaxY(*(a1 + 160)), v3 = v47, v38 = v36 <= v37, v18 = v33, v38))
          {
            v53.origin.x = v20;
            v53.origin.y = v19;
            v53.size.width = rect;
            v53.size.height = v18;
            MinY = CGRectGetMinY(v53);
            v40 = CGRectGetMaxY(*(a1 + 128));
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
            v42 = CGRectGetMinY(*(a1 + 160));
            v3 = v47;
            v35 = v41 < v42;
            v18 = v33;
            if (!v35)
            {
              goto LABEL_27;
            }
          }
        }

        v25 = [v3 _createPreparedCellForGlobalRow:*(a1 + 32) willDisplay:1];
        v26 = v25;
        if (*(*(a1 + 264) + 8 * *(a1 + 32)))
        {
          v43 = [MEMORY[0x1E696AAA8] currentHandler];
          v44 = [(_UITableViewUpdateSupport *)a1 _collectionViewUpdateItems];
          [v43 handleFailureInMethod:sel__setupAnimationsForExistingOffscreenCells object:a1 file:@"UITableViewSupport.m" lineNumber:2037 description:{@"Cannot animate existing offscreen cell because it already has an animation. Updates: %@; Cell: %@", v44, *(*(a1 + 264) + 8 * *(a1 + 32))}];

          if (!v26)
          {
LABEL_30:
            v45 = [MEMORY[0x1E696AAA8] currentHandler];
            [v45 handleFailureInMethod:sel__setupAnimationsForExistingOffscreenCells object:a1 file:@"UITableViewSupport.m" lineNumber:2038 description:@"Missing offscreen cell to setup animations"];
          }
        }

        else if (!v25)
        {
          goto LABEL_30;
        }

        objc_storeStrong((*(a1 + 264) + 8 * *(a1 + 32)), v26);
        if (*(a1 + 288) != *(a1 + 32))
        {
          [v26 setFrame:{v20, v19, rect, v18}];
          v50.origin.x = v10;
          v50.origin.y = v12;
          v50.size.width = v14;
          v50.size.height = v16;
          v27 = CGRectIntersectsRect(v50, *(a1 + 160));
          v28 = [(UITableViewRowData *)*(a1 + 80) indexPathForRowAtGlobalRow:?];
          v29 = [v47 _wasEditingRowAtIndexPath:v28];
          v30 = [v47 _isEditingRowAtIndexPath:v28];
          v31 = v30;
          if (v29 != v30)
          {
            [v47 _setupCell:v26 forEditing:v29 atIndexPath:v28 animated:0 updateSeparators:1];
          }

          v32 = [[UIViewAnimation alloc] initWithView:v26 indexPath:v28 viewType:1 endRect:0 endAlpha:0 startFraction:!v27 endFraction:v31 curve:v10 animateFromCurrentPosition:v12 shouldDeleteAfterAnimation:v14 editing:v16, 1.0, 0.0, 1.0];
          [*(a1 + 320) addObject:v32];
          [v47 _addContentSubview:v26 atBack:{objc_msgSend(*(a1 + 120), "containsIndex:", *(a1 + 32)) ^ 1}];
        }

        v3 = v47;
LABEL_27:
        v4 = *(a1 + 24) + 1;
        *(a1 + 24) = v4;
      }

      while (v4 < *(a1 + 96) + *(a1 + 88));
    }
  }
}

- (void)_setupAnimationsForInsertedHeadersAndFooters
{
  v153 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _currentScreenScale];
    v134 = v2;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    obj = *(a1 + 336);
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
        v6 = [v5 intValue];

        v7 = [v4 valueForKey:@"UpdateItem"];
        v8 = [v4 valueForKey:@"OldHeaderRect"];
        v9 = v8;
        if (v8)
        {
          [v8 CGRectValue];
        }

        v139 = v9;
        v10 = [(UITableViewRowData *)*(a1 + 80) rectForHeaderInSection:v6 heightCanBeGuessed:1];
        r1 = v11;
        v13 = v12;
        v14 = [v4 valueForKey:{@"OldFooterRect", v10}];
        v15 = v14;
        if (v14)
        {
          [v14 CGRectValue];
        }

        [(UITableViewRowData *)*(a1 + 80) rectForFooterInSection:v6 heightCanBeGuessed:1];
        v18 = v17;
        v141 = v17;
        rect2 = v16;
        rect = v13;
        if (v7 && (*(v7 + 16) & 2) != 0)
        {
          v20 = v16;
          v21 = [(_UITableViewUpdateSupport *)a1 initialSectionIndexForFinalSectionIndex:v6];
          v22 = 1;
          v23 = [(UITableViewRowData *)*(a1 + 72) rectForHeaderInSection:v21 heightCanBeGuessed:1];
          v25 = v24;
          v26 = [(UITableViewRowData *)*(a1 + 72) rectForFooterInSection:v21 heightCanBeGuessed:1];
          v144 = v27;
          MaxY = 0.0;
          goto LABEL_57;
        }

        if (v6 >= 1)
        {
          v19 = v6;
          while ([(_UITableViewUpdateSupport *)a1 initialSectionIndexForFinalSectionIndex:?]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v19 <= 0)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v29 = *(a1 + 72);
          v30 = [(_UITableViewUpdateSupport *)a1 initialSectionIndexForFinalSectionIndex:v19];
          v154.origin.x = [(UITableViewRowData *)v29 rectForFooterInSection:v30 heightCanBeGuessed:1];
          MaxY = CGRectGetMaxY(v154);
          v31 = v19 + 1;
          goto LABEL_22;
        }

        v19 = v6 - 1;
        if (v6)
        {
          goto LABEL_20;
        }

LABEL_21:
        v155.origin.x = [(UITableViewRowData *)*(a1 + 72) rectForTableHeaderView];
        MaxY = CGRectGetMaxY(v155);
        v31 = 0;
LABEL_22:
        v32 = v6 + 1;
        while (1)
        {
          v33 = v32;
          v34 = *(a1 + 240);
          if (v33 >= v34)
          {
            break;
          }

          v35 = [(_UITableViewUpdateSupport *)a1 initialSectionIndexForFinalSectionIndex:v33];
          v32 = v33 + 1;
          if (v35 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = *(a1 + 240);
            break;
          }
        }

        if (v34 == v33)
        {
          v156.origin.x = [(UITableViewRowData *)*(a1 + 72) rectForTableFooterView];
          MinY = CGRectGetMinY(v156);
        }

        else
        {
          v37 = [(_UITableViewUpdateSupport *)a1 initialSectionIndexForFinalSectionIndex:v33];
          v157.origin.x = [(UITableViewRowData *)*(a1 + 72) rectForHeaderInSection:v37 heightCanBeGuessed:1];
          v38 = CGRectGetMinY(v157);
          MinY = v38 - [(UITableViewRowData *)*(a1 + 72) offsetForHeaderInSection:v37];
        }

        v39 = *(a1 + 80);
        if (v6 < 1)
        {
          v40 = [(UITableViewRowData *)v39 rectForTableHeaderView];
        }

        else
        {
          v40 = [(UITableViewRowData *)v39 rectForFooterInSection:1 heightCanBeGuessed:?];
        }

        v41 = v40;
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
            if (v46 - v6 == 1)
            {
              v44 = v43 - MaxY;
            }

            v43 = v43 + [(UITableViewRowData *)*(a1 + 80) heightForSection:v45];
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
        v50 = v49 + v48 * ([(UITableViewRowData *)*(a1 + 80) heightForSection:v6]- v18);
        v51 = v18;
        v25 = v49 + [(UITableViewRowData *)*(a1 + 80) offsetForHeaderInSection:v6];
        [WeakRetained _contentInset];
        v53 = *(a1 + 128) + v52;
        v55 = v54 + *(a1 + 136);
        v57 = *(a1 + 144) - (v52 + v56);
        v59 = *(a1 + 152) - (v54 + v58);
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
        v68 = [(UITableViewRowData *)*(a1 + 80) heightForHeaderInSection:v6 canGuess:1];
        v69 = [(UITableViewRowData *)*(a1 + 80) heightForFooterInSection:v6 canGuess:1];
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
              v76 = [(UITableViewRowData *)*(a1 + 80) heightForSection:v6];
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
        v81 = objc_loadWeakRetained((a1 + 40));
        v151 = 0;
        v150 = 0.0;
        v82 = [v81 allowsHeaderViewsToFloat];
        v83 = *(a1 + 80);
        if (v82)
        {
          [v81 _contentInset];
          v88 = [(UITableViewRowData *)v83 floatingRectForHeaderInSection:v6 visibleRect:1 heightCanBeGuessed:&v151 outIsFloating:&v150 outVisibleRectDisplacement:*(a1 + 128) + v87, v84 + *(a1 + 136), *(a1 + 144) - (v87 + v85), *(a1 + 152) - (v84 + v86)];
        }

        else
        {
          v88 = [(UITableViewRowData *)*(a1 + 80) rectForHeaderInSection:v6 heightCanBeGuessed:1];
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
          if (CGRectIntersectsRect(v175, *(a1 + 192)))
          {
            if (([v81 _delegateWantsHeaderForSection:v6] & 1) != 0 || (v96 = objc_msgSend(v81, "style"), v96 <= 0x10) && ((1 << v96) & 0x10006) != 0)
            {
              v97 = [v81 _sectionHeaderViewWithFrame:v6 forSection:v151 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v133 willDisplay:{v132, v131, v130, v150}];
              [v81 _addContentSubview:v97 atBack:{objc_msgSend(v81, "allowsHeaderViewsToFloat") ^ 1}];
              if (*(*(a1 + 272) + 8 * v6))
              {
                v124 = [MEMORY[0x1E696AAA8] currentHandler];
                [v124 handleFailureInMethod:sel__setupInsertAnimationForHeaderInSection_withTargetRect_forUpdateItem_ object:a1 file:@"UITableViewSupport.m" lineNumber:1295 description:@"Attempt to create two animations for header view"];
              }

              v98 = v97;
              if (!v97)
              {
                v98 = [MEMORY[0x1E695DFB0] null];
              }

              objc_storeStrong((*(a1 + 272) + 8 * v6), v98);
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
              v100 = CGRectIntersectsRect(v176, *(a1 + 160));
              v101 = [[UIViewAnimation alloc] initWithView:v97 indexPath:0 viewType:2 endRect:0 endAlpha:0 startFraction:!v100 endFraction:0 curve:v92 animateFromCurrentPosition:v93 shouldDeleteAfterAnimation:v94 editing:v95, 1.0, 0.0, 1.0];
              [*(a1 + 320) addObject:v101];
            }
          }
        }

        v102 = v80;
        v103 = objc_loadWeakRetained((a1 + 40));
        v151 = 0;
        v150 = 0.0;
        v104 = [v103 allowsFooterViewsToFloat];
        v105 = *(a1 + 80);
        if (v104)
        {
          [v103 _contentInset];
          v110 = [(UITableViewRowData *)v105 floatingRectForFooterInSection:v6 visibleRect:1 heightCanBeGuessed:&v151 outIsFloating:&v150 outVisibleRectDisplacement:*(a1 + 128) + v109, v106 + *(a1 + 136), *(a1 + 144) - (v109 + v107), *(a1 + 152) - (v106 + v108)];
        }

        else
        {
          v110 = [(UITableViewRowData *)*(a1 + 80) rectForFooterInSection:v6 heightCanBeGuessed:1];
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
          if (CGRectIntersectsRect(v180, *(a1 + 192)))
          {
            if (([v103 _delegateWantsFooterForSection:v6] & 1) != 0 || (v118 = objc_msgSend(v103, "style"), v118 <= 0x10) && ((1 << v118) & 0x10006) != 0)
            {
              v119 = [v103 _sectionFooterViewWithFrame:v6 forSection:v151 floating:0 visibleRectDisplacement:1 reuseViewIfPossible:v133 willDisplay:{v132, v131, v130, v150}];
              [v103 _addContentSubview:v119 atBack:{objc_msgSend(v103, "allowsFooterViewsToFloat") ^ 1}];
              if (*(*(a1 + 280) + 8 * v6))
              {
                v125 = [MEMORY[0x1E696AAA8] currentHandler];
                [v125 handleFailureInMethod:sel__setupInsertAnimationForFooterInSection_withTargetRect_forUpdateItem_ object:a1 file:@"UITableViewSupport.m" lineNumber:1326 description:@"Attempt to create two animations for footer view"];
              }

              v120 = v119;
              if (!v119)
              {
                v120 = [MEMORY[0x1E695DFB0] null];
              }

              objc_storeStrong((*(a1 + 280) + 8 * v6), v120);
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
              v122 = CGRectIntersectsRect(v181, *(a1 + 160));
              v123 = [[UIViewAnimation alloc] initWithView:v119 indexPath:0 viewType:3 endRect:0 endAlpha:0 startFraction:!v122 endFraction:0 curve:v114 animateFromCurrentPosition:v115 shouldDeleteAfterAnimation:v116 editing:v117, 1.0, 0.0, 1.0];
              [*(a1 + 320) addObject:v123];
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    obj = [WeakRetained _reorderingCell];

    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = v3[23];
    }

    v4 = v3;
    if (obj && v4)
    {
      v5 = [(UITableViewRowData *)*(a1 + 72) globalRowForRowAtIndexPath:v4];
      *(a1 + 24) = v5;
      v6 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:v5];
      *(a1 + 32) = v6;
      v7 = *(a1 + 264);
      if (*(v7 + 8 * v6))
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [(_UITableViewUpdateSupport *)a1 _collectionViewUpdateItems];
        [v8 handleFailureInMethod:sel__setupAnimationForReorderingRow object:a1 file:@"UITableViewSupport.m" lineNumber:771 description:{@"Cannot animate reordering cell because it already has an animation. Updates: %@; Cell: %@", v9, *(*(a1 + 264) + 8 * *(a1 + 32))}];

        v7 = *(a1 + 264);
        v6 = *(a1 + 32);
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
  if (!a1 || *(a1 + 312) != 1)
  {
    return;
  }

  if (!+[UIView areAnimationsEnabled])
  {
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v36 = *(a1 + 64);
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
  v203 = a1;
  v2 = [*(a1 + 64) sortedArrayUsingSelector:sel_compareIndexPaths_];
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
  v139 = a1;
  obj = *(a1 + 64);
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
            v15 = [v14 lastObject];
            v16 = (v201)(v200, v11, v15);

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

  WeakRetained = objc_loadWeakRetained((v139 + 40));
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
    v45 = (v139 + 72);
    v46 = (v139 + 80);
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
              v50 = (v139 + 72);
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
            v60 = [(UITableViewUpdateGap *)v151[1] updateItems];
            v61 = [v60 countByEnumeratingWithState:&v172 objects:v208 count:16];
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
                    objc_enumerationMutation(v60);
                  }

                  v66 = *(*(&v172 + 1) + 8 * v65);
                  if (!v66)
                  {
                    v69 = *v46;
                    v67 = 0;
LABEL_93:
                    v70 = [v67 row];
                    v71 = [v67 section];
                    if (v69)
                    {
                      v72 = [(UITableViewRowData *)v69 heightForRow:v70 inSection:v71 canGuess:1 adjustForReorderedRow:1];
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
                    v68 = (v139 + 72);
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

                  v73 = [v67 section];
                  v74 = [(UITableViewRowData *)v69 numberOfRowsInSection:v73];
                  if (v74 >= 1)
                  {
                    v75 = v74;
                    for (j = 0; j != v75; ++j)
                    {
                      if (v69)
                      {
                        v77 = [(UITableViewRowData *)v69 heightForRow:v73 inSection:1 canGuess:1 adjustForReorderedRow:?];
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

                    v46 = (v139 + 80);
                  }

LABEL_106:

                  ++v65;
                }

                while (v65 != v62);
                v78 = [v60 countByEnumeratingWithState:&v172 objects:v208 count:16];
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
              v87 = [(UITableViewUpdateGap *)v151[1] updateItems];
              v88 = [v87 countByEnumeratingWithState:&v168 objects:v207 count:16];
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
                      objc_enumerationMutation(v87);
                    }

                    v93 = *(*(&v168 + 1) + 8 * k);
                    if (v93 && *(v93 + 32) == 100)
                    {
                      *(v93 + 32) = 0;
                    }
                  }

                  v90 = [v87 countByEnumeratingWithState:&v168 objects:v207 count:16];
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
                    v98 = [(UITableViewUpdateGap *)v151[1] updateItems];
                    v99 = [v98 countByEnumeratingWithState:&v160 objects:v205 count:16];
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
                            objc_enumerationMutation(v98);
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

                        v100 = [v98 countByEnumeratingWithState:&v160 objects:v205 count:16];
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
                  v87 = [(UITableViewUpdateGap *)v151[1] updateItems];
                  v132 = [v87 countByEnumeratingWithState:&v156 objects:v204 count:16];
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
                          objc_enumerationMutation(v87);
                        }

                        v136 = *(*(&v156 + 1) + 8 * n);
                        if (v136 && *(v136 + 32) == 100)
                        {
                          *(v136 + 32) = v105;
                        }
                      }

                      v133 = [v87 countByEnumeratingWithState:&v156 objects:v204 count:16];
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
                  v87 = [(UITableViewUpdateGap *)v151[1] updateItems];
                  v107 = [v87 countByEnumeratingWithState:&v164 objects:v206 count:16];
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
                        objc_enumerationMutation(v87);
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
                            v117 = *(v139 + 80);
                            v118 = [(_UITableViewUpdateSupport *)v139 finalGlobalIndexForInitialGlobalIndex:v113];
                            v119 = v117;
                          }

                          else
                          {
                            v127 = [(_UITableViewUpdateSupport *)v139 initialGlobalIndexForFinalGlobalIndex:v113];
                            v221.origin.x = [(UITableViewRowData *)v115 rectForGlobalRow:v127 heightCanBeGuessed:1];
                            v116 = CGRectGetMaxY(v221);
                            v119 = *(v139 + 80);
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
                          v123 = [v121 section];
                          if (v120)
                          {
                            v220.origin.x = [(UITableViewRowData *)v122 rectForHeaderInSection:v123 heightCanBeGuessed:1];
                            v124 = CGRectGetMaxY(v220);
                            v125 = *(v139 + 80);
                            v126 = -[_UITableViewUpdateSupport finalSectionIndexForInitialSectionIndex:](v139, [v121 section]);
                          }

                          else
                          {
                            v130 = [(_UITableViewUpdateSupport *)v139 initialSectionIndexForFinalSectionIndex:v123];
                            v223.origin.x = [(UITableViewRowData *)v122 rectForHeaderInSection:v130 heightCanBeGuessed:1];
                            v124 = CGRectGetMaxY(v223);
                            v125 = *(v139 + 80);
                            v126 = [v121 section];
                          }

                          v224.origin.x = [(UITableViewRowData *)v125 rectForHeaderInSection:v126 heightCanBeGuessed:1];
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

                    v108 = [v87 countByEnumeratingWithState:&v164 objects:v206 count:16];
                  }

                  while (v108);
                  v46 = (v139 + 80);
                  v89 = v146;
                }

                v44 = v140;
                v43 = v141;
                v47 = v142;
                v79 = obja;
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
          v79 = [(UITableViewUpdateGap *)v151[1] updateItems];
          v80 = [v79 countByEnumeratingWithState:&v176 objects:v209 count:16];
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
                  objc_enumerationMutation(v79);
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

              v81 = [v79 countByEnumeratingWithState:&v176 objects:v209 count:16];
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
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 64), "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(a1 + 64);
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

          v8 = [*(*(&v10 + 1) + 8 * i) collectionViewUpdateItem];
          [v2 addObject:v8];
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
  if ([*(a1 + 64) count] != 2)
  {
    return 0;
  }

  v2 = [*(a1 + 64) objectAtIndexedSubscript:0];
  v3 = [*(a1 + 64) objectAtIndexedSubscript:1];
  v4 = v3;
  if (v2 && *(v2 + 20) == 1 && (!v3 || !*(v3 + 20)))
  {
    v7 = *(v2 + 24);
    v8 = [v7 section];
    if (v4)
    {
      v9 = v4[3];
    }

    else
    {
      v9 = 0;
    }

    v5 = v8 == [v9 section];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewGlobalItemForOldGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldGlobalItemMap != NULL"}];
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
  v2 = [(UITableViewRowData *)*(a1 + 72) numberOfRows];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = [(_UITableViewUpdateSupport *)a1 finalGlobalIndexForInitialGlobalIndex:?];
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

- (double)_startOfRowAfterRow:(void *)a3 withRowData:
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _metricsAdapter];
  v8 = [(UITableMetricsAdapter *)v7 rowSpacing];

  v9 = [(UITableViewRowData *)v5 rectForGlobalRow:a2 heightCanBeGuessed:1];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v16 = v8 + CGRectGetMaxY(v18);

  return v16;
}

- (double)_startOfRowAfterHeaderInSection:(void *)a3 withRowData:
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [(UITableViewRowData *)v5 rectForHeaderInSection:a2 heightCanBeGuessed:1];
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

- (double)_startOfRowAfterFooterInSection:(uint64_t)a3 withRowData:
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = [(UITableViewRowData *)a3 rectForFooterInSection:a2 heightCanBeGuessed:1];

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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapNewSectionForOldSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.oldSectionMap != NULL"}];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldSectionForNewSection(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newSectionMap != NULL"}];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UIUpdateMapOldGlobalItemForNewGlobalItem(const _UIDataSourceUpdateMaps, const NSInteger)"}];
      [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"updateMaps.newGlobalItemMap != NULL"}];
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

- (UIImageView)_imageViewForView:(void *)a1
{
  v1 = a1;
  [v1 bounds];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v2, v3, 0.0);
  v4 = [v1 layer];
  v5 = [v4 presentationLayer];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [v5 renderInContext:v7];

  v8 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  v9 = [[UIImageView alloc] initWithImage:v8];
  [v1 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(UIImageView *)v9 setFrame:v11, v13, v15, v17];

  return v9;
}

- (id)initWithTableView:(void *)a3 updateItems:(void *)a4 oldRowData:(void *)a5 newRowData:(void *)a6 oldRowRange:(void *)a7 newRowRange:(uint64_t)a8 context:(void *)a9
{
  v145 = *MEMORY[0x1E69E9840];
  obj = a2;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v97 = a11;
  if (a1)
  {
    v100.receiver = a1;
    v100.super_class = _UITableViewUpdateSupport;
    v17 = objc_msgSendSuper2(&v100, sel_init);
    v99 = v17;
    if (v17)
    {
      objc_storeWeak(v17 + 5, obj);
      v99[6] = [obj _visibleGlobalRows];
      v99[7] = v18;
      objc_storeStrong(v99 + 8, a3);
      objc_storeStrong(v99 + 9, a4);
      objc_storeStrong(v99 + 10, a5);
      v99[11] = a6;
      v99[12] = a7;
      v99[13] = a9;
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
      v27 = [(UITableViewRowData *)v24 numberOfRows];
      v99[31] = v27;
      v28 = v99[29];
      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!HIDWORD(v28))
        {
LABEL_9:
          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!HIDWORD(v27))
            {
              v29 = v27 << 32;
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
              v34 = [(UITableViewRowData *)v31 numberOfRows];
              v99[32] = v34;
              v35 = v99[30];
              if (v35 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (!HIDWORD(v35))
                {
LABEL_18:
                  if (v34 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (!HIDWORD(v34))
                    {
                      v36 = v34 << 32;
                      goto LABEL_22;
                    }

                    v83 = [MEMORY[0x1E696AAA8] currentHandler];
                    v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
                    [v83 handleFailureInFunction:v84 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v34}];
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

                v81 = [MEMORY[0x1E696AAA8] currentHandler];
                v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
                [v81 handleFailureInFunction:v82 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v35}];

                v34 = v99[32];
              }

              v35 = 0xFFFFFFFFLL;
              goto LABEL_18;
            }

            v79 = [MEMORY[0x1E696AAA8] currentHandler];
            v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
            [v79 handleFailureInFunction:v80 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v27}];
          }

          v29 = 0xFFFFFFFF00000000;
          goto LABEL_13;
        }

        v77 = [MEMORY[0x1E696AAA8] currentHandler];
        v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex _UIMapIndexFromNSInteger(const NSInteger)"];
        [v77 handleFailureInFunction:v78 file:@"_UIDataSourceBatchUpdateMap.h" lineNumber:28 description:{@"NSInteger index is negative or too large: %ld", v28}];

        v27 = v99[31];
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