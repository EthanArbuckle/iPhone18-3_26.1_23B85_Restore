@interface TSTStrokeSidecarIterator
+ (id)p_filterRegion:(id)a3 strokeSidecar:(id)a4;
- (TSTStrokeSidecarIterator)initWithStrokeSidecar:(id)a3 region:(id)a4;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3;
- (TSUCellCoord)getNext;
- (void)updateCellData:(id)a3;
@end

@implementation TSTStrokeSidecarIterator

- (TSTStrokeSidecarIterator)initWithStrokeSidecar:(id)a3 region:(id)a4
{
  v7 = a3;
  v11 = a4;
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTStrokeSidecarIterator initWithStrokeSidecar:region:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecarIterator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 43, 0, "invalid nil value for '%{public}s'", "region");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_p_filterRegion_strokeSidecar_(TSTStrokeSidecarIterator, v8, v11, v7, v10);

  v37.receiver = self;
  v37.super_class = TSTStrokeSidecarIterator;
  v24 = [(TSTStrokeSidecarIterator *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_strokeSidecar, a3);
    objc_storeStrong(&v25->_region, v23);
    v30 = objc_msgSend_newIterator(v25->_region, v26, v27, v28, v29);
    regionIterator = v25->_regionIterator;
    v25->_regionIterator = v30;

    v25->_curCellID = objc_msgSend_firstCellID(v25->_region, v32, v33, v34, v35);
  }

  return v25;
}

+ (id)p_filterRegion:(id)a3 strokeSidecar:(id)a4
{
  v5 = a3;
  v69 = a4;
  v10 = objc_msgSend_boundingCellRange(v5, v6, v7, v8, v9) >> 32;
  v12 = v11;
  v16 = objc_msgSend_boundingCellRange(v5, v11, v13, v14, v15);
  v18 = v17;
  v70 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v19 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v102 = 0;
  v103 = &v102;
  v104 = 0x4812000000;
  v105 = sub_22134A5F0;
  v106 = sub_22134A614;
  v107 = &unk_22188E88F;
  v109 = 0;
  v110 = 0;
  v108 = 0;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v101 = 0x7FFF;
  v83.origin = objc_msgSend_boundingCellRange(v5, v20, v21, v22, v23);
  v83.size = v24;
  v25 = TSUCellRect::lastColumn(&v83);
  v26 = HIDWORD(v18);
  v27 = v16;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = sub_22134A62C;
  v91[3] = &unk_278462EE0;
  v28 = v19;
  v92 = v28;
  v29 = v69;
  v93 = v29;
  v97 = v27;
  v98 = v26;
  v30 = v70;
  v94 = v30;
  v95 = v100;
  v96 = &v102;
  v99 = v25;
  objc_msgSend_enumerateColumnsUsingBlock_(v5, v31, v91, v32, v33);
  objc_msgSend_removeAllIndexes(v30, v34, v35, v36, v37);
  v83.origin = 0;
  v83.size = &v83;
  v84 = 0x4812000000;
  v85 = sub_22134A5F0;
  v86 = sub_22134A614;
  v87 = &unk_22188E88F;
  v89 = 0;
  v90 = 0;
  __p = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 0x7FFFFFFF;
  v80.origin = objc_msgSend_boundingCellRange(v5, v38, v39, v40, v41);
  v80.size = v42;
  v43 = TSUCellRect::lastRow(&v80);
  v44 = v10;
  v45 = v12;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_22134AA68;
  v71[3] = &unk_278462F30;
  v46 = v28;
  v72 = v46;
  v47 = v29;
  v73 = v47;
  v77 = v44;
  v78 = v45;
  v48 = v30;
  v74 = v48;
  v75 = v81;
  v76 = &v83;
  v79 = v43;
  objc_msgSend_enumerateRowsUsingBlock_(v5, v49, v71, v50, v51);
  v55 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v52, (v103 + 6), v53, v54);
  v59 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v56, *&v83.size + 48, v57, v58);
  v63 = objc_msgSend_regionByAddingRegion_(v55, v60, v59, v61, v62);
  v67 = objc_msgSend_regionByIntersectingRegion_(v63, v64, v5, v65, v66);

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(&v83, 8);
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v100, 8);
  _Block_object_dispose(&v102, 8);
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  return v67;
}

- (void)updateCellData:(id)a3
{
  v70 = a3;
  v8 = objc_msgSend_cellID(v70, v4, v5, v6, v7);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTStrokeSidecarIterator updateCellData:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecarIterator.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 227, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_cellID(v70, v9, v10, v11, v12);
  curCellID = self->_curCellID;
  if (v24 == curCellID.row && ((*&curCellID ^ v24) & 0x101FFFF00000000) == 0)
  {
    strokeSidecar = self->_strokeSidecar;
    v58 = objc_msgSend_cellID(v70, v25, v26, v27, v28);
    v53 = objc_msgSend_cellBorderAtCellID_(strokeSidecar, v59, v58, v60, v61);
    v66 = objc_msgSend_cell(v70, v62, v63, v64, v65);
    objc_msgSend_setCellBorder_(v66, v67, v53, v68, v69);
  }

  else
  {
    v30 = objc_msgSend_cellID(v70, v25, v26, v27, v28);
    row = self->_curCellID.row;
    if (row <= v30 && (row != v30 || self->_curCellID.column <= WORD2(v30)))
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTStrokeSidecarIterator updateCellData:]", v33, v34);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecarIterator.mm", v39, v40);
      objc_msgSend_cellID(v70, v42, v43, v44, v45);
      v46 = NSStringFromTSUCellCoord();
      v47 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v48, v37, v41, 235, 0, "cellID %@ should be before cursor cellID %@", v46, v47);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    v53 = objc_msgSend_cell(v70, v31, v32, v33, v34);
    objc_msgSend_setCellBorder_(v53, v54, 0, v55, v56);
  }
}

- (TSUCellCoord)getNext
{
  Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3, v4);
  self->_curCellID = Next;
  return Next;
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3
{
  curCellID = self->_curCellID;
  v8 = curCellID.row != 0x7FFFFFFF && (*&curCellID & 0xFFFF00000000) != 0x7FFF00000000 && curCellID.row >= a3.row;
  if (!v8 || curCellID.row == a3.row && curCellID.column < a3.column)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, a2, *&a3, v3, v4);
    return self->_curCellID;
  }

  return curCellID;
}

@end