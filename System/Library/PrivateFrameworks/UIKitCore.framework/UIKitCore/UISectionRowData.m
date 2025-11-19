@interface UISectionRowData
+ (uint64_t)sectionLocationForRow:(uint64_t)a3 inSection:(uint64_t)a4 numRows:(uint64_t)a5 gapIndexPath:(void *)a6 rowSpacing:;
- (double)_headerFooterSizeForSection:(void *)a3 inTable:(uint64_t)a4 withTitle:(uint64_t)a5 detailText:(uint64_t)a6 isHeader:(int)a7 stripPaddingForAbuttingView:(uint64_t)a8 isTopHeader:;
- (double)addOffset:(double)result fromRow:;
- (double)deleteRowAtIndex:(double)result;
- (double)headerSize;
- (double)heightForFooterInSection:(char)a3 canGuess:;
- (double)heightForRow:(uint64_t)a3 inSection:(char)a4 canGuess:;
- (double)insertRowAtIndex:(uint64_t)a3 inSection:(uint64_t)a4 rowHeight:(double)result tableViewRowData:;
- (double)offsetForRow:(char)a3 adjustedForGap:;
- (double)sizeForHeaderInSection:(char)a3 canGuess:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_rowForPoint:(int64_t)a3 beginningWithRow:(double)a4 numberOfRows:(double)a5 extraHitSpaceBetweenRows:(double)a6;
- (uint64_t)updateSectionHeightWithDelta:(int)a3 section:(double)a4 updateFooterOffset:;
- (void)allocateArraysWithCapacity:(uint64_t)a3 forSection:;
- (void)dealloc;
- (void)heightForEmptySection:(uint64_t)a1 inTableView:(void *)a2 rowData:(void *)a3;
- (void)refreshWithSection:(void *)a3 tableView:(uint64_t)a4 tableViewRowData:;
@end

@implementation UISectionRowData

- (double)headerSize
{
  if (!a1)
  {
    return 0.0;
  }

  if (![*(*(a1 + 96) + 8) _sectionHeadersHugContent])
  {
    return [(UITableViewRowData *)*(a1 + 96) fullContentWidth];
  }

  result = *(a1 + 104);
  if (result < -1.0)
  {
    return -result;
  }

  return result;
}

- (void)dealloc
{
  free(self->_rowHeights);
  free(self->_rowOffsets);
  v3.receiver = self;
  v3.super_class = UISectionRowData;
  [(UISectionRowData *)&v3 dealloc];
}

- (void)allocateArraysWithCapacity:(uint64_t)a3 forSection:
{
  *(a1 + 128) = a2;
  *(a1 + 136) = malloc_type_realloc(*(a1 + 136), 4 * a2, 0x100004052888210uLL);
  v6 = malloc_type_realloc(*(a1 + 144), 8 * a2, 0x100004000313F17uLL);
  *(a1 + 144) = v6;
  if (*(a1 + 136))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:sel_allocateArraysWithCapacity_forSection_ object:a1 file:@"UITableViewRowData.m" lineNumber:216 description:{@"Failed to allocate data stores for %ld rows in section %ld. Consider using fewer rows", *(a1 + 32), a3}];
  }
}

- (double)_headerFooterSizeForSection:(void *)a3 inTable:(uint64_t)a4 withTitle:(uint64_t)a5 detailText:(uint64_t)a6 isHeader:(int)a7 stripPaddingForAbuttingView:(uint64_t)a8 isTopHeader:
{
  HIDWORD(v37) = a7;
  [a3 _prepareForRowDataHeaderFooterSizing];
  v15 = *(*(a1 + 96) + 16);
  if (v15)
  {
    v16 = v15;
    [(UITableViewHeaderFooterView *)v15 prepareForReuse];
  }

  else
  {
    v16 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:0];
    objc_storeStrong((*(a1 + 96) + 16), v16);
  }

  v17 = 72;
  if (a6)
  {
    v17 = 64;
  }

  v18 = *(a1 + v17);
  if (_UITableViewHeadersFootersUseModernConfiguration() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    LOBYTE(v37) = 0;
    [a3 _configureTableHeaderFooterView:v16 forHeader:a6 section:a2 floating:0 withTitle:a4 detailText:a5 textAlignment:v18 fromClient:v37];
    v19 = 1;
  }

  else
  {
    [(UITableViewHeaderFooterView *)v16 setTable:a3];
    v20 = [a3 _constants];
    [(UITableViewHeaderFooterView *)v16 _setConstants:v20];

    v21 = [a3 _metricsAdapter];
    [(UITableViewHeaderFooterView *)v16 _setMetricsAdapter:v21];

    -[UITableViewHeaderFooterView setTableViewStyle:](v16, "setTableViewStyle:", [a3 _tableStyle]);
    [(UITableViewHeaderFooterView *)v16 setSectionHeader:a6];
    [(UITableViewHeaderFooterView *)v16 setTextAlignment:v18];
    v22 = [off_1E70ECC18 systemFontOfSize:0.0];
    v23 = [(UITableViewHeaderFooterView *)v16 textLabel];
    [v23 setFont:v22];

    v24 = [off_1E70ECC18 systemFontOfSize:0.0];
    v25 = [(UITableViewHeaderFooterView *)v16 detailTextLabel];
    [v25 setFont:v24];

    v26 = [(UITableViewHeaderFooterView *)v16 textLabel];
    [v26 setText:a4];

    v27 = [(UITableViewHeaderFooterView *)v16 detailTextLabel];
    [v27 setText:a5];

    [a3 _headerFooterLeadingMarginWidthIsHeader:a6 isFirstSection:a8];
    [(UITableViewHeaderFooterView *)v16 _setMarginWidth:?];
    [a3 _headerFooterTrailingMarginWidth];
    [(UITableViewHeaderFooterView *)v16 _setRightMarginWidth:?];
    v28 = 88;
    if (a6)
    {
      v28 = 80;
    }

    [(UITableViewHeaderFooterView *)v16 setMaxTitleWidth:*(a1 + v28)];
    [(UIView *)v16 setNeedsLayout];
    v19 = 0;
  }

  [a3 _tableContentInset];
  v31 = *(*(a1 + 96) + 24) - (v30 + v29);
  [(UITableViewHeaderFooterView *)v16 setFrame:v29, 0.0, v31, 0.0];
  if (v19)
  {
    LODWORD(v32) = 1148846080;
    LODWORD(v33) = 1112014848;
    [(UITableViewHeaderFooterView *)v16 systemLayoutSizeFittingSize:v31 withHorizontalFittingPriority:3.40282347e38 verticalFittingPriority:v32, v33];
  }

  else
  {
    [(UITableViewHeaderFooterView *)v16 _sizeThatFits:HIDWORD(v37) stripPaddingForAbuttingView:a8 isTopHeader:v31, 3.40282347e38];
  }

  v35 = v34;

  return v35;
}

