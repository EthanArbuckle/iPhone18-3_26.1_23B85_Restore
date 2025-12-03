@interface UITableViewRowData
- (double)floatingRectForFooterInSection:(char)section visibleRect:(_BYTE *)rect heightCanBeGuessed:(double *)guessed outIsFloating:(CGFloat)floating outVisibleRectDisplacement:(CGFloat)displacement;
- (double)floatingRectForHeaderInSection:(char)section visibleRect:(_BYTE *)rect heightCanBeGuessed:(double *)guessed outIsFloating:(CGFloat)floating outVisibleRectDisplacement:(double)displacement;
- (double)fullContentWidth;
- (double)heightForFooterInSection:(char)section canGuess:;
- (double)heightForHeaderInSection:(char)section canGuess:;
- (double)heightForRow:(uint64_t)row inSection:(char)section canGuess:(int)guess adjustForReorderedRow:;
- (double)heightForSection:(uint64_t)section;
- (double)heightForTable;
- (double)heightForTableFooterView;
- (double)heightForTableHeaderView;
- (double)heightForTableHeaderViewHiding;
- (double)indexPathsForRowsInRect:(CGFloat)rect;
- (double)maxFooterTitleWidthForSection:(uint64_t)section;
- (double)maxHeaderTitleWidthForSection:(uint64_t)section;
- (double)offsetForHeaderInSection:(uint64_t)section;
- (double)offsetForSection:(uint64_t)section;
- (double)rectForFooterInSection:(char)section heightCanBeGuessed:;
- (double)rectForGlobalRow:(char)row heightCanBeGuessed:;
- (double)rectForHeaderInSection:(char)section heightCanBeGuessed:;
- (double)rectForRow:(uint64_t)row inSection:(char)section heightCanBeGuessed:;
- (double)rectForSection:(uint64_t)section;
- (double)rectForTable;
- (double)rectForTableFooterView;
- (double)rectForTableHeaderView;
- (double)removeReorderedRowWithHeight:(double)height atIndexPath:;
- (id)_indexPathsBelowIndexPath:(uint64_t)path;
- (id)_nextIndexPathOrSectionHeader:(uint64_t)header;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)indexPathForRowAtGlobalRow:(void *)row;
- (id)indexPathsForRowsInRect:(CGFloat)rect extraHitSpaceBetweenRows:(CGFloat)rows;
- (id)targetIndexPathForPoint:(CGFloat)point adjustedForGap:(CGFloat)gap;
- (uint64_t)_sectionForPoint:(size_t)point beginningWithSection:(double)section numberOfSections:(CGFloat)sections;
- (uint64_t)_sectionRowForGlobalRow:(uint64_t *)row inSection:;
- (uint64_t)dropLocationForPoint:(double)point atIndexPath:(CGFloat)path withInsets:(double)insets;
- (uint64_t)ensureHeightsFaultedInForScrollToIndexPath:(double)path boundsHeight:;
- (uint64_t)footerAlignmentForSection:(uint64_t)result;
- (uint64_t)globalRowForRowAtIndexPath:(uint64_t)result;
- (uint64_t)globalRowsInRect:(CGFloat)rect canGuess:(CGFloat)guess;
- (uint64_t)hasHeaderForSection:(uint64_t)result;
- (uint64_t)hasRows;
- (uint64_t)headerAlignmentForSection:(uint64_t)result;
- (uint64_t)invalidateSection:(uint64_t)result;
- (uint64_t)numberOfRowsBeforeSection:(uint64_t)section;
- (uint64_t)numberOfRowsInSection:(uint64_t)section;
- (uint64_t)sectionLocationForReorderedRow:(uint64_t)row inSection:;
- (uint64_t)sectionLocationForRow:(uint64_t)row inSection:;
- (uint64_t)sectionsInRect:(CGFloat)rect;
- (void)_ensureSectionOffsetIsValidForSection:(uint64_t)section;
- (void)_updateSectionRowDataArrayForNumSections:(UITableViewRowData *)sections;
- (void)_updateTopAndBottomPadding;
- (void)addDropTargetGapAtIndexPath:(uint64_t)path;
- (void)addGapAtIndexPath:(uint64_t)path;
- (void)dealloc;
- (void)ensureAllSectionsAreValid;
- (void)initWithTableView:(void *)view;
- (void)invalidateAllSectionOffsetsAndUpdatePadding;
- (void)invalidateAllSections;
- (void)moveDropTargetGapToIndexPath:(uint64_t)path;
- (void)moveRowAtIndexPathFrom:(void *)from toIndexPath:;
- (void)numberOfRows;
- (void)removeGap;
- (void)restoreReorderedRowWithHeight:(double)height atIndexPath:;
- (void)setDraggedIndexPath:(uint64_t)path;
- (void)setHeight:(double)height forFooterInSection:;
- (void)setHeight:(double)height forHeaderInSection:;
- (void)setHeight:(double)height forRowAtIndexPath:;
- (void)setReorderedIndexPath:(uint64_t)path;
- (void)tableHeaderHeightDidChangeToHeight:(uint64_t)height;
- (void)temporarilyDeletedIndexPathBeingReordered;
@end

@implementation UITableViewRowData

- (void)invalidateAllSections
{
  if (self)
  {
    *(self + 128) &= 0xF8u;
    v6 = *(self + 8);
    [v6 _rowSpacing];
    *(self + 144) = v2;
    *(self + 120) = [v6 _headerFooterPinningBehavior];
    -[UITableViewRowData _updateSectionRowDataArrayForNumSections:](self, [*(self + 8) _numberOfSections]);
    v3 = *(self + 64);
    if (v3 >= 1)
    {
      v4 = *(self + 88);
      do
      {
        if (*v4)
        {
          *(*v4 + 8) = 0;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    *(self + 136) = 0x7FEFFFFFFFFFFFFFLL;
    v5 = *(self + 16);
    *(self + 16) = 0;

    if (dyld_program_sdk_at_least())
    {
      [(UITableViewRowData *)self _updateTopAndBottomPadding];
    }
  }
}

- (void)_updateTopAndBottomPadding
{
  if (self)
  {
    _tableStyle = [*(self + 8) _tableStyle];
    if (_tableStyle <= 0x10 && ((1 << _tableStyle) & 0x10006) != 0)
    {
      *(self + 152) = GroupedTableOffsetFromTop(*(self + 8), self);
      v4 = *(self + 8);
      selfCopy = self;
      [v4 _bottomPadding];
      v7 = v6;
      if (v6 == -1.0)
      {
        v7 = 0.0;
        if ([(UITableViewRowData *)selfCopy heightForTableFooterView]<= 0.0)
        {
          v8 = +[UIDevice currentDevice];
          userInterfaceIdiom = [v8 userInterfaceIdiom];

          v7 = 20.0;
          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            if ([v4 usesVariableMargins])
            {
              v7 = 40.0;
            }

            else
            {
              v7 = 20.0;
            }
          }
        }
      }

      selfCopy[20] = v7;
    }
  }
}

- (double)heightForTableHeaderView
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 128) & 1) == 0 && ((dyld_program_sdk_at_least() & 1) != 0 || [*(self + 8) _shouldUseNewHeaderFooterBehavior]))
  {
    [*(self + 8) _heightForTableHeader];
    *(self + 96) = v2;
    *(self + 128) |= 1u;
  }

  return *(self + 96);
}

- (double)heightForTable
{
  if (!self)
  {
    return 0.0;
  }

  v2 = *(self + 64);
  if (v2 < 1)
  {
    v6 = *(self + 152);
    v5 = v6 + [(UITableViewRowData *)self heightForTableHeaderView];
  }

  else
  {
    [(UITableViewRowData *)self rectForFooterInSection:1 heightCanBeGuessed:?];
    v5 = v3 + v4;
  }

  return v5 + [(UITableViewRowData *)self heightForTableFooterView]+ *(self + 160);
}

- (double)heightForTableFooterView
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 128) & 2) == 0 && ((dyld_program_sdk_at_least() & 1) != 0 || [*(self + 8) _shouldUseNewHeaderFooterBehavior]))
  {
    [*(self + 8) _heightForTableFooter];
    *(self + 104) = v2;
    *(self + 128) |= 2u;
  }

  return *(self + 104);
}

- (double)heightForTableHeaderViewHiding
{
  if (!self)
  {
    return 0.0;
  }

  heightForTableHeaderView = *(self + 112);
  if (heightForTableHeaderView < 0.0)
  {
    if ([*(self + 8) _isTableHeaderAutohiding])
    {
      heightForTableHeaderView = [(UITableViewRowData *)self heightForTableHeaderView];
    }
  }

  return fmax(heightForTableHeaderView, 0.0);
}

- (void)numberOfRows
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 64);
    v3 = v2 - 1;
    if (v2 < 1)
    {
      v5 = 0;
    }

    else
    {
      v4 = *(*(self + 88) + 8 * v3);
      if ((*(v4 + 8) & 1) == 0)
      {
        [(UISectionRowData *)*(*(self + 88) + 8 * v3) refreshWithSection:v3 tableView:*(self + 8) tableViewRowData:self];
      }

      if ((*(v4 + 9) & 1) == 0)
      {
        [(UITableViewRowData *)selfCopy _ensureSectionOffsetIsValidForSection:v3];
      }

      v5 = (*(v4 + 32) + *(v4 + 24));
    }

    temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)selfCopy temporarilyDeletedIndexPathBeingReordered];
    if (temporarilyDeletedIndexPathBeingReordered)
    {
      selfCopy = (v5 + 1);
    }

    else
    {
      selfCopy = v5;
    }
  }

  return selfCopy;
}

- (void)temporarilyDeletedIndexPathBeingReordered
{
  if (self)
  {
    v2 = self[23];
    if (!v2)
    {
      v2 = self[24];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)hasRows
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2 >= 1)
    {
      v3 = *(*(result + 88) + 8 * v2 - 8);
      if (*(v3 + 8) == 1 && *(v3 + 9) == 1)
      {
        if ((*(v3 + 32) + *(v3 + 24)) > 0)
        {
          return 1;
        }

        temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)result temporarilyDeletedIndexPathBeingReordered];

        if (temporarilyDeletedIndexPathBeingReordered)
        {
          return 1;
        }
      }

      else
      {
        _numberOfSections = [*(result + 8) _numberOfSections];
        if (_numberOfSections >= 1)
        {
          v6 = _numberOfSections;
          v7 = 0;
          while ([*(v1 + 8) _numberOfRowsInSection:v7] <= 0)
          {
            if (v6 == ++v7)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

- (double)fullContentWidth
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 8) _sectionHeaderContentInsets];
  v3 = v2;
  v5 = v4;
  _constants = [*(self + 8) _constants];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _constants2 = [*(self + 8) _constants];
    [_constants2 headerFooterOffsetFromContentInsetForTableView:*(self + 8)];
    v10 = v9;
    v12 = v11;

    v3 = v3 + v10;
    v5 = v5 + v12;
  }

  return *(self + 24) - (v5 + v3);
}

- (double)rectForTableHeaderView
{
  if (self)
  {
    if ([*(self + 8) _shouldUseNewHeaderFooterBehavior])
    {
      v2 = *(self + 152);
      v3 = *(self + 24);
      heightForTableHeaderView = [(UITableViewRowData *)self heightForTableHeaderView];
    }

    else
    {
      _tableHeaderView = [*(self + 8) _tableHeaderView];

      if (_tableHeaderView)
      {
        _tableHeaderView2 = [*(self + 8) _tableHeaderView];
        [_tableHeaderView2 frame];
        heightForTableHeaderView = v7;
      }

      else
      {
        heightForTableHeaderView = *(MEMORY[0x1E695F058] + 24);
      }

      v2 = *(self + 152);
      v3 = *(self + 24);
    }

    if ((*(self + 128) & 8) != 0)
    {
      _scrollView = [*(self + 8) _scrollView];
      [_scrollView bounds];
      CGRectGetMinY(v10);
      [*(self + 8) _contentInset];

      v11.origin.x = 0.0;
      v11.origin.y = v2;
      v11.size.width = v3;
      v11.size.height = heightForTableHeaderView;
      CGRectGetMinY(v11);
    }
  }

  return 0.0;
}

- (double)rectForTableFooterView
{
  v1 = 0.0;
  if (self)
  {
    if ([*(self + 8) _shouldUseNewHeaderFooterBehavior])
    {
      v3 = *(self + 64);
      if (v3 < 1)
      {
        [(UITableViewRowData *)self rectForTableHeaderView];
      }

      else
      {
        [(UITableViewRowData *)self rectForFooterInSection:1 heightCanBeGuessed:?];
      }

      [(UITableViewRowData *)self heightForTableFooterView];
    }

    else
    {
      _tableFooterView = [*(self + 8) _tableFooterView];
      v5 = _tableFooterView;
      if (_tableFooterView)
      {
        [_tableFooterView frame];
        v1 = v6;
      }

      else
      {
        v1 = *MEMORY[0x1E695F058];
      }

      v7 = *(self + 64);
      if (v7 < 1)
      {
        [(UITableViewRowData *)self rectForTableHeaderView];
      }

      else
      {
        [(UITableViewRowData *)self rectForFooterInSection:1 heightCanBeGuessed:?];
      }
    }
  }

  return v1;
}

