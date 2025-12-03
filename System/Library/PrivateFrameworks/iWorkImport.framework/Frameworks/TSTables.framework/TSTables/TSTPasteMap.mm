@interface TSTPasteMap
- (TSTPasteMap)initWithPbRange:(TSUCellRect)range tgtRange:(TSUCellRect)tgtRange;
- (TSTPasteMap)initWithPbTable:(id)table pbRange:(TSUCellRect)range tgtTable:(id)tgtTable tgtRange:(TSUCellRect)tgtRange flag:(int)flag;
- (TSUCellCoord)pbCellIDForTgtCellID:(TSUCellCoord)d;
- (TSUCellRect)p_tgtRangeForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps;
- (TSUCellRect)pbRangeForTgtRange:(TSUCellRect)range;
- (_NSRange)p_tgtRangeFromPbRange:(const TSTColumnOrRowMap *)range andMap:(const void *)map;
- (id).cxx_construct;
- (id)createTgtRegionByIntersectingPbRegion:(id)region tgtTableInfo:(id)info tgtRegion:(id)tgtRegion;
- (id)createTgtRegionFromPbRegion:(id)region;
- (unsigned)p_indexForTgtToPbMaps:(void *)maps andMap:(TSTColumnOrRowMap *)map;
- (vector<TSUCellRect,)createTgtMergeMapFromPbMergeMap:(TSTPasteMap *)self andTgtRegion:(SEL)region andTgtBodyRange:(const void *)range;
- (void)p_tgtRangesForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps;
@end

@implementation TSTPasteMap

- (TSTPasteMap)initWithPbRange:(TSUCellRect)range tgtRange:(TSUCellRect)tgtRange
{
  size = tgtRange.size;
  origin = tgtRange.origin;
  v6 = range.size;
  v7 = range.origin;
  v23.receiver = self;
  v23.super_class = TSTPasteMap;
  v8 = [(TSTPasteMap *)&v23 init];
  if (v8)
  {
    row = origin.row;
    v9 = HIDWORD(*&origin);
    v10 = 0;
    if ((size.numberOfColumns / v6.numberOfColumns))
    {
      column = origin.column;
      do
      {
        v19 = v7.column;
        v20 = column;
        numberOfColumns = v6.numberOfColumns;
        v22 = 0;
        sub_2214A2428(&v8->_columnTgtToPbMaps, &v19);
        ++v10;
        column += v6.numberOfColumns;
      }

      while (v10 < (size.numberOfColumns / v6.numberOfColumns));
    }

    if ((size.numberOfColumns % v6.numberOfColumns))
    {
      v19 = v7.column;
      v20 = v10 * v6.numberOfColumns + v9;
      numberOfColumns = (size.numberOfColumns % v6.numberOfColumns);
      v22 = 0;
      sub_2214A2428(&v8->_columnTgtToPbMaps, &v19);
    }

    v12 = HIDWORD(*&v6);
    v13 = HIDWORD(*&size);
    if (v12 <= v13)
    {
      v14 = 0;
      v15 = row;
      v16 = row;
      do
      {
        v19 = v7.row;
        v20 = v16;
        numberOfColumns = v12;
        v22 = 0;
        sub_2214A2428(&v8->_rowTgtToPbMaps, &v19);
        ++v14;
        v16 += v12;
      }

      while (v14 < v13 / v12);
    }

    else
    {
      v14 = 0;
      v15 = row;
    }

    if (v13 % v12)
    {
      v19 = v7.row;
      v20 = v15 + v14 * v12;
      numberOfColumns = v12;
      v22 = 0;
      sub_2214A2428(&v8->_rowTgtToPbMaps, &v19);
    }
  }

  return v8;
}

