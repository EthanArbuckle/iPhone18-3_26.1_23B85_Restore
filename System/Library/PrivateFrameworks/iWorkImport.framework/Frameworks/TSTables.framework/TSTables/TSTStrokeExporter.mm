@interface TSTStrokeExporter
- (TSTStrokeExporter)initWithDefaultStrokeProvider:(id)provider customStrokeProvider:(id)strokeProvider tableInfo:(id)info;
- (id)p_strokeExportCacheForColumnBefore:(unsigned __int16)before columnAfter:(unsigned __int16)after;
- (id)p_strokeExportCacheForGridColumn:(unsigned int)column;
- (id)p_strokeExportCacheForGridRow:(unsigned int)row;
- (id)p_strokeExportCacheForRowAbove:(unsigned int)above rowBelow:(unsigned int)below;
- (id)strokeLayerForColumn:(unsigned int)column;
- (id)strokeLayerForRow:(unsigned int)row;
- (void)p_resolveStrokes;
- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right;
@end

@implementation TSTStrokeExporter

- (TSTStrokeExporter)initWithDefaultStrokeProvider:(id)provider customStrokeProvider:(id)strokeProvider tableInfo:(id)info
{
  providerCopy = provider;
  strokeProviderCopy = strokeProvider;
  infoCopy = info;
  v47.receiver = self;
  v47.super_class = TSTStrokeExporter;
  v12 = [(TSTStrokeExporter *)&v47 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_defaultStrokeProvider, provider);
    objc_storeStrong(&v13->_customStrokeProvider, strokeProvider);
    objc_storeStrong(&v13->_tableInfo, info);
    v18 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v14, v15, v16, v17);
    topRowStrokes = v13->_topRowStrokes;
    v13->_topRowStrokes = v18;

    v24 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v20, v21, v22, v23);
    bottomRowStrokes = v13->_bottomRowStrokes;
    v13->_bottomRowStrokes = v24;

    v30 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v26, v27, v28, v29);
    leftColumnStrokes = v13->_leftColumnStrokes;
    v13->_leftColumnStrokes = v30;

    v36 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v32, v33, v34, v35);
    rightColumnStrokes = v13->_rightColumnStrokes;
    v13->_rightColumnStrokes = v36;

    v38 = objc_alloc_init(MEMORY[0x277D81210]);
    rowStrokeExportCache = v13->_rowStrokeExportCache;
    v13->_rowStrokeExportCache = v38;

    v40 = objc_alloc_init(MEMORY[0x277D81210]);
    columnStrokeExportCache = v13->_columnStrokeExportCache;
    v13->_columnStrokeExportCache = v40;

    objc_msgSend_p_resolveStrokes(v13, v42, v43, v44, v45);
  }

  return v13;
}

