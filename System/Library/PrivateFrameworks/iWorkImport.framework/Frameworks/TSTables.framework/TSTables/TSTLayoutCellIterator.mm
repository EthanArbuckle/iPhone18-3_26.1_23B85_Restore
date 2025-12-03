@interface TSTLayoutCellIterator
+ (BOOL)isNeededWithLayoutEngine:(id)engine andRange:(TSUCellRect)range;
- (BOOL)getNextCellData:(id *)data;
- (TSTLayoutCellIterator)initWithLayout:(id)layout range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTLayoutCellIterator)initWithLayoutEngine:(id)engine range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSUCellRect)layoutRange;
@end

@implementation TSTLayoutCellIterator

+ (BOOL)isNeededWithLayoutEngine:(id)engine andRange:(TSUCellRect)range
{
  engineCopy = engine;
  if (objc_msgSend_isDynamicallyChangingContent(engineCopy, v5, v6, v7, v8) & 1) != 0 || (objc_msgSend_isDynamicallyChangingRowOrColumnCount(engineCopy, v9, v10, v11, v12) & 1) != 0 || (objc_msgSend_isDynamicallyHidingRowsCols(engineCopy, v13, v14, v15, v16) & 1) != 0 || (objc_msgSend_isDynamicallyRemovingText(engineCopy, v17, v18, v19, v20))
  {
    LOBYTE(v25) = 1;
  }

  else
  {
    v27 = objc_msgSend_tableInfo(engineCopy, v21, v22, v23, v24);
    v38.origin = objc_msgSend_range(v27, v28, v29, v30, v31);
    v38.size = v32;
    v37.origin = objc_msgSend_cellRange(engineCopy, v32, v33, v34, v35);
    v37.size = v36;
    v25 = TSUCellRect::contains(&v38, &v37) ^ 1;
  }

  return v25;
}

- (TSTLayoutCellIterator)initWithLayout:(id)layout range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  v11 = objc_msgSend_layoutEngine(layout, a2, layout, *&range.origin, *&range.size);
  v13 = objc_msgSend_initWithLayoutEngine_range_flags_searchFlags_(self, v12, v11, origin, size, flags, searchFlags);

  return v13;
}