- (TSTPasteMap)initWithPbTable:(id)table pbRange:(TSUCellRect)range tgtTable:(id)tgtTable tgtRange:(TSUCellRect)tgtRange flag:(int)flag
{
  size = range.size;
  v108 = tgtRange.size;
  origin = range.origin;
  v112 = tgtRange.origin;
  tableCopy = table;
  tgtTableCopy = tgtTable;
  v125.receiver = self;
  v125.super_class = TSTPasteMap;
  v116 = tableCopy;
  v120 = [(TSTPasteMap *)&v125 init];
  if (!v120)
  {
    goto LABEL_166;
  }

  v119 = tgtTableCopy;
  v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v11, v12, v13, v14);
  v20 = objc_msgSend_maxNumberOfColumns(v15, v16, v17, v18, v19);

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000;
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *&origin.column;
  }

  v102 = *&v112 & 0xFFFF00000000;
  if (v112.row != 0x7FFFFFFF && (*&v112 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = v112.column;
  }

  v105 = v29;
  v121 = v29;
  v122 = column;
  v123 = 0;
  v124 = 0;
  v32 = LOWORD(size.numberOfColumns) + origin.column - 1;
  if (size.numberOfColumns)
  {
    v33 = origin.column == 0x7FFF;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    v32 = 0x7FFF;
  }

  v117 = v32;
  if (v108.numberOfColumns)
  {
    v34 = v112.column == 0x7FFF;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = 0x7FFF;
  }

  else
  {
    v35 = LOWORD(v108.numberOfColumns) + v112.column - 1;
  }

  v114 = v35;
  v36 = 0x7FFF;
  v37 = 0x7FFF;
  v109 = v29;
  for (i = 0; ; v27 = i)
  {
    v39 = v37;
    if (v29 != v37)
    {
      if (v29 == v20)
      {
        goto LABEL_64;
      }

      if (flag)
      {
        v22 = v29;
        if (v29 > v117)
        {
          goto LABEL_64;
        }

        i = objc_msgSend_hasHiddenColumnAtIndex_(v116, v21, v29, v23, v24);
        v37 = v29;
        v39 = v29;
      }

      else
      {
        v39 = v29;
        if (v29 > v117)
        {
          if (v25)
          {
            sub_2214A2428((v120 + 32), &v121);
          }

          v121 = v105;
          v122 = column;
          v123 = 0;
          v124 = 0;
          v29 = 0x7FFF;
          v39 = v109;
        }

        i = objc_msgSend_hasHiddenColumnAtIndex_(v116, v21, v39, v23, v24, v102);
        v37 = v29;
      }
    }

    hasHiddenColumnAtIndex = v26;
    if (column != v36)
    {
      break;
    }

LABEL_56:
    if ((i & 1) == (hasHiddenColumnAtIndex & 1))
    {
LABEL_46:
      if (((v26 ^ v27) & 1) != 0 || ((v27 ^ i) & 1) == 0)
      {
        if ((v26 ^ v27) & ~i)
        {
          v121 = v39;
          v122 = column;
          v124 = 0;
          goto LABEL_53;
        }

        v25 = v123 + 1;
      }

      else
      {
        if (v123)
        {
          sub_2214A2428((v120 + 32), &v121);
        }

        v121 = v39;
        v122 = column;
        v124 = i & 1;
LABEL_53:
        v25 = 1;
      }

      v123 = v25;
      v45 = 1;
      v44 = 1;
      goto LABEL_63;
    }

LABEL_57:
    if ((v27 & 1) == 0 && !(v26 & 1 | (v123 == 0)))
    {
      sub_2214A2428((v120 + 32), &v121);
    }

    v25 = 0;
    v123 = 0;
    v44 = i & 1;
    v45 = hasHiddenColumnAtIndex & 1;
LABEL_63:
    v29 = v44 + v39;
    column += v45;
    v26 = hasHiddenColumnAtIndex;
  }

  if (column == v20)
  {
    goto LABEL_64;
  }

  if (flag == 1)
  {
    v41 = objc_msgSend_range(v119, v21, v22, v23, v24);
    v42 = v21 + WORD2(v41) - 1;
    if (v21)
    {
      v43 = WORD2(v41) == 0x7FFF;
    }

    else
    {
      v43 = 1;
    }

    if (v43)
    {
      v42 = 0x7FFF;
    }

    if (column > v42)
    {
      hasHiddenColumnAtIndex = 0;
      v36 = column;
      if ((i & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (column <= v114)
  {
LABEL_55:
    hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v119, v21, column, v23, v24, v102);
    v36 = column;
    goto LABEL_56;
  }

LABEL_64:
  if (v123)
  {
    sub_2214A2428((v120 + 32), &v121);
  }

  v46 = *(v120 + 4);
  if (v46 != v120 + 40)
  {
    do
    {
      v47 = *(v46 + 1);
      if (v46[40] == 1)
      {
        v48 = v46;
        if (v47)
        {
          do
          {
            v49 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v49 = *(v48 + 2);
            v28 = *v49 == v48;
            v48 = v49;
          }

          while (!v28);
        }

        sub_22112C950(v120 + 4, v46);
        operator delete(v46);
      }

      else if (v47)
      {
        do
        {
          v49 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v49 = *(v46 + 2);
          v28 = *v49 == v46;
          v46 = v49;
        }

        while (!v28);
      }

      v46 = v49;
    }

    while (v49 != v120 + 40);
  }

  v50 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v21, v22, v23, v24, v102);
  v118 = objc_msgSend_maxNumberOfRows(v50, v51, v52, v53, v54);

  if ((*&origin & 0xFFFF00000000) != 0x7FFF00000000 && origin.row == 0x7FFFFFFF)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  if (v103 != 0x7FFF00000000 && v112.row == 0x7FFFFFFF)
  {
    v61 = 0;
  }

  else
  {
    v61 = v112.row;
  }

  v106 = row;
  v121 = row;
  v122 = v61;
  v123 = 0;
  v124 = 0;
  v104 = objc_msgSend_indexesForBodyRowsInGroupWithRowAtIndex_(v119, v55, v61, v56, v57);
  if (objc_msgSend_isCategorized(v119, v62, v63, v64, v65) && (objc_msgSend_isSummaryOrLabelRow_(v119, v66, v61, v68, v69) & 1) == 0)
  {
    Index = objc_msgSend_lastIndex(v104, v66, v67, v68, v69);
  }

  else
  {
    v70 = objc_msgSend_range(v119, v66, v67, v68, v69);
    if (v71 >> 32)
    {
      v75 = v70 == 0x7FFFFFFF;
    }

    else
    {
      v75 = 1;
    }

    if (v75)
    {
      v76 = 0x7FFFFFFF;
    }

    else
    {
      v76 = v70 + HIDWORD(v71) - 1;
    }

    Index = v76;
  }

  v77 = 0;
  v78 = 0;
  v79 = 0x7FFFFFFF;
  if (HIDWORD(*&size))
  {
    v80 = origin.row == 0x7FFFFFFF;
  }

  else
  {
    v80 = 1;
  }

  if (v80)
  {
    v81 = 0x7FFFFFFF;
  }

  else
  {
    v81 = origin.row + size.numberOfRows - 1;
  }

  v115 = v81;
  if (HIDWORD(*&v108))
  {
    v82 = v112.row == 0x7FFFFFFF;
  }

  else
  {
    v82 = 1;
  }

  if (v82)
  {
    v83 = 0x7FFFFFFF;
  }

  else
  {
    v83 = v112.row + v108.numberOfRows - 1;
  }

  v113 = v83;
  v84 = 0x7FFFFFFF;
  v85 = v106;
  while (!v116)
  {
LABEL_116:
    LODWORD(v91) = v84;
    hasHiddenRowAtIndex = v78;
    if (v85 != v84)
    {
      if (v85 == v118)
      {
        goto LABEL_149;
      }

      if (flag)
      {
        if (v85 > v115)
        {
          goto LABEL_149;
        }

        hasHiddenRowAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v116, v71, v85, v73, v74);
        v84 = v85;
        LODWORD(v91) = v85;
      }

      else
      {
        v91 = v85;
        if (v85 > v115)
        {
          if (v123)
          {
            sub_2214A2428((v120 + 8), &v121);
          }

          v91 = v106;
          v121 = v106;
          v122 = v61;
          v123 = 0;
          LODWORD(v85) = 0x7FFFFFFF;
          v124 = 0;
        }

        hasHiddenRowAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v116, v71, v91, v73, v74);
        v84 = v85;
      }
    }

    v93 = v77;
    if (v61 != v79)
    {
      if (v61 == v118)
      {
        goto LABEL_149;
      }

      if (flag == 1)
      {
        if (v61 > Index)
        {
          v93 = 0;
          v79 = v61;
          if (hasHiddenRowAtIndex)
          {
            goto LABEL_141;
          }

          goto LABEL_131;
        }
      }

      else if (v61 > v113)
      {
        goto LABEL_149;
      }

      v93 = objc_msgSend_hasHiddenRowAtIndex_(v119, v71, v61, v73, v74);
      v79 = v61;
    }

    if ((hasHiddenRowAtIndex & 1) != (v93 & 1))
    {
LABEL_141:
      if ((v78 & 1) == 0 && !(v77 & 1 | (v123 == 0)))
      {
        sub_2214A2428((v120 + 8), &v121);
      }

      v123 = 0;
      v95 = hasHiddenRowAtIndex & 1;
      v96 = v93 & 1;
      goto LABEL_147;
    }

LABEL_131:
    if (((v77 ^ v78) & 1) != 0 || ((v78 ^ hasHiddenRowAtIndex) & 1) == 0)
    {
      if ((v77 ^ v78) & ~hasHiddenRowAtIndex)
      {
        v121 = v91;
        v122 = v61;
        v94 = 1;
        v124 = 0;
      }

      else
      {
        v94 = v123 + 1;
      }
    }

    else
    {
      if (v123)
      {
        sub_2214A2428((v120 + 8), &v121);
      }

      v121 = v91;
      v122 = v61;
      v124 = hasHiddenRowAtIndex & 1;
      v94 = 1;
    }

    v123 = v94;
    v96 = 1;
    v95 = 1;
LABEL_147:
    v85 = (v95 + v91);
    v61 = (v96 + v61);
    v77 = v93;
    v78 = hasHiddenRowAtIndex;
  }

  v86 = objc_msgSend_numberOfRows(v116, v71, v72, v73, v74);
  if (v86 != objc_msgSend_numberOfHiddenRows(v116, v87, v88, v89, v90))
  {
    goto LABEL_116;
  }

LABEL_149:
  if (v123)
  {
    sub_2214A2428((v120 + 8), &v121);
  }

  v97 = *(v120 + 1);
  if (v97 != v120 + 16)
  {
    do
    {
      v98 = *(v97 + 1);
      if (v97[40] == 1)
      {
        v99 = v97;
        if (v98)
        {
          do
          {
            v100 = v98;
            v98 = *v98;
          }

          while (v98);
        }

        else
        {
          do
          {
            v100 = *(v99 + 2);
            v28 = *v100 == v99;
            v99 = v100;
          }

          while (!v28);
        }

        sub_22112C950(v120 + 1, v97);
        operator delete(v97);
      }

      else if (v98)
      {
        do
        {
          v100 = v98;
          v98 = *v98;
        }

        while (v98);
      }

      else
      {
        do
        {
          v100 = *(v97 + 2);
          v28 = *v100 == v97;
          v97 = v100;
        }

        while (!v28);
      }

      v97 = v100;
    }

    while (v100 != v120 + 16);
  }

  tableCopy = v116;
  tgtTableCopy = v119;
LABEL_166:

  return v120;
}

