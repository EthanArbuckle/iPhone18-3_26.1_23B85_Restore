@interface TNHintCache
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeWithUpperBound:(TSUCellCoord)bound;
- (TNHintCache)initWithInfo:(id)info pageController:(id)controller;
- (id).cxx_construct;
- (id)_infoPartitioner;
- (id)layoutAtCoordinate:(TSUCellCoord)coordinate parentLayout:(id)layout;
- (id)p_hintCacheEntryAtCoordinate:(TSUCellCoord)coordinate;
- (set<TSUCellCoord,)pageCoordinatesWithAnnotations;
- (void)dealloc;
- (void)invalidate;
@end

@implementation TNHintCache

- (TNHintCache)initWithInfo:(id)info pageController:(id)controller
{
  v10.receiver = self;
  v10.super_class = TNHintCache;
  v6 = [(TNHintCache *)&v10 init];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setInfo_(v6, v7, info);
    v8->mPageController = controller;
    v8->mHintCacheEntryDictionary = objc_alloc_init(TNPageCoordinateDictionary);
    v8->mPageRange.topLeft = 0xFFFF0000FFFFLL;
    v8->mPageRange.bottomRight = 0;
    v8->_pageCoordinatesWriterQueue = dispatch_queue_create("TNHintCache.PageCoordinatesWithAnnotations.WriteThread", 0);
  }

  return v8;
}

- (void)dealloc
{
  self->mPageController = 0;
  self->mInfo = 0;

  self->mHintCacheEntryDictionary = 0;
  self->_pageCoordinatesWriterQueue = 0;
  v3.receiver = self;
  v3.super_class = TNHintCache;
  [(TNHintCache *)&v3 dealloc];
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeWithUpperBound:(TSUCellCoord)bound
{
  topLeft = self->mPageRange.topLeft;
  bottomRight = self->mPageRange.bottomRight;
  v10 = bottomRight >= topLeft.row && topLeft.column != 0xFFFF && WORD2(bottomRight) != 0xFFFF && topLeft.row != 0xFFFF && bottomRight != 0xFFFF && WORD2(bottomRight) >= topLeft.column;
  if (!v10 || (!self->mIsMaxRowValid || !self->mIsMaxColumnValid) && (WORD2(bottomRight) < bound.column || bound.row > bottomRight))
  {
    objc_msgSend_p_hintCacheEntryAtCoordinate_(self, bottomRight, *&bound);
    topLeft = self->mPageRange.topLeft;
    bottomRight = self->mPageRange.bottomRight;
  }

  result.var1 = bottomRight;
  result.var0 = topLeft;
  return result;
}

- (id)layoutAtCoordinate:(TSUCellCoord)coordinate parentLayout:(id)layout
{
  v8 = objc_msgSend_p_hintCacheEntryAtCoordinate_(self, a2, *&coordinate);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNHintCache layoutAtCoordinate:parentLayout:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 107, 0, "invalid nil value for '%{public}s'", "hintCacheEntry");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_hint(v8, v6, v7);
  v20 = objc_msgSend__infoPartitioner(self, v17, v18);
  if (!v20)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TNHintCache layoutAtCoordinate:parentLayout:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 112, 0, "invalid nil value for '%{public}s'", "partitioner");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  v30 = objc_msgSend_layoutForHint_parentLayout_(v20, v19, v16, layout);
  if (!v30)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TNHintCache layoutAtCoordinate:parentLayout:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 114, 0, "invalid nil value for '%{public}s'", "layout");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
  }

  v39 = objc_msgSend_layoutController(v30, v28, v29);
  if (!v39)
  {
    v40 = objc_alloc(MEMORY[0x277D802F8]);
    v39 = objc_msgSend_initWithCanvas_(v40, v41, 0);
    v44 = objc_msgSend_rootLayout(v39, v42, v43);
    objc_msgSend_addChild_(v44, v45, v30);
  }

  objc_msgSend_invalidateChildrenOfLayout_(v39, v38, v30);
  objc_msgSend_validateLayouts(v39, v46, v47);
  v50 = objc_msgSend_pageController(self, v48, v49);
  v53 = objc_msgSend_infoProvider(v50, v51, v52);
  if (objc_msgSend_layoutIsLeftToRight(v53, v54, v55))
  {
    objc_msgSend_origin(v8, v56, v57);
    v62 = v61;
  }

  else
  {
    v63 = objc_msgSend_pageController(self, v56, v57);
    objc_msgSend_contentFrame(v63, v64, v65);
    v67 = v66;
    objc_msgSend_origin(v8, v68, v69);
    v71 = v67 + v70;
    v74 = objc_msgSend_geometry(v30, v72, v73);
    objc_msgSend_frame(v74, v75, v76);
    v62 = v71 - v77;
    objc_msgSend_origin(v8, v78, v79);
  }

  v80 = v60;
  v81 = objc_msgSend_geometry(v30, v58, v59);
  objc_msgSend_frame(v81, v82, v83);
  v85 = v84;
  v87 = v86;
  v88 = objc_alloc(MEMORY[0x277D80300]);
  v91 = objc_msgSend_initWithFrame_(v88, v89, v90, v62, v80, v85, v87);
  objc_msgSend_setGeometry_(v30, v92, v91);

  return v30;
}

