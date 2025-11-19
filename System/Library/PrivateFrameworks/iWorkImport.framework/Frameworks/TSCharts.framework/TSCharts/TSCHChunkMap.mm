@interface TSCHChunkMap
- (BOOL)p_canAddChunkForSeries:(id)a3 groupIndex:(int64_t)a4;
- (TSCHChunkMap)initWithChart:(id)a3 chunkStyle:(unint64_t)a4;
- (unint64_t)groupIndexAtMapIndex:(unint64_t)a3;
- (unint64_t)seriesIndexAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)p_setupCacheForElementsInSeriesWithModel:(id)a3;
- (void)p_setupCacheForElementsInSetsWithModel:(id)a3;
- (void)p_setupCacheForSeriesWithModel:(id)a3;
- (void)p_setupCacheForSetsWithModel:(id)a3;
@end

@implementation TSCHChunkMap

- (TSCHChunkMap)initWithChart:(id)a3 chunkStyle:(unint64_t)a4
{
  v6 = a3;
  v48.receiver = self;
  v48.super_class = TSCHChunkMap;
  v8 = [(TSCHChunkMap *)&v48 init];
  if (v8)
  {
    if (!v6)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHChunkMap initWithChart:chunkStyle:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 53, 0, "invalid nil value for '%{public}s'", "chart");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    v28 = objc_msgSend_model(v6, v7, v9, v10, v11);
    if (!v28)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v29, v30, v31, "[TSCHChunkMap initWithChart:chunkStyle:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 55, 0, "invalid nil value for '%{public}s'", "model");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    }

    if (a4 <= 105)
    {
      if (a4 != 102)
      {
        if (a4 == 105)
        {
          objc_msgSend_p_setupCacheForSeriesWithModel_(v8, v27, v29, v30, v31, v28);
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (a4 == 106)
      {
        objc_msgSend_p_setupCacheForSetsWithModel_(v8, v27, v29, v30, v31, v28);
        goto LABEL_16;
      }

      if (a4 != 107)
      {
        if (a4 == 108)
        {
          objc_msgSend_p_setupCacheForElementsInSetsWithModel_(v8, v27, v29, v30, v31, v28);
        }

        goto LABEL_16;
      }
    }

    objc_msgSend_p_setupCacheForElementsInSeriesWithModel_(v8, v27, v29, v30, v31, v28);
LABEL_16:
  }

  return v8;
}

- (void)dealloc
{
  free(self->_seriesMap);
  free(self->_groupsMap);
  v3.receiver = self;
  v3.super_class = TSCHChunkMap;
  [(TSCHChunkMap *)&v3 dealloc];
}

- (void)p_setupCacheForSeriesWithModel:(id)a3
{
  v81 = a3;
  if (!v81)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForSeriesWithModel:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 81, 0, "invalid nil value for '%{public}s'", "model");
LABEL_20:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
    goto LABEL_21;
  }

  if (self->_seriesMap)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForSeriesWithModel:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 85, 0, "expected nil value for '%{public}s'", "_seriesMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_groupsMap)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForSeriesWithModel:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 86, 0, "expected nil value for '%{public}s'", "_groupsMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_numberOfSeries(v81, v4, v5, v6, v7);
  v39 = malloc_type_malloc(8 * v38, 0x100004000313F17uLL);
  self->_seriesMap = v39;
  self->_chunkMapCount = 0;
  if (!v39)
  {
    if (!v38)
    {
      goto LABEL_21;
    }

    v68 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "[TSCHChunkMap p_setupCacheForSeriesWithModel:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v74, v75, v76, v58, v63, 94, 0, "Chart chunk builds ran out of memory allocating %lu ints.", v38);
    goto LABEL_20;
  }

  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v45 = objc_msgSend_seriesAtIndex_(v81, v40, v41, v42, v43, i);
      v50 = objc_msgSend_numberOfGroupsInSeries_(v81, v46, v47, v48, v49, v45);
      if (v50)
      {
        v55 = v50;
        v56 = 0;
        while (!objc_msgSend_p_canAddChunkForSeries_groupIndex_(self, v51, v52, v53, v54, v45, v56))
        {
          if (v55 == ++v56)
          {
            goto LABEL_15;
          }
        }

        self->_seriesMap[self->_chunkMapCount++] = i;
      }

LABEL_15:
    }
  }

LABEL_21:
}