- (unsigned)p_indexForTgtToPbMaps:(void *)maps andMap:(TSTColumnOrRowMap *)map
{
  v6 = *(maps + 1);
  v4 = maps + 8;
  v5 = v6;
  if (!v6)
  {
    return 0x7FFFFFFF;
  }

  var1 = map->var1;
  v8 = v4;
  do
  {
    if (*(v5 + 8) <= var1)
    {
      v8 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) > var1)];
  }

  while (v5);
  if (v8 != v4 && (v9 = *(v8 + 8), map->var2 + var1 <= *(v8 + 9) + v9))
  {
    return var1 - v9 + *(v8 + 7);
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

- (_NSRange)p_tgtRangeFromPbRange:(const TSTColumnOrRowMap *)range andMap:(const void *)map
{
  v4 = *MEMORY[0x277D81490];
  var2 = *(MEMORY[0x277D81490] + 8);
  v8 = *(map + 1);
  v6 = (map + 8);
  v7 = v8;
  if (v8)
  {
    var0 = range->var0;
    v10 = v6;
    do
    {
      if (v7[7] <= var0)
      {
        v10 = v7;
      }

      v7 = *&v7[2 * (v7[7] > var0)];
    }

    while (v7);
    if (v10 != v6)
    {
      v11 = v10[7];
      if (var0 >= v11 && v10[9] + v11 >= range->var2 + var0)
      {
        v4 = var0 - v11 + v10[8];
        var2 = range->var2;
      }
    }
  }

  result.length = var2;
  result.location = v4;
  return result;
}

- (TSUCellRect)p_tgtRangeForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps
{
  numberOfRows = range.size.numberOfRows;
  row = range.origin.row;
  v9 = *&range.origin & 0xFFFF00000000;
  if (range.origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = range.origin.column;
  }

  v27[0] = column;
  v27[1] = 0;
  v27[2] = range.size.numberOfColumns;
  v28 = 0;
  v12 = objc_msgSend_p_tgtRangeFromPbRange_andMap_(self, a2, v27, maps, maps);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0x7FFF00000000;
  }

  else
  {
    v16 = v12 << 32;
  }

  if (v9 != 0x7FFF00000000 && row == 0x7FFFFFFF)
  {
    v18 = 0;
  }

  else
  {
    v18 = row;
  }

  v25[0] = v18;
  v25[1] = 0;
  v25[2] = numberOfRows;
  v26 = 0;
  v19 = objc_msgSend_p_tgtRangeFromPbRange_andMap_(self, v13, v25, rowMaps, v14);
  v21 = v20 << 32;
  v22 = v19;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
    v22 = 0x7FFFFFFFLL;
  }

  v23 = (v22 | v16);
  v24 = (v21 | v15);
  result.size = v24;
  result.origin = v23;
  return result;
}

