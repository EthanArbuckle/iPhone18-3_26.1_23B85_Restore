@interface TSTLayoutDynamicResizeInfo
- (BOOL)hasHeightForRow:(unsigned int)row;
- (BOOL)hasWidthForColumn:(unsigned __int16)column;
- (CGSize)capturedTableSize;
- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)info;
- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine;
- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion;
- (double)getColumnInitialWidth:(unsigned __int16)width;
- (double)getColumnWidth:(unsigned __int16)width;
- (double)getColumnWidthResize:(unsigned __int16)resize;
- (double)getMinimumColumnWidth:(unsigned __int16)width;
- (double)getMinimumRowHeight:(unsigned int)height;
- (double)getRowHeight:(unsigned int)height;
- (double)getRowHeightResize:(unsigned int)resize;
- (double)getRowInitialHeight:(unsigned int)height;
- (double)totalCurrentColumnWidths;
- (double)totalCurrentRowHeights;
- (double)totalMinimumColumnWidths;
- (double)totalMinimumRowHeights;
- (id).cxx_construct;
- (id)columnWidths;
- (id)rowHeights;
- (void)enumerateColumnWidthsUsingBlock:(id)block;
- (void)enumerateRowHeightsUsingBlock:(id)block;
- (void)p_captureRowColumnInformation:(id)information columnRegion:(id)region rowRegion:(id)rowRegion;
@end

@implementation TSTLayoutDynamicResizeInfo

- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion
{
  engineCopy = engine;
  regionCopy = region;
  rowRegionCopy = rowRegion;
  v18.receiver = self;
  v18.super_class = TSTLayoutDynamicResizeInfo;
  v15 = [(TSTLayoutDynamicResizeInfo *)&v18 init];
  if (v15)
  {
    v15->_tableRowsBehavior = objc_msgSend_tableRowsBehavior(engineCopy, v11, v12, v13, v14);
    objc_msgSend_p_captureRowColumnInformation_columnRegion_rowRegion_(v15, v16, engineCopy, regionCopy, rowRegionCopy);
    v15->_valid = 1;
  }

  return v15;
}

- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine
{
  engineCopy = engine;
  v9 = objc_msgSend_cellRange(engineCopy, v5, v6, v7, v8);
  v12 = objc_msgSend_regionFromRange_(TSTCellRegion, v10, v9, v10, v11);
  v14 = objc_msgSend_initWithLayoutEngine_columnRegion_rowRegion_(self, v13, engineCopy, v12, v12);

  return v14;
}

- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)info
{
  infoCopy = info;
  v55.receiver = self;
  v55.super_class = TSTLayoutDynamicResizeInfo;
  v9 = [(TSTLayoutDynamicResizeInfo *)&v55 init];
  if (v9)
  {
    *(v9 + 152) = objc_msgSend_valid(infoCopy, v5, v6, v7, v8);
    *(v9 + 39) = objc_msgSend_tableRowsBehavior(infoCopy, v10, v11, v12, v13);
    v18 = objc_msgSend_rowRegion(infoCopy, v14, v15, v16, v17);
    v19 = v9[25];
    v9[25] = v18;

    *(v9 + 40) = objc_msgSend_startRowIndex(infoCopy, v20, v21, v22, v23);
    v28 = objc_msgSend_numberOfRows(infoCopy, v24, v25, v26, v27);
    *(v9 + 41) = v28;
    if (v28 && v9 != infoCopy)
    {
      sub_22128026C(v9 + 1, infoCopy[1], infoCopy[2], (infoCopy[2] - infoCopy[1]) >> 3);
      sub_22128026C(v9 + 4, infoCopy[4], infoCopy[5], (infoCopy[5] - infoCopy[4]) >> 3);
      sub_22128026C(v9 + 7, infoCopy[7], infoCopy[8], (infoCopy[8] - infoCopy[7]) >> 3);
    }

    objc_msgSend_capturedRowHeightTotal(infoCopy, v29, v30, v31, v32);
    v9[23] = v33;
    v38 = objc_msgSend_columnRegion(infoCopy, v34, v35, v36, v37);
    v39 = v9[26];
    v9[26] = v38;

    *(v9 + 77) = objc_msgSend_startColumnIndex(infoCopy, v40, v41, v42, v43);
    v48 = objc_msgSend_numberOfColumns(infoCopy, v44, v45, v46, v47);
    *(v9 + 43) = v48;
    if (v48 && v9 != infoCopy)
    {
      sub_22128026C(v9 + 10, infoCopy[10], infoCopy[11], (infoCopy[11] - infoCopy[10]) >> 3);
      sub_22128026C(v9 + 13, infoCopy[13], infoCopy[14], (infoCopy[14] - infoCopy[13]) >> 3);
      sub_22128026C(v9 + 16, infoCopy[16], infoCopy[17], (infoCopy[17] - infoCopy[16]) >> 3);
    }

    objc_msgSend_capturedColumnWidthTotal(infoCopy, v49, v50, v51, v52);
    v9[24] = v53;
  }

  return v9;
}