- (void)invalidateAllSectionOffsetsAndUpdatePadding
{
  if (self)
  {
    [(UITableViewRowData *)self _updateSectionRowDataArrayForNumSections:?];
    numSections = self->_numSections;
    if (numSections >= 1)
    {
      sectionRowData = self->_sectionRowData;
      do
      {
        if (*sectionRowData)
        {
          *(*sectionRowData + 9) = 0;
        }

        ++sectionRowData;
        --numSections;
      }

      while (numSections);
    }

    [(UITableViewRowData *)self _updateTopAndBottomPadding];
  }
}

- (void)ensureAllSectionsAreValid
{
  if (self)
  {
    [(UITableViewRowData *)self _updateSectionRowDataArrayForNumSections:?];
    if (self->_numSections >= 1)
    {
      v2 = 0;
      do
      {
        v3 = self->_sectionRowData[v2];
        if ((v3[8] & 1) == 0)
        {
          [(UISectionRowData *)self->_sectionRowData[v2] refreshWithSection:v2 tableView:self->_tableView tableViewRowData:self];
        }

        if ((v3[9] & 1) == 0)
        {
          [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:v2];
        }

        ++v2;
      }

      while (v2 < self->_numSections);
    }
  }
}

- (double)rectForTable
{
  if (!self)
  {
    return 0.0;
  }

  if ([*(self + 8) _shouldUseNewHeaderFooterBehavior])
  {
    [(UITableViewRowData *)self rectForTableFooterView];
    return 0.0;
  }

  x = [(UITableViewRowData *)self rectForTableHeaderView];
  y = v3;
  width = v5;
  height = v7;
  if (*(self + 64) >= 1)
  {
    v9 = 0;
    do
    {
      v17.origin.x = [(UITableViewRowData *)self rectForSection:v9];
      v17.origin.y = v10;
      v17.size.width = v11;
      v17.size.height = v12;
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v16 = CGRectUnion(v15, v17);
      x = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
      ++v9;
    }

    while (v9 < *(self + 64));
  }

  _tableFooterView = [*(self + 8) _tableFooterView];

  if (_tableFooterView)
  {
    [(UITableViewRowData *)self heightForTableFooterView];
  }

  return x;
}

- (void)dealloc
{
  if (self->_numSections >= 1)
  {
    v3 = 0;
    do
    {
      sectionRowData = self->_sectionRowData;
      v5 = sectionRowData[v3];
      sectionRowData[v3] = 0;

      ++v3;
    }

    while (v3 < self->_numSections);
  }

  v6 = self->_sectionRowData;
  if (v6)
  {
    free(v6);
  }

  v7.receiver = self;
  v7.super_class = UITableViewRowData;
  [(UITableViewRowData *)&v7 dealloc];
}

- (double)offsetForSection:(uint64_t)section
{
  v2 = 0.0;
  if (section)
  {
    if (*(section + 72) == 1)
    {
      v5 = *(section + 152);
      v10.origin.x = [(UITableViewRowData *)section rectForTableHeaderView];
      Height = CGRectGetHeight(v10);
      v7 = *(section + 64);
      if (v7 < 1)
      {
LABEL_7:
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"request for offset of unknown section row data", Height}];
      }

      else
      {
        Height = v5 + Height;
        v8 = *(section + 88);
        while (*v8 != a2)
        {
          Height = Height + *(*v8 + 40);
          v8 += 8;
          if (!--v7)
          {
            goto LABEL_7;
          }
        }

        return Height;
      }
    }

    else
    {
      return *(a2 + 16);
    }
  }

  return v2;
}

- (void)initWithTableView:(void *)view
{
  v3 = a2;
  if (view)
  {
    v11.receiver = view;
    v11.super_class = UITableViewRowData;
    v4 = objc_msgSendSuper2(&v11, sel_init);
    view = v4;
    if (v4)
    {
      v4[1] = v3;
      _scrollView = [v3 _scrollView];
      [_scrollView bounds];
      view[3] = v6;

      view[17] = 0x7FEFFFFFFFFFFFFFLL;
      [v3 _heightForTableHeader];
      view[12] = v7;
      [v3 _heightForTableFooter];
      view[13] = v8;
      view[14] = 0xBFF0000000000000;
      [v3 _rowSpacing];
      view[18] = v9;
      view[15] = [v3 _headerFooterPinningBehavior];
    }
  }

  return view;
}

- (void)_updateSectionRowDataArrayForNumSections:(UITableViewRowData *)sections
{
  if (sections)
  {
    if (sections->_sectionRowDataCapacity < count)
    {
      v4 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
      v5 = v4;
      if (sections->_sectionRowDataCapacity >= 1)
      {
        v6 = 0;
        v7 = v4;
        do
        {
          objc_storeStrong(v7, sections->_sectionRowData[v6]);
          sectionRowData = sections->_sectionRowData;
          v9 = sectionRowData[v6];
          sectionRowData[v6] = 0;

          ++v6;
          ++v7;
        }

        while (v6 < sections->_sectionRowDataCapacity);
      }

      v10 = sections->_sectionRowData;
      if (v10)
      {
        free(v10);
      }

      sections->_sectionRowData = v5;
      if (!v5)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__updateSectionRowDataArrayForNumSections_ object:sections file:@"UITableViewRowData.m" lineNumber:1214 description:{@"Failed to allocate data stores for %ld sections. Consider using fewer sections.", count}];
      }

      sections->_sectionRowDataCapacity = count;
    }

    numSections = sections->_numSections;
    if (numSections >= count)
    {
      for (; numSections > count; --numSections)
      {
        v15 = &sections->_sectionRowData[numSections];
        v16 = *(v15 - 8);
        *(v15 - 8) = 0;
      }
    }

    else
    {
      do
      {
        v12 = [UISectionRowData alloc];
        if (v12)
        {
          v18.receiver = v12;
          v18.super_class = UISectionRowData;
          v12 = [(UITableViewRowData *)&v18 init];
          if (v12)
          {
            v12->_rowData = sections;
          }
        }

        v13 = sections->_sectionRowData;
        v14 = v13[numSections];
        v13[numSections] = v12;

        ++numSections;
      }

      while (count != numSections);
    }

    sections->_numSections = count;
  }
}

- (void)_ensureSectionOffsetIsValidForSection:(uint64_t)section
{
  if (section)
  {
    v4 = *(section + 88);
    if ((*(v4[a2] + 9) & 1) == 0)
    {
      v5 = a2;
      while (1)
      {
        v6 = v5 - 1;
        if (v5 < 1)
        {
          break;
        }

        v7 = *(v4[--v5] + 9);
        if (v7)
        {
          v8 = v6 + 1;
          goto LABEL_10;
        }
      }

      v9 = *v4;
      if ((*(*v4 + 8) & 1) == 0)
      {
        [(UISectionRowData *)v9 refreshWithSection:*(section + 8) tableView:section tableViewRowData:?];
      }

      v10 = *(section + 152);
      *(v9 + 16) = v10 + [(UITableViewRowData *)section heightForTableHeaderView];
      *(v9 + 24) = 0;
      v8 = 1;
      *(v9 + 9) = 1;
LABEL_10:
      if (v8 <= a2)
      {
        v11 = a2 + 1;
        do
        {
          v12 = (*(section + 88) + 8 * v8);
          v13 = *(v12 - 1);
          v14 = *v12;
          if ((*(v13 + 8) & 1) == 0)
          {
            [(UISectionRowData *)v13 refreshWithSection:*(section + 8) tableView:section tableViewRowData:?];
          }

          if ((*(v13 + 9) & 1) == 0)
          {
            [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:?];
          }

          if ((*(section + 72) & 1) == 0)
          {
            *(v14 + 16) = *(v13 + 16) + *(v13 + 40);
          }

          *(v14 + 24) = *(v13 + 32) + *(v13 + 24);
          *(v14 + 9) = 1;
          ++v8;
        }

        while (v11 != v8);
      }
    }
  }
}

- (uint64_t)_sectionRowForGlobalRow:(uint64_t *)row inSection:
{
  selfCopy = self;
  __key = a2;
  if (self)
  {
    temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)self temporarilyDeletedIndexPathBeingReordered];
    v7 = temporarilyDeletedIndexPathBeingReordered;
    if (temporarilyDeletedIndexPathBeingReordered)
    {
      section = [temporarilyDeletedIndexPathBeingReordered section];
      v9 = *(selfCopy + 64);
    }

    else
    {
      v9 = *(selfCopy + 64);
      section = v9;
    }

    v10 = *(selfCopy + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__UITableViewRowData__sectionRowForGlobalRow_inSection___block_invoke;
    v14[3] = &unk_1E7123A18;
    v14[4] = selfCopy;
    v14[5] = section;
    v14[6] = a2;
    v11 = bsearch_b(&__key, v10, v9, 8uLL, v14);
    if (v11)
    {
      v12 = (v11 - *(selfCopy + 88)) >> 3;
      selfCopy = __key - *(*v11 + 24) - (section < v12);
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      selfCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    *row = v12;
  }

  return selfCopy;
}

uint64_t __56__UITableViewRowData__sectionRowForGlobalRow_inSection___block_invoke(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[4];
  v5 = (a3 - *(v4 + 88)) >> 3;
  v6 = *a3;
  if ((*(*a3 + 8) & 1) == 0)
  {
    [(UISectionRowData *)v6 refreshWithSection:v5 tableView:*(v4 + 8) tableViewRowData:v4];
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)a1[4] _ensureSectionOffsetIsValidForSection:v5];
  }

  v7 = a1[5];
  v8 = a1[6];
  v9 = v7 == v5;
  v10 = v7 < v5;
  v11 = *(v6 + 24);
  v12 = *(v6 + 32);
  if (v10)
  {
    ++v11;
  }

  if (v9)
  {
    ++v12;
  }

  v13 = v8 >= v12 + v11;
  if (v8 < v11)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v13;
  }
}