- (TSUCellRect)pbRangeForTgtRange:(TSUCellRect)range
{
  LODWORD(v4) = range.size.numberOfColumns;
  row = range.origin.row;
  v7 = *&range.origin & 0xFFFF00000000;
  if (range.origin.row != 0x7FFFFFFF && v7 == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = range.origin.column;
  }

  v22 = 0;
  v23 = column;
  numberOfRows = range.size.numberOfRows;
  v11 = *&range.size & 0xFFFFFFFF00000000;
  numberOfColumns = range.size.numberOfColumns;
  v25 = 0;
  v12 = objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, a2, &self->_columnTgtToPbMaps, &v22, v3);
  if (v12 == 0x7FFFFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  if (v12 == 0x7FFFFFFF)
  {
    v15 = 0x7FFF00000000;
  }

  else
  {
    v15 = v12 << 32;
  }

  if (v7 != 0x7FFF00000000 && row == 0x7FFFFFFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = row;
  }

  v22 = 0;
  v23 = v17;
  v25 = 0;
  numberOfColumns = numberOfRows;
  v18 = objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, v13, &self->_rowTgtToPbMaps, &v22, v14);
  if (v18 == 0x7FFFFFFF)
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  v20 = (v15 | v18);
  v21 = (v19 | v4);
  result.size = v21;
  result.origin = v20;
  return result;
}

