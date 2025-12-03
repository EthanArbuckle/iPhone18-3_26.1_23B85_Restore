@interface TSTHiddenRowsColumnsCache
- (TSTHiddenRowsColumnsCache)init;
- (TSUCellCoord)visibleCellOffsetBy:(TSUColumnRowOffset)by fromCellID:(TSUCellCoord)d;
- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleRowAfterAndIncludingRowAtIndex:(unsigned int)index;
- (unsigned)indexOfVisibleRowAfterRowAtIndex:(unsigned int)index;
- (unsigned)indexOfVisibleRowBeforeAndIncludingRowAtIndex:(unsigned int)index;
- (unsigned)indexOfVisibleRowBeforeRowAtIndex:(unsigned int)index;
- (unsigned)nonUserHiddenRowAfterAndIncludingRow:(unsigned int)row;
- (unsigned)numberOfVisibleRowsFromHeader:(unsigned int)header;
- (unsigned)numberOfVisibleRowsFromStartRowIndex:(unint64_t)index toEndRowIndex:(unsigned int)rowIndex;
- (unsigned)previousNthVisibleColumn:(unsigned int)column fromColumnIndex:(unsigned __int16)index;
- (unsigned)previousNthVisibleRow:(unsigned int)row fromRowIndex:(unsigned int)index;
- (void)enumerateVisibleColumnIndexesInRange:(_NSRange)range usingBlock:(id)block;
- (void)validate:(id)validate;
- (void)validateChangeDescriptors:(id)descriptors;
@end

@implementation TSTHiddenRowsColumnsCache

- (TSTHiddenRowsColumnsCache)init
{
  v18.receiver = self;
  v18.super_class = TSTHiddenRowsColumnsCache;
  v2 = [(TSTHiddenRowsColumnsCache *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSTHiddenStateIndexSet);
    rowsVisible = v2->_rowsVisible;
    v2->_rowsVisible = v3;

    v5 = objc_alloc_init(TSTHiddenStateIndexSet);
    rowsUserVisible = v2->_rowsUserVisible;
    v2->_rowsUserVisible = v5;

    v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v7, 0, 1000000, v8);
    rowsInvalid = v2->_rowsInvalid;
    v2->_rowsInvalid = v9;

    v11 = objc_alloc_init(TSTHiddenStateIndexSet);
    columnsVisible = v2->_columnsVisible;
    v2->_columnsVisible = v11;

    v15 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v13, 0, 1000, v14);
    columnsInvalid = v2->_columnsInvalid;
    v2->_columnsInvalid = v15;
  }

  return v2;
}