- (void)tableHeaderHeightDidChangeToHeight:(uint64_t)height
{
  if (height)
  {
    v3 = *(height + 96);
    *(height + 96) = a2;
    _tableStyle = [*(height + 8) _tableStyle];
    v5 = _tableStyle > 0x10 || ((1 << _tableStyle) & 0x10006) == 0;
    v6 = v5 ? 0.0 : GroupedTableOffsetFromTop(*(height + 8), height);
    *(height + 152) = v6;
    v7 = *(height + 64);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(height + 96) - v3;
      v10 = *(height + 72);
      do
      {
        if ((v10 & 1) == 0)
        {
          v11 = *(*(height + 88) + 8 * v8);
          *(v11 + 16) = v9 + *(v11 + 16);
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }
}

- (uint64_t)invalidateSection:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 88);
    v3 = *(v2 + 8 * a2);
    if (v3)
    {
      *(v3 + 8) = 0;
    }

    v4 = *(result + 64);
    if (a2 + 1 < v4)
    {
      v5 = ~a2 + v4;
      v6 = v2 + 8 * a2 + 8;
      do
      {
        if (*v6)
        {
          *(*v6 + 9) = 0;
        }

        v6 += 8;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

- (id)targetIndexPathForPoint:(CGFloat)point adjustedForGap:(CGFloat)gap
{
  if (!self || (v8 = *(self + 152), v9 = [(UITableViewRowData *)self heightForTableHeaderView], *(self + 64) < 1))
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(self + 24);
  v13 = v8 + v9;
  while (1)
  {
    v14 = *(*(self + 88) + 8 * v10);
    v15 = *(v14 + 40);
    v35.origin.x = v11;
    v35.origin.y = v13;
    v35.size.width = v12;
    v35.size.height = v15;
    v33.x = point;
    v33.y = gap;
    if (CGRectContainsPoint(v35, v33))
    {
      break;
    }

    v36.origin.x = v11;
    v36.origin.y = v13;
    v36.size.width = v12;
    v36.size.height = v15;
    if (CGRectGetMaxY(v36) <= gap)
    {
      v13 = v13 + v15;
      if (++v10 < *(self + 64))
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v18 = v13 + *(v14 + 48);
  v37.size.width = [(UISectionRowData *)v14 headerSize];
  v37.size.height = v19;
  v37.origin.x = v11;
  v37.origin.y = v18;
  v34.x = point;
  v34.y = gap;
  if (CGRectContainsPoint(v37, v34))
  {
    v16 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
    goto LABEL_8;
  }

  v20 = *(v14 + 32);
  if (v20 < 1)
  {
LABEL_22:
    v26 = [(UITableViewRowData *)self numberOfRowsInSection:v10];
    temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)self temporarilyDeletedIndexPathBeingReordered];
    v28 = temporarilyDeletedIndexPathBeingReordered;
    if (temporarilyDeletedIndexPathBeingReordered)
    {
      v26 -= [temporarilyDeletedIndexPathBeingReordered section] == v10;
    }
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v22 = v13 + [(UISectionRowData *)v14 offsetForRow:v21 adjustedForGap:a2];
      v23 = *(*(v14 + 136) + 4 * v21);
      if (v23 < -1.0)
      {
        v23 = -v23;
      }

      v24 = v23;
      v38.origin.x = v11;
      v38.origin.y = v22;
      v38.size.width = v12;
      v38.size.height = v24;
      if (gap <= CGRectGetMaxY(v38))
      {
        break;
      }

      v39.origin.x = v11;
      v39.origin.y = v22;
      v39.size.width = v12;
      v39.size.height = v24;
      ++v21;
      if (CGRectGetMaxY(v39) > gap || v21 >= v20)
      {
        goto LABEL_22;
      }
    }

    v29 = *(self + 192);
    v28 = v29;
    v26 = v21;
    if (v29)
    {
      v26 = v21;
      if ([v29 section] == v10)
      {
        if (v21 < [v28 row])
        {
          v26 = v21;
        }

        else
        {
          v26 = v21 + 1;
        }
      }
    }

    if (v20 - 1 == v21)
    {
      v40.origin.x = v11;
      v40.origin.y = v22;
      v40.size.width = v12;
      v40.size.height = v24;
      if (gap >= CGRectGetMaxY(v40) + v24 * -0.2 && (!v28 || [v28 section] != v10))
      {
        v30 = MEMORY[0x1E696AC88];
        v31 = v26 + 1;
        goto LABEL_34;
      }
    }
  }

  v30 = MEMORY[0x1E696AC88];
  v31 = v26;
LABEL_34:
  v16 = [v30 indexPathForRow:v31 inSection:v10];

LABEL_8:

  return v16;
}

- (uint64_t)numberOfRowsInSection:(uint64_t)section
{
  v13 = *MEMORY[0x1E69E9840];
  if (!section)
  {
    return 0;
  }

  if (a2 < 0 || *(section + 64) <= a2)
  {
    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UITableViewRowDataNumberOfRowsInSection(UITableViewRowData *__unsafe_unretained, NSInteger)"}];
      [currentHandler handleFailureInFunction:v8 file:@"UITableViewRowData.m" lineNumber:1769 description:{@"Requested the number of rows for section (%ld) which is out of bounds.", a2}];
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_UITableViewRowDataNumberOfRowsInSection___s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v12 = a2;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Requested the number of rows for section (%ld) which is out of bounds.", buf, 0xCu);
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = *(*(section + 88) + 8 * a2);
    if ((*(v4 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(section + 88) + 8 * a2) refreshWithSection:a2 tableView:*(section + 8) tableViewRowData:section];
    }

    if ((*(v4 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
    }

    v5 = *(v4 + 32);
    temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)section temporarilyDeletedIndexPathBeingReordered];
    if (temporarilyDeletedIndexPathBeingReordered && [temporarilyDeletedIndexPathBeingReordered section] == a2)
    {
      ++v5;
    }
  }

  return v5;
}

- (uint64_t)dropLocationForPoint:(double)point atIndexPath:(CGFloat)path withInsets:(double)insets
{
  v14 = a2;
  v15 = v14;
  if (self)
  {
    section = [v14 section];
    v17 = [v15 row];
    if (section < *(self + 64))
    {
      v18 = v17;
      v19 = *(*(self + 88) + 8 * section);
      v20 = *(self + 192);
      v21 = v20;
      v22 = *(v19 + 32);
      if (v20)
      {
        if (section == [v20 section])
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = v22;
        }

        if (v18 >= v23)
        {
          goto LABEL_19;
        }

        if (section == [v21 section])
        {
          v18 -= v18 > [v21 row];
        }
      }

      else if (v18 >= v22)
      {
        goto LABEL_19;
      }

      if ((*(v19 + 8) & 1) == 0)
      {
        [(UISectionRowData *)v19 refreshWithSection:section tableView:*(self + 8) tableViewRowData:self];
      }

      if ((*(v19 + 9) & 1) == 0)
      {
        [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:section];
      }

      v24 = [(UITableViewRowData *)self offsetForSection:v19];
      v25 = [(UISectionRowData *)v19 offsetForRow:v18 adjustedForGap:1];
      v26 = *(*(v19 + 136) + 4 * v18);
      if (v26 < -1.0)
      {
        v26 = -v26;
      }

      v27 = v24 + v25;
      v28 = a6 + *MEMORY[0x1E695F058];
      v29 = insets + v27;
      v30 = *(self + 24) - (a6 + a8);
      v31 = v26 - (insets + a7);
      v33.origin.x = v28;
      v33.origin.y = v29;
      v33.size.width = v30;
      v33.size.height = v31;
      if (path >= CGRectGetMinY(v33))
      {
        v34.origin.x = v28;
        v34.origin.y = v29;
        v34.size.width = v30;
        v34.size.height = v31;
        self = path > CGRectGetMaxY(v34);
        goto LABEL_21;
      }

LABEL_19:
      self = -1;
LABEL_21:

      goto LABEL_22;
    }

    self = -1;
  }

LABEL_22:

  return self;
}

- (void)addGapAtIndexPath:(uint64_t)path
{
  v4 = a2;
  if (path)
  {
    v14 = v4;
    section = [v4 section];
    v6 = section;
    if (section < 0 || section >= *(path + 64))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addGapAtIndexPath_ object:path file:@"UITableViewRowData.m" lineNumber:1526 description:{@"request to add gap at invalid section (%ld)", v6}];
    }

    v7 = [v14 row];
    v8 = *(path + 216) + *(path + 144);
    [(UISectionRowData *)*(*(path + 88) + 8 * v6) addOffset:v7 fromRow:v8];
    v9 = v6 + 1;
    v10 = *(path + 64);
    if (v10 > v6 + 1)
    {
      v11 = *(path + 72);
      do
      {
        if ((v11 & 1) == 0)
        {
          v12 = *(*(path + 88) + 8 * v9);
          *(v12 + 16) = v8 + *(v12 + 16);
        }

        ++v9;
      }

      while (v10 != v9);
    }

    [*(path + 8) _coalesceContentSizeUpdateWithDelta:v8];
    objc_storeStrong((path + 176), a2);
    v4 = v14;
  }
}

- (void)removeGap
{
  if (self)
  {
    v2 = *(self + 176);
    if (v2)
    {
      v13 = v2;
      section = [v2 section];
      v4 = section;
      if (section < 0 || section >= *(self + 64))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_removeGap object:self file:@"UITableViewRowData.m" lineNumber:1547 description:{@"request to remove gap at invalid section (%ld)", v4}];
      }

      v5 = [v13 row];
      v6 = *(self + 216) + *(self + 144);
      [(UISectionRowData *)*(*(self + 88) + 8 * v4) addOffset:v5 fromRow:-v6];
      v7 = v4 + 1;
      v8 = *(self + 64);
      if (v8 > v4 + 1)
      {
        v9 = *(self + 72);
        do
        {
          if ((v9 & 1) == 0)
          {
            v10 = *(*(self + 88) + 8 * v7);
            *(v10 + 16) = *(v10 + 16) - v6;
          }

          ++v7;
        }

        while (v8 != v7);
      }

      [*(self + 8) _coalesceContentSizeUpdateWithDelta:-v6];
      v11 = *(self + 176);
      *(self + 176) = 0;

      v2 = v13;
    }
  }
}

- (void)restoreReorderedRowWithHeight:(double)height atIndexPath:
{
  v5 = a2;
  if (self)
  {
    v15 = v5;
    section = [v5 section];
    v7 = section;
    if (section < 0 || section >= *(self + 64))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_restoreReorderedRowWithHeight_atIndexPath_ object:self file:@"UITableViewRowData.m" lineNumber:1568 description:{@"request to restore reordered row in invalid section (%ld)", v7}];
    }

    -[UISectionRowData insertRowAtIndex:inSection:rowHeight:tableViewRowData:](*(*(self + 88) + 8 * v7), [v15 row], v7, self, height);
    v8 = *(self + 144) + height;
    v9 = *(self + 64);
    if (v9 > v7 + 1)
    {
      v10 = *(self + 72);
      v11 = ~v7 + v9;
      v12 = *(self + 88) + 8 * v7 + 8;
      do
      {
        v13 = *v12;
        ++*(*v12 + 24);
        if ((v10 & 1) == 0)
        {
          *(v13 + 16) = v8 + *(v13 + 16);
        }

        v12 += 8;
        --v11;
      }

      while (v11);
    }

    [*(self + 8) _coalesceContentSizeUpdateWithDelta:v8];
    v5 = v15;
  }
}

- (double)removeReorderedRowWithHeight:(double)height atIndexPath:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    section = [v5 section];
    v8 = section;
    if (section < 0 || section >= *(self + 64))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_removeReorderedRowWithHeight_atIndexPath_ object:self file:@"UITableViewRowData.m" lineNumber:1580 description:{@"request to remove reordered row in invalid section (%ld)", v8}];
    }

    v9 = [v6 row];
    v11 = *(self + 88);
    v12 = *(v11 + 8 * v8);
    if (height == 0.0)
    {
      v10 = [(UISectionRowData *)*(v11 + 8 * v8) heightForRow:v9 inSection:v8 canGuess:0];
      height = v10;
    }

    [(UISectionRowData *)v12 deleteRowAtIndex:v9, v10];
    v13 = height + *(self + 144);
    v14 = *(self + 64);
    if (v14 > v8 + 1)
    {
      v15 = *(self + 72);
      v16 = ~v8 + v14;
      v17 = *(self + 88) + 8 * v8 + 8;
      do
      {
        v18 = *v17;
        --*(*v17 + 24);
        if ((v15 & 1) == 0)
        {
          *(v18 + 16) = *(v18 + 16) - v13;
        }

        v17 += 8;
        --v16;
      }

      while (v16);
    }

    [*(self + 8) _coalesceContentSizeUpdateWithDelta:-v13];
  }

  else
  {
    height = 0.0;
  }

  return height;
}

- (void)setReorderedIndexPath:(uint64_t)path
{
  v4 = a2;
  if (path)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = *(path + 192);
    if (has_internal_diagnostics)
    {
      if (v6)
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Cannot set a reorderedIndexPath on the row data while a draggedIndexPath is already set.", buf, 2u);
        }
      }
    }

    else if (v6)
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &setReorderedIndexPath____s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Cannot set a reorderedIndexPath on the row data while a draggedIndexPath is already set.", v12, 2u);
      }
    }

    v7 = *(path + 184);
    if (v7 != v4)
    {
      if (v7)
      {
        [(UITableViewRowData *)path restoreReorderedRowWithHeight:v7 atIndexPath:*(path + 216)];
      }

      objc_storeStrong((path + 184), a2);
      v8 = *(path + 184);
      if (v8)
      {
        v9 = [(UITableViewRowData *)path removeReorderedRowWithHeight:v8 atIndexPath:*(path + 216)];
      }

      else
      {
        v9 = 0.0;
      }

      *(path + 216) = v9;
    }
  }
}

- (void)moveRowAtIndexPathFrom:(void *)from toIndexPath:
{
  v20 = a2;
  fromCopy = from;
  if (self && ([v20 isEqual:fromCopy] & 1) == 0)
  {
    v6 = [v20 row];
    section = [v20 section];
    v8 = [fromCopy row];
    section2 = [fromCopy section];
    v10 = [(UITableViewRowData *)self heightForRow:v6 inSection:section canGuess:1 adjustForReorderedRow:1];
    [(UISectionRowData *)*(*(self + 88) + 8 * section) deleteRowAtIndex:v6, v10];
    [(UISectionRowData *)*(*(self + 88) + 8 * section2) insertRowAtIndex:v8 inSection:section2 rowHeight:self tableViewRowData:v10];
    v11 = v10 + *(self + 144);
    if (section <= section2)
    {
      if (section2 > section)
      {
        v16 = section + 1;
        v17 = *(self + 88);
        v18 = *(self + 72);
        do
        {
          v19 = *(v17 + 8 * v16);
          --*(v19 + 24);
          if ((v18 & 1) == 0)
          {
            *(v19 + 16) = *(v19 + 16) - v11;
          }

          ++v16;
        }

        while (v16 < section2 + 1);
      }
    }

    else
    {
      v12 = section2 + 1;
      v13 = *(self + 88);
      v14 = *(self + 72);
      do
      {
        v15 = *(v13 + 8 * v12);
        ++*(v15 + 24);
        if ((v14 & 1) == 0)
        {
          *(v15 + 16) = v11 + *(v15 + 16);
        }

        ++v12;
      }

      while (v12 < section + 1);
    }
  }
}