- (TSUCellCoord)pbCellIDForTgtCellID:(TSUCellCoord)d
{
  row = d.row;
  v11 = 0;
  column = d.column;
  v13 = 1;
  v14 = 0;
  v6 = objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, a2, &self->_columnTgtToPbMaps, &v11, v3);
  v11 = 0;
  column = row;
  if (v6 == 0x7FFFFFFF)
  {
    v9 = 0x7FFF00000000;
  }

  else
  {
    v9 = v6 << 32;
  }

  v14 = 0;
  v13 = 1;
  return (v9 | objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, v7, &self->_rowTgtToPbMaps, &v11, v8));
}

- (id)createTgtRegionFromPbRegion:(id)region
{
  regionCopy = region;
  sub_2214A24F4(v28, self->_rowTgtToPbMaps.__tree_.__begin_node_, &self->_rowTgtToPbMaps.__tree_.__end_node_);
  sub_2214A24F4(v27, self->_columnTgtToPbMaps.__tree_.__begin_node_, &self->_columnTgtToPbMaps.__tree_.__end_node_);
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = sub_2214A105C;
  v22 = sub_2214A1080;
  v23 = &unk_22188E88F;
  v25 = 0;
  v26 = 0;
  __p = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = sub_2214A1098;
  v15[3] = &unk_2834A8DE0;
  v15[4] = self;
  sub_2214A274C(v16, v27);
  sub_2214A274C(v17, v28);
  v15[5] = &v18;
  objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v5, v15, v6, v7);
  v8 = objc_alloc_init(TSTCellRegion);
  v11 = v8;
  v12 = v19[6];
  if (v12 == v19[7])
  {
    v13 = v8;
  }

  else
  {
    do
    {
      v13 = objc_msgSend_regionByAddingRange_(v11, v9, *v12, v12[1], v10);

      v12 += 2;
      v11 = v13;
    }

    while (v12 != v19[7]);
  }

  sub_2210BC9F8(v17, v17[1]);
  sub_2210BC9F8(v16, v16[1]);
  _Block_object_dispose(&v18, 8);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  sub_2210BC9F8(v27, v27[1]);
  sub_2210BC9F8(v28, v28[1]);

  return v13;
}