- (void)invalidate
{
  os_unfair_lock_lock(&unk_280A3DF60);
  *&self->mIsMaxColumnValid = 0;
  objc_msgSend_removeAllObjects(self->mHintCacheEntryDictionary, v3, v4);
  left = self->_pageCoordinatesWithAnnotations.__tree_.__end_node_.__left_;
  self = (self + 64);
  sub_275F16814(&self[-1]._pageCoordinatesWriterQueue, left);
  self->super.isa = 0;
  self->mPageController = 0;
  self[-1]._pageCoordinatesWriterQueue = self;
  LOBYTE(self->mInfo) = 0;
  self[-1]._pageCoordinatesWithAnnotations.__tree_.__begin_node_ = 0xFFFF0000FFFFLL;
  self[-1]._pageCoordinatesWithAnnotations.__tree_.__end_node_.__left_ = 0;

  os_unfair_lock_unlock(&unk_280A3DF60);
}

- (id)_infoPartitioner
{
  v3 = objc_msgSend_info(self, a2, v2);

  return objc_msgSend_partitioner(v3, v4, v5);
}

- (id)p_hintCacheEntryAtCoordinate:(TSUCellCoord)coordinate
{
  v5 = objc_msgSend_pageController(self, a2, *&coordinate);
  v8 = objc_msgSend_infoProvider(v5, v6, v7);
  IsLeftToRight = objc_msgSend_layoutIsLeftToRight(v8, v9, v10);
  v15 = objc_msgSend_objectForPageCoordinate_(self->mHintCacheEntryDictionary, v12, *&coordinate);
  if (v15)
  {
    return v15;
  }

  v16 = objc_msgSend_info(self, v13, v14);
  v114 = objc_msgSend__infoPartitioner(self, v17, v18);
  if (!v114)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TNHintCache p_hintCacheEntryAtCoordinate:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 177, 0, "invalid nil value for '%{public}s'", "partitioner");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  objc_opt_class();
  v27 = TSUDynamicCast();
  if (v27)
  {
    v30 = objc_msgSend_tableWritingDirection(v27, v28, v29) == 1;
  }

  else
  {
    v30 = 0;
  }

  objc_msgSend_setLayoutPartititionsRightToLeft_contentPartitionsRightToLeft_(v114, v28, IsLeftToRight ^ 1u, v30);
  v33 = objc_msgSend_pageController(self, v31, v32);
  v36 = v33;
  v38 = *MEMORY[0x277CBF398];
  MinY = *(MEMORY[0x277CBF398] + 8);
  topLeft = self->mPageRange.topLeft;
  p_mPageRange = &self->mPageRange;
  v40 = *(MEMORY[0x277CBF398] + 16);
  v41 = *(MEMORY[0x277CBF398] + 24);
  v42.row = 0xFFFF;
  v43 = HIDWORD(*&topLeft);
  v44 = HIWORD(*&topLeft);
  if (topLeft.row == 0xFFFF)
  {
    if (((*&topLeft ^ 0xFFFF0000FFFFLL) & 0x101FFFF00000000) == 0)
    {
      objc_msgSend_firstPartitionFrameForInfo_outStartPageCoordinate_(v33, v34, v16, p_mPageRange);
      v38 = v45;
      MinY = v46;
      v40 = v47;
      v41 = v48;
      v42 = self->mPageRange.topLeft;
      self->mPageRange.bottomRight = v42;
      if (IsLeftToRight)
      {
        v43 = HIDWORD(*&v42);
        v44 = HIWORD(*&v42);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v45);
        v119.origin.x = v38;
        v119.origin.y = MinY;
        v119.size.width = v40;
        v119.size.height = v41;
        MinY = CGRectGetMinY(v119);
        v42.row = self->mPageRange.topLeft.row;
        LODWORD(v43) = self->mPageRange.topLeft.column;
        v38 = MaxX;
        v44 = *&self->mPageRange.topLeft._preserveRow;
      }
    }
  }

  else
  {
    v42.row = self->mPageRange.topLeft;
  }

  objc_msgSend_contentFrame(v36, v34, v35);
  v50 = v49;
  v52 = v51;
  v117 = 0;
  v115 = v44 << 48;
  v53 = (v44 << 48) | (v43 << 32);
  v55 = objc_msgSend_objectForPageCoordinate_(self->mHintCacheEntryDictionary, v54, v53 | v42.row);
  if (v55)
  {
    v15 = v55;
    v58 = objc_msgSend_hint(v55, v56, v57);
    objc_msgSend_origin(v15, v59, v60);
    v38 = v63;
    MinY = v62;
    v64 = -v63;
    if (!IsLeftToRight)
    {
      v64 = v38;
    }

    v65 = self->mIsMaxRowValid && self->mPageRange.bottomRight.row <= v42.row;
    v40 = v50 + v64;
    v41 = v52 - v62;
    v117 = v65;
  }

  else
  {
    v118.origin.x = v38;
    v118.origin.y = MinY;
    v118.size.width = v40;
    v118.size.height = v41;
    if (CGRectIsNull(v118))
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TNHintCache p_hintCacheEntryAtCoordinate:]");
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 207, 0, "Can't layout into a null rect.");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
    }

    v58 = objc_msgSend_nextHintForSize_parentLayout_previousHint_horizontally_outFinished_(v114, v66, 0, 0, 0, &v117, v40, v41);
    if (!v58)
    {
      v112 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TNHintCache p_hintCacheEntryAtCoordinate:]");
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNHintCache.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v78, v75, v77, 209, 0, "invalid nil value for '%{public}s'", "previousVerticalHint");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
    }

    v81 = [TNHintCacheEntry alloc];
    v15 = objc_msgSend_initWithHint_origin_(v81, v82, v58, v38, MinY);
    objc_msgSend_setObject_forPageCoordinate_(self->mHintCacheEntryDictionary, v83, v15, v53 | v42.row);
  }

  column = coordinate.column;
  if (coordinate.column >= self->mPageRange.topLeft.column)
  {
    v85 = v117;
  }

  else
  {
    v85 = v117;
    if (p_mPageRange->topLeft.row > coordinate.row)
    {
      v15 = 0;
      goto LABEL_55;
    }
  }

  if ((v85 & 1) != 0 || v42.row >= coordinate.row)
  {
    v52 = v41;
    goto LABEL_39;
  }

  while (1)
  {
    v86 = v42.row + 1;
    v87 = objc_msgSend_objectForPageCoordinate_(self->mHintCacheEntryDictionary, v61, v53 | v86);
    if (v87)
    {
      v15 = v87;
      v58 = objc_msgSend_hint(v87, v88, v89);
      goto LABEL_34;
    }

    v90 = objc_msgSend_nextHintForSize_parentLayout_previousHint_horizontally_outFinished_(v114, v88, 0, v58, 0, &v117, v40, v52);
    if (!v90)
    {
      break;
    }

    v91 = v90;
    v92 = [TNHintCacheEntry alloc];
    v15 = objc_msgSend_initWithHint_origin_(v92, v93, v91, v38, 0.0);
    objc_msgSend_setObject_forPageCoordinate_(self->mHintCacheEntryDictionary, v94, v15, v53 | v86);

    v58 = v91;
LABEL_34:
    v95 = v42.row + 1;
    MinY = 0.0;
    if ((v117 & 1) == 0)
    {
      v96 = v42.row + 2;
      ++v42.row;
      if (v96 <= coordinate.row)
      {
        continue;
      }
    }

    v42.row = v95;
    goto LABEL_39;
  }

  v15 = 0;
  v117 = 1;
  MinY = 0.0;