- (void)setDraggedIndexPath:(uint64_t)path
{
  v4 = a2;
  if (path)
  {
    v5 = *(path + 192);
    if (v5 != v4)
    {
      v8 = v4;
      if (v5)
      {
        [(UITableViewRowData *)path restoreReorderedRowWithHeight:v5 atIndexPath:*(path + 224)];
      }

      objc_storeStrong((path + 192), a2);
      v6 = *(path + 192);
      if (v6)
      {
        v7 = [(UITableViewRowData *)path removeReorderedRowWithHeight:v6 atIndexPath:*(path + 224)];
      }

      else
      {
        v7 = 0.0;
      }

      v4 = v8;
      *(path + 224) = v7;
    }
  }
}

- (void)addDropTargetGapAtIndexPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    v21 = v3;
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addDropTargetGapAtIndexPath_ object:path file:@"UITableViewRowData.m" lineNumber:1733 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
    }

    if (*(path + 176))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_addDropTargetGapAtIndexPath_ object:path file:@"UITableViewRowData.m" lineNumber:1734 description:@"UITableView internal inconsistency: attempted to add a drop target gap when one already exists"];
    }

    v4 = v21;
    if (!v21)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__dropTargetGapHeightForIndexPath_ object:path file:@"UITableViewRowData.m" lineNumber:1691 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
    }

    if (*(path + 192))
    {
      v5 = *(path + 224);
LABEL_22:

      *(path + 216) = v5;
      [(UITableViewRowData *)path addGapAtIndexPath:v4];
      v3 = v21;
      goto LABEL_23;
    }

    section = [v4 section];
    v7 = [v4 row];
    if (section >= *(path + 64))
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = [(UITableViewRowData *)path numberOfRowsInSection:section];
    if (v9 < 1)
    {
      goto LABEL_16;
    }

    if (v8 >= v9)
    {
      if (v8 != v9)
      {
        goto LABEL_16;
      }

      --v8;
    }

    v10 = [(UITableViewRowData *)path heightForRow:v8 inSection:section canGuess:1 adjustForReorderedRow:1];
    if (v10 != 0.0)
    {
LABEL_20:
      v5 = v10;
      goto LABEL_22;
    }

LABEL_16:
    [*(path + 8) rowHeight];
    v11 = *(path + 8);
    if (v12 <= 0.0)
    {
      [v11 estimatedRowHeight];
      if (v13 <= 0.0)
      {
        v14 = +[UIListContentConfiguration cellConfiguration];
        _scrollView = [*(path + 8) _scrollView];
        traitCollection = [_scrollView traitCollection];
        [v14 _minimumHeightForTraitCollection:traitCollection];
        v5 = v17;

        goto LABEL_22;
      }

      [*(path + 8) estimatedRowHeight];
    }

    else
    {
      [v11 rowHeight];
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)moveDropTargetGapToIndexPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_moveDropTargetGapToIndexPath_ object:path file:@"UITableViewRowData.m" lineNumber:1743 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

      v3 = 0;
    }

    v4 = *(path + 176);
    if (!v4)
    {
      v8 = v3;
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_moveDropTargetGapToIndexPath_ object:path file:@"UITableViewRowData.m" lineNumber:1744 description:@"UITableView internal inconsistency: attempted to move a drop target gap without one being added first"];

      v3 = v8;
      v4 = *(path + 176);
    }

    if (v4 != v3)
    {
      v7 = v3;
      [(UITableViewRowData *)path removeGap];
      *(path + 216) = 0;
      [(UITableViewRowData *)path addDropTargetGapAtIndexPath:v7];
      v3 = v7;
    }
  }
}

- (uint64_t)numberOfRowsBeforeSection:(uint64_t)section
{
  if (!section)
  {
    return 0;
  }

  temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)section temporarilyDeletedIndexPathBeingReordered];
  v5 = temporarilyDeletedIndexPathBeingReordered;
  if (temporarilyDeletedIndexPathBeingReordered)
  {
    v6 = [temporarilyDeletedIndexPathBeingReordered section] <= a2;
  }

  else
  {
    v6 = 0;
  }

  if (a2 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(section + 88) + 8 * v7);
      if ((*(v8 + 8) & 1) == 0)
      {
        [(UISectionRowData *)*(*(section + 88) + 8 * v7) refreshWithSection:a2 tableView:*(section + 8) tableViewRowData:section];
      }

      if ((*(v8 + 9) & 1) == 0)
      {
        [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
      }

      v6 += *(v8 + 32);
      ++v7;
    }

    while (a2 != v7);
  }

  return v6;
}

- (uint64_t)hasHeaderForSection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2 < 0 || *(result + 64) <= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_hasHeaderForSection_ object:v3 file:@"UITableViewRowData.m" lineNumber:1851 description:{@"request for invalid section (%ld)", a2}];
    }

    v4 = *(*(v3 + 88) + 8 * a2);
    if ((*(v4 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(v3 + 88) + 8 * a2) refreshWithSection:a2 tableView:*(v3 + 8) tableViewRowData:v3];
    }

    if ((*(v4 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)v3 _ensureSectionOffsetIsValidForSection:a2];
    }

    [(UISectionRowData *)v4 headerSize];
    return v5 > 0.0;
  }

  return result;
}

- (double)heightForSection:(uint64_t)section
{
  if (!section)
  {
    return 0.0;
  }

  if (a2 < 0 || *(section + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_heightForSection_ object:section file:@"UITableViewRowData.m" lineNumber:1917 description:{@"request for invalid section (%ld)", a2}];
  }

  v4 = *(*(section + 88) + 8 * a2);
  v5 = v4;
  if ((v4[8] & 1) == 0)
  {
    [(UISectionRowData *)v4 refreshWithSection:a2 tableView:*(section + 8) tableViewRowData:section];
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
  }

  v6 = *(v5 + 5);

  return v6;
}

- (double)heightForHeaderInSection:(char)section canGuess:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 < 0 || *(self + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_heightForHeaderInSection_canGuess_ object:self file:@"UITableViewRowData.m" lineNumber:1945 description:{@"request for invalid section (%ld)", a2}];
  }

  v6 = *(*(self + 88) + 8 * a2);
  if ((*(v6 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  }

  [(UISectionRowData *)v6 sizeForHeaderInSection:a2 canGuess:section];
  return v7;
}

- (double)heightForFooterInSection:(char)section canGuess:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 < 0 || *(self + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_heightForFooterInSection_canGuess_ object:self file:@"UITableViewRowData.m" lineNumber:1953 description:{@"request for invalid section (%ld)", a2}];
  }

  v6 = *(*(self + 88) + 8 * a2);
  if ((*(v6 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  }

  return [(UISectionRowData *)v6 heightForFooterInSection:a2 canGuess:section];
}

- (double)heightForRow:(uint64_t)row inSection:(char)section canGuess:(int)guess adjustForReorderedRow:
{
  if (!self)
  {
    return 0.0;
  }

  if (row < 0 || *(self + 64) <= row)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_heightForRow_inSection_canGuess_adjustForReorderedRow_ object:self file:@"UITableViewRowData.m" lineNumber:1966 description:{@"request for invalid section (%ld)", row}];
  }

  v10 = *(*(self + 88) + 8 * row);
  if ((*(v10 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * row) refreshWithSection:row tableView:*(self + 8) tableViewRowData:self];
  }

  if ((*(v10 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:row];
  }

  temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)self temporarilyDeletedIndexPathBeingReordered];
  v12 = temporarilyDeletedIndexPathBeingReordered;
  if (guess && temporarilyDeletedIndexPathBeingReordered && [temporarilyDeletedIndexPathBeingReordered section] == row)
  {
    if ([v12 row] == a2)
    {
      v13 = 0.0;
      if (!*(self + 192))
      {
        v13 = *(self + 216);
      }

      goto LABEL_16;
    }

    a2 -= [v12 row] < a2;
  }

  v13 = [(UISectionRowData *)v10 heightForRow:a2 inSection:row canGuess:section];
LABEL_16:

  return v13;
}

- (id)_indexPathsBelowIndexPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    v4 = objc_opt_new();
    v5 = v3;
    if ([v5 section] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
    }

    else
    {
      do
      {
        [v4 addObject:v5];
        v6 = [(UITableViewRowData *)path _nextIndexPathOrSectionHeader:v5];

        v5 = v6;
      }

      while ([v6 section] != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nextIndexPathOrSectionHeader:(uint64_t)header
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  section = 0x7FFFFFFFFFFFFFFFLL;
  if ([a2 section] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([a2 row] != 0x7FFFFFFFFFFFFFFFLL || -[UITableViewRowData numberOfRowsInSection:](header, objc_msgSend(a2, "section")) < 1 || (section = objc_msgSend(a2, "section"), v4 = 0, section == 0x7FFFFFFFFFFFFFFFLL))
    {
      if ([a2 row] == 0x7FFFFFFFFFFFFFFFLL || (v6 = objc_msgSend(a2, "row"), v6 >= -[UITableViewRowData numberOfRowsInSection:](header, objc_msgSend(a2, "section")) - 1))
      {
        if ([a2 section] >= *(header + 64) - 1)
        {
          section = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          section = [a2 section] + 1;
          if ([(UITableViewRowData *)header numberOfRowsInSection:section]> 0)
          {
            v4 = 0;
          }
        }
      }

      else
      {
        section = [a2 section];
        v4 = [a2 row] + 1;
      }
    }
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:section];

  return v7;
}

- (void)setHeight:(double)height forHeaderInSection:
{
  if (self)
  {
    if (*(self + 64) <= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setHeight_forHeaderInSection_ object:self file:@"UITableViewRowData.m" lineNumber:1994 description:{@"attempt to set height for header in section %ld when there are only %ld sections in the table", a2, *(self + 64)}];
    }

    v6 = *(*(self + 88) + 8 * a2);
    if ((*(v6 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
    }

    if ((*(v6 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
    }

    [(UISectionRowData *)v6 headerSize];
    v8 = v7;
    *&v7 = height;
    v9 = *&v7 - v8;
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 0.00000011921)
    {
      v10 = fmax(height, 0.00000011920929);
      v11 = *(v6 + 112);
      if (v11 < -1.0)
      {
        v11 = -v11;
      }

      v12 = v11;
      v13 = v10 - v12;
      *(v6 + 112) = v10;
      v14 = *(v6 + 32);
      if (*(*(v6 + 96) + 72))
      {
        if (v14)
        {
          memset_pattern16(*(v6 + 144), &xmmword_18A678720, 8 * v14);
        }
      }

      else if (v14)
      {
        v15 = *(v6 + 144);
        do
        {
          *v15 = v13 + *v15;
          ++v15;
          --v14;
        }

        while (v14);
      }

      [(UISectionRowData *)v6 updateSectionHeightWithDelta:a2 section:1 updateFooterOffset:v13];
    }
  }
}

- (void)setHeight:(double)height forFooterInSection:
{
  if (self)
  {
    if (*(self + 64) <= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setHeight_forFooterInSection_ object:self file:@"UITableViewRowData.m" lineNumber:2007 description:{@"attempt to set height for footer in section %ld when there are only %ld sections in the table", a2, *(self + 64)}];
    }

    v6 = *(*(self + 88) + 8 * a2);
    if ((*(v6 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
    }

    if ((*(v6 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
    }

    v7 = *(v6 + 120);
    if (v7 < -1.0)
    {
      v7 = -v7;
    }

    v8 = v7;
    heightCopy = height;
    v10 = heightCopy - v8;
    if (v10 < 0.0)
    {
      v10 = -v10;
    }

    if (v10 > 0.00000011921)
    {
      v11 = fmax(height, 0.00000011920929);
      v12 = v11 - v8;
      *(v6 + 120) = v11;

      [(UISectionRowData *)v6 updateSectionHeightWithDelta:a2 section:0 updateFooterOffset:v12];
    }
  }
}

- (void)setHeight:(double)height forRowAtIndexPath:
{
  v5 = a2;
  if (self)
  {
    v26 = v5;
    section = [v5 section];
    if (section >= *(self + 64))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setHeight_forRowAtIndexPath_ object:self file:@"UITableViewRowData.m" lineNumber:2021 description:{@"attempt to set height for row in section %ld when there are only %ld sections in the table", section, *(self + 64)}];
    }

    v7 = *(*(self + 88) + 8 * section);
    if ((*(v7 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(self + 88) + 8 * section) refreshWithSection:section tableView:*(self + 8) tableViewRowData:self];
    }

    if ((*(v7 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:section];
    }

    v8 = *(*(v7 + 136) + 4 * [v26 row]);
    v5 = v26;
    if (v8 < -1.0)
    {
      v8 = -v8;
    }

    heightCopy = height;
    v10 = heightCopy - v8;
    if (v10 < 0.0)
    {
      v10 = -v10;
    }

    if (v10 > 0.00000011921)
    {
      v11 = [v26 row];
      v12 = fmax(height, 0.00000011920929);
      temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)*(v7 + 96) temporarilyDeletedIndexPathBeingReordered];
      v14 = temporarilyDeletedIndexPathBeingReordered;
      if (temporarilyDeletedIndexPathBeingReordered && [temporarilyDeletedIndexPathBeingReordered section] == section)
      {
        v11 -= [v14 row] < v11;
      }

      v15 = *(v7 + 136);
      v16 = *(v15 + 4 * v11);
      if (v16 < -1.0)
      {
        v16 = -v16;
      }

      v17 = v12 - v16;
      v18 = v12;
      *(v15 + 4 * v11) = v18;
      if (*(*(v7 + 96) + 72))
      {
        v19 = *(v7 + 32);
        v20 = v19 > v11 + 1;
        v21 = v19 - (v11 + 1);
        if (v20)
        {
          memset_pattern16((*(v7 + 144) + 8 * (v11 + 1)), &xmmword_18A678720, 8 * v21);
        }
      }

      else
      {
        v22 = *(v7 + 32);
        if (v11 + 1 < v22)
        {
          v23 = ~v11 + v22;
          v24 = (*(v7 + 144) + 8 * v11 + 8);
          do
          {
            *v24 = v17 + *v24;
            ++v24;
            --v23;
          }

          while (v23);
        }
      }

      [(UISectionRowData *)v7 updateSectionHeightWithDelta:section section:1 updateFooterOffset:v17];

      v5 = v26;
    }
  }
}

- (uint64_t)sectionLocationForRow:(uint64_t)row inSection:
{
  if (!self)
  {
    return 0;
  }

  if (row < 0 || *(self + 64) <= row)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_sectionLocationForRow_inSection_ object:self file:@"UITableViewRowData.m" lineNumber:2040 description:{@"request for invalid section (%ld)", row}];
  }

  v6 = *(*(self + 88) + 8 * row);
  if ((*(v6 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * row) refreshWithSection:row tableView:*(self + 8) tableViewRowData:self];
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:row];
  }

  temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)self temporarilyDeletedIndexPathBeingReordered];
  v8 = temporarilyDeletedIndexPathBeingReordered;
  if (temporarilyDeletedIndexPathBeingReordered && [temporarilyDeletedIndexPathBeingReordered section] == row)
  {
    a2 -= [v8 row] < a2;
  }

  v9 = *(v6 + 96);
  if (v9 && (v10 = *(v9 + 176)) != 0)
  {
    v11 = *(v9 + 64);
    if (v11 < 1)
    {
LABEL_17:
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 0;
      while (*(*(v9 + 88) + 8 * v12) != v6)
      {
        if (v11 == ++v12)
        {
          goto LABEL_17;
        }
      }
    }

    v13 = [(UISectionRowData *)*(v9 + 144) sectionLocationForRow:a2 inSection:v12 numRows:*(v6 + 32) gapIndexPath:v10 rowSpacing:?];
  }

  else
  {
    v14 = *(v6 + 32);
    objc_opt_self();
    if (v14 - 1 == a2)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 - 1 == a2)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    if (a2)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15;
    }
  }

  return v13;
}