- (id)createTgtRegionByIntersectingPbRegion:(id)region tgtTableInfo:(id)info tgtRegion:(id)tgtRegion
{
  regionCopy = region;
  infoCopy = info;
  tgtRegionCopy = tgtRegion;
  if (objc_msgSend_isRectangle(regionCopy, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_boundingCellRange(tgtRegionCopy, v15, v16, v17, v18);
    v22 = objc_msgSend_indexesOfHiddenColumnsInCellRange_(infoCopy, v20, v19, v20, v21);
    v26 = objc_msgSend_regionBySubtractingColumnIndexes_(tgtRegionCopy, v23, v22, v24, v25);

    v31 = objc_msgSend_boundingCellRange(v26, v27, v28, v29, v30);
    v34 = objc_msgSend_indexesOfHiddenRowsInCellRange_(infoCopy, v32, v31, v32, v33);
    v38 = objc_msgSend_regionBySubtractingRowIndexes_(v26, v35, v34, v36, v37);

    tgtRegionCopy = v38;
    v39 = tgtRegionCopy;
  }

  else
  {
    v40 = objc_msgSend_gatherer(TSTCellRegionGatherer, v15, v16, v17, v18);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_2214A15D8;
    v50[3] = &unk_278460BD0;
    v50[4] = self;
    v51 = regionCopy;
    v41 = v40;
    v52 = v41;
    objc_msgSend_enumerateCellRangesUsingBlock_(tgtRegionCopy, v42, v50, v43, v44);
    v39 = objc_msgSend_gatheredCellRegion(v41, v45, v46, v47, v48);
  }

  return v39;
}

- (void)p_tgtRangesForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps
{
  numberOfRows = range.size.numberOfRows;
  row = range.origin.row;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  memset(__p, 0, sizeof(__p));
  v9 = *&range.origin & 0xFFFF00000000;
  v10 = range.origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000;
  column = range.origin.column;
  if (v10)
  {
    column = 0;
  }

  v43.n128_u64[0] = column | 0x7FFFFFFF00000000;
  v43.n128_u32[2] = range.size.numberOfColumns;
  v43.n128_u8[12] = 0;
  sub_2214A27A4(v47, &v43);
  v12 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    v13 = maps + 8;
    do
    {
      v14 = v12 - 1;
      v15 = (*(*(&v47[0] + 1) + (((v48 + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v48 + v14));
      v16 = *v15;
      v17 = v15[2];
      *(&v48 + 1) = v14;
      sub_2213C6EDC(v47, 1);
      v18 = *v13;
      if (*v13)
      {
        v19 = v13;
        do
        {
          if (*(v18 + 28) <= v16)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * (*(v18 + 28) > v16));
        }

        while (v18);
        if (v19 != v13)
        {
          v20 = v17 + v16;
          do
          {
            v21 = *(v19 + 7);
            v22 = *(v19 + 9) + v21;
            if (v22 > v16)
            {
              v43.n128_u64[0] = __PAIR64__(v16 - v21 + *(v19 + 8), v16);
              if (v20 <= v22)
              {
                v43.n128_u32[2] = v17;
                v43.n128_u8[12] = 0;
                sub_2214A1EEC(__p, &v43);
              }

              else
              {
                v43.n128_u32[2] = v22 - v16;
                v43.n128_u8[12] = 0;
                sub_2214A1EEC(__p, &v43);
                v23 = *(v19 + 7);
                v24 = *(v19 + 9) + v23;
                v45.n128_u64[0] = __PAIR64__(v20 + *(v19 + 8) - (v23 + v43.n128_u32[2]), v24);
                v45.n128_u32[2] = v20 - v24;
                v45.n128_u8[12] = 0;
                sub_2214A27A4(v47, &v45);
              }
            }

            v25 = v19[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v19[2];
                v10 = *v26 == v19;
                v19 = v26;
              }

              while (!v10);
            }

            v19 = v26;
          }

          while (v26 != v13);
        }
      }

      v12 = *(&v48 + 1);
    }

    while (*(&v48 + 1));
  }

  v43 = 0uLL;
  v44 = 0;
  if (v9 != 0x7FFF00000000 && row == 0x7FFFFFFF)
  {
    v28 = 0;
  }

  else
  {
    v28 = row;
  }

  v45.n128_u64[0] = v28 | 0x7FFFFFFF00000000;
  v45.n128_u32[2] = numberOfRows;
  v45.n128_u8[12] = 0;
  sub_2214A27A4(v47, &v45);
  v29 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    v30 = rowMaps + 8;
    do
    {
      v31 = v29 - 1;
      v32 = (*(*(&v47[0] + 1) + (((v48 + v31) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v48 + v31));
      v33 = *v32;
      v34 = v32[2];
      *(&v48 + 1) = v31;
      sub_2213C6EDC(v47, 1);
      v35 = *v30;
      if (*v30)
      {
        v36 = v30;
        do
        {
          if (*(v35 + 28) <= v33)
          {
            v36 = v35;
          }

          v35 = *(v35 + 8 * (*(v35 + 28) > v33));
        }

        while (v35);
        if (v36 != v30)
        {
          do
          {
            v37 = *(v36 + 7);
            v38 = *(v36 + 9) + v37;
            if (v38 > v33)
            {
              v45.n128_u64[0] = __PAIR64__(v33 - v37 + *(v36 + 8), v33);
              if (v34 + v33 <= v38)
              {
                v45.n128_u32[2] = v34;
                v45.n128_u8[12] = 0;
                sub_2214A1EEC(&v43, &v45);
              }

              else
              {
                v45.n128_u32[2] = v38 - v33;
                v45.n128_u8[12] = 0;
                sub_2214A1EEC(&v43, &v45);
                v42.n128_u64[0] = __PAIR64__(v33 - *(v36 + 7) + *(v36 + 8) + v45.n128_u32[2], *(v36 + 9) + *(v36 + 7));
                v42.n128_u32[2] = v34 - v45.n128_u32[2];
                v42.n128_u8[12] = 0;
                sub_2214A27A4(v47, &v42);
              }
            }

            v39 = v36[1];
            if (v39)
            {
              do
              {
                v40 = v39;
                v39 = *v39;
              }

              while (v39);
            }

            else
            {
              do
              {
                v40 = v36[2];
                v10 = *v40 == v36;
                v36 = v40;
              }

              while (!v10);
            }

            v36 = v40;
          }

          while (v40 != v30);
        }
      }

      v29 = *(&v48 + 1);
    }

    while (*(&v48 + 1));
  }

  operator new();
}

- (vector<TSUCellRect,)createTgtMergeMapFromPbMergeMap:(TSTPasteMap *)self andTgtRegion:(SEL)region andTgtBodyRange:(const void *)range
{
  size = a6.size;
  origin = a6.origin;
  sub_2214A24F4(v27, self->_rowTgtToPbMaps.__tree_.__begin_node_, &self->_rowTgtToPbMaps.__tree_.__end_node_);
  selfCopy = self;
  sub_2214A24F4(v26, self->_columnTgtToPbMaps.__tree_.__begin_node_, &self->_columnTgtToPbMaps.__tree_.__end_node_);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v14 = *range;
  v13 = *(range + 1);
  v24 = v13;
  while (v14 != v13)
  {
    v15 = objc_msgSend_p_tgtRangesForPbRange_givenColumnMaps_rowMaps_(selfCopy, v12, *v14, *(v14 + 8), v26, v27);
    v17 = *v15;
    v16 = v15[1];
    if (*v15 != v16)
    {
      do
      {
        if (*(v17 + 8) == *(v14 + 8) && *(v17 + 12) == *(v14 + 12))
        {
          v19 = *v17;
          v20 = *(v17 + 8);
          if (!sub_2214A1FC4(*v17, v20, origin, size))
          {
            if (objc_msgSend_containsCellRange_(*a5, v21, v19, v20, v22))
            {
              sub_221083454(retstr, v17);
            }
          }
        }

        v17 += 16;
      }

      while (v17 != v16);
      v17 = *v15;
    }

    if (v17)
    {
      v15[1] = v17;
      operator delete(v17);
    }

    MEMORY[0x223DA1450](v15, 0x20C40960023A9);
    v14 += 16;
    v13 = v24;
  }

  sub_2210BC9F8(v26, v26[1]);
  sub_2210BC9F8(v27, v27[1]);
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end