LABEL_39:
  v116 = 0;
  v97 = v43 + 1;
  if (coordinate.column >= (v43 + 1))
  {
    while (1)
    {
      v99 = v97;
      v100 = v42.row | (v97 << 32);
      v101 = objc_msgSend_objectForPageCoordinate_(self->mHintCacheEntryDictionary, v61, v100 | v115);
      if (v101)
      {
        v15 = v101;
        v58 = objc_msgSend_hint(v101, v102, v103);
      }

      else
      {
        v98 = 1;
        v104 = objc_msgSend_nextHintForSize_parentLayout_previousHint_horizontally_outFinished_(v114, v102, 0, v58, 1, &v116, v50, v52);
        if (!v104)
        {
          v15 = 0;
          goto LABEL_49;
        }

        v58 = v104;
        v105 = [TNHintCacheEntry alloc];
        v15 = objc_msgSend_initWithHint_origin_(v105, v106, v58, 0.0, MinY);
        objc_msgSend_setObject_forPageCoordinate_(self->mHintCacheEntryDictionary, v107, v15, v100 | v115);
      }

      v98 = v116;
      if ((v116 & 1) == 0)
      {
        v97 = v99 + 1;
        LOWORD(v43) = v99;
        if (column >= (v99 + 1))
        {
          continue;
        }
      }

      goto LABEL_50;
    }
  }

  v98 = 0;