- (double)addOffset:(double)result fromRow:
{
  if (a1)
  {
    v3 = result;
    v5 = *(a1 + 32);
    v6 = v5 >= a2;
    v7 = v5 - a2;
    if (*(*(a1 + 96) + 72))
    {
      if (v7 != 0 && v6)
      {
        memset_pattern16((*(a1 + 144) + 8 * a2), &xmmword_18A678720, 8 * v7);
      }
    }

    else if (v7 != 0 && v6)
    {
      v8 = (*(a1 + 144) + 8 * a2);
      do
      {
        *v8 = *v8 + result;
        ++v8;
        --v7;
      }

      while (v7);
    }

    *(a1 + 56) = *(a1 + 56) + v3;
    result = *(a1 + 40) + v3;
    *(a1 + 40) = result;
  }

  return result;
}

- (uint64_t)updateSectionHeightWithDelta:(int)a3 section:(double)a4 updateFooterOffset:
{
  *(a1 + 40) = *(a1 + 40) + a4;
  if (a3)
  {
    *(a1 + 56) = *(a1 + 56) + a4;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 96);
  v8 = *(v7 + 64);
  if (a2 + 1 < v8)
  {
    v9 = *(v7 + 72);
    do
    {
      if ((v9 & 1) == 0)
      {
        v10 = *(*(v7 + 88) + 8 * v6);
        *(v10 + 16) = *(v10 + 16) + a4;
      }

      ++v6;
    }

    while (v8 != v6);
  }

  v11 = dyld_program_sdk_at_least();
  v12 = *(*(a1 + 96) + 8);
  if (v11)
  {

    return [v12 _coalesceContentSizeUpdateWithDelta:a4];
  }

  else
  {

    return [v12 _applyContentSizeDeltaImmediately:a4];
  }
}

- (double)heightForRow:(uint64_t)a3 inSection:(char)a4 canGuess:
{
  if (!a1)
  {
    return 0.0;
  }

  if ((a4 & 1) == 0 && *(*(a1 + 136) + 4 * a2) < -1.0)
  {
    v7 = [(UITableViewRowData *)*(a1 + 96) temporarilyDeletedIndexPathBeingReordered];
    if (!v7 || (v8 = v7, [v7 section] != a3) || objc_msgSend(v8, "row") > a2 || (v9 = a2 + 1, (a2 + 1) >= *(a1 + 32)))
    {
      v9 = a2;
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:a3];
    [*(*(a1 + 96) + 8) _heightForRowAtIndexPath:v10];
    v12 = v11;
    v13 = *(a1 + 136);
    v14 = *(v13 + 4 * a2);
    if (v14 < -1.0)
    {
      v14 = -v14;
    }

    v15 = (v12 - v14);
    *(v13 + 4 * a2) = v12;
    if (*(*(a1 + 96) + 72))
    {
      v16 = *(a1 + 32);
      v17 = v16 > a2 + 1;
      v18 = v16 - (a2 + 1);
      if (v17)
      {
        memset_pattern16((*(a1 + 144) + 8 * (a2 + 1)), &xmmword_18A678720, 8 * v18);
      }
    }

    else
    {
      v19 = *(a1 + 32);
      if (a2 + 1 < v19)
      {
        v20 = ~a2 + v19;
        v21 = (*(a1 + 144) + 8 * a2 + 8);
        do
        {
          *v21 = *v21 + v15;
          ++v21;
          --v20;
        }

        while (v20);
      }
    }

    [(UISectionRowData *)a1 updateSectionHeightWithDelta:a3 section:1 updateFooterOffset:v15];
  }

  v22 = *(*(a1 + 136) + 4 * a2);
  if (v22 < -1.0)
  {
    return -v22;
  }

  return v22;
}

- (double)sizeForHeaderInSection:(char)a3 canGuess:
{
  if (!a1)
  {
    return 0.0;
  }

  if ((a3 & 1) == 0 && (*(a1 + 112) < -1.0 || *(a1 + 104) < -1.0))
  {
    [*(*(a1 + 96) + 8) _sizeForHeaderInSection:a2];
    v7 = v6;
    v8 = *(a1 + 112);
    if (v8 < -1.0)
    {
      v8 = -v8;
    }

    v9 = v8;
    v10 = (v7 - v9);
    *(a1 + 104) = v5;
    *(a1 + 112) = v7;
    v11 = *(a1 + 32);
    if (*(*(a1 + 96) + 72))
    {
      if (v11)
      {
        memset_pattern16(*(a1 + 144), &xmmword_18A678720, 8 * v11);
      }
    }

    else if (v11)
    {
      v12 = *(a1 + 144);
      do
      {
        *v12 = *v12 + v10;
        ++v12;
        --v11;
      }

      while (v11);
    }

    [(UISectionRowData *)a1 updateSectionHeightWithDelta:a2 section:1 updateFooterOffset:v10];
  }

  return [(UISectionRowData *)a1 headerSize];
}