- (void)p_resolveStrokes
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v198 = objc_msgSend_customStrokeProvider(self, v7, v8, v9, v10);
  v15 = objc_msgSend_defaultStrokeProvider(self, v11, v12, v13, v14);

  v195 = v6;
  if (v15)
  {
    v20 = [TSTStrokeDefaultVendor alloc];
    v196 = objc_msgSend_defaultStrokeProvider(self, v21, v22, v23, v24);
    v29 = objc_msgSend_tableInfo(self, v25, v26, v27, v28);
    v34 = objc_msgSend_tableInfo(self, v30, v31, v32, v33);
    v36 = objc_msgSend_initWithStrokeProvider_tableProvider_tableInfo_(v20, v35, v196, v29, v34);

    objc_msgSend_validateChangeDescriptors_(v36, v37, 0, v38, v39);
    v197 = v36;
  }

  else
  {
    v197 = 0;
  }

  v40 = objc_msgSend_numberOfColumns(v6, v16, v17, v18, v19);
  v193 = objc_msgSend_numberOfRows(v6, v41, v42, v43, v44);
  v49 = objc_msgSend_leftColumnStrokes(self, v45, v46, v47, v48);
  objc_msgSend_setCount_(v49, v50, v40 + 1, v51, v52);

  v57 = objc_msgSend_rightColumnStrokes(self, v53, v54, v55, v56);
  objc_msgSend_setCount_(v57, v58, v40 + 1, v59, v60);

  v65 = objc_msgSend_topRowStrokes(self, v61, v62, v63, v64);
  v194 = v193 + 1;
  objc_msgSend_setCount_(v65, v66, v194, v67, v68);

  v73 = objc_msgSend_bottomRowStrokes(self, v69, v70, v71, v72);
  objc_msgSend_setCount_(v73, v74, v194, v75, v76);

  v80 = 0;
  do
  {
    v85 = objc_msgSend_strokeLayerForColumn_(v197, v77, v80, v78, v79);
    if (v80 >= v40)
    {
      v86 = 0;
      if (!v80)
      {
LABEL_7:
        v87 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v86 = objc_msgSend_strokeLayerForLeftSideOfColumn_(v198, v81, v80, v83, v84);
      if (!v80)
      {
        goto LABEL_7;
      }
    }

    v87 = objc_msgSend_strokeLayerForRightSideOfColumn_(v198, v81, (v80 - 1), v83, v84);
LABEL_10:
    v88 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v81, v82, v83, v84);
    v93 = objc_msgSend_leftColumnStrokes(self, v89, v90, v91, v92);
    objc_msgSend_replacePointerAtIndex_withPointer_(v93, v94, v80, v88, v95);

    objc_msgSend_lockForWrite(v88, v96, v97, v98, v99);
    objc_msgSend_replaceDefaultStrokeLayerWith_(v88, v100, v85, v101, v102);
    objc_msgSend_replaceCustomStrokeLayerWith_(v88, v103, v86, v104, v105);
    objc_msgSend_unlock(v88, v106, v107, v108, v109);
    v114 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v110, v111, v112, v113);
    v119 = objc_msgSend_rightColumnStrokes(self, v115, v116, v117, v118);
    objc_msgSend_replacePointerAtIndex_withPointer_(v119, v120, v80, v114, v121);

    objc_msgSend_lockForWrite(v114, v122, v123, v124, v125);
    objc_msgSend_replaceDefaultStrokeLayerWith_(v114, v126, v85, v127, v128);
    objc_msgSend_replaceCustomStrokeLayerWith_(v114, v129, v87, v130, v131);
    objc_msgSend_unlock(v114, v132, v133, v134, v135);

    ++v80;
    v136 = v195;
  }

  while (v40 + 1 != v80);
  if (v194)
  {
    for (i = 0; v194 != i; ++i)
    {
      v142 = objc_msgSend_strokeLayerForRow_(v197, v77, i, v78, v79);
      if (i >= v193)
      {
        v143 = 0;
        if (i)
        {
LABEL_17:
          v144 = objc_msgSend_strokeLayerForBottomOfRow_(v198, v138, (i - 1), v140, v141);
          goto LABEL_18;
        }
      }

      else
      {
        v143 = objc_msgSend_strokeLayerForTopOfRow_(v198, v138, i, v140, v141);
        if (i)
        {
          goto LABEL_17;
        }
      }

      v144 = 0;
LABEL_18:
      v145 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v138, v139, v140, v141);
      v150 = objc_msgSend_topRowStrokes(self, v146, v147, v148, v149);
      objc_msgSend_replacePointerAtIndex_withPointer_(v150, v151, i, v145, v152);

      objc_msgSend_lockForWrite(v145, v153, v154, v155, v156);
      objc_msgSend_replaceDefaultStrokeLayerWith_(v145, v157, v142, v158, v159);
      objc_msgSend_replaceCustomStrokeLayerWith_(v145, v160, v143, v161, v162);
      objc_msgSend_unlock(v145, v163, v164, v165, v166);
      v171 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v167, v168, v169, v170);
      v176 = objc_msgSend_bottomRowStrokes(self, v172, v173, v174, v175);
      objc_msgSend_replacePointerAtIndex_withPointer_(v176, v177, i, v171, v178);

      objc_msgSend_lockForWrite(v171, v179, v180, v181, v182);
      objc_msgSend_replaceDefaultStrokeLayerWith_(v171, v183, v142, v184, v185);
      objc_msgSend_replaceCustomStrokeLayerWith_(v171, v186, v144, v187, v188);
      objc_msgSend_unlock(v171, v189, v190, v191, v192);

      v136 = v195;
    }
  }
}

- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right
{
  column = d.column;
  if (top)
  {
    v26 = objc_msgSend_p_strokeExportCacheForGridRow_(self, a2, *&d, top, left);
    *top = objc_msgSend_strokeAtIndex_(v26, v14, column, v15, v16);
  }

  if (bottom)
  {
    v27 = objc_msgSend_p_strokeExportCacheForGridRow_(self, a2, d.row + 1, top, left);
    *bottom = objc_msgSend_strokeAtIndex_(v27, v17, column, v18, v19);
  }

  if (left)
  {
    v28 = objc_msgSend_p_strokeExportCacheForGridColumn_(self, a2, column, top, left);
    *left = objc_msgSend_strokeAtIndex_(v28, v20, *&d, v21, v22);
  }

  if (right)
  {
    v29 = objc_msgSend_p_strokeExportCacheForGridColumn_(self, a2, column + 1, top, left);
    *right = objc_msgSend_strokeAtIndex_(v29, v23, *&d, v24, v25);
  }
}

- (id)strokeLayerForColumn:(unsigned int)column
{
  v5 = objc_msgSend_p_strokeExportCacheForGridColumn_(self, a2, *&column, v3, v4);
  v10 = objc_msgSend_mergedStrokes(v5, v6, v7, v8, v9);

  return v10;
}

- (id)strokeLayerForRow:(unsigned int)row
{
  v5 = objc_msgSend_p_strokeExportCacheForGridRow_(self, a2, *&row, v3, v4);
  v10 = objc_msgSend_mergedStrokes(v5, v6, v7, v8, v9);

  return v10;
}