- (uint64_t)sectionLocationForReorderedRow:(uint64_t)row inSection:
{
  if (result)
  {
    v5 = result;
    if (row < 0 || *(result + 64) <= row)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_sectionLocationForReorderedRow_inSection_ object:v5 file:@"UITableViewRowData.m" lineNumber:2052 description:{@"request for invalid section (%ld)", row}];
    }

    v6 = *(*(v5 + 88) + 8 * row);
    if ((*(v6 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(v5 + 88) + 8 * row) refreshWithSection:row tableView:*(v5 + 8) tableViewRowData:v5];
    }

    if ((*(v6 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)v5 _ensureSectionOffsetIsValidForSection:row];
    }

    v7 = *(v6 + 32);
    if (a2)
    {
      if (v7 == a2)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else if (v7)
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (double)rectForFooterInSection:(char)section heightCanBeGuessed:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 < 0 || *(self + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_rectForFooterInSection_heightCanBeGuessed_ object:self file:@"UITableViewRowData.m" lineNumber:2285 description:{@"request for rect of footer in invalid section (%ld)", a2}];
  }

  v6 = *(*(self + 88) + 8 * a2);
  if ((*(v6 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  }

  [*(self + 8) _sectionFooterContentInsets];
  v8 = v7;
  [(UISectionRowData *)v6 heightForFooterInSection:a2 canGuess:section];
  [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  [(UITableViewRowData *)self offsetForSection:v6];
  return v8;
}

- (double)rectForSection:(uint64_t)section
{
  if (section)
  {
    if (a2 < 0 || *(section + 64) <= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_rectForSection_ object:section file:@"UITableViewRowData.m" lineNumber:2156 description:{@"request for rect of invalid section (%ld)", a2}];
    }

    v4 = *(*(section + 88) + 8 * a2);
    if ((*(v4 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(section + 88) + 8 * a2) refreshWithSection:a2 tableView:*(section + 8) tableViewRowData:section];
    }

    if ((*(v4 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
    }

    [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
    [(UITableViewRowData *)section offsetForSection:v4];
  }

  return 0.0;
}

- (double)offsetForHeaderInSection:(uint64_t)section
{
  if (!section)
  {
    return 0.0;
  }

  if (a2 < 0 || *(section + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_offsetForHeaderInSection_ object:section file:@"UITableViewRowData.m" lineNumber:2173 description:{@"request for offset of header in invalid section (%ld)", a2}];
  }

  return *(*(*(section + 88) + 8 * a2) + 48);
}

- (double)rectForHeaderInSection:(char)section heightCanBeGuessed:
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 < 0 || *(self + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_rectForHeaderInSection_heightCanBeGuessed_ object:self file:@"UITableViewRowData.m" lineNumber:2180 description:{@"request for rect of header in invalid section (%ld)", a2}];
  }

  v6 = *(*(self + 88) + 8 * a2);
  if ((*(v6 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  }

  [*(self + 8) _sectionHeaderContentInsets];
  v8 = v7;
  _constants = [*(self + 8) _constants];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    _constants2 = [*(self + 8) _constants];
    [_constants2 headerFooterOffsetFromContentInsetForTableView:*(self + 8)];
    v13 = v12;

    v8 = v8 + v13;
  }

  [(UISectionRowData *)v6 sizeForHeaderInSection:a2 canGuess:section];
  [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  [(UITableViewRowData *)self offsetForSection:v6];
  return v8;
}

- (double)floatingRectForHeaderInSection:(char)section visibleRect:(_BYTE *)rect heightCanBeGuessed:(double *)guessed outIsFloating:(CGFloat)floating outVisibleRectDisplacement:(double)displacement
{
  if (!self)
  {
    return 0.0;
  }

  heightForTableHeaderView = [(UITableViewRowData *)self heightForTableHeaderView];
  v61 = heightForTableHeaderView;
  if ((*(self + 128) & 0x10) != 0)
  {
    displacementCopy = displacement + heightForTableHeaderView;
  }

  else
  {
    displacementCopy = displacement;
  }

  if ((*(self + 128) & 0x10) != 0)
  {
    v20 = a9 - heightForTableHeaderView;
  }

  else
  {
    v20 = a9;
  }

  v21 = [(UITableViewRowData *)self hasHeaderForSection:a2];
  v22 = [(UITableViewRowData *)self rectForHeaderInSection:a2 heightCanBeGuessed:section];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(self + 120) - 1;
  floatingCopy = floating;
  if (v21 && (v63.origin.x = floating, v63.origin.y = displacementCopy, v63.size.width = a8, v63.size.height = v20, v79.origin.x = v22, v79.origin.y = v24, v79.size.width = v26, v79.size.height = v28, !CGRectContainsRect(v63, v79)))
  {
    v64.origin.x = v22;
    v64.origin.y = v24;
    v64.size.width = v26;
    v64.size.height = v28;
    v59 = v22;
    rect = a8;
    v31 = v26;
    v32 = v28;
    MinY = CGRectGetMinY(v64);
    v65.origin.x = floating;
    v65.origin.y = displacementCopy;
    v65.size.width = a8;
    v65.size.height = v20;
    v34 = 0.0;
    v35 = MinY < CGRectGetMinY(v65);
    v28 = v32;
    v26 = v31;
    v22 = v59;
    if (v35)
    {
      v66.origin.x = floating;
      v66.origin.y = displacementCopy;
      v66.size.width = rect;
      v66.size.height = v20;
      v36 = CGRectGetMinY(v66);
      v67.origin.x = v59;
      v67.origin.y = v24;
      v67.size.width = v26;
      v67.size.height = v28;
      v34 = v36 - CGRectGetMinY(v67);
    }

    if (v29 > 1)
    {
      v38 = [(UITableViewRowData *)self rectForFooterInSection:a2 heightCanBeGuessed:section];
      v55 = v39;
      v57 = v41;
      v58 = v40;
      v70.origin.x = v59;
      v70.origin.y = v24;
      v70.size.width = v26;
      v70.size.height = v28;
      v56 = v34;
      v42 = v34 + CGRectGetMaxY(v70);
      v71.origin.x = v38;
      v71.origin.y = v55;
      v71.size.height = v57;
      v71.size.width = v58;
      if (v42 <= CGRectGetMinY(v71))
      {
        v34 = v56;
      }

      else
      {
        v72.origin.x = v59;
        v72.origin.y = v24;
        v72.size.width = v26;
        v72.size.height = v28;
        MaxY = CGRectGetMaxY(v72);
        v73.size.height = v57;
        v54 = v56 + MaxY;
        v73.origin.x = v38;
        v73.origin.y = v55;
        v73.size.width = v58;
        v34 = v56 - (v54 - CGRectGetMinY(v73));
      }
    }

    else if (a2 + 1 < *(self + 64))
    {
      v68.origin.x = [(UITableViewRowData *)self rectForHeaderInSection:1 heightCanBeGuessed:?];
      v37 = CGRectGetMinY(v68);
      v69.origin.x = floatingCopy;
      v69.origin.y = displacementCopy;
      v69.size.width = rect;
      v69.size.height = v20;
      if (v37 <= CGRectGetMinY(v69))
      {
        v34 = 0.0;
      }
    }

    if (v34 <= 0.0)
    {
      v30 = v24;
    }

    else
    {
      v30 = v24 + v34;
    }

    a8 = rect;
  }

  else
  {
    v30 = v24;
  }

  if (v29 > 1)
  {
    v45 = v24 != v30;
    if (rect)
    {
      *rect = v45;
    }

    goto LABEL_47;
  }

  v44 = *(self + 120);
  if (a2 || v44 != 2)
  {
    v74.origin.x = v22;
    v74.origin.y = v30;
    v74.size.width = v26;
    v74.size.height = v28;
    v46 = CGRectGetMinY(v74);
    v75.origin.x = floatingCopy;
    v75.origin.y = displacementCopy;
    v75.size.width = a8;
    v75.size.height = v20;
    v45 = vabdd_f64(v46, CGRectGetMinY(v75)) <= 0.1;
    if (!rect)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v45 = 1;
  if (rect)
  {
LABEL_34:
    *rect = v45;
  }

LABEL_35:
  if (v44 != 2 || !v45)
  {
LABEL_47:
    if (!guessed)
    {
      return v22;
    }

    v51 = 0.0;
    if (!v45)
    {
LABEL_51:
      *guessed = v51;
      return v22;
    }

    v48 = floatingCopy;
LABEL_50:
    v77.origin.x = v48;
    v77.origin.y = displacementCopy;
    v77.size.width = a8;
    v77.size.height = v20;
    v52 = CGRectGetMinY(v77);
    v78.origin.x = v22;
    v78.origin.y = v30;
    v78.size.width = v26;
    v78.size.height = v28;
    v51 = fmax(v52 - CGRectGetMinY(v78), 0.0);
    goto LABEL_51;
  }

  v48 = floatingCopy;
  if (v61 - displacementCopy <= 0.0 || v61 <= 0.0)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = v61 - displacementCopy;
  }

  v76.origin.x = floatingCopy;
  v76.origin.y = displacementCopy;
  v76.size.width = a8;
  v76.size.height = v20;
  v30 = v50 + CGRectGetMinY(v76);
  if (guessed)
  {
    goto LABEL_50;
  }

  return v22;
}

- (double)floatingRectForFooterInSection:(char)section visibleRect:(_BYTE *)rect heightCanBeGuessed:(double *)guessed outIsFloating:(CGFloat)floating outVisibleRectDisplacement:(CGFloat)displacement
{
  if (!self)
  {
    return 0.0;
  }

  if (a2 < 0 || *(self + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_hasFooterForSection_ object:self file:@"UITableViewRowData.m" lineNumber:1859 description:{@"request for invalid section (%ld)", a2}];
  }

  v17 = *(*(self + 88) + 8 * a2);
  if ((*(v17 + 8) & 1) == 0)
  {
    [(UISectionRowData *)*(*(self + 88) + 8 * a2) refreshWithSection:a2 tableView:*(self + 8) tableViewRowData:self];
  }

  v53 = a9;
  if ((*(v17 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:a2];
  }

  v18 = *(v17 + 120);
  if (v18 >= -1.0)
  {
    v19 = *(v17 + 120);
  }

  else
  {
    v19 = -v18;
  }

  v21 = [(UITableViewRowData *)self rectForFooterInSection:a2 heightCanBeGuessed:section];
  v22 = v20;
  v24 = v23;
  v26 = v25;
  v27 = *(self + 120) - 1;
  floatingCopy2 = floating;
  displacementCopy = displacement;
  v52 = a8;
  if (v19 <= 0.0)
  {
    v30 = v20;
  }

  else
  {
    v55.origin.x = floating;
    v55.origin.y = displacement;
    v55.size.width = a8;
    v29 = v53;
    v55.size.height = v53;
    v70.origin.x = v21;
    v70.origin.y = v22;
    v70.size.width = v24;
    v70.size.height = v26;
    if (CGRectContainsRect(v55, v70))
    {
      v30 = v22;
      goto LABEL_28;
    }

    v56.origin.x = v21;
    v56.origin.y = v22;
    v56.size.width = v24;
    v56.size.height = v26;
    MaxY = CGRectGetMaxY(v56);
    v57.origin.x = floating;
    v57.origin.y = displacement;
    v57.size.width = a8;
    v57.size.height = v53;
    v32 = 0.0;
    v33 = MaxY <= CGRectGetMaxY(v57);
    floatingCopy2 = floating;
    if (!v33)
    {
      v58.origin.x = v21;
      v58.origin.y = v22;
      v58.size.width = v24;
      v58.size.height = v26;
      v34 = CGRectGetMaxY(v58);
      v59.origin.x = floating;
      v59.origin.y = displacementCopy;
      v59.size.width = a8;
      v59.size.height = v53;
      v32 = v34 - CGRectGetMaxY(v59);
    }

    if (v27 > 1)
    {
      v36 = [(UITableViewRowData *)self rectForHeaderInSection:a2 heightCanBeGuessed:section];
      v38 = v37;
      v49 = v40;
      v50 = v39;
      v62.origin.x = v21;
      v62.origin.y = v22;
      v62.size.width = v24;
      v62.size.height = v26;
      v48 = CGRectGetMinY(v62) - v32;
      v63.origin.x = v36;
      v63.origin.y = v38;
      v63.size.width = v50;
      v63.size.height = v49;
      if (v48 < CGRectGetMaxY(v63))
      {
        v64.origin.x = v36;
        v64.origin.y = v38;
        v64.size.width = v50;
        v64.size.height = v49;
        v41 = CGRectGetMaxY(v64);
        v65.origin.x = v21;
        v65.origin.y = v22;
        v65.size.width = v24;
        v65.size.height = v26;
        v32 = v32 - (v41 - (CGRectGetMinY(v65) - v32));
      }
    }

    else if (a2 >= 1)
    {
      v60.origin.x = [(UITableViewRowData *)self rectForFooterInSection:section heightCanBeGuessed:?];
      v35 = CGRectGetMaxY(v60);
      v61.origin.x = floating;
      v61.origin.y = displacementCopy;
      v61.size.width = a8;
      v61.size.height = v53;
      if (v35 >= CGRectGetMaxY(v61))
      {
        v32 = 0.0;
      }
    }

    if (v32 <= 0.0)
    {
      v30 = v22;
    }

    else
    {
      v30 = v22 - v32;
    }
  }

  v29 = v53;
LABEL_28:
  if (v27 > 1)
  {
    v43 = v22 != v30;
    if (!rect)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v66.origin.x = v21;
  v66.origin.y = v30;
  v66.size.width = v24;
  v66.size.height = v26;
  v42 = CGRectGetMaxY(v66);
  v67.origin.x = floatingCopy2;
  v67.origin.y = displacementCopy;
  v67.size.width = v52;
  v67.size.height = v29;
  v43 = vabdd_f64(v42, CGRectGetMaxY(v67)) <= 0.1;
  if (rect)
  {
LABEL_32:
    *rect = v43;
  }

LABEL_33:
  if (guessed)
  {
    v44 = 0.0;
    if (v43)
    {
      v68.origin.x = v21;
      v68.origin.y = v30;
      v68.size.width = v24;
      v68.size.height = v26;
      v45 = CGRectGetMaxY(v68);
      v69.origin.x = floatingCopy2;
      v69.origin.y = displacementCopy;
      v69.size.width = v52;
      v69.size.height = v29;
      v44 = fmax(v45 - CGRectGetMaxY(v69), 0.0);
    }

    *guessed = v44;
  }

  return v21;
}

- (double)rectForRow:(uint64_t)row inSection:(char)section heightCanBeGuessed:
{
  if (self)
  {
    v6 = a2;
    if (*(self + 64) <= row || [(UITableViewRowData *)self numberOfRowsInSection:row]<= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:row];
      [currentHandler handleFailureInMethod:sel_rectForRow_inSection_heightCanBeGuessed_ object:self file:@"UITableViewRowData.m" lineNumber:2405 description:{@"request for rect at invalid index path (%@)", v14}];
    }

    temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)self temporarilyDeletedIndexPathBeingReordered];
    v9 = temporarilyDeletedIndexPathBeingReordered;
    if (temporarilyDeletedIndexPathBeingReordered && [temporarilyDeletedIndexPathBeingReordered section] == row)
    {
      if ([v9 row] == v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v6 -= [v9 row] < v6;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(self + 88) + 8 * row);
    if ((*(v11 + 8) & 1) == 0)
    {
      [(UISectionRowData *)*(*(self + 88) + 8 * row) refreshWithSection:row tableView:*(self + 8) tableViewRowData:self];
    }

    if ((*(v11 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:row];
    }

    [(UISectionRowData *)v11 offsetForRow:v6 adjustedForGap:1];
    if ((v10 & 1) == 0)
    {
      [(UITableViewRowData *)self heightForRow:v6 inSection:row canGuess:section adjustForReorderedRow:0];
    }

    [(UITableViewRowData *)self _ensureSectionOffsetIsValidForSection:row];
    [(UITableViewRowData *)self offsetForSection:v11];
  }

  return 0.0;
}

- (double)rectForGlobalRow:(char)row heightCanBeGuessed:
{
  if (!self)
  {
    return 0.0;
  }

  v5 = *MEMORY[0x1E695F058];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [(UITableViewRowData *)self _sectionRowForGlobalRow:a2 inSection:&v8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(UITableViewRowData *)self rectForRow:v6 inSection:v8 heightCanBeGuessed:row];
  }

  return v5;
}

- (id)indexPathsForRowsInRect:(CGFloat)rect extraHitSpaceBetweenRows:(CGFloat)rows
{
  if (!self)
  {
    array = 0;
    goto LABEL_39;
  }

  if (!*(self + 64))
  {
    array = MEMORY[0x1E695E0F0];
    goto LABEL_39;
  }

  array = [MEMORY[0x1E695DF70] array];
  v51.origin.x = [(UITableViewRowData *)self rectForSection:?];
  MinY = CGRectGetMinY(v51);
  v52.origin.x = [(UITableViewRowData *)self rectForSection:?];
  MaxY = CGRectGetMaxY(v52);
  v15 = dyld_program_sdk_at_least();
  p_left = (self + 40);
  p_right = (self + 56);
  if (!v15)
  {
    p_right = &UIEdgeInsetsZero.right;
    p_left = &UIEdgeInsetsZero.left;
  }

  v63.origin.x = *p_left;
  v63.size.width = *(self + 24) - (*p_left + *p_right);
  v63.size.height = MaxY - MinY;
  v53.origin.x = a2;
  v53.origin.y = rect;
  v53.size.width = rows;
  v53.size.height = a5;
  v63.origin.y = MinY;
  if (!CGRectIntersectsRect(v53, v63))
  {
    goto LABEL_39;
  }

  v54.origin.x = a2;
  v54.origin.y = rect;
  v54.size.width = rows;
  v54.size.height = a5;
  if (!CGRectIsEmpty(v54))
  {
    a5 = a5 + -1.0;
  }

  v55.origin.x = a2;
  v55.origin.y = rect;
  v55.size.width = rows;
  v55.size.height = a5;
  v18 = CGRectGetMinY(v55);
  v19 = [(UITableViewRowData *)self _sectionForPoint:*(self + 64) beginningWithSection:0.0 numberOfSections:v18];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v56.origin.x = a2;
  v56.origin.y = rect;
  v56.size.width = rows;
  v56.size.height = a5;
  v21 = CGRectGetMaxY(v56);
  v22 = [(UITableViewRowData *)self _sectionForPoint:v20 beginningWithSection:*(self + 64) - v20 numberOfSections:0.0, v21];
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = *(self + 64) - 1;
  }

  v23 = *(*(self + 88) + 8 * v20);
  v57.origin.x = a2;
  v57.origin.y = rect;
  v57.size.width = rows;
  v57.size.height = a5;
  v24 = CGRectGetMinY(v57);
  if (!v23)
  {
    v25 = 0;
    v32 = *(*(self + 88) + 8 * v22);
    if (v22 > v20)
    {
      goto LABEL_22;
    }

LABEL_43:
    v61.origin.x = a2;
    v61.origin.y = rect;
    v61.size.width = rows;
    v61.size.height = a5;
    v45 = CGRectGetMaxY(v61);
    v46 = [(UISectionRowData *)v32 _rowForPoint:v25 beginningWithRow:*(v32 + 32) - v25 numberOfRows:0.0 extraHitSpaceBetweenRows:v45, a6];
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = _sectionFooterMinY(self, v32);
      v62.origin.x = a2;
      v62.origin.y = rect;
      v62.size.width = rows;
      v62.size.height = a5;
      if (CGRectGetMaxY(v62) >= v47)
      {
        v46 = *(v32 + 32) - 1;
      }

      else
      {
        v46 = -1;
      }
    }

    if (v25 <= v46)
    {
      v48 = v46 + 1;
      do
      {
        v49 = [MEMORY[0x1E696AC88] indexPathForRow:v25 inSection:v20];
        [array addObject:v49];

        ++v25;
      }

      while (v48 != v25);
    }

    goto LABEL_39;
  }

  v25 = [(UISectionRowData *)v23 _rowForPoint:*(v23 + 32) beginningWithRow:0.0 numberOfRows:v24 extraHitSpaceBetweenRows:a6];
  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!*(v23 + 32))
    {
      if (v22 <= v20)
      {
        goto LABEL_39;
      }

      v32 = *(*(self + 88) + 8 * v22);
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }

    v26 = [(UITableViewRowData *)self offsetForSection:v23];
    v27 = *(v23 + 48);
    [(UISectionRowData *)v23 headerSize];
    v29 = v28;
    v30 = 0.0;
    if (v28 > 0.0)
    {
      [*(self + 8) _sectionHeaderToFirstRowPadding];
    }

    v31 = v26 + v27 + v29 + v30;
    v58.origin.x = a2;
    v58.origin.y = rect;
    v58.size.width = rows;
    v58.size.height = a5;
    if (CGRectGetMinY(v58) <= v31)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v32 = *(*(self + 88) + 8 * v22);
  if (v22 <= v20)
  {
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_22:
  while (v25 < *(v23 + 32))
  {
    v33 = [MEMORY[0x1E696AC88] indexPathForRow:v25 inSection:v20];
    [array addObject:v33];

    ++v25;
  }

  v34 = v20 + 1;
  if (v34 < v22)
  {
    v35 = *(self + 88);
    do
    {
      if (*(*(v35 + 8 * v34) + 32))
      {
        v36 = 0;
        do
        {
          v37 = [MEMORY[0x1E696AC88] indexPathForRow:v36 inSection:v34];
          [array addObject:v37];

          ++v36;
          v35 = *(self + 88);
        }

        while (v36 < *(*(v35 + 8 * v34) + 32));
      }

      ++v34;
    }

    while (v34 != v22);
  }

  v59.origin.x = a2;
  v59.origin.y = rect;
  v59.size.width = rows;
  v59.size.height = a5;
  v38 = CGRectGetMaxY(v59);
  if (!v32)
  {
    v39 = 0;
LABEL_35:
    v41 = 0;
    v42 = v39 + 1;
    do
    {
      v43 = [MEMORY[0x1E696AC88] indexPathForRow:v41 inSection:v22];
      [array addObject:v43];

      ++v41;
    }

    while (v42 != v41);
    goto LABEL_39;
  }

  v39 = [(UISectionRowData *)v32 _rowForPoint:*(v32 + 32) beginningWithRow:0.0 numberOfRows:v38 extraHitSpaceBetweenRows:a6];
  if (v39 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = _sectionFooterMinY(self, v32);
    v60.origin.x = a2;
    v60.origin.y = rect;
    v60.size.width = rows;
    v60.size.height = a5;
    if (CGRectGetMaxY(v60) < v40)
    {
      goto LABEL_39;
    }

    v39 = *(v32 + 32) - 1;
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_39:

  return array;
}

- (uint64_t)_sectionForPoint:(size_t)point beginningWithSection:(double)section numberOfSections:(CGFloat)sections
{
  *&__key = section;
  *(&__key + 1) = sections;
  if (*(self + 64) && (v15.origin.x = [(UITableViewRowData *)self rectForSection:a2], sections >= CGRectGetMinY(v15)) && (v16.origin.x = [(UITableViewRowData *)self rectForSection:?], sections <= CGRectGetMaxY(v16)) && (v9 = (*(self + 88) + 8 * a2), __compar[0] = MEMORY[0x1E69E9820], __compar[1] = 3221225472, __compar[2] = __77__UITableViewRowData__sectionForPoint_beginningWithSection_numberOfSections___block_invoke, __compar[3] = &unk_1E7123A18, __compar[4] = self, v13 = __key, (v10 = bsearch_b(&__key, v9, point, 8uLL, __compar)) != 0))
  {
    return (v10 - *(self + 88)) >> 3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (double)indexPathsForRowsInRect:(CGFloat)rect
{
  if (self)
  {
    self = [(UITableViewRowData *)self indexPathsForRowsInRect:a2 extraHitSpaceBetweenRows:rect, a4, a5, self[18]];
    v5 = vars8;
  }

  return self;
}

- (uint64_t)globalRowsInRect:(CGFloat)rect canGuess:(CGFloat)guess
{
  if (self)
  {
    numberOfRows = [(UITableViewRowData *)self numberOfRows];
    if (numberOfRows)
    {
      v13 = numberOfRows;
      v14 = numberOfRows - 1;
      temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)self temporarilyDeletedIndexPathBeingReordered];
      if (temporarilyDeletedIndexPathBeingReordered)
      {
        v16 = [(UITableViewRowData *)self globalRowForRowAtIndexPath:temporarilyDeletedIndexPathBeingReordered];
      }

      else
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v13 < 1)
      {
        v18 = 0;
        v21 = 0;
        v19 = v14;
      }

      else
      {
        v18 = 0;
        v19 = v14;
        do
        {
          v20 = v16 - (v19 - v18 > 1);
          if (v16 < v19)
          {
            v20 = v16 + 1;
          }

          if (v18 + (v19 - v18) / 2 == v16)
          {
            v21 = v20;
          }

          else
          {
            v21 = v18 + (v19 - v18) / 2;
          }

          v51.origin.x = [(UITableViewRowData *)self rectForGlobalRow:v21 heightCanBeGuessed:1];
          y = v51.origin.y;
          v63.origin.x = rect;
          v63.origin.y = guess;
          v63.size.width = a5;
          v63.size.height = a6;
          if (CGRectIntersectsRect(v51, v63))
          {
            break;
          }

          if (y < guess)
          {
            v18 = v21 + 1;
          }

          else
          {
            v19 = v21 - 1;
          }
        }

        while (v18 <= v19);
      }

      if (v18 > v19 || (v52.origin.x = [(UITableViewRowData *)self rectForGlobalRow:v21 heightCanBeGuessed:a2], x = v52.origin.x, v24 = v52.origin.y, width = v52.size.width, height = v52.size.height, v64.origin.x = rect, v64.origin.y = guess, v64.size.width = a5, v64.size.height = a6, !CGRectIntersectsRect(v52, v64)))
      {
        v17 = 0;
LABEL_46:

        return v17;
      }

      v49 = v24;
      v50 = x;
      v47 = height;
      v48 = width;
      if (v21 >= 1)
      {
        v53.origin.x = x;
        v53.origin.y = v24;
        v53.size.width = width;
        v53.size.height = height;
        MinY = CGRectGetMinY(v53);
        v54.origin.x = rect;
        v54.origin.y = guess;
        v54.size.width = a5;
        v54.size.height = a6;
        v28 = v21;
        if (MinY <= CGRectGetMinY(v54))
        {
LABEL_32:
          v17 = v28;
          if (v28 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_34:
            if (v21 < v14)
            {
              v58.origin.y = v49;
              v58.origin.x = v50;
              v58.size.height = v47;
              v58.size.width = v48;
              MaxY = CGRectGetMaxY(v58);
              v59.origin.x = rect;
              v59.origin.y = guess;
              v59.size.width = a5;
              v59.size.height = a6;
              if (MaxY < CGRectGetMaxY(v59))
              {
                v37 = v16 - 1;
                while (v21 + 1 < v13)
                {
                  v38 = objc_autoreleasePoolPush();
                  v60.origin.x = [(UITableViewRowData *)self rectForGlobalRow:a2 heightCanBeGuessed:?];
                  v39 = v60.origin.x;
                  v40 = v60.origin.y;
                  v41 = v60.size.width;
                  v42 = v60.size.height;
                  v66.origin.x = rect;
                  v66.origin.y = guess;
                  v66.size.width = a5;
                  v66.size.height = a6;
                  if (!CGRectIntersectsRect(v60, v66))
                  {
                    objc_autoreleasePoolPop(v38);
                    goto LABEL_46;
                  }

                  v61.origin.x = v39;
                  v61.origin.y = v40;
                  v61.size.width = v41;
                  v61.size.height = v42;
                  v43 = CGRectGetMaxY(v61);
                  v62.origin.x = rect;
                  v62.origin.y = guess;
                  v62.size.width = a5;
                  v62.size.height = a6;
                  v44 = CGRectGetMaxY(v62);
                  objc_autoreleasePoolPop(v38);
                  if (v43 >= v44 && v37 != v21++)
                  {
                    goto LABEL_46;
                  }
                }
              }
            }

            goto LABEL_46;
          }
        }

        else
        {
          v28 = v21;
          while (1)
          {
            v17 = v28 - 1;
            if (v28 < 1)
            {
              break;
            }

            v29 = objc_autoreleasePoolPush();
            v55.origin.x = [(UITableViewRowData *)self rectForGlobalRow:a2 heightCanBeGuessed:?];
            v30 = v55.origin.x;
            v31 = v55.origin.y;
            v32 = v55.size.width;
            v33 = v55.size.height;
            v65.origin.x = rect;
            v65.origin.y = guess;
            v65.size.width = a5;
            v65.size.height = a6;
            if (!CGRectIntersectsRect(v55, v65))
            {
              objc_autoreleasePoolPop(v29);
              goto LABEL_32;
            }

            v56.origin.x = v30;
            v56.origin.y = v31;
            v56.size.width = v32;
            v56.size.height = v33;
            v34 = CGRectGetMinY(v56);
            v57.origin.x = rect;
            v57.origin.y = guess;
            v57.size.width = a5;
            v57.size.height = a6;
            v35 = CGRectGetMinY(v57);
            objc_autoreleasePoolPop(v29);
            --v28;
            if (v34 < v35)
            {
              goto LABEL_34;
            }
          }
        }
      }

      v17 = 0;
      goto LABEL_34;
    }
  }

  return 0;
}

- (uint64_t)globalRowForRowAtIndexPath:(uint64_t)result
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = [a2 row];
    section = [a2 section];
    if (section >= *(v3 + 64))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v6 = section;
    if (v4 >= [(UITableViewRowData *)v3 numberOfRowsInSection:section])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          if (*(v3 + 64) <= v7)
          {
            if (dyld_program_sdk_at_least())
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _UITableViewRowDataNumberOfRowsInSection(UITableViewRowData *__unsafe_unretained, NSInteger)"}];
              [currentHandler handleFailureInFunction:v13 file:@"UITableViewRowData.m" lineNumber:1769 description:{@"Requested the number of rows for section (%ld) which is out of bounds.", v7}];
            }

            else
            {
              v14 = *(__UILogGetCategoryCachedImpl("Assert", &_UITableViewRowDataNumberOfRowsInSection___s_category) + 8);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v16 = v7;
                _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Requested the number of rows for section (%ld) which is out of bounds.", buf, 0xCu);
              }
            }

            v10 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v9 = *(*(v3 + 88) + 8 * v7);
            if ((*(v9 + 8) & 1) == 0)
            {
              [(UISectionRowData *)*(*(v3 + 88) + 8 * v7) refreshWithSection:v7 tableView:*(v3 + 8) tableViewRowData:v3];
            }

            if ((*(v9 + 9) & 1) == 0)
            {
              [(UITableViewRowData *)v3 _ensureSectionOffsetIsValidForSection:v7];
            }

            v10 = *(v9 + 32);
            temporarilyDeletedIndexPathBeingReordered = [(UITableViewRowData *)v3 temporarilyDeletedIndexPathBeingReordered];
            if (temporarilyDeletedIndexPathBeingReordered)
            {
              if (v7 == [temporarilyDeletedIndexPathBeingReordered section])
              {
                ++v10;
              }
            }
          }

          v8 += v10;
          ++v7;
        }

        while (v6 != v7);
      }

      else
      {
        v8 = 0;
      }

      return v8 + v4;
    }
  }

  return result;
}