- (double)heightForFooterInSection:(char)a3 canGuess:
{
  if (!a1)
  {
    return 0.0;
  }

  if ((a3 & 1) == 0 && *(a1 + 120) < -1.0)
  {
    [*(*(a1 + 96) + 8) _heightForFooterInSection:a2];
    v6 = v5;
    v7 = *(a1 + 120);
    if (v7 < -1.0)
    {
      v7 = -v7;
    }

    v8 = v7;
    *(a1 + 120) = v6;
    [(UISectionRowData *)a1 updateSectionHeightWithDelta:a2 section:0 updateFooterOffset:(v6 - v8)];
  }

  result = *(a1 + 120);
  if (result < -1.0)
  {
    return -result;
  }

  return result;
}

- (void)heightForEmptySection:(uint64_t)a1 inTableView:(void *)a2 rowData:(void *)a3
{
  if ([a2 _tableStyle])
  {
    if (a1)
    {
      [a2 sectionHeaderHeight];
      if (v6 == -1.0)
      {

        [a2 _defaultSectionHeaderHeight];
      }
    }

    else
    {
      v11 = GroupedTableOffsetFromTop(a2, a3);
      if (a3)
      {
        *(a3 + 19) = v11;
      }
    }
  }

  else
  {
    [a2 sectionHeaderHeight];
    if (v7 == -1.0)
    {
      v8 = [a2 _constants];
      v9 = v8;
      if (a1)
      {
        [v8 defaultSectionHeaderHeightForTableView:a2];
      }

      else
      {
        [v8 defaultPlainFirstSectionHeaderHeightForTableView:a2];
      }

      v12 = v10;
      v13 = [a2 _scrollView];
      [v13 _currentScreenScale];
      UIPixelBoundaryOffset(1, v12, v14);
    }
  }
}

