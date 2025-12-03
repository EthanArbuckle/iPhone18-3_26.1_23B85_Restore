@interface TSCHLegendViewCache
- (CGPoint)originForCell:(id)cell;
- (CGSize)legendSize;
- (TSCHLegendViewCache)initWithLegendModelCache:(id)cache legendWidth:(double)width;
- (void)dealloc;
@end

@implementation TSCHLegendViewCache

- (TSCHLegendViewCache)initWithLegendModelCache:(id)cache legendWidth:(double)width
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    v159.receiver = self;
    v159.super_class = TSCHLegendViewCache;
    v11 = [(TSCHLegendViewCache *)&v159 init];
    self = v11;
    if (!v11)
    {
LABEL_40:
      self = self;
      selfCopy = self;
      goto LABEL_41;
    }

    v12 = objc_storeWeak(&v11->_modelCache, cacheCopy);
    self->_cellCount = objc_msgSend_cellCount(cacheCopy, v13, v14, v15, v16);

    v17 = malloc_type_calloc(self->_cellCount, 0x10uLL, 0x1000040451B5BE8uLL);
    self->_cellOrigins = v17;
    if (v17 || (v22 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHLegendViewCache initWithLegendModelCache:legendWidth:]"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 511, 0, "invalid nil value for '%{public}s'", "_cellOrigins"), v28, v23, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36), self->_cellOrigins))
    {
      WeakRetained = objc_loadWeakRetained(&self->_modelCache);
      objc_msgSend_horizontalCellSpacing(WeakRetained, v38, v39, v40, v41);
      v43 = v42;

      cellCount = self->_cellCount;
      v156 = cacheCopy;
      while (1)
      {
        v45 = cellCount;
        if (cellCount < 2)
        {
          break;
        }

        v46 = 1;
        v47 = v43;
        do
        {
          v48 = objc_loadWeakRetained(&self->_modelCache);
          v49 = sub_27632D088(v46 - 1, v45, v48);

          v47 = v47 + v43 + v49;
          v50 = v47 > width || v46++ >= v45;
        }

        while (!v50);
        cellCount = v45 - 1;
        if (v47 <= width)
        {
          self->_numberOfColumns = v45;
          p_numberOfColumns = &self->_numberOfColumns;
          v52 = self->_cellCount;
          v53 = v52 / v45;
          v54 = v52 % v45 != 0;
          goto LABEL_19;
        }
      }

      self->_numberOfColumns = cellCount;
      p_numberOfColumns = &self->_numberOfColumns;
      if (!cellCount)
      {
        self->_numberOfRows = 0;
        p_numberOfRows = &self->_numberOfRows;
        v74 = 1.0;
        v72 = 0.0;
        goto LABEL_22;
      }

      v54 = 0;
      v53 = self->_cellCount;
LABEL_19:
      v71 = 0;
      self->_numberOfRows = v53 + v54;
      p_numberOfRows = &self->_numberOfRows;
      v72 = 0.0;
      do
      {
        v73 = objc_loadWeakRetained(&self->_modelCache);
        v72 = v72 + sub_27632D088(v71, v45, v73);

        ++v71;
        v45 = *p_numberOfColumns;
      }

      while (v71 < *p_numberOfColumns);
      v74 = (v45 + 1);
LABEL_22:
      v75 = objc_loadWeakRetained(&self->_modelCache);
      objc_msgSend_verticalCellSpacing(v75, v76, v77, v78, v79);
      v81 = v80;

      v82 = objc_loadWeakRetained(&self->_modelCache);
      objc_msgSend_largestCellSize(v82, v83, v84, v85, v86);
      v88 = v87;

      v89 = objc_loadWeakRetained(&self->_modelCache);
      objc_msgSend_effectiveStrokeWidth(v89, v90, v91, v92, v93);
      v95 = v94;

      v96 = objc_loadWeakRetained(&self->_modelCache);
      v101 = objc_msgSend_reverseSingleColumnLegendOrder(v96, v97, v98, v99, v100);

      v105 = *p_numberOfColumns;
      if (*p_numberOfColumns)
      {
        v106 = 0;
        v107 = 0.0;
        v108 = fmax(width - v72, 0.0) / v74;
        v109 = 0.5;
        v110 = v95 * 0.5;
        v157 = p_numberOfColumns;
        do
        {
          v111 = v108 + v107;
          v112 = *p_numberOfRows;
          if (*p_numberOfRows)
          {
            v113 = 0;
            do
            {
              numberOfColumns = self->_numberOfColumns;
              v115 = v106 + numberOfColumns * v113;
              v116 = self->_cellCount;
              if (v115 < v116)
              {
                if (((numberOfColumns == 1) & v101) == 1)
                {
                  v50 = __CFADD__(v116, ~v115);
                  v115 = v116 + ~v115;
                  if (!v50)
                  {
                    v117 = MEMORY[0x277D81150];
                    v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v109, v103, v104, "[TSCHLegendViewCache initWithLegendModelCache:legendWidth:]");
                    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v124, v125, v126, v127, v118, v123, 584, 0, "Invalid cellIndex");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129, v130, v131);
                    v112 = *p_numberOfRows;
                  }
                }

                v132 = &self->_cellOrigins[v115];
                v109 = v110 + v113 * (v81 + v88);
                v132->x = v111;
                v132->y = v109;
              }

              ++v113;
            }

            while (v113 < v112);
            p_numberOfColumns = v157;
            v105 = *v157;
          }

          v133 = objc_loadWeakRetained(&self->_modelCache);
          v107 = v111 + sub_27632D088(v106, v105, v133);

          ++v106;
          v105 = *p_numberOfColumns;
        }

        while (v106 < *p_numberOfColumns);
      }

      numberOfRows = self->_numberOfRows;
      if (numberOfRows)
      {
        v135 = (numberOfRows - 1);
      }

      else
      {
        v135 = 0.0;
      }

      cacheCopy = v156;
      objc_msgSend_largestCellSize(v156, v102, (numberOfRows - 1), 0.0, v104);
      v137 = v136;
      objc_msgSend_horizontalCellSpacing(v156, v138, v136, v139, v140);
      v142 = v141;
      objc_msgSend_effectiveStrokeWidth(v156, v143, v141, v144, v145);
      v147 = ceil(v137 + v146 + v142 * 2.0);
      if (v147 > width)
      {
        width = v147;
      }

      v148 = objc_loadWeakRetained(&self->_modelCache);
      objc_msgSend_effectiveStrokeWidth(v148, v149, v150, v151, v152);
      v154 = v153 + self->_numberOfRows * v88 + v135 * v81;

      self->_finalSize.width = width;
      self->_finalSize.height = v154;
      goto LABEL_40;
    }
  }

  else
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHLegendViewCache initWithLegendModelCache:legendWidth:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 499, 0, "invalid nil value for '%{public}s'", "modelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  selfCopy = 0;
LABEL_41:

  return selfCopy;
}

- (void)dealloc
{
  cellOrigins = self->_cellOrigins;
  if (cellOrigins)
  {
    free(cellOrigins);
  }

  v4.receiver = self;
  v4.super_class = TSCHLegendViewCache;
  [(TSCHLegendViewCache *)&v4 dealloc];
}

- (CGPoint)originForCell:(id)cell
{
  cellCopy = cell;
  WeakRetained = objc_loadWeakRetained(&self->_modelCache);
  v10 = objc_msgSend_cells(WeakRetained, v6, v7, v8, v9);
  v15 = objc_msgSend_indexOfObject_(v10, v11, v12, v13, v14, cellCopy);

  if (v15 >= self->_cellCount)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHLegendViewCache originForCell:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 624, 0, "Bad cell...");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = &self->_cellOrigins[v15];
  x = v35->x;
  y = v35->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)legendSize
{
  objc_copyStruct(v4, &self->_finalSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end