uint64_t __77__UITableViewRowData__sectionForPoint_beginningWithSection_numberOfSections___block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = (a3 - *(v4 + 88)) >> 3;
  v6 = *a3;
  if ((*(*a3 + 8) & 1) == 0)
  {
    [(UISectionRowData *)v6 refreshWithSection:v5 tableView:*(v4 + 8) tableViewRowData:v4];
    v4 = *(a1 + 32);
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)v4 _ensureSectionOffsetIsValidForSection:v5];
    v4 = *(a1 + 32);
  }

  v9.origin.x = [(UITableViewRowData *)v4 rectForSection:v5];
  y = v9.origin.y;
  if (CGRectContainsPoint(v9, *(a1 + 40)))
  {
    return 0;
  }

  if (*(a1 + 48) >= y)
  {
    return 1;
  }

  return 0xFFFFFFFFLL;
}

- (uint64_t)sectionsInRect:(CGFloat)rect
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 64);
  if (!v6)
  {
    return 0;
  }

  if (v6 == 1)
  {
    v54.origin.x = [(UITableViewRowData *)result rectForSection:?];
    v54.origin.y = v11;
    v54.size.width = v12;
    v54.size.height = v13;
    v48.origin.x = a2;
    v48.origin.y = rect;
    v48.size.width = a4;
    v48.size.height = a5;
    CGRectIntersectsRect(v48, v54);
    return 0;
  }

  MinX = CGRectGetMinX(*&a2);
  v49.origin.x = a2;
  v49.origin.y = rect;
  v49.size.width = a4;
  v49.size.height = a5;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = a2;
  v50.origin.y = rect;
  v50.size.width = a4;
  v50.size.height = a5;
  v44 = CGRectGetMinX(v50);
  v51.origin.x = a2;
  v51.origin.y = rect;
  v51.size.width = a4;
  v51.size.height = a5;
  MaxY = CGRectGetMaxY(v51);
  if (a5 > 0.0)
  {
    MaxY = MaxY + -0.01;
  }

  v47 = MaxY;
  v16 = [(UITableViewRowData *)v5 rectForSection:?];
  v42 = v17;
  v43 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(UITableViewRowData *)v5 rectForSection:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v45 = MinY;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  if (MinY >= v19)
  {
    v34 = 1;
  }

  else
  {
    v52.origin.x = a2;
    v52.origin.y = rect;
    v52.size.width = a4;
    v52.size.height = a5;
    v30 = v22;
    v55.origin.y = v19;
    v31 = v26;
    v55.size.width = v21;
    v32 = v28;
    v55.size.height = v42;
    v55.origin.x = v43;
    v33 = CGRectIntersectsRect(v52, v55);
    v28 = v32;
    v26 = v31;
    v22 = v30;
    v34 = !v33;
    if (v33)
    {
      v29 = 0;
    }
  }

  if (v47 > v24)
  {
    v53.origin.x = a2;
    v53.origin.y = rect;
    v53.size.width = a4;
    v53.size.height = a5;
    v35 = v24;
    if (CGRectIntersectsRect(v53, *&v22))
    {
      v36 = v5[8] - 1;
      if (!v34)
      {
        goto LABEL_25;
      }

LABEL_18:
      v37 = [(UITableViewRowData *)v5 _sectionForPoint:v5[8] beginningWithSection:MinX numberOfSections:v45];
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      if (v37 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v37;
        if (v5[15] - 1 > 1)
        {
          v29 = v37;
        }

        else
        {
          v39 = *(*(v5[11] + 8 * v37) + 48);
          v29 = v37;
          if (v39 > 0.0)
          {
            v40 = [(UITableViewRowData *)v5 _sectionForPoint:v5[8] beginningWithSection:MinX numberOfSections:v45 - v39];
            if (v40 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = v38;
            }

            else
            {
              v29 = v40;
            }
          }
        }
      }

      goto LABEL_25;
    }
  }

  v36 = 0x7FFFFFFFFFFFFFFFLL;
  if (v34)
  {
    goto LABEL_18;
  }