LABEL_49:
  LOWORD(v99) = v43;
LABEL_50:
  row = self->mPageRange.bottomRight.row;
  if (row <= v42.row)
  {
    row = v42.row;
  }

  self->mPageRange.bottomRight.row = row;
  v109 = self->mPageRange.bottomRight.column;
  if (v109 <= v99)
  {
    LOWORD(v109) = v99;
  }

  self->mPageRange.bottomRight.column = v109;
  self->mIsMaxColumnValid |= v98;
  v85 = v117;
LABEL_55:
  self->mIsMaxRowValid |= v85;
  return v15;
}

- (set<TSUCellCoord,)pageCoordinatesWithAnnotations
{
  if (!objc_msgSend_pageCoordinatesWithAnnotationsIsValid(self, a3, v3))
  {
    v8 = objc_msgSend_pageRangeWithUpperBound_(self, v6, 0xFFFE0000FFFELL);
    v10 = v9;
    objc_opt_class();
    objc_msgSend_info(self, v11, v12);
    v13 = TSUDynamicCast();
    if (v13)
    {
      v16 = v13;
      if (!objc_msgSend_numberOfComments(v13, v14, v15))
      {
        objc_msgSend_setPageCoordinatesWithAnnotationsIsValid_(self, v17, 1);
        goto LABEL_2;
      }

      v37 = retstr;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v43 = sub_275F2CBEC;
      v44 = &unk_27A6A3010;
      selfCopy = self;
      if (v10 >= v8 && WORD2(v8) != 0xFFFF && WORD2(v10) != 0xFFFF && v8 != 0xFFFF && v10 != 0xFFFF && WORD2(v10) >= WORD2(v8))
      {
        v23 = v8;
        do
        {
          v24 = v23;
          v25 = HIDWORD(v8);
          do
          {
            v43(v42, (v8 & 0xFFFF000000000000 | (v25 << 32) | v24));
            LODWORD(v25) = v25 + 1;
          }

          while (v25 <= WORD2(v10));
          v23 = v24 + 1;
        }

        while (v24 + 1 <= v10);
      }

      os_unfair_lock_lock(&unk_280A3DF60);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_275F2CBF8;
      block[3] = &unk_27A6A3088;
      v40 = v8;
      v41 = v10;
      block[5] = v16;
      v39 = WORD2(v10) - WORD2(v8) + 1;
      block[4] = self;
      dispatch_apply((v10 - v8 + 1) * v39, 0, block);
      os_unfair_lock_unlock(&unk_280A3DF60);
      objc_msgSend_setPageCoordinatesWithAnnotationsIsValid_(self, v26, 1);
      p_pageCoordinatesWithAnnotations = &self->_pageCoordinatesWithAnnotations;
      v28 = v37;
    }

    else
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v47 = sub_275F2CBB8;
      v48 = &unk_27A6A3010;
      selfCopy2 = self;
      if (v10 >= v8 && WORD2(v8) != 0xFFFF && WORD2(v10) != 0xFFFF && v8 != 0xFFFF && v10 != 0xFFFF && WORD2(v10) >= WORD2(v8))
      {
        v34 = HIDWORD(v8);
        v35 = v8 & 0xFFFF000000000000;
        do
        {
          v36 = v34;
          do
          {
            v47(v46, v35 | (v36++ << 32) | v8);
          }

          while (v36 <= WORD2(v10));
          LODWORD(v8) = v8 + 1;
        }

        while (v8 <= v10);
      }

      objc_msgSend_setPageCoordinatesWithAnnotationsIsValid_(self, v14, 1);
      p_pageCoordinatesWithAnnotations = &self->_pageCoordinatesWithAnnotations;
      v28 = retstr;
    }

    return sub_275F2CE68(v28, p_pageCoordinatesWithAnnotations);
  }

LABEL_2:

  return sub_275F2CE68(retstr, &self->_pageCoordinatesWithAnnotations);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 8) = 0;
  *(self + 7) = self + 64;
  return self;
}

@end