- (void)refreshWithSection:(void *)a3 tableView:(uint64_t)a4 tableViewRowData:
{
  v166 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  *(a4 + 72) = [a3 _estimatesHeights];
  [a3 _sectionContentInset];
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  v142 = [a3 _constants];
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v12 = [(UITableViewRowData *)a4 fullContentWidth];
  v143 = [a3 _shouldHaveHeaderViewForSection:a2];
  if (v143)
  {
    v13 = [a3 _sectionHeadersHugContent];
    v14 = -v12;
    if (!v13)
    {
      v14 = v12;
    }

    *(a1 + 104) = v14;
    *(a1 + 64) = [a3 _titleAlignmentForHeaderInSection:a2];
    [a3 _maxTitleWidthForHeaderInSection:a2];
    *(a1 + 80) = v15;
    *(a1 + 112) = 0xBFF0000000000000;
    if ([a3 _estimatesSectionHeaderHeights])
    {
      [a3 _estimatedHeightForHeaderInSection:a2];
      if (v16 == -1.0)
      {
        [a3 _defaultSectionHeaderHeight];
      }

      v17 = -v16;
    }

    else
    {
      [a3 _dataSourceHeightForHeaderInSection:a2];
      v17 = v18;
    }

    *(a1 + 112) = v17;
    if (v17 != -1.0)
    {
      goto LABEL_22;
    }

    if (!a2)
    {
      *(a4 + 152) = 0;
    }

    v19 = [a3 _tableStyle];
    if (v19 <= 0x10 && ((1 << v19) & 0x10006) != 0)
    {
      v20 = [a3 _titleForHeaderInSection:a2];
      v21 = v20;
      if (v20 && [v20 length])
      {
        v22 = [a3 _detailTextForHeaderInSection:a2];
        v17 = -[UISectionRowData _headerFooterSizeForSection:inTable:withTitle:detailText:isHeader:stripPaddingForAbuttingView:isTopHeader:](a1, a2, a3, v21, v22, 1, [*(a4 + 8) _shouldStripHeaderTopPaddingForSection:a2], a2 == 0);

        if (v17 != 0.0)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    [UISectionRowData heightForEmptySection:a2 inTableView:a3 rowData:a4];
    v17 = v23;
LABEL_21:
    *(a1 + 112) = v17;
LABEL_22:
    if (v17 >= -1.0 && v17 < 0.0)
    {
      v135 = [MEMORY[0x1E696AAA8] currentHandler];
      v136 = v135;
      v137 = *(a1 + 112);
      if (v137 < -1.0)
      {
        v137 = -v137;
      }

      [v135 handleFailureInMethod:sel_refreshWithSection_tableView_tableViewRowData_ object:a1 file:@"UITableViewRowData.m" lineNumber:568 description:{@"section header height must not be negative - provided height for section %ld is %f", a2, *&v137}];
    }
  }

  v24 = *(a1 + 112);
  if (v24 >= -1.0 && v24 == 0.0)
  {
    v25 = [a3 _tableStyle];
    if (v25 <= 0x10 && ((1 << v25) & 0x10006) != 0)
    {
      [UISectionRowData heightForEmptySection:a2 inTableView:a3 rowData:a4];
      *(a1 + 104) = v12;
      *(a1 + 112) = v26;
    }
  }

  *(a1 + 120) = 0;
  v27 = [a3 _shouldHaveFooterViewForSection:a2];
  if (v27)
  {
    *(a1 + 72) = [a3 _titleAlignmentForFooterInSection:a2];
    [a3 _maxTitleWidthForFooterInSection:a2];
    *(a1 + 88) = v28;
    *(a1 + 120) = 0xBFF0000000000000;
    if ([a3 _estimatesSectionFooterHeights])
    {
      [a3 _estimatedHeightForFooterInSection:a2];
      if (v29 == -1.0)
      {
        [a3 _defaultSectionFooterHeight];
      }

      v30 = -v29;
    }

    else
    {
      [a3 _dataSourceHeightForFooterInSection:a2];
      v30 = v31;
    }

    *(a1 + 120) = v30;
    if (v30 != -1.0)
    {
      goto LABEL_67;
    }

    if (*(a4 + 64) - 1 == a2)
    {
      *(a4 + 160) = 0;
    }

    v32 = [a3 _tableStyle];
    if (v32 <= 0x10 && ((1 << v32) & 0x10006) != 0)
    {
      v33 = [a3 _titleForFooterInSection:a2];
      v34 = v33;
      if (v33 && [v33 length])
      {
        v35 = [(UISectionRowData *)a1 _headerFooterSizeForSection:a2 inTable:a3 withTitle:v34 detailText:0 isHeader:0 stripPaddingForAbuttingView:0 isTopHeader:0];
        v30 = v35;
        if (*(a4 + 64) - 1 == a2 && v35 > 0.0)
        {
          v36 = a3;
          v37 = a4;
          [v36 _bottomPadding];
          v39 = v38;
          if (v38 == -1.0)
          {
            v39 = 0.0;
            if ([(UITableViewRowData *)v37 heightForTableFooterView]<= 0.0)
            {
              v40 = +[UIDevice currentDevice];
              v141 = [v40 userInterfaceIdiom];

              v39 = 20.0;
              if ((v141 & 0xFFFFFFFFFFFFFFFBLL) == 1)
              {
                if ([v36 usesVariableMargins])
                {
                  v39 = 40.0;
                }

                else
                {
                  v39 = 20.0;
                }
              }
            }
          }

          v37[20] = v39;
        }

        if (v30 != 0.0)
        {
          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    [a3 sectionFooterHeight];
    v30 = v41;
    v42 = [a3 _tableStyle];
    if (v42 <= 0x10 && ((1 << v42) & 0x10006) != 0 && *(a4 + 64) - 1 == a2)
    {
      v43 = a3;
      v44 = a4;
      [v43 _bottomPadding];
      v46 = v45;
      if (v45 == -1.0)
      {
        v46 = 0.0;
        if ([(UITableViewRowData *)v44 heightForTableFooterView]<= 0.0)
        {
          v47 = +[UIDevice currentDevice];
          v48 = [v47 userInterfaceIdiom];

          v46 = 20.0;
          if ((v48 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            if ([v43 usesVariableMargins])
            {
              v46 = 40.0;
            }

            else
            {
              v46 = 20.0;
            }
          }
        }
      }

      v44[20] = v46;
    }

LABEL_64:
    if (v30 == -1.0)
    {
      [a3 _defaultSectionFooterHeight];
      v30 = v49;
    }

    *(a1 + 120) = v30;
LABEL_67:
    if (v30 >= -1.0 && v30 < 0.0)
    {
      v138 = [MEMORY[0x1E696AAA8] currentHandler];
      v139 = v138;
      v140 = *(a1 + 120);
      if (v140 < -1.0)
      {
        v140 = -v140;
      }

      [v138 handleFailureInMethod:sel_refreshWithSection_tableView_tableViewRowData_ object:a1 file:@"UITableViewRowData.m" lineNumber:595 description:{@"section footer height must not be negative - provided height for section %ld is %f", a2, *&v140}];
    }
  }

  v50 = *(a1 + 120);
  if (v50 >= -1.0 && v50 == 0.0)
  {
    v51 = [a3 _tableStyle];
    if (v51 <= 0x10 && ((1 << v51) & 0x10006) != 0)
    {
      [a3 sectionFooterHeight];
      v53 = v52;
      if (v52 == -1.0)
      {
        +[UITableViewHeaderFooterView defaultFooterHeightForStyle:](UITableViewHeaderFooterView, "defaultFooterHeightForStyle:", [*(*(a1 + 96) + 8) _tableStyle]);
        v55 = v54;
        v56 = [*(*(a1 + 96) + 8) _scrollView];
        [v56 _currentScreenScale];
        v53 = UIPixelBoundaryOffset(0, v55, v57);
      }

      *(a1 + 120) = v53;
      if (*(a4 + 64) - 1 == a2)
      {
        v58 = a3;
        v59 = a4;
        [v58 _bottomPadding];
        v61 = v60;
        if (v60 == -1.0)
        {
          v61 = 0.0;
          if ([(UITableViewRowData *)v59 heightForTableFooterView]<= 0.0)
          {
            v62 = +[UIDevice currentDevice];
            v63 = [v62 userInterfaceIdiom];

            v61 = 20.0;
            if ((v63 & 0xFFFFFFFFFFFFFFFBLL) == 1)
            {
              if ([v58 usesVariableMargins])
              {
                v61 = 40.0;
              }

              else
              {
                v61 = 20.0;
              }
            }
          }
        }

        v59[20] = v61;
      }
    }
  }

  v64 = [a3 _estimatesRowHeights];
  v65 = [a3 _numberOfRowsInSection:a2];
  *(a1 + 32) = v65;
  v68 = *(a1 + 128);
  v67 = *(a1 + 136);
  if (v67)
  {
    v69 = v68 == 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = !v69;
  v71 = 0.0;
  if (v65 <= v68)
  {
    v74 = 0;
    v75 = 0.0;
  }

  else
  {
    v72 = v65;
    if ((v64 & v70) == 1)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0.0;
      LODWORD(v66) = 1.0;
      do
      {
        v76 = *(v67 + 4 * v73);
        if (v76 > 1.0)
        {
          ++v74;
          v75 = v75 + v76;
        }

        v73 += (v68 / 0x3E8 + 1);
      }

      while (v68 > v73);
      if (v74)
      {
        v77 = [a3 _scrollView];
        UIRoundToViewScale(v77);
        v79 = v78;

        if (v79 > 1.0 || v79 <= 0.0)
        {
          v75 = v79;
        }

        else
        {
          v75 = 2.0;
        }

        v72 = *(a1 + 32);
      }
    }

    else
    {
      v74 = 0;
      v75 = 0.0;
    }

    [(UISectionRowData *)a1 allocateArraysWithCapacity:v72 forSection:a2];
    LOBYTE(v70) = 0;
  }

  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  if (v143)
  {
    if (a2)
    {
      [a3 _paddingAboveSectionHeaders];
    }

    else
    {
      [a3 _paddingAboveFirstSectionHeader];
    }

    v71 = v81 + v161[3];
    v161[3] = v71;
  }

  *(a1 + 48) = v71;
  if (([a3 overlapsSectionHeaderViews] & 1) == 0)
  {
    v82 = *(a1 + 112);
    if (v82 < -1.0)
    {
      v82 = -v82;
    }

    v161[3] = v161[3] + v82;
  }

  if (v143)
  {
    [a3 _sectionHeaderToFirstRowPadding];
    v161[3] = v83 + v161[3];
  }

  [a3 rowHeight];
  v85 = v84;
  v86 = dyld_program_sdk_at_least();
  v87 = v85 != -1.0 && v85 < 0.0;
  if (v86)
  {
    if (!v87)
    {
      goto LABEL_124;
    }

    v88 = [MEMORY[0x1E696AAA8] currentHandler];
    [v88 handleFailureInMethod:sel_refreshWithSection_tableView_tableViewRowData_ object:a1 file:@"UITableViewRowData.m" lineNumber:654 description:@"Invalid table view rowHeight (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", *&v85];
  }

  else
  {
    if (!v87)
    {
      goto LABEL_124;
    }

    v88 = *(__UILogGetCategoryCachedImpl("Assert", &refreshWithSection_tableView_tableViewRowData____s_category) + 8);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v165 = v85;
      _os_log_impl(&dword_188A29000, v88, OS_LOG_TYPE_ERROR, "Invalid table view rowHeight (%g). Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
    }
  }

LABEL_124:
  [v142 defaultRowHeightForTableView:a3];
  v90 = v89;
  if (v89 < 0.0)
  {
    v134 = [MEMORY[0x1E696AAA8] currentHandler];
    [v134 handleFailureInMethod:sel_refreshWithSection_tableView_tableViewRowData_ object:a1 file:@"UITableViewRowData.m" lineNumber:656 description:{@"UITableView internal inconsistency: default row height (%g) cannot be negative.", *&v90}];
  }

  v91 = [v142 defaultRowHeightDependsOnCellStyle];
  v92 = v91;
  if (a4)
  {
    v93 = *(a4 + 144);
  }

  else
  {
    v93 = 0.0;
  }

  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v145 = __66__UISectionRowData_refreshWithSection_tableView_tableViewRowData___block_invoke;
  v146 = &unk_1E71239C8;
  v149 = a2;
  v150 = a3;
  v158 = v70;
  v157 = v74;
  v151 = v75;
  v152 = v85;
  v153 = v90;
  v159 = v91;
  v154 = sel_refreshWithSection_tableView_tableViewRowData_;
  v147 = a1;
  v148 = &v160;
  v155 = v93;
  v156 = a4;
  if (v64)
  {
    __66__UISectionRowData_refreshWithSection_tableView_tableViewRowData___block_invoke(v144, 1);
LABEL_132:
    v94 = *(a1 + 32);
    if (!v94)
    {
      goto LABEL_170;
    }

    v95 = *(a1 + 136);
    goto LABEL_152;
  }

  if ([a3 _providesRowHeights])
  {
    v145(v144, 0);
    goto LABEL_132;
  }

  v96 = v85;
  v97 = v90;
  if (v96 == -1.0)
  {
    v98 = v90;
  }

  else
  {
    v98 = v85;
  }

  if (a4 && *(a4 + 136) > v98)
  {
    *(a4 + 136) = v98;
  }

  v94 = *(a1 + 32);
  if (v94)
  {
    v99 = 0;
    v100 = -v98;
    if (v92)
    {
      v97 = v100;
    }

    if (v96 == -1.0)
    {
      v96 = v97;
    }

    v95 = *(a1 + 136);
    v101 = *(a1 + 144);
    v102 = -v96;
    if (v96 >= -1.0)
    {
      v102 = v96;
    }

    v103 = v102;
    do
    {
      v95[v99] = v96;
      if (*(*(a1 + 96) + 72))
      {
        v104 = 0x7FEFFFFFFFFFFFFFLL;
      }

      else
      {
        v104 = *(v161 + 3);
      }

      *(v101 + 8 * v99) = v104;
      v161[3] = v93 + v161[3] + v103;
      ++v99;
    }

    while (v94 != v99);
LABEL_152:
    v105 = *(a1 + 96);
    v106 = *(v105 + 32);
    v107 = *(v105 + 48);
    v108 = *v95;
    v109 = v106 + v108;
    *&v108 = v106 - v108;
    v110 = -*&v108;
    if (*v95 >= -1.0)
    {
      v110 = v109;
    }

    *v95 = v110;
    v111 = v94 - 1;
    if (v94 != 1 && (*(*(a1 + 96) + 72) & 1) == 0)
    {
      v112 = (*(a1 + 144) + 8);
      do
      {
        *v112 = v106 + *v112;
        ++v112;
        --v111;
      }

      while (v111);
    }

    v161[3] = v106 + v161[3];
    if (a4)
    {
      v113 = -v110;
      if (v110 >= -1.0)
      {
        v113 = v110;
      }

      v114 = v113;
      if (*(a4 + 136) > v114)
      {
        *(a4 + 136) = v114;
      }
    }

    v115 = &v95[v94];
    v116 = *(v115 - 1);
    v117 = v116 < -1.0;
    v118 = v116;
    v119 = v107 + v118;
    *&v118 = v107 - v118;
    v120 = -*&v118;
    if (!v117)
    {
      v120 = v119;
    }

    *(v115 - 1) = v120;
    v161[3] = v107 + v161[3];
    if (a4)
    {
      v121 = -v120;
      if (v120 >= -1.0)
      {
        v121 = v120;
      }

      v122 = v121;
      if (*(a4 + 136) > v122)
      {
        *(a4 + 136) = v122;
      }
    }
  }

LABEL_170:
  if (((v27 | v143 ^ 1) & 1) != 0 || [a3 _tableStyle])
  {
    if (!v27)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  if (*(a1 + 48) == 0.0)
  {
LABEL_175:
    [a3 _sectionFooterToLastRowPadding];
    v161[3] = v123 + v161[3];
  }

LABEL_176:
  v124 = v161;
  v125 = v161[3];
  *(a1 + 56) = v125;
  v126 = *(a1 + 120);
  if (v126 < -1.0)
  {
    v126 = -v126;
  }

  v127 = v125 + v126;
  if (v27)
  {
    v127 = v93 + v127;
  }

  v124[3] = v127;
  *(a1 + 40) = v127;
  *(a1 + 8) = 1;
  if (a4)
  {
    v128 = *(a4 + 184);
    v129 = v128;
    if (v128 && [v128 section] == a2)
    {
      v130 = [v129 row];
      [(UISectionRowData *)a1 deleteRowAtIndex:v130, v131];
    }

    v132 = *(a4 + 176);
    v133 = v132;
    if (v132)
    {
      if ([v132 section] == a2)
      {
        -[UISectionRowData addOffset:fromRow:](a1, [v133 row], *(a4 + 216));
      }
    }
  }

  else
  {
    v133 = 0;
    v129 = 0;
  }

  _Block_object_dispose(&v160, 8);
}

void __66__UISectionRowData_refreshWithSection_tableView_tableViewRowData___block_invoke(uint64_t a1, char a2)
{
  if (*(*(a1 + 32) + 32))
  {
    v4 = 0;
    while (1)
    {
      v5 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:*(a1 + 48)];
      v6 = *(a1 + 56);
      if (a2)
      {
        break;
      }

      [v6 _dataSourceHeightForRowAtIndexPath:v5];
      v8 = v10;
      if (v8 == -1.0)
      {
        v8 = *(a1 + 72);
        if (v8 == -1.0)
        {
          v8 = *(a1 + 80);
          if (*(a1 + 117) == 1)
          {
            goto LABEL_24;
          }
        }
      }

      a2 = 0;
LABEL_25:
      *(*(*(a1 + 32) + 136) + 4 * v4) = v8;
      v12 = *(a1 + 32);
      v13 = *(v12[17] + 4 * v4);
      if (v13 < -1.0)
      {
        v13 = -v13;
      }

      v14 = v13;
      if (v13 < 0.0)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"UITableViewRowData.m" lineNumber:699 description:{@"table view row height must not be negative - height for index path (%@) is %g", v5, *&v14}];

        v12 = *(a1 + 32);
      }

      if (*(v12[12] + 72))
      {
        v15 = 0x7FEFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = *(*(*(a1 + 40) + 8) + 24);
      }

      *(v12[18] + 8 * v4) = v15;
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v14;
      *(*(*(a1 + 40) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 40) + 8) + 24);
      v16 = *(a1 + 104);
      if (v16)
      {
        if (*(v16 + 136) > v14)
        {
          *(v16 + 136) = v14;
        }
      }

      if (*(*(a1 + 32) + 32) <= ++v4)
      {
        return;
      }
    }

    [v6 _estimatedHeightForRowAtIndexPath:v5];
    v8 = v7;
    if (v8 == -1.0)
    {
      if (*(a1 + 116) == 1)
      {
        v8 = *(*(*(a1 + 32) + 136) + 4 * v4);
        if (v8 != 0.0)
        {
          if (v8 < -1.0)
          {
            v8 = -v8;
          }

          if (v8 <= 1.0 && v8 > 0.0)
          {
            v8 = 2.0;
          }

          goto LABEL_24;
        }
      }

      if (*(a1 + 112) >= 1)
      {
        v11 = *(a1 + 64);
LABEL_23:
        v8 = v11;
        goto LABEL_24;
      }

      v8 = *(a1 + 72);
      if (v8 == -1.0)
      {
        v11 = *(a1 + 80);
        goto LABEL_23;
      }
    }

LABEL_24:
    v8 = -v8;
    a2 = 1;
    goto LABEL_25;
  }
}

- (double)deleteRowAtIndex:(double)result
{
  if (a1)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      v4 = *(v3 + 144);
    }

    else
    {
      v4 = 0.0;
    }

    v5 = *(a1 + 136);
    v6 = *(v5 + 4 * a2);
    if (v6 < -1.0)
    {
      v6 = -v6;
    }

    v7 = v4 + v6;
    *(a1 + 40) = *(a1 + 40) - v7;
    v8 = *(a1 + 32);
    if (a2 + 1 < v8)
    {
      v9 = ~a2 + v8;
      v10 = (*(a1 + 144) + 8 * a2 + 8);
      v11 = (v5 + 4 * a2 + 4);
      do
      {
        *(v11 - 1) = *v11;
        if (*(*(a1 + 96) + 72))
        {
          v12 = 1.79769313e308;
        }

        else
        {
          v12 = *v10 - v7;
        }

        *(v10++ - 1) = v12;
        ++v11;
        --v9;
      }

      while (v9);
    }

    result = *(a1 + 56) - v7;
    *(a1 + 56) = result;
    *(a1 + 32) = v8 - 1;
  }

  return result;
}

- (double)insertRowAtIndex:(uint64_t)a3 inSection:(uint64_t)a4 rowHeight:(double)result tableViewRowData:
{
  if (!a1)
  {
    return result;
  }

  v6 = result;
  if (a2 < 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:sel_insertRowAtIndex_inSection_rowHeight_tableViewRowData_ object:a1 file:@"UITableViewRowData.m" lineNumber:817 description:{@"Attempted to insert an out-of-bounds row %ld in section %ld", a2, a3}];

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_42:
    v10 = 0.0;
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_42;
  }

LABEL_4:
  v10 = *(a4 + 144);
LABEL_5:
  v11 = *(a1 + 32);
  *(a1 + 32) = v11 + 1;
  if ((v11 + 1) > *(a1 + 128))
  {
    [(UISectionRowData *)a1 allocateArraysWithCapacity:a3 forSection:?];
  }

  v12 = v11 - a2;
  if (v11 - a2 < 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:sel_insertRowAtIndex_inSection_rowHeight_tableViewRowData_ object:a1 file:@"UITableViewRowData.m" lineNumber:829 description:{@"Attempted to insert an out-of-bounds row %ld in section %ld", a2, a3}];
  }

  v13 = a2 + 1;
  memmove((*(a1 + 136) + 4 * (a2 + 1)), (*(a1 + 136) + 4 * a2), 4 * v12);
  if ((*(*(a1 + 96) + 72) & 1) == 0)
  {
    memmove((*(a1 + 144) + 8 * v13), (*(a1 + 144) + 8 * a2), 8 * v12);
  }

  v14 = v6;
  v15 = *(a1 + 136);
  *(v15 + 4 * a2) = v14;
  v16 = -v14;
  if (v14 >= -1.0)
  {
    v17 = v14;
  }

  else
  {
    v17 = -v14;
  }

  if (a4)
  {
    v18 = v17;
    if (*(a4 + 136) > v18)
    {
      *(a4 + 136) = v18;
    }
  }

  v19 = *(a1 + 96);
  if (*(v19 + 72) == 1)
  {
    v20 = *(a1 + 32);
    v21 = v20 > a2;
    v22 = v20 - a2;
    if (v21)
    {
      memset_pattern16((*(a1 + 144) + 8 * a2), &xmmword_18A678720, 8 * v22);
    }
  }

  else
  {
    v23 = a2 - 1;
    if (a2 < 1)
    {
      v27 = *(a1 + 112);
      if (v27 < -1.0)
      {
        v27 = -v27;
      }

      v26 = *(a1 + 48) + v27;
      if (v27 > 0.0)
      {
        [*(v19 + 8) _sectionHeaderToFirstRowPadding];
        v26 = v26 + v28;
        v14 = *(*(a1 + 136) + 4 * a2);
      }

      v24 = *(a1 + 144);
    }

    else
    {
      v24 = *(a1 + 144);
      v25 = *(v15 + 4 * v23);
      if (v25 < -1.0)
      {
        v25 = -v25;
      }

      v26 = v10 + *(v24 + 8 * v23) + v25;
    }

    *(v24 + 8 * a2) = v26;
    v29 = *(a1 + 32);
    v16 = -v14;
    if (v13 < v29)
    {
      if (v14 >= -1.0)
      {
        v30 = v14;
      }

      else
      {
        v30 = -v14;
      }

      v31 = v10 + v30;
      v32 = ~a2 + v29;
      v33 = (v24 + 8 * a2 + 8);
      do
      {
        *v33 = v31 + *v33;
        ++v33;
        --v32;
      }

      while (v32);
    }
  }

  if (v14 >= -1.0)
  {
    v34 = v14;
  }

  else
  {
    v34 = v16;
  }

  v35 = v10 + v34;
  *(a1 + 56) = *(a1 + 56) + v35;
  result = *(a1 + 40) + v35;
  *(a1 + 40) = result;
  return result;
}