- (void)p_captureRowColumnInformation:(id)information columnRegion:(id)region rowRegion:(id)rowRegion
{
  informationCopy = information;
  regionCopy = region;
  rowRegionCopy = rowRegion;
  v15 = objc_msgSend_tableInfo(informationCopy, v11, v12, v13, v14);
  v24 = objc_msgSend_partitioner(v15, v16, v17, v18, v19);
  v25 = 1.0;
  if (v24)
  {
    v26 = objc_msgSend_partitioner(v15, v20, v21, v22, v23);
    IsValid = objc_msgSend_scaleIsValid(v26, v27, v28, v29, v30);

    v36 = 1.0;
    if (IsValid)
    {
      v37 = objc_msgSend_partitioner(v15, v32, v33, v34, v35);
      objc_msgSend_scaleToFit(v37, v38, v39, v40, v41);
      v36 = v42;

      v47 = objc_msgSend_partitioner(v15, v43, v44, v45, v46);
      objc_msgSend_scaleToFit(v47, v48, v49, v50, v51);
      v25 = v52;
    }
  }

  else
  {
    v36 = 1.0;
  }

  if (rowRegionCopy)
  {
    objc_storeStrong(&self->_rowRegion, rowRegion);
    self->_startRowIndex = objc_msgSend_boundingCellRange(rowRegionCopy, v53, v54, v55, v56);
    objc_msgSend_boundingCellRange(rowRegionCopy, v57, v58, v59, v60);
    self->_numberOfRows = HIDWORD(v61);
    self->_numberOfResizableRows = objc_msgSend_numberOfIntersectingRows(rowRegionCopy, v61, v62, v63, v64);
    v135 = 0;
    v136 = &v135;
    v137 = 0x4812000000;
    v138 = sub_22141FF04;
    v139 = sub_22141FF28;
    v140 = &unk_22188E88F;
    sub_221420DAC(&v141, self->_numberOfRows);
    v127 = 0;
    v128 = &v127;
    v129 = 0x4812000000;
    v130 = sub_22141FF04;
    v131 = sub_22141FF28;
    v132 = &unk_22188E88F;
    sub_221420DAC(&__p, self->_numberOfRows);
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0xBFF0000000000000;
    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 0xBFF0000000000000;
    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    isGrouped = objc_msgSend_isGrouped(informationCopy, v65, v66, v67, v68);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = sub_22141FF40;
    v101[3] = &unk_278464DD0;
    v101[4] = self;
    v103 = &v135;
    v109 = v25;
    v110 = isGrouped;
    v102 = informationCopy;
    v104 = &v127;
    v105 = &v119;
    v106 = &v123;
    v107 = &v115;
    v108 = &v111;
    objc_msgSend_enumerateRowsUsingBlock_(rowRegionCopy, v70, v101, v71, v72);
    v73 = v136;
    if (&self->_capturedRowHeights != (v136 + 6))
    {
      sub_22128026C(&self->_capturedRowHeights.__begin_, v136[6], v136[7], (v136[7] - v136[6]) >> 3);
      v73 = v136;
    }

    if (&self->_currentRowHeights != (v73 + 6))
    {
      sub_22128026C(&self->_currentRowHeights.__begin_, v73[6], v73[7], (v73[7] - v73[6]) >> 3);
    }

    if (&self->_minimumRowHeights != (v128 + 6))
    {
      sub_22128026C(&self->_minimumRowHeights.__begin_, v128[6], v128[7], (v128[7] - v128[6]) >> 3);
    }

    *&self->_capturedRowHeightTotal = v112[3];

    _Block_object_dispose(&v111, 8);
    _Block_object_dispose(&v115, 8);
    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);
    _Block_object_dispose(&v127, 8);
    if (__p)
    {
      v134 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v135, 8);
    if (v141)
    {
      v142 = v141;
      operator delete(v141);
    }
  }

  if (regionCopy)
  {
    objc_storeStrong(&self->_columnRegion, region);
    self->_startColumnIndex = objc_msgSend_boundingCellRange(regionCopy, v74, v75, v76, v77) >> 32;
    objc_msgSend_boundingCellRange(regionCopy, v78, v79, v80, v81);
    self->_numberOfColumns = v82;
    self->_numberOfResizableColumns = objc_msgSend_numberOfIntersectingColumns(regionCopy, v82, v83, v84, v85);
    v135 = 0;
    v136 = &v135;
    v137 = 0x4812000000;
    v138 = sub_22141FF04;
    v139 = sub_22141FF28;
    v140 = &unk_22188E88F;
    numberOfColumns = self->_numberOfColumns;
    v127 = 0xBFF0000000000000;
    sub_221420DAC(&v141, numberOfColumns);
    v127 = 0;
    v128 = &v127;
    v129 = 0x4812000000;
    v130 = sub_22141FF04;
    v131 = sub_22141FF28;
    v132 = &unk_22188E88F;
    v87 = self->_numberOfColumns;
    v123 = 0;
    sub_221420DAC(&__p, v87);
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    LOWORD(v126) = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0xBFF0000000000000;
    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 0xBFF0000000000000;
    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_221420138;
    v92[3] = &unk_278464DF8;
    v92[4] = self;
    v94 = &v135;
    v100 = v36;
    v93 = informationCopy;
    v95 = &v127;
    v96 = &v119;
    v97 = &v123;
    v98 = &v115;
    v99 = &v111;
    objc_msgSend_enumerateColumnsUsingBlock_(regionCopy, v88, v92, v89, v90);
    v91 = v136;
    if (&self->_capturedColumnWidths != (v136 + 6))
    {
      sub_22128026C(&self->_capturedColumnWidths.__begin_, v136[6], v136[7], (v136[7] - v136[6]) >> 3);
      v91 = v136;
    }

    if (&self->_currentColumnWidths != (v91 + 6))
    {
      sub_22128026C(&self->_currentColumnWidths.__begin_, v91[6], v91[7], (v91[7] - v91[6]) >> 3);
    }

    if (&self->_minimumColumnWidths != (v128 + 6))
    {
      sub_22128026C(&self->_minimumColumnWidths.__begin_, v128[6], v128[7], (v128[7] - v128[6]) >> 3);
    }

    *&self->_capturedColumnWidthTotal = v112[3];

    _Block_object_dispose(&v111, 8);
    _Block_object_dispose(&v115, 8);
    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);
    _Block_object_dispose(&v127, 8);
    if (__p)
    {
      v134 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v135, 8);
    if (v141)
    {
      v142 = v141;
      operator delete(v141);
    }
  }
}