- (void)p_setupCacheForSetsWithModel:(id)a3
{
  v57 = a3;
  if (self->_seriesMap)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForSetsWithModel:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 113, 0, "expected nil value for '%{public}s'", "_seriesMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_groupsMap)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForSetsWithModel:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 114, 0, "expected nil value for '%{public}s'", "_groupsMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_numberOfSeries(v57, v4, v5, v6, v7);
  v43 = objc_msgSend_numberOfGroupsInAllSeries(v57, v39, v40, v41, v42);
  if (v43)
  {
    v44 = v43;
    v45 = malloc_type_malloc(8 * v43, 0x100004000313F17uLL);
    self->_groupsMap = v45;
    self->_chunkMapCount = 0;
    if (v45)
    {
      for (i = 0; i != v44; ++i)
      {
        if (v38)
        {
          v51 = 0;
          while (1)
          {
            v52 = objc_msgSend_seriesAtIndex_(v57, v46, v47, v48, v49, v51);
            if (objc_msgSend_p_canAddChunkForSeries_groupIndex_(self, v53, v54, v55, v56, v52, i))
            {
              break;
            }

            if (v38 == ++v51)
            {
              goto LABEL_14;
            }
          }

          self->_groupsMap[self->_chunkMapCount++] = i;
        }

LABEL_14:
        ;
      }
    }
  }

  else
  {
    self->_chunkMapCount = 0;
  }
}

- (void)p_setupCacheForElementsInSeriesWithModel:(id)a3
{
  v72 = a3;
  if (self->_seriesMap)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForElementsInSeriesWithModel:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 142, 0, "expected nil value for '%{public}s'", "_seriesMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_groupsMap)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForElementsInSeriesWithModel:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 143, 0, "expected nil value for '%{public}s'", "_groupsMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_numberOfSeries(v72, v4, v5, v6, v7);
  v44 = objc_msgSend_numberOfGroupsInAllSeries(v72, v39, v40, v41, v42);
  v48 = v44 * v38;
  if (v44 * v38)
  {
    self->_seriesMap = malloc_type_malloc(8 * v48, 0x100004000313F17uLL);
    self->_groupsMap = malloc_type_malloc(8 * v48, 0x100004000313F17uLL);
  }

  self->_chunkMapCount = 0;
  if (self->_seriesMap && self->_groupsMap)
  {
    if (v38)
    {
      for (i = 0; i != v38; ++i)
      {
        v51 = objc_msgSend_seriesAtIndex_(v72, v43, v45, v46, v47, i);
        if (v44)
        {
          for (j = 0; j != v44; ++j)
          {
            if (objc_msgSend_p_canAddChunkForSeries_groupIndex_(self, v50, v52, v53, v54, v51, j))
            {
              groupsMap = self->_groupsMap;
              self->_seriesMap[self->_chunkMapCount] = i;
              groupsMap[self->_chunkMapCount++] = j;
            }
          }
        }
      }
    }
  }

  else if (v48)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v45, v46, v47, "[TSCHChunkMap p_setupCacheForElementsInSeriesWithModel:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 156, 0, "Chart chunk builds ran out of memory allocating %lu ints.", v48);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }
}

- (void)p_setupCacheForElementsInSetsWithModel:(id)a3
{
  v72 = a3;
  if (self->_seriesMap)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForElementsInSetsWithModel:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 176, 0, "expected nil value for '%{public}s'", "_seriesMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_groupsMap)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkMap p_setupCacheForElementsInSetsWithModel:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 177, 0, "expected nil value for '%{public}s'", "_groupsMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_numberOfSeries(v72, v4, v5, v6, v7);
  v44 = objc_msgSend_numberOfGroupsInAllSeries(v72, v39, v40, v41, v42);
  v48 = v44 * v38;
  if (v44 * v38)
  {
    self->_seriesMap = malloc_type_malloc(8 * v48, 0x100004000313F17uLL);
    self->_groupsMap = malloc_type_malloc(8 * v48, 0x100004000313F17uLL);
  }

  self->_chunkMapCount = 0;
  if (self->_seriesMap && self->_groupsMap)
  {
    if (v44)
    {
      for (i = 0; i != v44; ++i)
      {
        if (v38)
        {
          for (j = 0; j != v38; ++j)
          {
            v51 = objc_msgSend_seriesAtIndex_(v72, v43, v45, v46, v47, j);
            if (objc_msgSend_p_canAddChunkForSeries_groupIndex_(self, v52, v53, v54, v55, v51, i))
            {
              groupsMap = self->_groupsMap;
              self->_seriesMap[self->_chunkMapCount] = j;
              groupsMap[self->_chunkMapCount++] = i;
            }
          }
        }
      }
    }
  }

  else if (v48)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v45, v46, v47, "[TSCHChunkMap p_setupCacheForElementsInSetsWithModel:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 190, 0, "Chart chunk builds ran out of memory allocating %lu ints.", v48);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }
}