LABEL_25:
  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = [(UITableViewRowData *)v5 _sectionForPoint:v5[8] beginningWithSection:v44 numberOfSections:v47];
  }

  if (v29 == 0x7FFFFFFFFFFFFFFFLL || v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v29;
  }
}

- (id)indexPathForRowAtGlobalRow:(void *)row
{
  v4 = 0;
  if (row)
  {
    if (a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      var18[0] = 0x7FFFFFFFFFFFFFFFLL;
      v5 = [(UITableViewRowData *)row _sectionRowForGlobalRow:a2 inSection:var18];
      if (var18[0] == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0;
      }

      else
      {
        v4 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:?];
      }
    }

    v2 = var18[4];
  }

  return v4;
}

- (uint64_t)headerAlignmentForSection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2 < 0 || *(result + 64) <= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_headerAlignmentForSection_ object:v3 file:@"UITableViewRowData.m" lineNumber:2811 description:{@"request for invalid section (%ld)", a2}];
    }

    v4 = *(*(v3 + 88) + 8 * a2);
    if ((*(v4 + 8) & 1) == 0)
    {
      [(UISectionRowData *)v4 refreshWithSection:a2 tableView:*(v3 + 8) tableViewRowData:v3];
      v4 = *(*(v3 + 88) + 8 * a2);
    }

    if ((*(v4 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)v3 _ensureSectionOffsetIsValidForSection:a2];
      v4 = *(*(v3 + 88) + 8 * a2);
    }

    return *(v4 + 64);
  }

  return result;
}

