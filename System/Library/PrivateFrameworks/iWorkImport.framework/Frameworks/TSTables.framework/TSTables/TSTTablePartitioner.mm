@interface TSTTablePartitioner
- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally;
- (BOOL)p_didFinishPartitioningHint:(id)hint horizontally:(BOOL)horizontally;
- (BOOL)shouldReuseLayout:(id)layout forSize:(CGSize)size parentLayout:(id)parentLayout hint:(id)hint;
- (CGRect)totalPartitionFrame;
- (CGSize)scaleToFit;
- (TSTLayout)scaledLayout;
- (TSTTableInfo)tableInfo;
- (TSTTablePartitioner)initWithInfo:(id)info;
- (TSUCellRect)calculateCellRangeForNextPartition:(unsigned __int16)partition nextPartitionRange:(TSUCellRect)range additionalHeightForCaption:(double)caption availableSizeRemaining:(CGSize)remaining previousHint:(id)hint;
- (TSUCellRect)measureCellRangeForNextPartitionOfSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally;
- (id)hintCacheKeyForHint:(id)hint;
- (id)hintCacheKeyForPartitioningPass:(id)pass andHintID:(TSUCellCoord)d;
- (id)hintForLayout:(id)layout;
- (id)layoutForHint:(id)hint parentLayout:(id)layout;
- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)partitioningPassForFirstPartitionSize:(CGSize)size;
- (id)partitioningPassForHint:(id)hint withPreviousHint:(id)previousHint;
- (void)validateScaledLayout;
@end

@implementation TSTTablePartitioner

- (TSTTablePartitioner)initWithInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTablePartitioner initWithInfo:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 54, 0, "Incorrect info class in the table partitioner!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v47.receiver = self;
  v47.super_class = TSTTablePartitioner;
  v20 = [(TSTTablePartitioner *)&v47 init];
  v21 = v20;
  if (v20)
  {
    v22 = objc_storeWeak(&v20->_tableInfo, v5);
    v21->_firstPartitionWidth = -1.0;
    v23 = v22;
    if (objc_msgSend_isInlineWithText(v5, v24, v25, v26, v27))
    {
      _Q0 = *MEMORY[0x277CBF3A8];
    }

    else
    {
      __asm { FMOV            V0.2D, #1.0 }
    }

    v21->_scaleToFit = _Q0;

    v33 = objc_alloc_init(MEMORY[0x277D812B8]);
    hintMatricesByCanvas = v21->_hintMatricesByCanvas;
    v21->_hintMatricesByCanvas = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partitioningPassCache = v21->_partitioningPassCache;
    v21->_partitioningPassCache = v35;

    scaledLayout = v21->_scaledLayout;
    v21->_scaledLayout = 0;

    *&v21->_tableIsLTR = 257;
    v42 = objc_msgSend_geometry(v5, v38, v39, v40, v41);
    objc_msgSend_setInfoGeometry_(v21, v43, v42, v44, v45);
  }

  return v21;
}

- (void)validateScaledLayout
{
  v9 = objc_msgSend_scaledLayout(self, a2, v2, v3, v4);
  objc_msgSend_validate(v9, v5, v6, v7, v8);
}