- (unsigned)indexOfVisibleRowBeforeRowAtIndex:(unsigned int)index
{
  v5 = objc_msgSend_visibleIndexBeforeIndex_(self->_rowsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v5;
}

- (unsigned)indexOfVisibleRowBeforeAndIncludingRowAtIndex:(unsigned int)index
{
  v5 = objc_msgSend_visibleIndexBeforeAndIncludingIndex_(self->_rowsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v5;
}

- (unsigned)indexOfVisibleRowAfterRowAtIndex:(unsigned int)index
{
  v5 = objc_msgSend_visibleIndexAfterIndex_(self->_rowsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v5;
}

- (unsigned)indexOfVisibleRowAfterAndIncludingRowAtIndex:(unsigned int)index
{
  v5 = objc_msgSend_visibleIndexAfterAndIncludingIndex_(self->_rowsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v5;
}

- (unsigned)nonUserHiddenRowAfterAndIncludingRow:(unsigned int)row
{
  v5 = objc_msgSend_visibleIndexAfterAndIncludingIndex_(self->_rowsUserVisible, a2, row, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v5;
}

- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_visibleIndexBeforeIndex_(self->_columnsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_visibleIndexBeforeAndIncludingIndex_(self->_columnsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_visibleIndexAfterIndex_(self->_columnsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_visibleIndexAfterAndIncludingIndex_(self->_columnsVisible, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)previousNthVisibleRow:(unsigned int)row fromRowIndex:(unsigned int)index
{
  NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(self->_rowsVisible, a2, row, index, v4);
  if (NthPreviousVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(NthPreviousVisibleIndex_fromIndex) = 0x7FFFFFFF;
  }

  return NthPreviousVisibleIndex_fromIndex;
}

- (unsigned)previousNthVisibleColumn:(unsigned int)column fromColumnIndex:(unsigned __int16)index
{
  NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(self->_columnsVisible, a2, column, index, v4);
  if (NthPreviousVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return NthPreviousVisibleIndex_fromIndex;
  }
}

- (TSUCellCoord)visibleCellOffsetBy:(TSUColumnRowOffset)by fromCellID:(TSUCellCoord)d
{
  column = d.column;
  v6 = *&d & 0xFFFF000000000000;
  row = d.row;
  if (d.row != 0x7FFFFFFFLL)
  {
    v8 = d.column;
    if (v8 != 0x7FFF)
    {
      var1 = by.var1;
      if (by.var0)
      {
        columnsVisible = self->_columnsVisible;
        if (by.var0 < 1)
        {
          NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(columnsVisible, a2, -by.var0, v8, v4);
        }

        else
        {
          NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthNextVisibleIndex_fromIndex_(columnsVisible, a2, by.var0 & 0x7FFFFFFF, v8, v4);
        }

        if (NthPreviousVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          column = 0x7FFF;
        }

        else
        {
          column = NthPreviousVisibleIndex_fromIndex;
        }
      }

      if (var1)
      {
        rowsVisible = self->_rowsVisible;
        if (var1 < 1)
        {
          NthNextVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(rowsVisible, a2, -var1, row, v4);
        }

        else
        {
          NthNextVisibleIndex_fromIndex = objc_msgSend_findNthNextVisibleIndex_fromIndex_(rowsVisible, a2, var1, row, v4);
        }

        v6 = 0;
        if (NthNextVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          row = 0x7FFFFFFFLL;
        }

        else
        {
          row = NthNextVisibleIndex_fromIndex;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return (v6 | (column << 32) | row);
}

- (unsigned)numberOfVisibleRowsFromHeader:(unsigned int)header
{
  v5 = *&header;
  v8 = objc_msgSend_rowMarkIndex(self, a2, *&header, v3, v4);

  return objc_msgSend_numberOfVisibleRowsFromStartRowIndex_toEndRowIndex_(self, v7, v8, v5, v9);
}

- (unsigned)numberOfVisibleRowsFromStartRowIndex:(unint64_t)index toEndRowIndex:(unsigned int)rowIndex
{
  if (rowIndex >= index)
  {
    return objc_msgSend_numberVisibleIndicesInRange_(self->_rowsVisible, a2, index, rowIndex - index + 1, v4);
  }

  else
  {
    return 0;
  }
}

- (void)enumerateVisibleColumnIndexesInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  columnsVisible = self->_columnsVisible;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214C2AD0;
  v11[3] = &unk_278466440;
  v12 = blockCopy;
  v9 = blockCopy;
  objc_msgSend_enumerateVisibleIndexesInRange_usingBlock_(columnsVisible, v10, location, length, v11);
}

- (void)validate:(id)validate
{
  validateCopy = validate;
  v9 = objc_msgSend_numberOfRows(validateCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_numberOfHeaderRows(validateCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfColumns(validateCopy, v15, v16, v17, v18);
  objc_msgSend_setCount_(self->_rowsVisible, v20, v9, v21, v22);
  objc_msgSend_setCount_(self->_rowsUserVisible, v23, v9, v24, v25);
  objc_msgSend_setRowMarkIndex_(self, v26, v14, v27, v28);
  objc_msgSend_removeIndexesInRange_(self->_rowsInvalid, v29, v9, ~v9, v30);
  objc_msgSend_setCount_(self->_columnsVisible, v31, v19, v32, v33);
  objc_msgSend_removeIndexesInRange_(self->_columnsInvalid, v34, v19, ~v19, v35);
  if ((objc_msgSend_isDynamicallyHidingRowsCols(validateCopy, v36, v37, v38, v39) & 1) != 0 || (objc_msgSend_tableInfo(validateCopy, v40, v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend_numberOfHiddenColumns(v44, v45, v46, v47, v48), v44, v49))
  {
    columnsInvalid = self->_columnsInvalid;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_2214C2DBC;
    v94[3] = &unk_278466468;
    v97 = v19;
    v95 = validateCopy;
    selfCopy = self;
    objc_msgSend_enumerateIndexesUsingBlock_(columnsInvalid, v52, v94, v53, v54);
    objc_msgSend_removeAllIndexes(self->_columnsInvalid, v55, v56, v57, v58);
  }

  else
  {
    objc_msgSend_setHidden_inRange_(self->_columnsVisible, v50, 0, 0, v19);
    objc_msgSend_removeAllIndexes(self->_columnsInvalid, v86, v87, v88, v89);
  }

  if ((objc_msgSend_isDynamicallyHidingRowsCols(validateCopy, v59, v60, v61, v62) & 1) == 0)
  {
    v67 = objc_msgSend_tableInfo(validateCopy, v63, v64, v65, v66);
    v72 = objc_msgSend_numberOfHiddenRows(v67, v68, v69, v70, v71);

    if (!v72)
    {
      objc_msgSend_setHidden_inRange_(self->_rowsVisible, v63, 0, 0, v9);
      objc_msgSend_setHidden_inRange_(self->_rowsUserVisible, v90, 0, 0, v9);
      goto LABEL_11;
    }
  }

  if (objc_msgSend_emptyFilteredTable(validateCopy, v63, v64, v65, v66))
  {
    objc_msgSend_setHidden_inRange_(self->_rowsVisible, v73, 0, 0, 1);
    objc_msgSend_setHidden_inRange_(self->_rowsUserVisible, v75, 0, 0, 1);
LABEL_11:
    objc_msgSend_removeAllIndexes(self->_rowsInvalid, v76, v77, v78, v79);
    goto LABEL_12;
  }

  objc_msgSend_removeIndexesInRange_(self->_rowsInvalid, v73, v9, ~v9, v74);
  rowsInvalid = self->_rowsInvalid;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_2214C2E4C;
  v92[3] = &unk_2784664B0;
  v93 = validateCopy;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = sub_2214C2F48;
  v91[3] = &unk_2784664D8;
  v91[4] = self;
  objc_msgSend_tsu_enumerateRangesConcurrentlyUsingBeginBlock_concurrentBlock_finalBlock_(rowsInvalid, v81, &unk_2834A9698, v92, v91);
  objc_msgSend_removeAllIndexes(self->_rowsInvalid, v82, v83, v84, v85);

LABEL_12:
}

- (void)validateChangeDescriptors:(id)descriptors
{
  v118 = *MEMORY[0x277D85DE8];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  descriptorsCopy = descriptors;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v5, &v113, v117, 16);
  if (v10)
  {
    v98 = v104;
    v11 = *v114;
    v12 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v114 != v11)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v14 = *(*(&v113 + 1) + 8 * i);
        v15 = objc_msgSend_changeDescriptor(v14, v6, v7, v8, v9, v98);
        v20 = v15;
        if (v15 > 22)
        {
          if (v15 > 27)
          {
            switch(v15)
            {
              case 28:
                v109[0] = 0;
                v109[1] = v109;
                v109[2] = 0x2020000000;
                v110 = 0x7FFFFFFF;
                v107[0] = 0;
                v107[1] = v107;
                v107[2] = 0x2020000000;
                v108 = 1;
                v105[0] = 0;
                v105[1] = v105;
                v105[2] = 0x2020000000;
                v106 = 1;
                v74 = objc_msgSend_shuffleMapping(v14, v16, v17, v18, v19);
                v103[0] = MEMORY[0x277D85DD0];
                v103[1] = 3221225472;
                v104[0] = sub_2214C3788;
                v104[1] = &unk_278466528;
                v104[2] = self;
                v104[3] = v109;
                v104[4] = v107;
                v104[5] = v105;
                objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(v74, v75, v103, v76, v77);

                v82 = objc_msgSend_shuffleMapping(v14, v78, v79, v80, v81);
                objc_msgSend_applyMappingToIndexSet_(v82, v83, self->_rowsInvalid, v84, v85);

                _Block_object_dispose(v105, 8);
                _Block_object_dispose(v107, 8);
                _Block_object_dispose(v109, 8);
                continue;
              case 29:
                goto LABEL_27;
              case 51:
                rowsInvalid = self->_rowsInvalid;
                v31 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
                v36 = objc_msgSend_intersectingRowsIndexSet(v31, v32, v33, v34, v35);
                objc_msgSend_addIndexes_(rowsInvalid, v37, v36, v38, v39);

                columnsInvalid = self->_columnsInvalid;
                v45 = objc_msgSend_cellRegion(v14, v41, v42, v43, v44);
                v50 = objc_msgSend_intersectingColumnsIndexSet(v45, v46, v47, v48, v49);
                objc_msgSend_addIndexes_(columnsInvalid, v51, v50, v52, v53);

                continue;
            }
          }

          else
          {
            switch(v15)
            {
              case 23:
                goto LABEL_27;
              case 24:
                v90 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
                v112[0] = v12;
                v112[1] = 3221225472;
                v112[2] = sub_2214C3684;
                v112[3] = &unk_278466500;
                v112[4] = self;
                objc_msgSend_enumerateRowRangesInReverseUsingBlock_(v90, v91, v112, v92, v93);

                continue;
              case 25:
                v25 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
                v111[0] = v12;
                v111[1] = 3221225472;
                v111[2] = sub_2214C36FC;
                v111[3] = &unk_278466500;
                v111[4] = self;
                objc_msgSend_enumerateRowRangesUsingBlock_(v25, v26, v111, v27, v28);

                continue;
            }
          }
        }

        else if (v15 > 6)
        {
          if (v15 == 7)
          {
LABEL_28:
            v64 = self->_columnsInvalid;
            v65 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
            v70 = objc_msgSend_intersectingColumnsIndexSet(v65, v66, v67, v68, v69);
            objc_msgSend_addIndexes_(v64, v71, v70, v72, v73);

            continue;
          }

          if (v15 == 8 || v15 == 10)
          {
LABEL_27:
            v54 = self->_rowsInvalid;
            v55 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
            v60 = objc_msgSend_intersectingRowsIndexSet(v55, v56, v57, v58, v59);
            objc_msgSend_addIndexes_(v54, v61, v60, v62, v63);

            continue;
          }
        }

        else
        {
          switch(v15)
          {
            case 2:
              goto LABEL_28;
            case 3:
              v86 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
              v102[0] = v12;
              v102[1] = 3221225472;
              v102[2] = sub_2214C38A4;
              v102[3] = &unk_278466500;
              v102[4] = self;
              objc_msgSend_enumerateColumnRangesInReverseUsingBlock_(v86, v87, v102, v88, v89);

              continue;
            case 4:
              v21 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
              v101[0] = v12;
              v101[1] = 3221225472;
              v101[2] = sub_2214C3908;
              v101[3] = &unk_278466500;
              v101[4] = self;
              objc_msgSend_enumerateColumnRangesUsingBlock_(v21, v22, v101, v23, v24);

              continue;
          }
        }

        v94 = objc_msgSend_cellRegion(v14, v16, v17, v18, v19);
        v99[0] = v12;
        v99[1] = 3221225472;
        v99[2] = sub_2214C3980;
        v99[3] = &unk_278466550;
        v100 = v20;
        v99[4] = self;
        v99[5] = v14;
        objc_msgSend_enumerateCellRangesUsingBlock_(v94, v95, v99, v96, v97);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v6, &v113, v117, 16);
    }

    while (v10);
  }
}

@end