- (uint64_t)footerAlignmentForSection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2 < 0 || *(result + 64) <= a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_footerAlignmentForSection_ object:v3 file:@"UITableViewRowData.m" lineNumber:2818 description:{@"request for invalid section (%ld)", a2}];
    }

    v4 = *(*(v3 + 88) + 8 * a2);
    if ((*(v4 + 8) & 1) == 0)
    {
      [(UISectionRowData *)v4 refreshWithSection:a2 tableView:*(v3 + 8) tableViewRowData:v3];
      v4 = *(*(v3 + 88) + 8 * a2);
    }

    if ((*(v4 + 9) & 1) == 0)
    {
      [(UITableViewRowData *)v3 _ensureSectionOffsetIsValidForSection:a2];
      v4 = *(*(v3 + 88) + 8 * a2);
    }

    return *(v4 + 72);
  }

  return result;
}

- (double)maxHeaderTitleWidthForSection:(uint64_t)section
{
  if (!section)
  {
    return 0.0;
  }

  if (a2 < 0 || *(section + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_maxHeaderTitleWidthForSection_ object:section file:@"UITableViewRowData.m" lineNumber:2825 description:{@"request for invalid section (%ld)", a2}];
  }

  v4 = *(*(section + 88) + 8 * a2);
  if ((*(v4 + 8) & 1) == 0)
  {
    [(UISectionRowData *)v4 refreshWithSection:a2 tableView:*(section + 8) tableViewRowData:section];
    v4 = *(*(section + 88) + 8 * a2);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
    v4 = *(*(section + 88) + 8 * a2);
  }

  return *(v4 + 80);
}

- (double)maxFooterTitleWidthForSection:(uint64_t)section
{
  if (!section)
  {
    return 0.0;
  }

  if (a2 < 0 || *(section + 64) <= a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_maxFooterTitleWidthForSection_ object:section file:@"UITableViewRowData.m" lineNumber:2832 description:{@"request for invalid section (%ld)", a2}];
  }

  v4 = *(*(section + 88) + 8 * a2);
  if ((*(v4 + 8) & 1) == 0)
  {
    [(UISectionRowData *)v4 refreshWithSection:a2 tableView:*(section + 8) tableViewRowData:section];
    v4 = *(*(section + 88) + 8 * a2);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    [(UITableViewRowData *)section _ensureSectionOffsetIsValidForSection:a2];
    v4 = *(*(section + 88) + 8 * a2);
  }

  return *(v4 + 88);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UITableViewRowData alloc] initWithTableView:?];
  v4[8] = self->_numSections;
  sectionRowDataCapacity = self->_sectionRowDataCapacity;
  v4[10] = sectionRowDataCapacity;
  v6 = malloc_type_calloc(sectionRowDataCapacity, 8uLL, 0x80040B8603338uLL);
  if (self->_numSections >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [self->_sectionRowData[v7] copy];
      v9 = v6[v7];
      v6[v7] = v8;

      ++v7;
    }

    while (v7 < self->_numSections);
  }

  v4[11] = v6;
  v4[17] = *&self->_minimumRowHeight;
  v4[18] = *&self->_rowSpacing;
  v4[3] = *&self->_tableViewWidth;
  v10 = *&self->_sectionContentInset.bottom;
  *(v4 + 2) = *&self->_sectionContentInset.top;
  *(v4 + 3) = v10;
  v4[12] = *&self->_tableHeaderHeight;
  v4[13] = *&self->_tableFooterHeight;
  v4[14] = *&self->_heightForTableHeaderViewHiding;
  v4[19] = *&self->_tableTopPadding;
  v4[20] = *&self->_tableBottomPadding;
  v4[21] = *&self->_tableSidePadding;
  v11 = [(NSIndexPath *)self->_reorderedIndexPath copy];
  v12 = v4[23];
  v4[23] = v11;

  v13 = [(NSIndexPath *)self->_draggedIndexPath copy];
  v14 = v4[24];
  v4[24] = v13;

  v4[28] = *&self->_draggedRowHeight;
  v15 = [(NSIndexPath *)self->_gapIndexPath copy];
  v16 = v4[22];
  v4[22] = v15;

  v4[27] = *&self->_gapRowHeight;
  *(v4 + 32) = self->_rowDataFlags;
  *(v4 + 72) = self->_estimatesHeights;
  return v4;
}

- (uint64_t)ensureHeightsFaultedInForScrollToIndexPath:(double)path boundsHeight:
{
  if (result)
  {
    v5 = result;
    if ([a2 section] == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__assertValidIndexPath_allowEmptySection_ object:v5 file:@"UITableViewRowData.m" lineNumber:2934 description:@"Invalid indexPath"];
    }

    if ([a2 section] < 0 || objc_msgSend(a2, "section") >= *(v5 + 64))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__assertValidIndexPath_allowEmptySection_ object:v5 file:@"UITableViewRowData.m" lineNumber:2935 description:@"Invalid indexPath"];
    }

    if ([a2 row] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([a2 row] < 0 || (v6 = objc_msgSend(a2, "row"), v6 >= -[UITableViewRowData numberOfRowsInSection:](v5, objc_msgSend(a2, "section"))))
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:sel__assertValidIndexPath_allowEmptySection_ object:v5 file:@"UITableViewRowData.m" lineNumber:2938 description:@"Invalid indexPath"];
      }
    }

    result = [*(v5 + 8) _estimatesHeights];
    if (result)
    {
      if ([a2 row] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = -[UITableViewRowData rectForHeaderInSection:heightCanBeGuessed:](v5, [a2 section], 0);
      }

      else
      {
        v8 = -[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](v5, [a2 row], objc_msgSend(a2, "section"), 0);
      }

      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      MinY = CGRectGetMinY(*&v8);
      v47.origin.x = v12;
      v47.origin.y = v13;
      v47.size.width = v14;
      v47.size.height = v15;
      MaxY = CGRectGetMaxY(v47);
      v18 = MaxY - path;
      v19 = MinY + path;
      v20 = a2;
      v21 = v20;
      v22 = 0;
      if (MaxY >= MinY + path)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v24 = v22;
          v22 = v23;

          v23 = [(UITableViewRowData *)v5 _nextIndexPathOrSectionHeader:v22];

          if ([v23 section] == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          section = [v23 section];
          if (section != [v22 section])
          {
            v26 = *(*(v5 + 88) + 8 * [v23 section]);
            v27 = -[UITableViewRowData heightForHeaderInSection:canGuess:](v5, [v23 section], 0);
            if (v26)
            {
              v28 = v26[14];
              if (v28 < -1.0)
              {
                v28 = -v28;
              }

              v29 = v26[6] + v28;
              if (v28 > 0.0)
              {
                [*(*(v26 + 12) + 8) _sectionHeaderToFirstRowPadding];
                v29 = v29 + v30;
              }
            }

            else
            {
              v29 = 0.0;
            }

            MaxY = MaxY + v27 + v29;
          }

          if ([v23 row] != 0x7FFFFFFFFFFFFFFFLL)
          {
            MaxY = MaxY + -[UITableViewRowData heightForRow:inSection:canGuess:adjustForReorderedRow:](v5, [v23 row], objc_msgSend(v23, "section"), 0, 1) + *(v5 + 144);
          }

          v31 = [v23 row];
          if (v31 == -[UITableViewRowData numberOfRowsInSection:](v5, [v23 section]) - 1 || objc_msgSend(v23, "row") == 0x7FFFFFFFFFFFFFFFLL)
          {
            MaxY = MaxY + -[UITableViewRowData heightForFooterInSection:canGuess:](v5, [v23 section], 0);
          }
        }

        while (MaxY < v19);
      }

      v32 = v21;

      if (MinY > v18)
      {
        while (1)
        {
          v33 = v22;
          v22 = v32;

          section2 = [v22 section];
          section4 = 0x7FFFFFFFFFFFFFFFLL;
          v36 = 0x7FFFFFFFFFFFFFFFLL;
          if (section2 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_43;
          }

          if ([v22 row] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v22, "row"))
          {
            break;
          }

          if ([v22 section] >= 1)
          {
            section4 = [v22 section] - 1;
            if ([(UITableViewRowData *)v5 numberOfRowsInSection:section4]>= 1)
            {
              v37 = [(UITableViewRowData *)v5 numberOfRowsInSection:section4];
              goto LABEL_41;
            }
          }

          v36 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_43:
          v32 = [MEMORY[0x1E696AC88] indexPathForRow:v36 inSection:section4];

          if ([v32 section] != 0x7FFFFFFFFFFFFFFFLL)
          {
            section3 = [v32 section];
            if (section3 != [v22 section])
            {
              MinY = MinY - -[UITableViewRowData heightForFooterInSection:canGuess:](v5, [v32 section], 0);
            }

            if ([v32 row] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v39 = MinY - *(v5 + 144);
              MinY = v39 - -[UITableViewRowData heightForRow:inSection:canGuess:adjustForReorderedRow:](v5, [v32 row], objc_msgSend(v32, "section"), 0, 1);
            }

            if (![v32 row] || objc_msgSend(v32, "row") == 0x7FFFFFFFFFFFFFFFLL)
            {
              v40 = *(*(v5 + 88) + 8 * [v32 section]);
              v41 = v40;
              if (v40)
              {
                v42 = v40[14];
                if (v42 < -1.0)
                {
                  v42 = -v42;
                }

                v43 = v40[6] + v42;
                if (v42 > 0.0)
                {
                  [*(*(v40 + 12) + 8) _sectionHeaderToFirstRowPadding];
                  v43 = v43 + v44;
                }
              }

              else
              {
                v43 = 0.0;
              }

              MinY = MinY - v43 - -[UITableViewRowData heightForHeaderInSection:canGuess:](v5, [v32 section], 0);
            }

            if (MinY > v18)
            {
              continue;
            }
          }

          goto LABEL_59;
        }

        section4 = [v22 section];
        v37 = [v22 row];
LABEL_41:
        v36 = v37 - 1;
        goto LABEL_43;
      }

LABEL_59:

      return 1;
    }
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"{\n"];
  if (self->_numSections)
  {
    v4 = 0;
    do
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [self->_sectionRowData[v4] description];
      v7 = [v5 stringWithFormat:@"%@", v6];
      [v3 appendString:v7];

      numSections = self->_numSections;
      if (v4 < numSections - 1)
      {
        [v3 appendString:{@", \n"}];
        numSections = self->_numSections;
      }

      ++v4;
    }

    while (v4 < numSections);
  }

  [v3 appendString:@"\n}"];
  v9 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = UITableViewRowData;
  v10 = [(UITableViewRowData *)&v13 description];
  v11 = [v9 stringWithFormat:@"%@ num sections: %ld capacity: %ld; minimum row height: %g; table view width: %g; table header height: %g; table footer height: %g; table top padding: %g; table bottom padding: %g; reordered index path: %@; dragged index path: %@; gap row height: %g; dragged row height: %g; section data: %@", v10, self->_numSections, self->_sectionRowDataCapacity, *&self->_minimumRowHeight, *&self->_tableViewWidth, *&self->_tableHeaderHeight, *&self->_tableFooterHeight, *&self->_tableTopPadding, *&self->_tableBottomPadding, self->_reorderedIndexPath, self->_draggedIndexPath, *&self->_gapRowHeight, *&self->_draggedRowHeight, v3];;

  return v11;
}

@end