- (TSTLayoutCellIterator)initWithLayoutEngine:(id)engine range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  engineCopy = engine;
  v17 = objc_msgSend_cellRange(engineCopy, v13, v14, v15, v16);
  v19 = sub_221119E0C(v17, v18, origin, size);
  v21 = v20;
  v25 = objc_msgSend_tableInfo(engineCopy, v20, v22, v23, v24);
  self->_numberOfLayoutColumns = objc_msgSend_numberOfColumns(engineCopy, v26, v27, v28, v29);
  v34 = objc_msgSend_range(v25, v30, v31, v32, v33);
  v37 = sub_221119E0C(v19, v21, v34, v35);
  if (v19 == 0x7FFFFFFF || (v19 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v21) || !v21)
  {
    v21 = 0;
    v19 = 0x7FFF7FFFFFFFLL;
  }

  v39 = objc_msgSend_regionFromRange_(TSTCellRegion, v36, v37, v36, v38);
  v44 = objc_msgSend_range(v25, v40, v41, v42, v43);
  v80.receiver = self;
  v80.super_class = TSTLayoutCellIterator;
  v46 = [(TSTCellIterator *)&v80 initWithTableInfo:v25 region:v39 flags:flags | 1 searchFlags:searchFlags clampingRange:v44, v45];

  if (v46)
  {
    objc_storeStrong(&v46->_layoutEngine, engine);
    v46->_layoutRange.origin = v19;
    v46->_layoutRange.size = v21;
    v46->_columnOrderReversed = (flags & 4) != 0;
    if ((flags & 4) != 0)
    {
      v19 = (v19 + (v21 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | v19;
    }

    v46->_layoutCellID = v19;
    v51 = objc_msgSend_newCell(v25, v47, v48, v49, v50);
    layoutCell = v46->_layoutCell;
    v46->_layoutCell = v51;

    v46->_numberOfRows = objc_msgSend_numberOfRows(v25, v53, v54, v55, v56);
    v46->_numberOfColumns = objc_msgSend_numberOfColumns(v25, v57, v58, v59, v60);
    v61 = objc_alloc_init(TSTMutableCellIteratorData);
    layoutCellData = v46->_layoutCellData;
    v46->_layoutCellData = v61;

    v46->_isDynamicallyChangingContent = objc_msgSend_isDynamicallyChangingContent(engineCopy, v63, v64, v65, v66);
    v46->_isDynamicallyChangingRowOrColumnCount = objc_msgSend_isDynamicallyChangingRowOrColumnCount(engineCopy, v67, v68, v69, v70);
    v46->_isDynamicallyHidingRowsCols = objc_msgSend_isDynamicallyHidingRowsCols(engineCopy, v71, v72, v73, v74);
    v46->_isDynamicallyRemovingText = objc_msgSend_isDynamicallyRemovingText(engineCopy, v75, v76, v77, v78);
  }

  return v46;
}

- (BOOL)getNextCellData:(id *)data
{
  v141 = objc_msgSend_layoutEngine(self, a2, data, v3, v4);
  numberOfLayoutColumns = self->_numberOfLayoutColumns;
  origin = self->_layoutRange.origin;
  size = self->_layoutRange.size;
  v12 = origin.row + size.numberOfRows - 1;
  if (HIDWORD(*&size))
  {
    v13 = origin.row == 0x7FFFFFFF;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v12 = 0x7FFFFFFF;
  }

  v140 = v12;
  if (size.numberOfColumns)
  {
    v14 = origin.column == 0x7FFF;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0x7FFF;
  }

  else
  {
    v15 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  v138 = v15;
  if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v17 = 0;
  }

  else
  {
    v17 = WORD2(*&self->_layoutRange.origin);
  }

  v139 = v17;
  objc_msgSend_setCell_(self->_layoutCellData, v6, 0, v7, v8);
  objc_msgSend_setCellID_(self->_layoutCellData, v18, 0x7FFF7FFFFFFFLL, v19, v20);
  objc_msgSend_setMergeRange_(self->_layoutCellData, v21, 0x7FFF7FFFFFFFLL, 0, v22);
  v27 = 0;
  p_layoutCellID = &self->_layoutCellID;
  v137 = numberOfLayoutColumns - 1;
  while (1)
  {
    v29 = *p_layoutCellID;
    if (*p_layoutCellID > v140)
    {
      break;
    }

    if (!self->_queriedModel)
    {
      v147.receiver = self;
      v147.super_class = TSTLayoutCellIterator;
      v148 = 0;
      v30 = [(TSTCellIterator *)&v147 getNextCellData:&v148];
      v31 = v148;
      self->_modelIteratorHasCell = v30;
      self->_modelIteratorData = v31;
      self->_queriedModel = 1;
    }

    if (self->_isDynamicallyHidingRowsCols)
    {
      v27 |= objc_msgSend_isDynamicallyHidingRowsCols_rowColIndex_(v141, v23, 1, self->_layoutCellID.column, v26);
    }

    if (self->_isDynamicallyRemovingText)
    {
      v27 |= objc_msgSend_isDynamicallyRemovingTextOfCellID_(v141, v23, *p_layoutCellID, v25, v26);
    }

    if (self->_isDynamicallyChangingContent || (v27 & 1) != 0)
    {
      if (self->_isDynamicallyChangingContent)
      {
        v32 = objc_msgSend_dynamicContentDelegate(v141, v23, v24, v25, v26);
        v146 = 0;
        v35 = objc_msgSend_cell_forCellID_(v32, v33, &v146, *p_layoutCellID, v34);
        v36 = v146;

        if (v35)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v27)
        {
          v41 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
          v36 = objc_msgSend_newCell(v41, v42, v43, v44, v45);

LABEL_33:
          objc_msgSend_clear(self->_layoutCell, v37, v38, v39, v40);
          objc_msgSend_shallowCopyToCell_(v36, v46, self->_layoutCell, v47, v48);
          objc_msgSend_setCell_(self->_layoutCellData, v49, self->_layoutCell, v50, v51);
          objc_msgSend_setCellID_(self->_layoutCellData, v52, *p_layoutCellID, v53, v54);
          v59 = objc_msgSend_cellID(self->_layoutCellData, v55, v56, v57, v58);
          v60 = sub_2213AA890(v141, v59);
          objc_msgSend_setMergeRange_(self->_layoutCellData, v61, v60, v61, v62);
          if (self->_modelIteratorHasCell)
          {
            v67 = *p_layoutCellID;
            v68 = objc_msgSend_cellID(self->_modelIteratorData, v63, v64, v65, v66);
            if (v67 == v68 && ((v68 ^ v67) & 0xFFFF00000000) == 0)
            {
              v144.receiver = self;
              v144.super_class = TSTLayoutCellIterator;
              v145 = 0;
              v69 = [(TSTCellIterator *)&v144 getNextCellData:&v145];
              v70 = v145;
              self->_modelIteratorHasCell = v69;
              self->_modelIteratorData = v70;
            }
          }

          goto LABEL_62;
        }

        v36 = 0;
      }
    }

    v71 = *p_layoutCellID;
    numberOfRows = self->_numberOfRows;
    if (*p_layoutCellID >= numberOfRows)
    {
      if (!self->_isDynamicallyChangingRowOrColumnCount)
      {
        goto LABEL_54;
      }

      column = self->_layoutCellID.column;
      v100 = *&self->_layoutCellID._preserveRow;
      v101 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
      v71 = numberOfRows + ~objc_msgSend_numberOfFooterRows(v101, v102, v103, v104, v105);

      v73 = self->_layoutCellID.column;
      numberOfColumns = self->_numberOfColumns;
      goto LABEL_51;
    }

    v73 = self->_layoutCellID.column;
    numberOfColumns = self->_numberOfColumns;
    if (numberOfColumns <= v73)
    {
      if (!self->_isDynamicallyChangingRowOrColumnCount)
      {
        goto LABEL_54;
      }

      v100 = *&self->_layoutCellID._preserveRow;
      column = self->_layoutCellID.column;
LABEL_51:
      v106 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
      v109 = v106;
      v110 = numberOfColumns - 1;
      if (numberOfColumns > v73)
      {
        v110 = column;
      }

      Cell_atCellID = objc_msgSend_getCell_atCellID_(v106, v107, self->_layoutCell, (v100 << 48) | (v110 << 32) | v71, v108);

      if (!Cell_atCellID)
      {
        objc_msgSend_clearValue(self->_layoutCell, v23, v24, v25, v26);
        objc_msgSend_setCell_(self->_layoutCellData, v112, self->_layoutCell, v113, v114);
        objc_msgSend_setCellID_(self->_layoutCellData, v115, *p_layoutCellID, v116, v117);
LABEL_63:
        v77 = 1;
        goto LABEL_64;
      }

      goto LABEL_54;
    }

    if (self->_modelIteratorHasCell)
    {
      v75 = *p_layoutCellID;
      v76 = objc_msgSend_cellID(self->_modelIteratorData, v23, v24, v25, v26);
      v77 = 0;
      if (v75 != v76 || ((v76 ^ v75) & 0xFFFF00000000) != 0)
      {
        goto LABEL_64;
      }

      if (objc_msgSend_returnCellContents(self, v23, v24, v25, v26))
      {
        v82 = objc_msgSend_cell(self->_modelIteratorData, v78, v79, v80, v81);

        if (v82)
        {
          p_layoutCell = &self->_layoutCell;
          objc_msgSend_clear(self->_layoutCell, v83, v84, v85, v86);
          v92 = objc_msgSend_cell(self->_modelIteratorData, v88, v89, v90, v91);
          objc_msgSend_shallowCopyToCell_(v92, v93, self->_layoutCell, v94, v95);

          goto LABEL_57;
        }
      }

      else
      {
        p_layoutCell = &self->_layoutCell;
        objc_msgSend_clear(self->_layoutCell, v78, v79, v80, v81);
LABEL_57:
        objc_msgSend_setCell_(self->_layoutCellData, v96, *p_layoutCell, v97, v98);
      }

      v118 = objc_msgSend_cellID(self->_modelIteratorData, v83, v84, v85, v86);
      objc_msgSend_setCellID_(self->_layoutCellData, v119, v118, v120, v121);
      if (self->_isDynamicallyChangingRowOrColumnCount)
      {
        v126 = objc_msgSend_cellID(self->_layoutCellData, v122, v123, v124, v125);
        v127 = sub_2213AA890(v141, v126);
      }

      else
      {
        v127 = objc_msgSend_mergeRange(self->_modelIteratorData, v122, v123, v124, v125);
      }

      objc_msgSend_setMergeRange_(self->_layoutCellData, v128, v127, v128, v129);
      v142.receiver = self;
      v142.super_class = TSTLayoutCellIterator;
      v143 = 0;
      v130 = [(TSTCellIterator *)&v142 getNextCellData:&v143];
      v36 = v143;
      self->_modelIteratorHasCell = v130;
      self->_modelIteratorData = v36;
LABEL_62:

      goto LABEL_63;
    }

LABEL_54:
    v77 = 0;
LABEL_64:
    v131 = self->_layoutCellID.column;
    if (self->_columnOrderReversed)
    {
      if (v131 <= v139)
      {
        v132 = v138;
        goto LABEL_74;
      }

      self->_layoutCellID.column = v131 - 1;
      if (v77)
      {
        goto LABEL_75;
      }
    }

    else if (v137 <= v131 || v131 >= v138)
    {
      v132 = v139;
LABEL_74:
      self->_layoutCellID.column = v132;
      ++*p_layoutCellID;
      if (v77)
      {
LABEL_75:
        dataCopy2 = data;
        if (!data)
        {
          goto LABEL_80;
        }

        v134 = self->_layoutCellData;
        goto LABEL_79;
      }
    }

    else
    {
      self->_layoutCellID.column = v131 + 1;
      if (v77)
      {
        goto LABEL_75;
      }
    }
  }

  dataCopy2 = data;
  if (!data)
  {
    goto LABEL_80;
  }

  v134 = 0;
LABEL_79:
  *dataCopy2 = v134;
LABEL_80:

  return v29 <= v140;
}

- (TSUCellRect)layoutRange
{
  p_layoutRange = &self->_layoutRange;
  origin = self->_layoutRange.origin;
  size = p_layoutRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end