- (TSUCellRect)measureCellRangeForNextPartitionOfSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  hintCopy = hint;
  v174 = objc_msgSend_scaledLayout(self, v10, v11, v12, v13);
  v18 = objc_msgSend_tableInfo(self, v14, v15, v16, v17);
  v23 = objc_msgSend_layoutEngine(v18, v19, v20, v21, v22);

  objc_msgSend_validateScaledLayout(self, v24, v25, v26, v27);
  v173 = hintCopy;
  if (hintCopy)
  {
    v32 = objc_msgSend_cellRange(hintCopy, v28, v29, v30, v31);
    if (v32 == 0x7FFFFFFF || (v32 & 0xFFFF00000000) == 0x7FFF00000000 || !(v33 >> 32) || !v33)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTablePartitioner measureCellRangeForNextPartitionOfSize:previousHint:horizontally:]", v35, v36);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 91, 0, "Partitioner can't continue from an invalid range.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }

    v48 = objc_msgSend_cellRange(hintCopy, v33, v34, v35, v36);
    tableIsLTR = self->_tableIsLTR;
    layoutIsLTR = self->_layoutIsLTR;
    if (horizontallyCopy)
    {
      if (tableIsLTR == layoutIsLTR)
      {
        v55 = v49;
      }

      else
      {
        v55 = -1;
      }

      v56 = v55 + WORD2(v48);
      v176 = objc_msgSend_cellRange(hintCopy, v49, v50, v51, v52);
      objc_msgSend_maximumSize(hintCopy, v57, v58, v59, v60);
      if (height == v61)
      {
        objc_msgSend_cellRange(hintCopy, v28, v29, v30, v31);
        v175 = v28 & 0xFFFFFFFF00000000;
      }

      else
      {
        v175 = 0;
      }

      LOWORD(v62) = v56;
      LOWORD(v172) = v56;
    }

    else
    {
      if (tableIsLTR == layoutIsLTR)
      {
        v63 = 0;
      }

      else
      {
        v63 = v49 - 1;
      }

      LOWORD(v62) = v63 + WORD2(v48);
      v64 = objc_msgSend_cellRange(hintCopy, v49, v50, v51, v52);
      if (v65 >> 32)
      {
        v69 = v64 == 0x7FFFFFFF;
      }

      else
      {
        v69 = 1;
      }

      v70 = HIDWORD(v65) + v64;
      if (v69)
      {
        v70 = 0x80000000;
      }

      v176 = v70;
      v172 = objc_msgSend_cellRange(hintCopy, v65, v66, v67, v68) >> 32;
      objc_msgSend_maximumSize(hintCopy, v71, v72, v73, v74);
      if (width == v75)
      {
        objc_msgSend_cellRange(hintCopy, v28, v29, v30, v31);
        v175 = v28;
      }

      else
      {
        v175 = 0;
      }
    }
  }

  else if (self->_tableIsLTR == self->_layoutIsLTR)
  {
    LOWORD(v62) = 0;
    v175 = 0;
    v176 = 0;
    LOWORD(v172) = 0;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    LOWORD(v172) = 0;
    v62 = objc_msgSend_numberOfColumns(v23, v28, v29, v30, v31) - 1;
  }

  objc_msgSend_cellRange(v23, v28, v29, v30, v31);
  v171 = v76;
  v80 = objc_msgSend_numberOfRows(v23, v76, v77, v78, v79);
  v85 = objc_msgSend_numberOfColumns(v23, v81, v82, v83, v84);
  v90 = objc_msgSend_numberOfHeaderRows(v23, v86, v87, v88, v89);
  v91 = v23;
  v96 = objc_msgSend_numberOfHeaderColumns(v23, v92, v93, v94, v95);
  v101 = objc_msgSend_tableInfo(self, v97, v98, v99, v100);
  v106 = objc_msgSend_repeatingHeaderRowsEnabled(v101, v102, v103, v104, v105);

  v111 = objc_msgSend_tableInfo(self, v107, v108, v109, v110);
  v116 = objc_msgSend_repeatingHeaderColumnsEnabled(v111, v112, v113, v114, v115);

  if (v106)
  {
    v117 = v174;
    if (v176)
    {
      sub_2211BC7C4(v174, 0, v85 | (v90 << 32));
      height = height - v118;
    }
  }

  else
  {
    v117 = v174;
  }

  v119 = v62;
  if (((self->_tableIsLTR == self->_layoutIsLTR) & v116) == 1)
  {
    v121 = v172;
    v120 = v173;
    if (v172)
    {
      sub_2211BC7C4(v117, 0, v96 | (v80 << 32));
      width = width - v122;
    }
  }

  else
  {
    v121 = v172;
    v120 = v173;
  }

  v123 = sub_2211B44A8(v117);
  if (!v176)
  {
    v124 = v123;
    if (TSTLayoutGetTableNameVisible(v117))
    {
      height = height - v124;
    }
  }

  if (width <= 0.0)
  {
    width = 0.0;
  }

  v178 = 0;
  v179 = &v178;
  if (height <= 0.0)
  {
    height = 0.0;
  }

  v180 = 0x2020000000;
  v181 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v130 = objc_msgSend_caption(WeakRetained, v126, v127, v128, v129);

  if (v130)
  {
    if (!v120)
    {
      v138 = objc_alloc_init(TSTLayoutHint);
      Partition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint = objc_msgSend_calculateCellRangeForNextPartition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint_(self, v146, v119, v176 | (v121 << 32), v175, 0, 0.0, width, height);
      objc_msgSend_setCellRange_(v138, v148, Partition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint, v148, v149);
      v143 = objc_msgSend_cellRange(v138, v150, v151, v152, v153);
      goto LABEL_49;
    }

    if ((objc_msgSend_cellRange(v120, v131, v132, v133, v134) & 0xFFFF00000000) == 0)
    {
      v138 = objc_msgSend_copy(v120, v131, v135, v136, v137);
      v143 = objc_msgSend_cellRange(v138, v139, v140, v141, v142);
LABEL_49:
      objc_msgSend_setCellRange_(v138, v144, v143 & 0xFFFFFFFF00000000, v171 & 0xFFFFFFFF00000000 | v144, v145);
      v154 = objc_loadWeakRetained(&self->_tableInfo);
      objc_msgSend_setOverrideLayoutHint_(v154, v155, v138, v156, v157);

      v158 = objc_loadWeakRetained(&self->_tableInfo);
      v177[0] = MEMORY[0x277D85DD0];
      v177[1] = 3221225472;
      v177[2] = sub_2213B7EBC;
      v177[3] = &unk_278464150;
      v177[4] = &v178;
      objc_msgSend_performBlockWithTemporaryLayout_(v158, v159, v177, v160, v161);

      v162 = objc_loadWeakRetained(&self->_tableInfo);
      objc_msgSend_setOverrideLayoutHint_(v162, v163, 0, v164, v165);
    }
  }

  v166 = objc_msgSend_calculateCellRangeForNextPartition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint_(self, v131, v119, v176 | (v121 << 32), v175, v120, v179[3], width, height);
  v168 = v167;
  _Block_object_dispose(&v178, 8);

  v169 = v166;
  v170 = v168;
  result.size = v170;
  result.origin = v169;
  return result;
}