- (BOOL)hasHeightForRow:(unsigned int)row
{
  startRowIndex = self->_startRowIndex;
  v4 = row >= startRowIndex;
  v5 = row - startRowIndex;
  return v4 && v5 < self->_numberOfRows && self->_capturedRowHeights.__begin_[v5] > 0.0;
}

- (BOOL)hasWidthForColumn:(unsigned __int16)column
{
  startColumnIndex = self->_startColumnIndex;
  v4 = column >= startColumnIndex;
  v5 = column - startColumnIndex;
  return v4 && self->_numberOfColumns > v5 && self->_capturedColumnWidths.__begin_[v5] > 0.0;
}

- (double)getRowInitialHeight:(unsigned int)height
{
  begin = self->_capturedRowHeights.__begin_;
  result = 0.0;
  if (begin != self->_capturedRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (height >= startRowIndex && self->_numberOfRows + startRowIndex > height)
    {
      return begin[height - startRowIndex];
    }
  }

  return result;
}

- (double)getColumnInitialWidth:(unsigned __int16)width
{
  begin = self->_capturedColumnWidths.__begin_;
  result = 0.0;
  if (begin != self->_capturedColumnWidths.__end_)
  {
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= width && self->_numberOfColumns + startColumnIndex > width)
    {
      return begin[width - startColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeight:(unsigned int)height
{
  begin = self->_currentRowHeights.__begin_;
  result = 0.0;
  if (begin != self->_currentRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (height >= startRowIndex && self->_numberOfRows + startRowIndex > height)
    {
      return begin[height - startRowIndex];
    }
  }

  return result;
}

- (double)getColumnWidth:(unsigned __int16)width
{
  begin = self->_currentColumnWidths.__begin_;
  result = 0.0;
  if (begin != self->_currentColumnWidths.__end_)
  {
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= width && self->_numberOfColumns + startColumnIndex > width)
    {
      return begin[width - startColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeightResize:(unsigned int)resize
{
  v5 = 0.0;
  if (self->_currentRowHeights.__begin_ != self->_currentRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (startRowIndex <= resize && self->_numberOfRows + startRowIndex > resize && objc_msgSend_hasHeightForRow_(self, a2, *&resize, v3, v4))
    {
      return self->_currentRowHeights.__begin_[resize - self->_startRowIndex] - self->_capturedRowHeights.__begin_[resize - self->_startRowIndex];
    }
  }

  return v5;
}

- (double)getColumnWidthResize:(unsigned __int16)resize
{
  v5 = 0.0;
  if (self->_currentColumnWidths.__begin_ != self->_currentColumnWidths.__end_)
  {
    resizeCopy = resize;
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= resize && self->_numberOfColumns + startColumnIndex > resize && objc_msgSend_hasWidthForColumn_(self, a2, resize, v3, v4))
    {
      return self->_currentColumnWidths.__begin_[resizeCopy - self->_startColumnIndex] - self->_capturedColumnWidths.__begin_[resizeCopy - self->_startColumnIndex];
    }
  }

  return v5;
}

- (double)getMinimumRowHeight:(unsigned int)height
{
  begin = self->_minimumRowHeights.__begin_;
  result = 0.0;
  if (begin != self->_minimumRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (height >= startRowIndex && self->_numberOfRows + startRowIndex > height)
    {
      return begin[height - startRowIndex];
    }
  }

  return result;
}

- (double)getMinimumColumnWidth:(unsigned __int16)width
{
  begin = self->_minimumColumnWidths.__begin_;
  result = 0.0;
  if (begin != self->_minimumColumnWidths.__end_)
  {
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= width && self->_numberOfColumns + startColumnIndex > width)
    {
      return begin[width - startColumnIndex];
    }
  }

  return result;
}

- (CGSize)capturedTableSize
{
  capturedRowHeightTotal = self->_capturedRowHeightTotal;
  capturedColumnWidthTotal = self->_capturedColumnWidthTotal;
  result.height = capturedRowHeightTotal;
  result.width = capturedColumnWidthTotal;
  return result;
}

- (void)enumerateColumnWidthsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  startColumnIndex = self->_startColumnIndex;
  do
  {
    if (self->_numberOfColumns + self->_startColumnIndex <= startColumnIndex)
    {
      break;
    }

    if (objc_msgSend_hasWidthForColumn_(self, v4, startColumnIndex, v5, v6))
    {
      objc_msgSend_getColumnWidth_(self, v4, startColumnIndex, v5, v6);
      blockCopy[2](blockCopy, startColumnIndex, &v9);
    }

    ++startColumnIndex;
  }

  while (!v9);
}

- (void)enumerateRowHeightsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  startRowIndex = self->_startRowIndex;
  do
  {
    if (startRowIndex >= self->_numberOfRows + self->_startRowIndex)
    {
      break;
    }

    if (objc_msgSend_hasHeightForRow_(self, v4, startRowIndex, v5, v6))
    {
      objc_msgSend_getRowHeight_(self, v4, startRowIndex, v5, v6);
      blockCopy[2](blockCopy, startRowIndex, &v9);
    }

    startRowIndex = (startRowIndex + 1);
  }

  while (!v9);
}

- (id)rowHeights
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_221420840;
  v17 = sub_221420850;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221420858;
  v12[3] = &unk_278464E20;
  v12[4] = &v13;
  objc_msgSend_enumerateRowHeightsUsingBlock_(self, v3, v12, v4, v5);
  v10 = objc_msgSend_copy(v14[5], v6, v7, v8, v9);
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)columnWidths
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_221420840;
  v17 = sub_221420850;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2214209F0;
  v12[3] = &unk_278464E48;
  v12[4] = &v13;
  objc_msgSend_enumerateColumnWidthsUsingBlock_(self, v3, v12, v4, v5);
  v10 = objc_msgSend_copy(v14[5], v6, v7, v8, v9);
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (double)totalCurrentRowHeights
{
  startRowIndex = self->_startRowIndex;
  v5 = 0.0;
  if (startRowIndex < self->_numberOfRows + startRowIndex)
  {
    do
    {
      if (objc_msgSend_hasHeightForRow_(self, a2, startRowIndex, v2, v3))
      {
        objc_msgSend_getRowHeight_(self, a2, startRowIndex, v2, v3);
        v5 = v5 + v7;
      }

      startRowIndex = (startRowIndex + 1);
    }

    while (startRowIndex < self->_numberOfRows + self->_startRowIndex);
  }

  return v5;
}

- (double)totalCurrentColumnWidths
{
  startColumnIndex = self->_startColumnIndex;
  v5 = 0.0;
  if (self->_numberOfColumns + startColumnIndex > startColumnIndex)
  {
    do
    {
      if (objc_msgSend_hasWidthForColumn_(self, a2, startColumnIndex, v2, v3))
      {
        objc_msgSend_getColumnWidth_(self, a2, startColumnIndex, v2, v3);
        v5 = v5 + v7;
      }

      LOWORD(startColumnIndex) = startColumnIndex + 1;
    }

    while (self->_numberOfColumns + self->_startColumnIndex > startColumnIndex);
  }

  return v5;
}

- (double)totalMinimumRowHeights
{
  startRowIndex = self->_startRowIndex;
  v5 = 0.0;
  if (startRowIndex < self->_numberOfRows + startRowIndex)
  {
    do
    {
      if (objc_msgSend_hasHeightForRow_(self, a2, startRowIndex, v2, v3))
      {
        objc_msgSend_getMinimumRowHeight_(self, a2, startRowIndex, v2, v3);
        v5 = v5 + v7;
      }

      startRowIndex = (startRowIndex + 1);
    }

    while (startRowIndex < self->_numberOfRows + self->_startRowIndex);
  }

  return v5;
}

- (double)totalMinimumColumnWidths
{
  startColumnIndex = self->_startColumnIndex;
  v5 = 0.0;
  if (self->_numberOfColumns + startColumnIndex > startColumnIndex)
  {
    do
    {
      if (objc_msgSend_hasWidthForColumn_(self, a2, startColumnIndex, v2, v3))
      {
        objc_msgSend_getMinimumColumnWidth_(self, a2, startColumnIndex, v2, v3);
        v5 = v5 + v7;
      }

      LOWORD(startColumnIndex) = startColumnIndex + 1;
    }

    while (self->_numberOfColumns + self->_startColumnIndex > startColumnIndex);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end