- (BOOL)p_canAddChunkForSeries:(id)a3 groupIndex:(int64_t)a4
{
  v119 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = objc_msgSend_model(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_seriesType(v5, v11, v12, v13, v14);
  v24 = (objc_msgSend_chunkedBuildsIncludeInterceptValues(v15, v16, v17, v18, v19) & 1) != 0 || objc_msgSend_intValueForProperty_defaultValue_(v5, v20, v21, v22, v23, 1181, 0) != 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v25 = objc_msgSend_axisList(v10, v20, 0.0, v22, v23);
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v113, v118, 16);
  if (v108)
  {
    v107 = *v114;
    v102 = v10;
    v103 = v5;
    v104 = v15;
    v100 = a4;
    v101 = v25;
    v99 = v24;
    while (2)
    {
      v34 = 0;
      v35 = v107;
      do
      {
        if (*v114 != v35)
        {
          objc_enumerationMutation(v25);
        }

        v36 = *(*(&v113 + 1) + 8 * v34);
        v37 = objc_msgSend_axisID(v36, v30, v31, v32, v33);
        v42 = objc_msgSend_type(v37, v38, v39, v40, v41);
        v47 = objc_msgSend_axisIDForAxisType_(v5, v43, v44, v45, v46, v42);

        v52 = v47;
        if (v47)
        {
          v53 = objc_msgSend_valueForAxisID_groupIndex_(v5, v48, v49, v50, v51, v47, a4);
          v58 = v53;
          if (!v53 || (objc_msgSend_doubleValue(v53, v54, v55, v56, v57), objc_msgSend_doubleModelToAxisValue_forSeries_(v36, v59, v60, v61, v62, v5), v67 = v64, (*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
          {
LABEL_31:

            v97 = 0;
            v15 = v104;
            goto LABEL_33;
          }

          if (!v24 && (objc_msgSend_isCategory(v36, v63, v64, v65, v66) & 1) == 0)
          {
            v105 = v58;
            v106 = v52;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v71 = objc_msgSend_axisList(v10, v68, 0.0, v69, v70);
            v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, v73, v74, v75, &v109, v117, 16);
            if (v76)
            {
              v81 = v76;
              v82 = *v110;
              while (2)
              {
                for (i = 0; i != v81; ++i)
                {
                  if (*v110 != v82)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v84 = *(*(&v109 + 1) + 8 * i);
                  if (v36 != v84)
                  {
                    v85 = objc_msgSend_axisID(v36, v77, v78, v79, v80);
                    v90 = objc_msgSend_axisID(v84, v86, v87, v88, v89);
                    v95 = objc_msgSend_intersectsAxisID_(v85, v91, v92, v93, v94, v90);

                    if (v95)
                    {
                      objc_msgSend_interceptForAxis_(v36, v77, v78, v79, v80, v84);
                      if (v67 == v96 || (v79 = fabs(v96 * 1.0e-10), v78 = vabdd_f64(v67, v96), v78 < v79))
                      {

                        v10 = v102;
                        v5 = v103;
                        v25 = v101;
                        v58 = v105;
                        v52 = v106;
                        goto LABEL_31;
                      }
                    }
                  }
                }

                v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v77, v78, v79, v80, &v109, v117, 16);
                if (v81)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v102;
            v5 = v103;
            a4 = v100;
            v25 = v101;
            v24 = v99;
            v52 = v106;
            v35 = v107;
            v58 = v105;
          }
        }

        ++v34;
      }

      while (v34 != v108);
      v97 = 1;
      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v30, v31, v32, v33, &v113, v118, 16);
      v15 = v104;
      if (v108)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v97 = 1;
  }

LABEL_33:

  return v97;
}

- (unint64_t)seriesIndexAtIndex:(unint64_t)a3
{
  if (self->_seriesMap && objc_msgSend_count(self, a2, v3, v4, v5) > a3)
  {
    return self->_seriesMap[a3];
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChunkMap seriesIndexAtIndex:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
  v20 = objc_msgSend_count(self, v16, v17, v18, v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 254, 0, "Index out of range %lu count %lu has series map %ld", a3, v20, self->_seriesMap != 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  return 0;
}

- (unint64_t)groupIndexAtMapIndex:(unint64_t)a3
{
  if (self->_groupsMap && objc_msgSend_count(self, a2, v3, v4, v5) > a3)
  {
    return self->_groupsMap[a3];
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChunkMap groupIndexAtMapIndex:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
  v20 = objc_msgSend_count(self, v16, v17, v18, v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v21, v22, v23, v24, v10, v15, 264, 0, "Index out of range %lu count %lu has values map %ld", a3, v20, self->_groupsMap != 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  return 0;
}

@end