- (TSUCellRect)calculateCellRangeForNextPartition:(unsigned __int16)partition nextPartitionRange:(TSUCellRect)range additionalHeightForCaption:(double)caption availableSizeRemaining:(CGSize)remaining previousHint:(id)hint
{
  height = remaining.height;
  width = remaining.width;
  size = range.size;
  origin = range.origin;
  partitionCopy = partition;
  v11 = objc_msgSend_scaledLayout(self, a2, partition, *&range.origin, *&range.size);
  v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
  v21 = objc_msgSend_layoutEngine(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_tableInfo(self, v22, v23, v24, v25);
  isInlineWithText = objc_msgSend_isInlineWithText(v26, v27, v28, v29, v30);

  v35 = objc_msgSend_cellRange(v21, v31, v32, v33, v34);
  v37 = v36;
  v165 = objc_msgSend_numberOfRows(v21, v36, v38, v39, v40);
  v45 = objc_msgSend_numberOfColumns(v21, v41, v42, v43, v44);
  range1 = objc_msgSend_numberOfHeaderRows(v21, v46, v47, v48, v49);
  range1_12 = objc_msgSend_numberOfHeaderColumns(v21, v50, v51, v52, v53);
  v161 = objc_msgSend_numberOfFooterRows(v21, v54, v55, v56, v57);
  v62 = objc_msgSend_tableInfo(self, v58, v59, v60, v61);
  v67 = objc_msgSend_repeatingHeaderColumnsEnabled(v62, v63, v64, v65, v66);

  v68 = sub_2211BBE60(v11, origin.row | (partitionCopy << 32), 0x100000001uLL);
  v70 = v69;
  v72 = v71;
  rect = v73;
  v154 = v37 >> 32;
  v155 = v35;
  v153 = v37;
  v74 = sub_2211BC768(v11, (v35 + (v37 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v35 + HIDWORD(v37) - 1), 0x100000001uLL);
  v76 = v75;
  v78 = v77;
  v80 = v79;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v86 = objc_msgSend_caption(WeakRetained, v82, v83, v84, v85);

  if (v86)
  {
    v169.origin.x = v74;
    v169.origin.y = v76;
    v169.size.width = v78;
    v169.size.height = v80;
    if (CGRectGetMaxY(v169) <= height + v70)
    {
      v170.origin.x = v74;
      v170.origin.y = v76;
      v170.size.width = v78;
      v170.size.height = v80;
      if (CGRectGetMaxY(v170) + caption > height + v70)
      {
        v171.origin.x = v74;
        v171.origin.y = v76;
        v171.size.width = v78;
        v171.size.height = v80;
        height = CGRectGetMinY(v171) - v70 + 1.0;
      }
    }
  }

  v87 = HIDWORD(*&origin);
  v157 = v45;
  if (self->_layoutIsLTR)
  {
    v88 = width + v68;
    v89 = v70 + height;
    v90 = sub_2211BB390(v11, width + v68, v70 + height);
    v91 = HIDWORD(v90);
    v93 = self->_tableIsLTR != self->_layoutIsLTR && (v90 & 0xFFFF00000000) != 0x7FFF00000000;
    if ((v93 & v67) == 1)
    {
      sub_2211BC7C4(v11, 0, range1_12 | (v165 << 32));
      v88 = v88 - v94;
      v95 = sub_2211BB390(v11, v88, v70 + height);
      row = v95;
      if ((v95 & 0xFFFF00000000) != 0x7FFF00000000 || hint != 0)
      {
        LOWORD(v91) = WORD2(v95);
      }
    }

    else
    {
      row = v90;
    }

    v174.origin.x = v68;
    v174.origin.y = v70;
    v174.size.width = v72;
    v174.size.height = rect;
    if (CGRectGetMinX(v174) <= v88)
    {
      v175.origin.x = v68;
      v175.origin.y = v70;
      v175.size.width = v72;
      v175.size.height = rect;
      if (CGRectGetMaxX(v175) >= v88)
      {
        LOWORD(v91) = partitionCopy;
      }
    }

    v176.origin.x = v68;
    v176.origin.y = v70;
    v176.size.width = v72;
    v176.size.height = rect;
    if (CGRectGetMinY(v176) > v89)
    {
      goto LABEL_44;
    }

    v177.origin.x = v68;
    v177.origin.y = v70;
    v177.size.width = v72;
    v177.size.height = rect;
    if (CGRectGetMaxY(v177) < v89)
    {
      goto LABEL_44;
    }

LABEL_43:
    row = origin.row;
    goto LABEL_44;
  }

  v172.origin.x = v68;
  v172.origin.y = v70;
  v172.size.width = v72;
  v172.size.height = rect;
  MaxX = CGRectGetMaxX(v172);
  v173.origin.x = v68;
  v173.origin.y = v70;
  v173.size.width = v72;
  v173.size.height = rect;
  v99 = MaxX - width;
  v100 = height + CGRectGetMinY(v173);
  v101 = sub_2211BB390(v11, v99, v100);
  v91 = HIDWORD(v101);
  v103 = self->_tableIsLTR != self->_layoutIsLTR && (v101 & 0xFFFF00000000) != 0x7FFF00000000;
  if ((v103 & v67) == 1)
  {
    sub_2211BC7C4(v11, 0, range1_12 | (v165 << 32));
    v99 = v99 + v104;
    v105 = sub_2211BB390(v11, v99, v100);
    row = v105;
    if ((v105 & 0xFFFF00000000) != 0x7FFF00000000 || hint != 0)
    {
      LOWORD(v91) = WORD2(v105);
    }
  }

  else
  {
    row = v101;
  }

  v178.origin.x = v68;
  v178.origin.y = v70;
  v178.size.width = v72;
  v178.size.height = rect;
  if (CGRectGetMaxX(v178) >= v99)
  {
    v179.origin.x = v68;
    v179.origin.y = v70;
    v179.size.width = v72;
    v179.size.height = rect;
    if (CGRectGetMinX(v179) <= v99)
    {
      LOWORD(v91) = partitionCopy;
    }
  }

  v180.origin.x = v68;
  v180.origin.y = v70;
  v180.size.width = v72;
  v180.size.height = rect;
  if (CGRectGetMinY(v180) <= v100)
  {
    v181.origin.x = v68;
    v181.origin.y = v70;
    v181.size.width = v72;
    v181.size.height = rect;
    if (CGRectGetMaxY(v181) >= v100)
    {
      goto LABEL_43;
    }
  }

LABEL_44:
  if (row <= origin.row)
  {
    v111 = origin.row;
  }

  else
  {
    v111 = row;
  }

  tableIsLTR = self->_tableIsLTR;
  layoutIsLTR = self->_layoutIsLTR;
  if (partitionCopy <= v91)
  {
    v114 = v91;
  }

  else
  {
    v114 = partitionCopy;
  }

  if (partitionCopy >= v91)
  {
    v115 = v91;
  }

  else
  {
    v115 = partitionCopy;
  }

  if (tableIsLTR == layoutIsLTR || v91 == 0x7FFF)
  {
    v117 = v114;
  }

  else
  {
    v117 = v115;
  }

  if (v111 == 0x7FFFFFFF)
  {
    v118 = size.numberOfColumns | ((v165 - origin.row) << 32);
  }

  else
  {
    v118 = size;
  }

  if (v117 == 0x7FFF)
  {
    if (tableIsLTR == layoutIsLTR)
    {
      v118 = v118 & 0xFFFFFFFF00000000 | (v157 - origin.column);
    }

    else
    {
      LOWORD(v87) = 0;
      v118 = (partitionCopy | v118 & 0xFFFFFFFF00000000) + 1;
    }
  }

  if (!HIDWORD(v118))
  {
    recta = v11;
    v119 = v165 + ~v161;
    v120 = (v111 - origin.row) << 32;
    if (row <= origin.row)
    {
      v120 = 0x100000000;
    }

    v121 = v118 | v120;
    if (!origin.row)
    {
      v122 = HIDWORD(v120) - 1;
      if (!HIDWORD(v121))
      {
        v122 = 0x7FFFFFFF;
      }

      if (v122 < range1)
      {
        v121 = v118 | ((range1 + 1) << 32);
      }
    }

    if (HIDWORD(v121))
    {
      v123 = origin.row == 0x7FFFFFFF;
    }

    else
    {
      v123 = 1;
    }

    if (v123)
    {
      v124 = 0x7FFFFFFF;
    }

    else
    {
      v124 = origin.row + HIDWORD(v121) - 1;
    }

    if (v124 >= v119)
    {
      v125 = !v154 || v155 == 0x7FFFFFFF;
      v126 = v125 ? 0x7FFFFFFF : v155 + v154 - 1;
      if (v126 != v124)
      {
        v127 = v87 != 0x7FFF && origin.row == 0x7FFFFFFF;
        v128.location = range1;
        if (v127)
        {
          v129.location = 0;
        }

        else
        {
          v129.location = origin.row;
        }

        v129.length = HIDWORD(v121);
        v128.length = v165 - (range1 + v161);
        length = NSIntersectionRange(v128, v129).length;
        if (length < 2)
        {
          v118 = &v153[-(*&origin << 32)] & 0xFFFFFFFF00000000 | v121;
          goto LABEL_97;
        }

        v121 = v121 | ((v119 + HIDWORD(v121) + ~v124) << 32);
      }
    }

    v118 = v121;
LABEL_97:
    v11 = recta;
  }

  if (isInlineWithText)
  {
    v130 = objc_msgSend_tableInfo(self, length, v108, v109, v110);
    v118 = v118 & 0xFFFFFFFF00000000 | objc_msgSend_numberOfColumns(v130, v131, v132, v133, v134);
  }

  else
  {
    if (v118)
    {
      goto LABEL_119;
    }

    v135 = self->_tableIsLTR;
    v136 = self->_layoutIsLTR;
    LODWORD(v137) = partitionCopy - v117;
    if (v135 == v136)
    {
      v137 = v117 - partitionCopy;
    }

    else
    {
      v137 = v137;
    }

    if (v135 == v136)
    {
      v138 = v87;
    }

    else
    {
      v138 = v117 + 1;
    }

    if (v137)
    {
      v118 |= v137;
    }

    else
    {
      v118 |= 1uLL;
      if (v157 <= v138)
      {
        v138 = v157 - 1;
        if (v135 == v136)
        {
          v138 = v87;
        }
      }
    }

    if (v138)
    {
      LOWORD(v87) = v138;
      goto LABEL_119;
    }

    v139 = (v118 - 1);
    if (!v118)
    {
      v139 = 0x7FFF;
    }

    if (range1_12 > v139)
    {
      LOWORD(v87) = 0;
      v118 = v118 & 0xFFFFFFFF00000000 | (range1_12 + 1);
      goto LABEL_119;
    }
  }

  LOWORD(v87) = 0;
LABEL_119:
  if (origin.row == 0x7FFFFFFFLL || v87 == 0x7FFF || !HIDWORD(v118) || !v118)
  {
    v140 = MEMORY[0x277D81150];
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "[TSTTablePartitioner calculateCellRangeForNextPartition:nextPartitionRange:additionalHeightForCaption:availableSizeRemaining:previousHint:]", v109, v110, v153);
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v143, v144);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v146, v141, v145, 383, 0, "Partitioner measured an invalid range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149, v150);
  }

  v151 = *&origin & 0xFFFF0000FFFFFFFFLL | (v87 << 32);
  v152 = v118;
  result.size = v152;
  result.origin = v151;
  return result;
}

- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  hintCopy = hint;
  objc_opt_class();
  v14 = TSUDynamicCast();

  if (hintCopy && !v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 389, 0, "previousHint must be nil, or of type TSTLayoutHint.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_layout(v14, v15, v16, v17, v18);
  if (v30)
  {
    v35 = v30;
    v36 = objc_msgSend_layout(v14, v31, v32, v33, v34);
    v41 = objc_msgSend_info(v36, v37, v38, v39, v40);
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

    if (v41 != WeakRetained)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]", v33, v34);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v46, v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 390, 0, "Hint is for the wrong table info.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }
  }

  if (v14)
  {
    if (objc_msgSend_p_didFinishPartitioningHint_horizontally_(self, v31, v14, horizontallyCopy, v34))
    {
      v58 = 0;
      goto LABEL_56;
    }

    v60 = objc_msgSend_cacheHintID(v14, v54, v55, v56, v57);
    v59 = v60;
    v269 = HIWORD(v60);
    if (horizontallyCopy)
    {
      LOWORD(v271) = WORD2(v60) + 1;
    }

    else
    {
      v271 = HIDWORD(v60);
      v59 = v60 + 1;
    }
  }

  else
  {
    v269 = 0;
    LOWORD(v271) = 0;
    v59 = 0;
  }

  v61 = objc_msgSend_rootLayout(layoutCopy, v31, v32, v33, v34);
  v66 = objc_msgSend_layoutController(v61, v62, v63, v64, v65);
  v71 = objc_msgSend_canvas(v66, v67, v68, v69, v70);

  if (!v71)
  {
    v71 = objc_msgSend_null(MEMORY[0x277CBEB68], v72, v73, v74, v75);
  }

  v76 = objc_msgSend_objectForKey_(self->_hintMatricesByCanvas, v72, v71, v74, v75);
  if (!v76)
  {
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forUncopiedKey_(self->_hintMatricesByCanvas, v77, v76, v71, v78);
  }

  v272 = objc_alloc_init(TSTLayoutHint);
  objc_msgSend_scaleToFit(self, v79, v80, v81, v82);
  v85 = *MEMORY[0x277CBF3A8];
  v84 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] == v86 && v84 == v83 && (v87 = objc_loadWeakRetained(&self->_tableInfo), isInlineWithText = objc_msgSend_isInlineWithText(v87, v88, v89, v90, v91), v87, (isInlineWithText & 1) == 0))
  {
    objc_msgSend_setScaleToFit_(self, v93, v94, v95, v96, 1.0, 1.0);
  }

  else
  {
    v97 = objc_loadWeakRetained(&self->_tableInfo);
    if (objc_msgSend_isInlineWithText(v97, v98, v99, v100, v101))
    {
      if ((self->_firstPartitionWidth == width || v59 || v271) && ((objc_msgSend_scaleToFit(self, v102, v103, v104, v105), v111 != v85) || v110 != v84))
      {
        v175 = objc_msgSend_infoGeometry(self, v106, v107, v108, v109);
        objc_msgSend_size(v175, v176, v177, v178, v179);
        v181 = v180;
        v183 = v182;
        objc_msgSend_tableInfo(self, v184, v185, v186, v187);
        v267 = v59;
        v188 = v76;
        v190 = v189 = horizontallyCopy;
        v195 = objc_msgSend_geometry(v190, v191, v192, v193, v194);
        objc_msgSend_size(v195, v196, v197, v198, v199);
        v201 = v200;
        v203 = v202;

        horizontallyCopy = v189;
        v76 = v188;
        v59 = v267;

        if (v181 == v201 && v183 == v203)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v116 = 1.0;
      objc_msgSend_setScaleToFit_(self, v112, v113, v114, v115, 1.0, 1.0);
      objc_msgSend_validateScaledLayout(self, v117, v118, v119, v120);
      v125 = objc_msgSend_scaledLayout(self, v121, v122, v123, v124);
      v130 = objc_msgSend_computeLayoutGeometry(v125, v126, v127, v128, v129);

      v135 = objc_msgSend_scaledLayout(self, v131, v132, v133, v134);
      sub_2211B5074(v135, v136, v137, v138, v139);
      v141 = v140;

      v146 = objc_msgSend_scaledLayout(self, v142, v143, v144, v145);
      sub_2211B9750(v146, v147, v148, v149, v150);
      v152 = v151;

      v157 = width - (v141 - v152);
      if (v152 > v157)
      {
        v116 = v157 / v152;
      }

      objc_msgSend_setScaleToFit_(self, v153, v154, v155, v156, v116, 1.0);
      self->_firstPartitionWidth = width;
      objc_msgSend_scaleToFit(self, v158, v159, v160, v161);
      v163 = v162;
      v165 = v164;
      v170 = objc_msgSend_scaledLayout(self, v166, v167, v168, v169);
      objc_msgSend_setScaleToFit_(v170, v171, v172, v173, v174, v163, v165);
    }

    else
    {
    }
  }

LABEL_35:
  v270 = horizontallyCopy;
  PartitionOfSize_previousHint_horizontally = objc_msgSend_measureCellRangeForNextPartitionOfSize_previousHint_horizontally_(self, v112, v14, horizontallyCopy, v115, width, height);
  v209 = PartitionOfSize_previousHint_horizontally;
  v210 = v205;
  if (HIDWORD(v205))
  {
    v211 = PartitionOfSize_previousHint_horizontally == 0x7FFFFFFF;
  }

  else
  {
    v211 = 1;
  }

  if (v211)
  {
    v212 = 0x7FFFFFFF;
  }

  else
  {
    v212 = PartitionOfSize_previousHint_horizontally + HIDWORD(v205) - 1;
  }

  v213 = objc_msgSend_tableInfo(self, v205, v206, v207, v208);
  if (v212 <= objc_msgSend_numberOfRows(v213, v214, v215, v216, v217))
  {
    if (v210)
    {
      v222 = WORD2(v209) == 0x7FFF;
    }

    else
    {
      v222 = 1;
    }

    selfCopy = self;
    v224 = v14;
    v225 = v71;
    if (v222)
    {
      v226 = 0x7FFF;
    }

    else
    {
      v226 = v210 + WORD2(v209) - 1;
    }

    p_isa = &selfCopy->super.isa;
    v268 = v59;
    v227 = objc_msgSend_tableInfo(selfCopy, v218, v219, v220, v221);
    v232 = layoutCopy;
    v233 = objc_msgSend_numberOfColumns(v227, v228, v229, v230, v231);

    v234 = v233 >= v226;
    v71 = v225;
    v14 = v224;
    layoutCopy = v232;
    if (v234)
    {
      v236 = objc_loadWeakRetained(p_isa + 3);
      v241 = objc_msgSend_geometry(v236, v237, v238, v239, v240);
      objc_msgSend_setInfoGeometry_(p_isa, v242, v241, v243, v244);

      v235 = v272;
      objc_msgSend_setCacheHintID_(v272, v245, (v269 << 48) | (v271 << 32) | v268, v246, v247);
      objc_msgSend_setCellRange_(v272, v248, v209, v210, v249);
      objc_msgSend_setMaximumSize_(v272, v250, v251, v252, v253, width, height);
      objc_msgSend_setHorizontal_(v272, v254, v270, v255, v256);
      v259 = objc_msgSend_partitioningPassForHint_withPreviousHint_(p_isa, v257, v272, v224, v258);
      objc_msgSend_setPartitioningPass_(v272, v260, v259, v261, v262);

      if (finished)
      {
        *finished = objc_msgSend_p_didFinishPartitioningHint_horizontally_(p_isa, v263, v272, v270, v264);
      }

      v58 = v272;
      goto LABEL_55;
    }
  }

  else
  {
  }

  v235 = v272;
  v58 = 0;
  if (finished)
  {
    *finished = 1;
  }

LABEL_55:

LABEL_56:

  return v58;
}

- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v17 = objc_msgSend_nextHintForSize_parentLayout_previousHint_horizontally_outFinished_(self, v14, layoutCopy, hint, horizontallyCopy, finished, width, height);
  if (v17)
  {
    v18 = objc_msgSend_layoutForHint_parentLayout_(self, v15, v17, layoutCopy, v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)layoutForHint:(id)hint parentLayout:(id)layout
{
  hintCopy = hint;
  layoutCopy = layout;
  objc_opt_class();
  v12 = TSUDynamicCast();
  if (!v12)
  {
    v49 = 0;
    goto LABEL_86;
  }

  v13 = objc_msgSend_rootLayout(layoutCopy, v8, v9, v10, v11);
  v18 = objc_msgSend_layoutController(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_canvas(v18, v19, v20, v21, v22);

  if (!v23)
  {
    v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_objectForKey_(self->_hintMatricesByCanvas, v24, v23, v26, v27);
  if (!v28)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forUncopiedKey_(self->_hintMatricesByCanvas, v29, v28, v23, v30);
  }

  v31 = v12;
  v35 = objc_msgSend_hintCacheKeyForHint_(self, v32, hintCopy, v33, v34);
  v39 = objc_msgSend_objectForKey_(v28, v36, v35, v37, v38);

  v44 = objc_msgSend_layout(v39, v40, v41, v42, v43);
  v49 = v44;
  v159 = v39;
  if (v39)
  {
    v50 = objc_msgSend_cellRange(v39, v45, v46, v47, v48);
    v156 = v51;
    v157 = v50;
    v55 = objc_msgSend_cellRange(v31, v51, v52, v53, v54);
    v56 = v55;
    v154 = v45;
    if (v49)
    {
      objc_msgSend_scaleToFit(v49, v45, v46, v47, v48);
      v58 = v57;
      v60 = v59;
      objc_msgSend_maximumSize(v31, v61, v62, v63, v64);
      if (objc_msgSend_shouldReuseLayout_forSize_parentLayout_hint_(self, v65, v49, layoutCopy, v31))
      {
        v66 = 1;
        goto LABEL_18;
      }

      v152 = v56;
      v67 = v12;
      v68 = layoutCopy;
      v69 = hintCopy;
      objc_msgSend_setLayout_(v31, v45, 0, v47, v48);

      goto LABEL_17;
    }

    v152 = v55;
    v67 = v12;
    v68 = layoutCopy;
    v69 = hintCopy;
    v58 = 1.0;
  }

  else
  {
    v56 = 0x7FFF7FFFFFFFLL;
    v58 = 1.0;
    v154 = 0;
    if (v44)
    {
      v66 = 0;
      v156 = 0;
      v157 = 0x7FFF7FFFFFFFLL;
      v60 = 1.0;
      goto LABEL_18;
    }

    v152 = 0x7FFF7FFFFFFFLL;
    v67 = v12;
    v68 = layoutCopy;
    v69 = hintCopy;
    v156 = 0;
    v157 = 0x7FFF7FFFFFFFLL;
  }

  v60 = 1.0;
LABEL_17:
  v70 = objc_msgSend_tableInfo(self, v45, v46, v47, v48);
  v75 = objc_alloc(objc_msgSend_layoutClass(v70, v71, v72, v73, v74));
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v49 = objc_msgSend_initWithInfo_layoutHint_(v75, v77, WeakRetained, v31, v78);

  v66 = 0;
  hintCopy = v69;
  layoutCopy = v68;
  v12 = v67;
  v56 = v152;
LABEL_18:
  objc_msgSend_setLayout_(v31, v45, v49, v47, v48);
  objc_msgSend_setLayoutHint_(v49, v79, v31, v80, v81);
  sub_2211B3D94(v49);
  objc_msgSend_setIsValid_(v31, v82, 1, v83, v84);
  if (v66)
  {
    v89 = objc_msgSend_tableInfo(self, v85, v86, v87, v88);
    isInlineWithText = objc_msgSend_isInlineWithText(v89, v90, v91, v92, v93);

    objc_msgSend_scaleToFit(self, v94, v95, v96, v97);
    if (v100 != v58 || v99 != v60)
    {
      v101 = objc_msgSend_cellRange(v31, v85, v98, v87, v88);
      sub_2211B6824(v49, v101, v102);
LABEL_82:
      objc_msgSend_invalidateSize(v49, v85, v98, v87, v88);
      goto LABEL_83;
    }

    if (v157 == v56 && ((v157 ^ v56) & 0x101FFFF00000000) == 0 && v156 == v154)
    {
      if (!isInlineWithText)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    v151 = hintCopy;
    v103 = v56 & 0xFFFF00000000;
    if (v56 != 0x7FFFFFFF && v103 == 0x7FFF00000000)
    {
      v105 = 0;
    }

    else
    {
      v105 = WORD2(v56);
    }

    v106 = v105;
    if (v154)
    {
      v107 = WORD2(v56) == 0x7FFF;
    }

    else
    {
      v107 = 1;
    }

    if (v107)
    {
      v108 = 0x7FFF;
    }

    else
    {
      v108 = v154 + WORD2(v56) - 1;
    }

    v109 = v56 == 0x7FFFFFFF;
    if (v109 && v103 != 0x7FFF00000000)
    {
      v110 = 0;
    }

    else
    {
      v110 = v56;
    }

    v150 = v110;
    if (!(v154 >> 32))
    {
      v109 = 1;
    }

    if (v109)
    {
      v111 = 0x7FFFFFFF;
    }

    else
    {
      v111 = v56 + HIDWORD(v154) - 1;
    }

    v112 = v157 & 0xFFFF00000000;
    if (v157 != 0x7FFFFFFF && v112 == 0x7FFF00000000)
    {
      v114 = 0;
    }

    else
    {
      v114 = WORD2(v157);
    }

    if (v156)
    {
      v115 = WORD2(v157) == 0x7FFF;
    }

    else
    {
      v115 = 1;
    }

    if (v115)
    {
      v116 = 0x7FFF;
    }

    else
    {
      v116 = v156 + WORD2(v157) - 1;
    }

    v117 = v157 == 0x7FFFFFFF;
    if (v117 && v112 != 0x7FFF00000000)
    {
      v118 = 0;
    }

    else
    {
      v118 = v157;
    }

    if (!(v156 >> 32))
    {
      v117 = 1;
    }

    if (v117)
    {
      v119 = 0x7FFFFFFF;
    }

    else
    {
      v119 = v157 + HIDWORD(v156) - 1;
    }

    v155 = v111;
    if (v106 >= v114)
    {
      v122 = (v106 > v114) | isInlineWithText;
    }

    else
    {
      v158 = v118;
      v120 = v119;
      v121 = v108;
      sub_2211B69F8(v49, v106);
      v108 = v121;
      v119 = v120;
      v118 = v158;
      v122 = 1;
    }

    if (v108 <= v116)
    {
      v123 = (v108 < v116) | v122;
    }

    else
    {
      sub_2211B69F8(v49, (v116 + 1));
      v123 = 1;
    }

    hintCopy = v151;
    v124 = v150;
    if (v150 >= v118)
    {
      v125 = (v150 > v118) | v123;
    }

    else
    {
      sub_2211B6988(v49, v150);
      v125 = 1;
    }

    v126 = v155;
    if (v155 <= v119)
    {
      v127 = (v155 < v119) | v125;
    }

    else
    {
      sub_2211B6988(v49, v119 + 1);
      v127 = 1;
    }

    v128 = objc_msgSend_containedTextEditingLayout(v49, v124, v126, v87, v88);
    if (v128)
    {
      v129 = v128;
      objc_msgSend_invalidateTextLayout(v128, v85, v98, v87, v88);
      objc_msgSend_invalidateForAutosizingTextLayout_(v49, v130, v129, v131, v132);

      goto LABEL_82;
    }

    if (v127)
    {
      goto LABEL_82;
    }
  }

LABEL_83:
  v133 = objc_msgSend_hintCacheKeyForHint_(self, v85, v31, v87, v88);
  objc_msgSend_setObject_forKey_(v28, v134, v31, v133, v135);

  v140 = objc_msgSend_horizontal(v31, v136, v137, v138, v139);
  if (objc_msgSend_p_didFinishPartitioningHint_horizontally_(self, v141, v31, v140, v142))
  {
    v147 = objc_msgSend_horizontal(v31, v143, v144, v145, v146);
    objc_msgSend_p_flushCacheAfterPartitioningFinished_lastHint_horizontally_(self, v148, v28, v31, v147);
  }

LABEL_86:

  return v49;
}

- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  nextHintCopy = nextHint;
  hintCopy = hint;
  objc_opt_class();
  v9 = TSUDynamicCast();

  objc_opt_class();
  v10 = TSUDynamicCast();

  if (v9)
  {
    v15 = v10 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || (objc_msgSend_layout(v9, v11, v12, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tableInfo(v16, v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_layout(v10, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tableInfo(v26, v27, v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), v31, v26, v21, v16, v21 != v31))
  {
LABEL_6:
    v36 = 0;
    goto LABEL_7;
  }

  v38 = objc_msgSend_cellRange(v9, v32, v33, v34, v35);
  if (!horizontallyCopy)
  {
    if (v39 >> 32)
    {
      v77 = v38 == 0x7FFFFFFF;
    }

    else
    {
      v77 = 1;
    }

    if (v77)
    {
      v78 = 0x80000000;
    }

    else
    {
      v78 = HIDWORD(v39) + v38;
    }

    v79 = objc_msgSend_cellRange(v10, v39, v40, v41, v42);
    if ((v79 & 0xFFFF00000000) != 0x7FFF00000000 && v79 == 0x7FFFFFFF)
    {
      v85 = 0;
    }

    else
    {
      v85 = v79;
    }

    if (v78 != v85)
    {
      goto LABEL_6;
    }

    v86 = objc_msgSend_cellRange(v9, v80, v81, v82, v83);
    v91 = HIDWORD(v86);
    if (v86 != 0x7FFFFFFF && (v86 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v91) = 0;
    }

    v93 = v91;
    v94 = objc_msgSend_cellRange(v10, v87, v88, v89, v90);
    v99 = HIDWORD(v94);
    if (v94 != 0x7FFFFFFF && (v94 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v99) = 0;
    }

    if (v93 != v99)
    {
      goto LABEL_6;
    }

    v101 = objc_msgSend_cellRange(v9, v95, v96, v97, v98);
    v106 = v102 + WORD2(v101) - 1;
    if (v102)
    {
      v107 = WORD2(v101) == 0x7FFF;
    }

    else
    {
      v107 = 1;
    }

    if (v107)
    {
      v106 = 0x7FFF;
    }

    v108 = v106;
    v109 = objc_msgSend_cellRange(v10, v102, v103, v104, v105);
    v111 = v110 + WORD2(v109) - 1;
    if (v110)
    {
      v112 = WORD2(v109) == 0x7FFF;
    }

    else
    {
      v112 = 1;
    }

    if (v112)
    {
      v111 = 0x7FFF;
    }

    v76 = v108 == v111;
LABEL_81:
    v36 = v76;
    goto LABEL_7;
  }

  if (v39)
  {
    v43 = WORD2(v38) == 0x7FFF;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    v44 = 0x8000;
  }

  else
  {
    v44 = (v39 + WORD2(v38) - 1) + 1;
  }

  v45 = objc_msgSend_cellRange(v10, v39, v40, v41, v42);
  v36 = 0;
  v50 = v45 != 0x7FFFFFFF && (v45 & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v50 && WORD2(v45) == v44)
  {
    v51 = objc_msgSend_cellRange(v9, v46, v47, v48, v49);
    if ((v51 & 0xFFFF00000000) != 0x7FFF00000000 && v51 == 0x7FFFFFFF)
    {
      v57 = 0;
    }

    else
    {
      v57 = v51;
    }

    v58 = objc_msgSend_cellRange(v10, v52, v53, v54, v55);
    if ((v58 & 0xFFFF00000000) != 0x7FFF00000000 && v58 == 0x7FFFFFFF)
    {
      v64 = 0;
    }

    else
    {
      v64 = v58;
    }

    if (v57 != v64)
    {
      goto LABEL_6;
    }

    v65 = objc_msgSend_cellRange(v9, v59, v60, v61, v62);
    if (v66 >> 32)
    {
      v70 = v65 == 0x7FFFFFFF;
    }

    else
    {
      v70 = 1;
    }

    if (v70)
    {
      v71 = 0x7FFFFFFF;
    }

    else
    {
      v71 = v65 + HIDWORD(v66) - 1;
    }

    v72 = objc_msgSend_cellRange(v10, v66, v67, v68, v69);
    if (HIDWORD(v73))
    {
      v74 = v72 == 0x7FFFFFFF;
    }

    else
    {
      v74 = 1;
    }

    if (v74)
    {
      v75 = 0x7FFFFFFF;
    }

    else
    {
      v75 = v72 + HIDWORD(v73) - 1;
    }

    v76 = v71 == v75;
    goto LABEL_81;
  }

LABEL_7:

  return v36;
}

- (BOOL)p_didFinishPartitioningHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  hintCopy = hint;
  v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_layoutEngine(v11, v12, v13, v14, v15);

  if (!hintCopy)
  {
    v39 = 0;
    goto LABEL_61;
  }

  v21 = objc_msgSend_cellRange(v16, v17, v18, v19, v20);
  v23 = v22;
  v24 = sub_2213A2A30(v16, hintCopy);
  v28 = v25;
  if (!horizontallyCopy)
  {
    if (HIDWORD(v23))
    {
      v40 = v21 == 0x7FFFFFFF;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      v41 = 0x7FFFFFFF;
    }

    else
    {
      v41 = v21 + HIDWORD(v23) - 1;
    }

    if (v25 >> 32)
    {
      v42 = v24 == 0x7FFFFFFF;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      v43 = 0x7FFFFFFF;
    }

    else
    {
      v43 = v24 + HIDWORD(v25) - 1;
    }

    if (v41 < v43)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]", v26, v27);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v47, v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 674, 0, "Vertical partitioning went beyond the table bounds!");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    v55 = v41 > v43;
    goto LABEL_58;
  }

  tableIsLTR = self->_tableIsLTR;
  layoutIsLTR = self->_layoutIsLTR;
  v32 = WORD2(v21) == 0x7FFF || v23 == 0;
  v33 = v23 - 1 + WORD2(v21);
  v34 = HIDWORD(v24);
  v35 = WORD2(v24);
  if (tableIsLTR != layoutIsLTR)
  {
    if (v32)
    {
      v56 = 0x8000;
    }

    else
    {
      v56 = (v23 - 1 + WORD2(v21)) + 1;
    }

    if (v25)
    {
      v57 = WORD2(v24) == 0x7FFF;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      v58 = 0x7FFF;
    }

    else
    {
      v58 = (v25 + WORD2(v24) - 1);
    }

    if (v56 >= v58)
    {
LABEL_47:
      if (tableIsLTR != layoutIsLTR)
      {
        v39 = WORD2(v21) >= v34;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

LABEL_46:
    v59 = MEMORY[0x277D81150];
    v75 = WORD2(v24);
    v74 = v32;
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]", v26, v27);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 671, 0, "Horizontal partitioning went beyond the table bounds!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v66, v67, v68, v69);
    v32 = v74;
    v35 = v75;
    tableIsLTR = self->_tableIsLTR;
    layoutIsLTR = self->_layoutIsLTR;
    goto LABEL_47;
  }

  if (v32)
  {
    v36 = 0x7FFF;
  }

  else
  {
    v36 = v23 - 1 + WORD2(v21);
  }

  v37 = v25 + WORD2(v24) - 1;
  if (v25)
  {
    v38 = WORD2(v24) == 0x7FFF;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v37 = 0x7FFF;
  }

  if (v36 < v37)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (v32)
  {
    v70 = 0x7FFF;
  }

  else
  {
    v70 = v33;
  }

  if (v28)
  {
    v71 = v35 == 0x7FFF;
  }

  else
  {
    v71 = 1;
  }

  if (v71)
  {
    v72 = 0x7FFF;
  }

  else
  {
    v72 = v28 + v34 - 1;
  }

  v55 = v70 > v72;
LABEL_58:
  v39 = !v55;
LABEL_61:

  return v39;
}

- (id)hintForLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v9 = objc_msgSend_layoutHint(v4, v5, v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldReuseLayout:(id)layout forSize:(CGSize)size parentLayout:(id)parentLayout hint:(id)hint
{
  layoutCopy = layout;
  parentLayoutCopy = parentLayout;
  if (parentLayoutCopy)
  {
    v17 = objc_msgSend_parent(layoutCopy, v8, v9, v10, v11);
    if (v17)
    {
      v18 = objc_msgSend_parent(layoutCopy, v13, v14, v15, v16);
      v19 = v18 == parentLayoutCopy;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (TSTLayout)scaledLayout
{
  scaledLayout = self->_scaledLayout;
  if (!scaledLayout)
  {
    v7 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    v12 = objc_alloc(objc_msgSend_layoutClass(v7, v8, v9, v10, v11));
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    v17 = objc_msgSend_initWithInfo_(v12, v14, WeakRetained, v15, v16);
    v18 = self->_scaledLayout;
    self->_scaledLayout = v17;

    scaledLayout = self->_scaledLayout;
  }

  return scaledLayout;
}

- (CGRect)totalPartitionFrame
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_22188E88F;
  v22 = 0u;
  v23 = 0u;
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213B9D84;
  v17[3] = &unk_278464150;
  v17[4] = &v18;
  objc_msgSend_performBlockWithTemporaryLayout_(v5, v6, v17, v7, v8);

  v9 = v19[4];
  v10 = v19[5];
  v11 = v19[6];
  v12 = v19[7];
  _Block_object_dispose(&v18, 8);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)partitioningPassForFirstPartitionSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTablePartitioner partitioningPassForFirstPartitionSize:]", v3, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 742, 0, "partitioningPassForFirstPartitionSize: Invalid partition size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  partitioningPassCache = self->_partitioningPassCache;
  v37.width = width;
  v37.height = height;
  v21 = NSStringFromCGSize(v37);
  v25 = objc_msgSend_objectForKey_(partitioningPassCache, v22, v21, v23, v24);

  if (!v25)
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = random();
    v25 = objc_msgSend_numberWithUnsignedInt_(v26, v28, v27, v29, v30);
    v31 = self->_partitioningPassCache;
    v38.width = width;
    v38.height = height;
    v32 = NSStringFromCGSize(v38);
    objc_msgSend_setObject_forKey_(v31, v33, v25, v32, v34);
  }

  return v25;
}

- (id)partitioningPassForHint:(id)hint withPreviousHint:(id)previousHint
{
  hintCopy = hint;
  previousHintCopy = previousHint;
  v12 = objc_msgSend_cacheHintID(hintCopy, v8, v9, v10, v11);
  if (previousHintCopy && (v12 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v17 = objc_msgSend_partitioningPass(previousHintCopy, v13, v14, v15, v16);

    if (v17)
    {
      objc_msgSend_partitioningPass(previousHintCopy, v18, v19, v20, v21);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, 0, v20, v21);
    }
    v22 = ;
  }

  else
  {
    objc_msgSend_maximumSize(hintCopy, v13, v14, v15, v16);
    v22 = objc_msgSend_partitioningPassForFirstPartitionSize_(self, v23, v24, v25, v26);
  }

  v27 = v22;

  return v27;
}

- (id)hintCacheKeyForPartitioningPass:(id)pass andHintID:(TSUCellCoord)d
{
  v4 = MEMORY[0x277CCACA8];
  passCopy = pass;
  v6 = NSStringFromTSUCellCoord();
  v10 = objc_msgSend_stringWithFormat_(v4, v7, @"(%@,%@)", v8, v9, passCopy, v6);

  return v10;
}

- (id)hintCacheKeyForHint:(id)hint
{
  hintCopy = hint;
  v9 = objc_msgSend_partitioningPass(hintCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_cacheHintID(hintCopy, v10, v11, v12, v13);

  v17 = objc_msgSend_hintCacheKeyForPartitioningPass_andHintID_(self, v15, v9, v14, v16);

  return v17;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

- (CGSize)scaleToFit
{
  width = self->_scaleToFit.width;
  height = self->_scaleToFit.height;
  result.height = height;
  result.width = width;
  return result;
}

@end