- (id)p_strokeExportCacheForGridColumn:(unsigned int)column
{
  v10 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self->_tableInfo, a2, column, v3, v4);
  if (column)
  {
    v11 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(self->_tableInfo, v7, column, v8, v9);
  }

  else
  {
    v11 = 0x7FFFLL;
  }

  return MEMORY[0x2821F9670](self, sel_p_strokeExportCacheForColumnBefore_columnAfter_, v11, v10, v9);
}

- (id)p_strokeExportCacheForGridRow:(unsigned int)row
{
  v5 = *&row;
  v10 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self->_tableInfo, a2, *&row, v3, v4);
  if (v5)
  {
    v11 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(self->_tableInfo, v7, v5, v8, v9);
  }

  else
  {
    v11 = 0x7FFFFFFFLL;
  }

  return MEMORY[0x2821F9670](self, sel_p_strokeExportCacheForRowAbove_rowBelow_, v11, v10, v9);
}

- (id)p_strokeExportCacheForColumnBefore:(unsigned __int16)before columnAfter:(unsigned __int16)after
{
  afterCopy = after;
  beforeCopy = before;
  if (before != 0x7FFF && after <= before && after != 0x7FFF)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeExporter p_strokeExportCacheForColumnBefore:columnAfter:]", after, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeExporter.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 199, 0, "looking for two visible columns around the gridline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = beforeCopy | (afterCopy << 16);
  v24 = objc_msgSend_objectForKey_(self->_columnStrokeExportCache, a2, v19, after, v4);
  if (!v24)
  {
    if (afterCopy == 0x7FFF)
    {
      v25 = 0;
    }

    else
    {
      v26 = objc_msgSend_leftColumnStrokes(self, v20, v21, v22, v23);
      v30 = objc_msgSend_pointerAtIndex_(v26, v27, afterCopy, v28, v29);

      objc_msgSend_lockForRead(v30, v31, v32, v33, v34);
      v25 = v30;
    }

    if (beforeCopy == 0x7FFF)
    {
      v35 = 0;
    }

    else
    {
      v36 = objc_msgSend_rightColumnStrokes(self, v20, v21, v22, v23);
      v35 = objc_msgSend_pointerAtIndex_(v36, v37, beforeCopy + 1, v38, v39);

      objc_msgSend_lockForRead(v35, v40, v41, v42, v43);
    }

    if (objc_msgSend_count(v25, v20, v21, v22, v23) || objc_msgSend_count(v35, v44, v45, v46, v47))
    {
      v48 = objc_msgSend_mergeTopStrokes_withBottomStrokes_(TSTStrokeLayerMergedStack, v44, v25, v35, v47);
      objc_msgSend_unlock(v25, v49, v50, v51, v52);
      objc_msgSend_unlock(v35, v53, v54, v55, v56);
      v57 = [TSTStrokeExportCache alloc];
      v24 = objc_msgSend_initWithMergedStack_(v57, v58, v48, v59, v60);
      objc_msgSend_setObject_forKey_(self->_columnStrokeExportCache, v61, v24, v19, v62);
    }

    else
    {
      v24 = 0;
      v48 = 0;
    }
  }

  return v24;
}

- (id)p_strokeExportCacheForRowAbove:(unsigned int)above rowBelow:(unsigned int)below
{
  if (above != 0x7FFFFFFF && below <= above && below != 0x7FFFFFFF)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeExporter p_strokeExportCacheForRowAbove:rowBelow:]", *&below, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeExporter.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 236, 0, "looking for two visible rows around the gridline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = above | (below << 16);
  v26 = objc_msgSend_objectForKey_(self->_rowStrokeExportCache, a2, v21, *&below, v4);
  if (!v26)
  {
    if (below == 0x7FFFFFFF)
    {
      v27 = 0;
    }

    else
    {
      v28 = objc_msgSend_topRowStrokes(self, v22, v23, v24, v25);
      v32 = objc_msgSend_pointerAtIndex_(v28, v29, below, v30, v31);

      objc_msgSend_lockForRead(v32, v33, v34, v35, v36);
      v27 = v32;
    }

    if (above == 0x7FFFFFFF)
    {
      v37 = 0;
    }

    else
    {
      v38 = objc_msgSend_bottomRowStrokes(self, v22, v23, v24, v25);
      v37 = objc_msgSend_pointerAtIndex_(v38, v39, above + 1, v40, v41);

      objc_msgSend_lockForRead(v37, v42, v43, v44, v45);
    }

    if (objc_msgSend_count(v27, v22, v23, v24, v25) || objc_msgSend_count(v37, v46, v47, v48, v49))
    {
      v50 = objc_msgSend_mergeTopStrokes_withBottomStrokes_(TSTStrokeLayerMergedStack, v46, v27, v37, v49);
      objc_msgSend_unlock(v27, v51, v52, v53, v54);
      objc_msgSend_unlock(v37, v55, v56, v57, v58);
      v59 = [TSTStrokeExportCache alloc];
      v26 = objc_msgSend_initWithMergedStack_(v59, v60, v50, v61, v62);
      objc_msgSend_setObject_forKey_(self->_rowStrokeExportCache, v63, v26, v21, v64);
    }

    else
    {
      v26 = 0;
      v50 = 0;
    }
  }

  return v26;
}

@end