- (double)offsetForRow:(char)a3 adjustedForGap:
{
  v3 = 0.0;
  if (!a1)
  {
    return v3;
  }

  v5 = *(a1 + 144);
  if (!v5)
  {
    return v3;
  }

  v7 = *(a1 + 96);
  if (*(v7 + 72) != 1)
  {
    return *(v5 + 8 * a2);
  }

  v9 = a2;
  if (a2 < 0)
  {
    goto LABEL_11;
  }

  v9 = a2;
  while (*(v5 + 8 * v9) == 1.79769313e308)
  {
    if (v9-- <= 0)
    {
      v9 = -1;
      break;
    }
  }

  if (v7)
  {
LABEL_11:
    v11 = *(v7 + 144);
    v12 = *(v7 + 64);
    if (v12 < 1)
    {
LABEL_15:
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = 0;
      while (*(*(v7 + 88) + 8 * v13) != a1)
      {
        if (v12 == ++v13)
        {
          goto LABEL_15;
        }
      }
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v14 = *(a1 + 112);
    if (v14 < -1.0)
    {
      v14 = -v14;
    }

    v3 = *(a1 + 48) + v14;
    if (v14 > 0.0)
    {
      [*(v7 + 8) _sectionHeaderToFirstRowPadding];
      v3 = v3 + v15;
    }

    goto LABEL_24;
  }

  v13 = 0;
  v11 = 0.0;
  if (v9 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v3 = *(v5 + 8 * v9);
LABEL_24:
  if (v9 < a2)
  {
    v16 = *(a1 + 144) + 8;
    do
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        v17 = *(*(a1 + 136) + 4 * v9);
        if (v17 < -1.0)
        {
          v17 = -v17;
        }

        v3 = v11 + v3 + v17;
      }

      *(v16 + 8 * v9++) = v3;
    }

    while (a2 != v9);
  }

  if (a3)
  {
    v18 = *(a1 + 96);
    if (v18)
    {
      v19 = *(v18 + 176);
      v20 = v19;
      if (v19 && v13 == [v19 section] && objc_msgSend(v20, "row") <= a2)
      {
        v21 = *(a1 + 96);
        if (v21)
        {
          v22 = *(v21 + 216);
        }

        else
        {
          v22 = 0.0;
        }

        v3 = v3 + v11 + v22;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v3;
}

+ (uint64_t)sectionLocationForRow:(uint64_t)a3 inSection:(uint64_t)a4 numRows:(uint64_t)a5 gapIndexPath:(void *)a6 rowSpacing:
{
  v10 = a6;
  objc_opt_self();
  if (a1 > 0.0)
  {
    v11 = 4;
    goto LABEL_17;
  }

  if (!v10 || [v10 section] != a4)
  {
    objc_opt_self();
    v12 = a5 - 1 == a3;
    goto LABEL_8;
  }

  if ([v10 row] > a3)
  {
    objc_opt_self();
    v12 = a5 == a3;
LABEL_8:
    if (v12)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    if (a3)
    {
      v11 = v14;
    }

    else
    {
      v11 = v13;
    }

    goto LABEL_17;
  }

  if (a3 + 1 == a5)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (a3 + 1 == a5)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  if (a3 == -1)
  {
    v11 = v16;
  }

  else
  {
    v11 = v17;
  }

  objc_opt_self();
LABEL_17:

  return v11;
}

- (uint64_t)_rowForPoint:(int64_t)a3 beginningWithRow:(double)a4 numberOfRows:(double)a5 extraHitSpaceBetweenRows:(double)a6
{
  *&v22 = a4;
  if (result)
  {
    v6 = result;
    if (!*(result + 32))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = a5 - [(UITableViewRowData *)*(result + 96) offsetForSection:?];
    *(&v22 + 1) = v10;
    v11 = [(UISectionRowData *)v6 offsetForRow:a2 adjustedForGap:0];
    if (v10 < v11 || v10 > *(v6 + 40))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3 != 1)
    {
      v12 = *(v6 + 96);
      if (*(v12 + 72) != 1)
      {
        v17 = (*(v6 + 144) + 8 * a2);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __88__UISectionRowData__rowForPoint_beginningWithRow_numberOfRows_extraHitSpaceBetweenRows___block_invoke;
        v19[3] = &unk_1E71239F0;
        v19[4] = v6;
        v20 = v22;
        v21 = a6;
        v18 = bsearch_b(&v22 + 8, v17, a3, 8uLL, v19);
        if (v18)
        {
          return (v18 - *(v6 + 144)) >> 3;
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }

      if (a3 < 1)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v13 = *(v12 + 144);
      v14 = a3 + a2;
      result = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v15 = *(*(v6 + 136) + 4 * a2);
        if (v15 < -1.0)
        {
          v15 = -v15;
        }

        v16 = v15;
        if (v10 < v11 + v16 + a6)
        {
          break;
        }

        v11 = v11 + v13 + v16;
        if (++a2 >= v14)
        {
          return result;
        }
      }
    }

    return a2;
  }

  return result;
}

uint64_t __88__UISectionRowData__rowForPoint_beginningWithRow_numberOfRows_extraHitSpaceBetweenRows___block_invoke(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a1 + 48);
  if (v3 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(*(a1 + 32) + 136) + ((a3 - *(*(a1 + 32) + 144)) >> 1));
  if (v5 < -1.0)
  {
    v5 = -v5;
  }

  return v3 >= *(a1 + 56) + *a3 + v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISectionRowData alloc];
  if (v4)
  {
    rowData = self->_rowData;
    v12.receiver = v4;
    v12.super_class = UISectionRowData;
    v6 = [(UISectionRowData *)&v12 init];
    v7 = v6;
    if (v6)
    {
      v6->_rowData = rowData;
    }
  }

  else
  {
    v7 = 0;
  }

  v7->_valid = self->_valid;
  v7->_headerSize = self->_headerSize;
  v7->_footerHeight = self->_footerHeight;
  v7->_headerOffset = self->_headerOffset;
  v7->_footerOffset = self->_footerOffset;
  v7->_numRows = self->_numRows;
  arrayLength = self->_arrayLength;
  v7->_arrayLength = arrayLength;
  v9 = malloc_type_malloc(4 * arrayLength, 0x100004052888210uLL);
  v7->_rowHeights = v9;
  memcpy(v9, self->_rowHeights, 4 * self->_arrayLength);
  v10 = malloc_type_malloc(8 * self->_arrayLength, 0x100004000313F17uLL);
  v7->_rowOffsets = v10;
  memcpy(v10, self->_rowOffsets, 8 * self->_arrayLength);
  v7->_sectionHeight = self->_sectionHeight;
  v7->_sectionOffset = self->_sectionOffset;
  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"{ "];
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"{ "];
  if (self->_numRows)
  {
    v5 = 0;
    do
    {
      v6 = self->_rowHeights[v5];
      if (v6 >= -1.0)
      {
        v7 = &stru_1EFB14550;
      }

      else
      {
        v7 = @"e";
      }

      if (v6 < -1.0)
      {
        v6 = -v6;
      }

      [v3 appendFormat:@"%@%g", v7, v6];
      [v4 appendFormat:@"%g", -[UISectionRowData offsetForRow:adjustedForGap:](self, v5, 1)];
      numRows = self->_numRows;
      if (v5 < numRows - 1)
      {
        [v3 appendString:{@", "}];
        [v4 appendString:{@", "}];
        numRows = self->_numRows;
      }

      ++v5;
    }

    while (v5 < numRows);
  }

  [v3 appendString:@" }"];
  [v4 appendString:@" }"];
  height = self->_headerSize.height;
  if (height >= -1.0)
  {
    v10 = &stru_1EFB14550;
  }

  else
  {
    v10 = @"e";
  }

  if (height < -1.0)
  {
    height = -height;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%g", v10, *&height];
  footerHeight = self->_footerHeight;
  if (footerHeight >= -1.0)
  {
    v13 = &stru_1EFB14550;
  }

  else
  {
    v13 = @"e";
  }

  if (footerHeight < -1.0)
  {
    footerHeight = -footerHeight;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%g", v13, *&footerHeight];
  v15 = MEMORY[0x1E696AEC0];
  v20.receiver = self;
  v20.super_class = UISectionRowData;
  v16 = [(UISectionRowData *)&v20 description];
  if (self->_valid)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v15 stringWithFormat:@"%@ valid: %@ section height: %g; section offset: %g; header height: %@; footer height: %@; header offset: %g; footer offset: %g; num rows: %ld; array length: %ld; row heights: %@ row offsets: %@", v16, v17, *&self->_sectionHeight, -[UITableViewRowData offsetForSection:](self->_rowData, self), v11, v14, *&self->_headerOffset, *&self->_footerOffset, self->_numRows, self->_arrayLength, v3, v4];;

  return v18;
}

@end