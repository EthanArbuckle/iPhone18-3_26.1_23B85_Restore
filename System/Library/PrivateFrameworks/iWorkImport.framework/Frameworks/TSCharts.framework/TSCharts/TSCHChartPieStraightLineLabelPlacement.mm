@interface TSCHChartPieStraightLineLabelPlacement
- (BOOL)conflictsExist;
- (CGPoint)calloutLineEndpointForWedgeLayoutInfo:(id)a3;
- (CGPoint)calloutLineStartpointForWedgeLayoutInfo:(id)a3;
- (CGPoint)cellForPoint:(CGPoint)a3;
- (double)shiftAmountForWedgeLayoutInfo:(id)a3;
- (id)newCalloutLinePaths:(id)a3 startLineEnd:(id)a4 outStartLineEndPath:(id *)a5 endLineEnd:(id)a6 outEndLineEndPath:(id *)a7 stroke:(id)a8 outStroke:(id *)a9 context:(CGContext *)a10 contextScale:(float)a11;
- (id)setOfKeysForWedgeLayoutInfo:(id)a3;
- (id)updateLabelTransformsToPreventOverlap;
- (id)wedgeLayoutInfo:(id)a3 conflictsWithWedgeLayoutInfos:(id)a4;
- (id)wedgeLayoutInfosThatShareCellsWithWedgeLayoutInfo:(id)a3;
- (id)wedgeLayoutInfosToTheLeftOfWedgeLayoutInfo:(id)a3;
- (unint64_t)spatialMapCellSize;
- (void)createSeriesIndexToAllWedgeLayoutInfosToTheLeftMap;
- (void)createSeriesIndexToConflictingWedgeLayoutInfosMap;
- (void)createSeriesIndexToWedgeLayoutInfoMap;
- (void)createSpatialMap;
- (void)fixConflictsForWedgeLayoutInfos;
- (void)fixTitleConflictsIfNeeded;
- (void)invalidateWedgeLayoutInfo:(id)a3 oldSetOfKeysForWedgeLayoutInfo:(id)a4;
- (void)setUpCaches;
- (void)shiftLabelOutwards:(id)a3 shiftAmount:(double)a4 invalidateCahes:(BOOL)a5;
- (void)updateConflictsForWedgeLayoutInfo:(id)a3 wedgeLayoutInfosThatShareCells:(id)a4;
- (void)updateSeriesIndexToConflictingWedgeLayoutInfosMapForInvalidatedWedgeLayoutInfo:(id)a3 oldSetOfKeysForWedgeLayoutInfo:(id)a4;
- (void)updateSpatialMapWithInvalidatedWedgeLayoutInfo:(id)a3 oldSetOfKeysForWedgeLayoutInfo:(id)a4;
@end

@implementation TSCHChartPieStraightLineLabelPlacement

- (id)updateLabelTransformsToPreventOverlap
{
  objc_msgSend_fixTitleConflictsIfNeeded(self, a2, v2, v3, v4);
  objc_msgSend_setUpCaches(self, v6, v7, v8, v9);
  objc_msgSend_fixConflictsForWedgeLayoutInfos(self, v10, v11, v12, v13);

  return objc_msgSend_allWedgeLayoutInfos(self, v14, v15, v16, v17);
}

- (void)setUpCaches
{
  objc_msgSend_createSeriesIndexToWedgeLayoutInfoMap(self, a2, v2, v3, v4);
  objc_msgSend_createSeriesIndexToAllWedgeLayoutInfosToTheLeftMap(self, v6, v7, v8, v9);
  objc_msgSend_createSpatialMap(self, v10, v11, v12, v13);

  MEMORY[0x2821F9670](self, sel_createSeriesIndexToConflictingWedgeLayoutInfosMap, v14, v15, v16);
}

- (void)createSeriesIndexToWedgeLayoutInfoMap
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v48 = self;
  v7 = objc_msgSend_allWedgeLayoutInfos(self, v4, 0.0, v5, v6);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v49, v53, 16);
  if (v12)
  {
    v17 = v12;
    v18 = *v50;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v49 + 1) + 8 * i);
        v21 = MEMORY[0x277CCABB0];
        v22 = objc_msgSend_wedgeElement(v20, v13, v14, v15, v16);
        v27 = objc_msgSend_series(v22, v23, v24, v25, v26);
        v32 = objc_msgSend_seriesIndex(v27, v28, v29, v30, v31);
        v37 = objc_msgSend_numberWithUnsignedInteger_(v21, v33, v34, v35, v36, v32);
        objc_msgSend_setObject_forKey_(v3, v38, v39, v40, v41, v20, v37);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v14, v15, v16, &v49, v53, 16);
    }

    while (v17);
  }

  v46 = objc_msgSend_copy(v3, v42, v43, v44, v45);
  seriesIndexToWedgeLayoutInfo = v48->_seriesIndexToWedgeLayoutInfo;
  v48->_seriesIndexToWedgeLayoutInfo = v46;
}

- (void)createSeriesIndexToAllWedgeLayoutInfosToTheLeftMap
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = objc_msgSend_allWedgeLayoutInfos(self, v4, 0.0, v5, v6);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, v8, v9, v10, &v53, v57, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v54;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v20 = objc_msgSend_wedgeLayoutInfosToTheLeftOfWedgeLayoutInfo_(self, v12, v13, v14, v15, v19);
        v21 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_wedgeElement(v19, v22, v23, v24, v25);
        v31 = objc_msgSend_series(v26, v27, v28, v29, v30);
        v36 = objc_msgSend_seriesIndex(v31, v32, v33, v34, v35);
        v41 = objc_msgSend_numberWithUnsignedInteger_(v21, v37, v38, v39, v40, v36);
        objc_msgSend_setObject_forKey_(v3, v42, v43, v44, v45, v20, v41);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, v13, v14, v15, &v53, v57, 16);
    }

    while (v16);
  }

  v50 = objc_msgSend_copy(v3, v46, v47, v48, v49);
  seriesIndexToAllWedgeLayoutInfosToTheLeft = self->_seriesIndexToAllWedgeLayoutInfosToTheLeft;
  self->_seriesIndexToAllWedgeLayoutInfosToTheLeft = v50;
}

- (void)createSpatialMap
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  spatialMap = self->_spatialMap;
  self->_spatialMap = v3;

  self->_CGPointCellSize = objc_msgSend_spatialMapCellSize(self, v5, v6, v7, v8);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = objc_msgSend_allWedgeLayoutInfos(self, v9, 0.0, v10, v11, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v32, v36, 16);
  if (v17)
  {
    v22 = v17;
    v23 = *v33;
    v24 = MEMORY[0x277CBEBF8];
    do
    {
      v25 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v12);
        }

        v26 = *(*(&v32 + 1) + 8 * v25);
        v27 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v18, v19, v20, v21, v24);
        objc_msgSend_updateSpatialMapWithInvalidatedWedgeLayoutInfo_oldSetOfKeysForWedgeLayoutInfo_(self, v28, v29, v30, v31, v26, v27);

        ++v25;
      }

      while (v22 != v25);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v19, v20, v21, &v32, v36, 16);
    }

    while (v22);
  }
}

- (void)createSeriesIndexToConflictingWedgeLayoutInfosMap
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  seriesIndexToConflictingWedgeLayoutInfos = self->_seriesIndexToConflictingWedgeLayoutInfos;
  self->_seriesIndexToConflictingWedgeLayoutInfos = v3;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = objc_msgSend_allWedgeLayoutInfos(self, v5, 0.0, v6, v7, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v27, v31, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v8);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        v22 = objc_msgSend_wedgeLayoutInfosThatShareCellsWithWedgeLayoutInfo_(self, v14, v15, v16, v17, v21);
        objc_msgSend_updateConflictsForWedgeLayoutInfo_wedgeLayoutInfosThatShareCells_(self, v23, v24, v25, v26, v21, v22);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, v15, v16, v17, &v27, v31, 16);
    }

    while (v18);
  }
}

- (void)invalidateWedgeLayoutInfo:(id)a3 oldSetOfKeysForWedgeLayoutInfo:(id)a4
{
  v6 = a4;
  v15 = a3;
  objc_msgSend_updateSpatialMapWithInvalidatedWedgeLayoutInfo_oldSetOfKeysForWedgeLayoutInfo_(self, v7, v8, v9, v10, v15, v6);
  objc_msgSend_updateSeriesIndexToConflictingWedgeLayoutInfosMapForInvalidatedWedgeLayoutInfo_oldSetOfKeysForWedgeLayoutInfo_(self, v11, v12, v13, v14, v15, v6);
}

- (void)updateSpatialMapWithInvalidatedWedgeLayoutInfo:(id)a3 oldSetOfKeysForWedgeLayoutInfo:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_setOfKeysForWedgeLayoutInfo_(self, v8, v9, v10, v11, v6);
  v13 = MEMORY[0x277CBEB58];
  v18 = objc_msgSend_copy(v7, v14, v15, v16, v17);
  v23 = objc_msgSend_setWithSet_(v13, v19, v20, v21, v22, v18);

  objc_msgSend_intersectSet_(v23, v24, v25, v26, v27, v12);
  v28 = MEMORY[0x277CBEB58];
  v102 = v7;
  v33 = objc_msgSend_copy(v7, v29, v30, v31, v32);
  v38 = objc_msgSend_setWithSet_(v28, v34, v35, v36, v37, v33);

  objc_msgSend_minusSet_(v38, v39, v40, v41, v42, v23);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v43 = v38;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, v45, v46, v47, &v107, v112, 16);
  if (v48)
  {
    v53 = v48;
    v54 = *v108;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v108 != v54)
        {
          objc_enumerationMutation(v43);
        }

        v56 = objc_msgSend_objectForKey_(self->_spatialMap, v49, v50, v51, v52, *(*(&v107 + 1) + 8 * i));
        objc_msgSend_removeObject_(v56, v57, v58, v59, v60, v6);
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v49, v50, v51, v52, &v107, v112, 16);
    }

    while (v53);
  }

  v99 = v43;

  v61 = MEMORY[0x277CBEB58];
  v101 = v12;
  v66 = objc_msgSend_copy(v12, v62, v63, v64, v65);
  v71 = objc_msgSend_setWithSet_(v61, v67, v68, v69, v70, v66);

  v100 = v23;
  objc_msgSend_minusSet_(v71, v72, v73, v74, v75, v23);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v76 = v71;
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, v78, v79, v80, &v103, v111, 16);
  if (v81)
  {
    v86 = v81;
    v87 = *v104;
    do
    {
      for (j = 0; j != v86; ++j)
      {
        if (*v104 != v87)
        {
          objc_enumerationMutation(v76);
        }

        v89 = *(*(&v103 + 1) + 8 * j);
        v91 = objc_msgSend_objectForKey_(self->_spatialMap, v82, v83, v84, v85, v89, v99);
        if (!v91)
        {
          v91 = objc_alloc_init(MEMORY[0x277CBEB58]);
          objc_msgSend_setObject_forKey_(self->_spatialMap, v95, v96, v97, v98, v91, v89);
        }

        objc_msgSend_addObject_(v91, v90, v92, v93, v94, v6);
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v82, v83, v84, v85, &v103, v111, 16);
    }

    while (v86);
  }
}

- (void)updateSeriesIndexToConflictingWedgeLayoutInfosMapForInvalidatedWedgeLayoutInfo:(id)a3 oldSetOfKeysForWedgeLayoutInfo:(id)a4
{
  v93[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v11 = objc_msgSend_setOfKeysForWedgeLayoutInfo_(self, v7, v8, v9, v10, a3);
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v74 = v11;
  v75 = v6;
  v93[0] = v6;
  v93[1] = v11;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v93, 2);
  if (objc_msgSend_count(v17, v18, v19, v20, v21))
  {
    v26 = 0;
    v76 = v17;
    do
    {
      v77 = v26;
      v27 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v17, v22, v23, v24, v25, v26);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, 0.0, v29, v30, &v86, v92, 16);
      if (v31)
      {
        v36 = v31;
        v37 = *v87;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v87 != v37)
            {
              objc_enumerationMutation(v27);
            }

            v39 = objc_msgSend_objectForKey_(self->_spatialMap, v32, v33, v34, v35, *(*(&v86 + 1) + 8 * i));
            v82 = 0u;
            v83 = 0u;
            v84 = 0u;
            v85 = 0u;
            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, 0.0, v41, v42, &v82, v91, 16);
            if (v43)
            {
              v48 = v43;
              v49 = *v83;
              do
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v83 != v49)
                  {
                    objc_enumerationMutation(v39);
                  }

                  objc_msgSend_addObject_(v12, v44, v45, v46, v47, *(*(&v82 + 1) + 8 * j));
                }

                v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v44, v45, v46, v47, &v82, v91, 16);
              }

              while (v48);
            }
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v32, v33, v34, v35, &v86, v92, 16);
        }

        while (v36);
      }

      v17 = v76;
      v26 = v77 + 1;
    }

    while (v77 + 1 < objc_msgSend_count(v76, v51, v52, v53, v54));
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v55 = v12;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, v57, v58, v59, &v78, v90, 16);
  if (v60)
  {
    v65 = v60;
    v66 = *v79;
    do
    {
      for (k = 0; k != v65; ++k)
      {
        if (*v79 != v66)
        {
          objc_enumerationMutation(v55);
        }

        v68 = *(*(&v78 + 1) + 8 * k);
        v69 = objc_msgSend_wedgeLayoutInfosThatShareCellsWithWedgeLayoutInfo_(self, v61, v62, v63, v64, v68);
        objc_msgSend_updateConflictsForWedgeLayoutInfo_wedgeLayoutInfosThatShareCells_(self, v70, v71, v72, v73, v68, v69);
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v61, v62, v63, v64, &v78, v90, 16);
    }

    while (v65);
  }
}

- (void)updateConflictsForWedgeLayoutInfo:(id)a3 wedgeLayoutInfosThatShareCells:(id)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v12 = objc_msgSend_wedgeLayoutInfo_conflictsWithWedgeLayoutInfos_(self, v8, v9, v10, v11, v7, a4);
  v43 = objc_msgSend_setWithSet_(v6, v13, v14, v15, v16, v12);

  seriesIndexToConflictingWedgeLayoutInfos = self->_seriesIndexToConflictingWedgeLayoutInfos;
  v18 = MEMORY[0x277CCABB0];
  v23 = objc_msgSend_wedgeElement(v7, v19, v20, v21, v22);

  v28 = objc_msgSend_series(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_seriesIndex(v28, v29, v30, v31, v32);
  v38 = objc_msgSend_numberWithUnsignedInteger_(v18, v34, v35, v36, v37, v33);
  objc_msgSend_setObject_forKey_(seriesIndexToConflictingWedgeLayoutInfos, v39, v40, v41, v42, v43, v38);
}

- (id)setOfKeysForWedgeLayoutInfo:(id)a3
{
  v78[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77 = v4;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(v4, v6, v7, v8, v9);
  x = v80.origin.x;
  y = v80.origin.y;
  width = v80.size.width;
  height = v80.size.height;
  v14 = MEMORY[0x277CCAE60];
  MinX = CGRectGetMinX(v80);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  MinY = CGRectGetMinY(v81);
  v19 = objc_msgSend_valueWithCGPoint_(v14, v17, MinX, MinY, v18);
  v20 = MEMORY[0x277CCAE60];
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  MaxX = CGRectGetMaxX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  v22 = CGRectGetMinY(v83);
  v25 = objc_msgSend_valueWithCGPoint_(v20, v23, MaxX, v22, v24);
  v26 = MEMORY[0x277CCAE60];
  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  v27 = CGRectGetMinX(v84);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  MaxY = CGRectGetMaxY(v85);
  v31 = objc_msgSend_valueWithCGPoint_(v26, v29, v27, MaxY, v30);
  v32 = MEMORY[0x277CCAE60];
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  v33 = CGRectGetMaxX(v86);
  v87.origin.x = x;
  v87.origin.y = y;
  v87.size.width = width;
  v87.size.height = height;
  v34 = CGRectGetMaxY(v87);
  v37 = objc_msgSend_valueWithCGPoint_(v32, v35, v33, v34, v36);
  v76 = v19;
  v78[0] = v19;
  v78[1] = v25;
  v78[2] = v31;
  v78[3] = v37;
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v39, v40, v41, v78, 4);
  if (objc_msgSend_count(v42, v43, v44, v45, v46))
  {
    v51 = 0;
    do
    {
      v52 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v42, v47, v48, v49, v50, v51);
      objc_msgSend_CGPointValue(v52, v53, v54, v55, v56);
      objc_msgSend_cellForPoint_(self, v57, v58, v59, v60);
      v65 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v61, v62, v63, v64);
      objc_msgSend_addObject_(v5, v66, v67, v68, v69, v65);

      ++v51;
    }

    while (v51 < objc_msgSend_count(v42, v70, v71, v72, v73));
  }

  v74 = objc_msgSend_copy(v5, v47, v48, v49, v50);

  return v74;
}

- (CGPoint)cellForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  CGPointCellSize = self->_CGPointCellSize;
  if (CGPointCellSize || (v8 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3.x, a3.y, v3, "[TSCHChartPieStraightLineLabelPlacement cellForPoint:]"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieStraightLineLabelPlacement.m"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 155, 0, "Invalid cell point size. Using default (0,0) as the cell"), v14, v9, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22), (CGPointCellSize = self->_CGPointCellSize) != 0))
  {
    v23 = (x / CGPointCellSize);
    v24 = (y / CGPointCellSize);
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
  }

  result.y = v24;
  result.x = v23;
  return result;
}

- (unint64_t)spatialMapCellSize
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = objc_msgSend_allWedgeLayoutInfos(self, a2, 0.0, v2, v3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, v8, v9, &v37, v41, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v38;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        objc_msgSend_combinedLabelRectInChartCoordinateSpace(v19, v11, v12, v13, v14);
        v21 = v20;
        objc_msgSend_combinedLabelRectInChartCoordinateSpace(v19, v22, v23, v24, v20);
        if (v21 >= v25)
        {
          v12 = v21;
        }

        else
        {
          v12 = v25;
        }

        v17 = v17 + v12;
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, v12, v13, v14, &v37, v41, 16);
    }

    while (v15);
  }

  else
  {
    v17 = 0.0;
  }

  v30 = objc_msgSend_allWedgeLayoutInfos(self, v26, v27, v28, v29);
  v35 = objc_msgSend_count(v30, v31, v32, v33, v34);

  return vcvtmd_u64_f64(v17 / v35 + v17 / v35);
}

- (id)wedgeLayoutInfosToTheLeftOfWedgeLayoutInfo:(id)a3
{
  v79[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCAC98]);
  v10 = objc_msgSend_initWithKey_ascending_(v5, v6, v7, v8, v9, @"wedgeElement.series.seriesIndex", 1);
  v15 = objc_msgSend_allValues(self->_seriesIndexToWedgeLayoutInfo, v11, v12, v13, v14);
  v79[0] = v10;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v17, v18, v19, v79, 1);
  v25 = objc_msgSend_sortedArrayUsingDescriptors_(v15, v21, v22, v23, v24, v20);

  v30 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v26, v27, v28, v29, v25);
  v35 = objc_msgSend_allWedgeLayoutInfos(self, v31, v32, v33, v34);
  v40 = objc_msgSend_count(v35, v36, v37, v38, v39) >> 1;

  v45 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v30, v41, v42, v43, v44, v40);
  if (objc_msgSend_isEqual_(v4, v46, v47, v48, v49, v45))
  {
    v54 = v45;
  }

  else
  {
    do
    {
      v55 = objc_msgSend_firstObject(v30, v50, v51, v52, v53);
      objc_msgSend_removeObjectAtIndex_(v30, v56, v57, v58, v59, 0);
      objc_msgSend_addObject_(v30, v60, v61, v62, v63, v55);
      v54 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v30, v64, v65, v66, v67, v40);

      v45 = v54;
    }

    while (!objc_msgSend_isEqual_(v4, v68, v69, v70, v71, v54));
  }

  v72 = objc_msgSend_subarrayWithRange_(v30, v50, v51, v52, v53, 0, v40);
  v77 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v73, v74, v75, v76, v72);

  return v77;
}

- (void)fixTitleConflictsIfNeeded
{
  v58 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldPreventOverlapWithTitle(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_allWedgeLayoutInfos(self, v6, v7, v8, v9);
    v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

    v19 = 0;
    if (v15 <= 0xA)
    {
      v20 = 10;
    }

    else
    {
      v20 = v15;
    }

    while (1)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v21 = objc_msgSend_allWedgeLayoutInfos(self, v16, 0.0, v17, v18, 0);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, &v53, v57, 16);
      if (!v26)
      {
        break;
      }

      v31 = v26;
      v32 = *v54;
      v33 = 0.0;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v54 != v32)
          {
            objc_enumerationMutation(v21);
          }

          v35 = *(*(&v53 + 1) + 8 * i);
          objc_msgSend_titleRect(self, v27, height, v29, v30);
          objc_msgSend_paddedTitleRectWithRect_(self, v36, v37, v38, v39);
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;
          objc_msgSend_combinedLabelRectInChartCoordinateSpace(v35, v48, v40, v42, v44);
          v61.origin.x = v49;
          v61.origin.y = v50;
          v61.size.width = v51;
          v61.size.height = v52;
          v59.origin.x = v41;
          v59.origin.y = v43;
          v59.size.width = v45;
          v59.size.height = v47;
          *(&v29 - 1) = CGRectIntersection(v59, v61);
          if (v30 >= v60.size.height)
          {
            height = v60.size.height;
          }

          else
          {
            height = v30;
          }

          if (height > 0.0)
          {
            v33 = v33 + height;
            if (height < 1.0)
            {
              height = 1.0;
            }

            objc_msgSend_shiftLabelOutwards_shiftAmount_invalidateCahes_(self, v27, height, v29, v30, v35, 0);
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v27, height, v29, v30, &v53, v57, 16);
      }

      while (v31);

      if (v33 > 0.0 && ++v19 < v20)
      {
        continue;
      }

      return;
    }
  }
}

- (void)fixConflictsForWedgeLayoutInfos
{
  v83[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_conflictsExist(self, a2, v2, v3, v4);
  v11 = objc_msgSend_allWedgeLayoutInfos(self, v7, v8, v9, v10);
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);

  v17 = 100;
  if (v16 < 100)
  {
    v17 = v16;
  }

  v77 = v17;
  if (v6 && v16 >= 2)
  {
    v18 = 1;
    do
    {
      v19 = objc_alloc(MEMORY[0x277CCAC98]);
      v24 = objc_msgSend_initWithKey_ascending_(v19, v20, v21, v22, v23, @"self", 1);
      v29 = objc_msgSend_allKeys(self->_seriesIndexToWedgeLayoutInfo, v25, v26, v27, v28);
      v83[0] = v24;
      v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v31, v32, v33, v83, 1);
      v39 = objc_msgSend_sortedArrayUsingDescriptors_(v29, v35, v36, v37, v38, v34);

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v40 = v39;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, v42, v43, v44, &v78, v82, 16);
      if (v45)
      {
        v50 = v45;
        v51 = *v79;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v79 != v51)
            {
              objc_enumerationMutation(v40);
            }

            v53 = objc_msgSend_objectForKeyedSubscript_(self->_seriesIndexToWedgeLayoutInfo, v46, v47, v48, v49, *(*(&v78 + 1) + 8 * i));
            if (objc_msgSend_shouldShiftWedgeLayoutInfo_(self, v54, v55, v56, v57, v53))
            {
              v62 = 1;
              do
              {
                objc_msgSend_shiftAmountForWedgeLayoutInfo_(self, v58, v59, v60, v61, v53);
                if (v64 < 1.0)
                {
                  v64 = 1.0;
                }

                objc_msgSend_shiftLabelOutwards_shiftAmount_invalidateCahes_(self, v63, v64, v65, v66, v53, 1);
                if (!objc_msgSend_shouldShiftWedgeLayoutInfo_(self, v67, v68, v69, v70, v53))
                {
                  break;
                }
              }

              while (v62++ < 0x63);
            }
          }

          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v46, v47, v48, v49, &v78, v82, 16);
        }

        while (v50);
      }

      v76 = objc_msgSend_conflictsExist(self, v72, v73, v74, v75);
      if (!v76)
      {
        break;
      }

      ++v18;
    }

    while (v77 > v18);
  }
}

- (double)shiftAmountForWedgeLayoutInfo:(id)a3
{
  v4 = a3;
  seriesIndexToConflictingWedgeLayoutInfos = self->_seriesIndexToConflictingWedgeLayoutInfos;
  v6 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_wedgeElement(v4, v7, v8, v9, v10);
  v16 = objc_msgSend_series(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_seriesIndex(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_numberWithUnsignedInteger_(v6, v22, v23, v24, v25, v21);
  v31 = objc_msgSend_objectForKey_(seriesIndexToConflictingWedgeLayoutInfos, v27, v28, v29, v30, v26);

  seriesIndexToAllWedgeLayoutInfosToTheLeft = self->_seriesIndexToAllWedgeLayoutInfosToTheLeft;
  v33 = MEMORY[0x277CCABB0];
  v38 = objc_msgSend_wedgeElement(v4, v34, v35, v36, v37);
  v43 = objc_msgSend_series(v38, v39, v40, v41, v42);
  v48 = objc_msgSend_seriesIndex(v43, v44, v45, v46, v47);
  v53 = objc_msgSend_numberWithUnsignedInteger_(v33, v49, v50, v51, v52, v48);
  v58 = objc_msgSend_objectForKey_(seriesIndexToAllWedgeLayoutInfosToTheLeft, v54, v55, v56, v57, v53);

  v59 = MEMORY[0x277CBEB40];
  v64 = objc_msgSend_copy(v58, v60, v61, v62, v63);
  v69 = objc_msgSend_orderedSetWithOrderedSet_(v59, v65, v66, v67, v68, v64);

  objc_msgSend_intersectSet_(v69, v70, v71, v72, v73, v31);
  if (objc_msgSend_count(v69, v74, v75, v76, v77))
  {
    v82 = objc_msgSend_lastObject(v69, v78, v79, v80, v81);
    objc_msgSend_combinedLabelRectInChartCoordinateSpace(v4, v83, v84, v85, v86);
    objc_msgSend_paddedLabelRectWithRect_(self, v87, v88, v89, v90);
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    objc_msgSend_combinedLabelRectInChartCoordinateSpace(v82, v99, v91, v93, v95);
    objc_msgSend_paddedLabelRectWithRect_(self, v100, v101, v102, v103);
    v112.origin.x = v104;
    v112.origin.y = v105;
    v112.size.width = v106;
    v112.size.height = v107;
    v110.origin.x = v92;
    v110.origin.y = v94;
    v110.size.width = v96;
    v110.size.height = v98;
    v111 = CGRectIntersection(v110, v112);
    if (v111.size.width >= v111.size.height)
    {
      height = v111.size.height;
    }

    else
    {
      height = v111.size.width;
    }
  }

  else
  {
    height = 0.0;
  }

  return height;
}

- (void)shiftLabelOutwards:(id)a3 shiftAmount:(double)a4 invalidateCahes:(BOOL)a5
{
  v7 = a3;
  v12 = objc_msgSend_wedgeElement(v7, v8, v9, v10, v11);
  objc_msgSend_normalizedWedgeBisectionVector(v12, v13, v14, v15, v16);
  TSUMultiplyPointScalar();
  v18 = v17;
  v20 = v19;

  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeTranslation(&v43, v18, v20);
  if (objc_msgSend_enableCalloutLineSetting(v7, v21, v22, v23, v24))
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB98]);
    if (a5)
    {
      v30 = objc_msgSend_setOfKeysForWedgeLayoutInfo_(self, v25, v27, v28, v29, v7);
      v35 = objc_msgSend_copy(v30, v31, v32, v33, v34);

      v42 = v43;
      objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v7, v36, v43.tx, v43.c, v37, &v42);
      objc_msgSend_invalidateWedgeLayoutInfo_oldSetOfKeysForWedgeLayoutInfo_(self, v38, v39, v40, v41, v7, v35);
      v26 = v35;
    }

    else
    {
      v42 = v43;
      objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v7, v25, v43.tx, v43.c, v29, &v42);
    }
  }
}

- (BOOL)conflictsExist
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_allValues(self->_seriesIndexToConflictingWedgeLayoutInfos, a2, 0.0, v2, v3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v17, v21, 16);
  if (v10)
  {
    v14 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_count(*(*(&v17 + 1) + 8 * i), v9, v11, v12, v13))
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, v11, v12, v13, &v17, v21, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (id)wedgeLayoutInfosThatShareCellsWithWedgeLayoutInfo:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_setOfKeysForWedgeLayoutInfo_(self, v5, v6, v7, v8, v4);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v9;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v39, v43, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v24 = objc_msgSend_objectForKey_(self->_spatialMap, v17, v18, v19, v20, *(*(&v39 + 1) + 8 * i), v39);
        objc_msgSend_unionSet_(v10, v25, v26, v27, v28, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v18, v19, v20, &v39, v43, 16);
    }

    while (v21);
  }

  objc_msgSend_removeObject_(v10, v29, v30, v31, v32, v4);
  v37 = objc_msgSend_copy(v10, v33, v34, v35, v36);

  return v37;
}

- (id)wedgeLayoutInfo:(id)a3 conflictsWithWedgeLayoutInfos:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = v7;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v50, v54, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v51;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v9);
        }

        v22 = *(*(&v50 + 1) + 8 * i);
        if (objc_msgSend_enableCalloutLineSetting(v6, v15, v16, v17, v18, v50) || objc_msgSend_enableCalloutLineSetting(v22, v15, v16, v17, v18))
        {
          objc_msgSend_combinedLabelRectInChartCoordinateSpace(v6, v15, v16, v17, v18);
          objc_msgSend_paddedLabelRectWithRect_(self, v23, v24, v25, v26);
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          objc_msgSend_combinedLabelRectInChartCoordinateSpace(v22, v35, v27, v29, v31);
          objc_msgSend_paddedLabelRectWithRect_(self, v36, v37, v38, v39);
          v58.origin.x = v40;
          v58.origin.y = v41;
          v58.size.width = v42;
          v58.size.height = v43;
          v57.origin.x = v28;
          v57.origin.y = v30;
          v57.size.width = v32;
          v57.size.height = v34;
          if (CGRectIntersectsRect(v57, v58))
          {
            objc_msgSend_addObject_(v8, v15, v16, v17, v18, v22);
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v16, v17, v18, &v50, v54, 16);
    }

    while (v19);
  }

  v48 = objc_msgSend_copy(v8, v44, v45, v46, v47);

  return v48;
}

- (id)newCalloutLinePaths:(id)a3 startLineEnd:(id)a4 outStartLineEndPath:(id *)a5 endLineEnd:(id)a6 outEndLineEndPath:(id *)a7 stroke:(id)a8 outStroke:(id *)a9 context:(CGContext *)a10 contextScale:(float)a11
{
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a3;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v21, v22, v23, v24, v20);
  v26 = v25;
  v28 = v27;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v29, v25, v27, v30, v20);
  v32 = v31;
  v34 = v33;

  v36 = objc_msgSend_bezierPathWithStart_end_(MEMORY[0x277D81160], v35, v26, v28, v32, v34);
  v37 = v18;
  v38 = v17;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  objc_msgSend_lineEndPositioningOnPath_atHead_headPoint_tailPoint_headLineEnd_tailLineEnd_stroke_(MEMORY[0x277D81160], v39, v32, v34, v26, v36, 1, v37, v38, v19, v28);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  objc_msgSend_lineEndPositioningOnPath_atHead_headPoint_tailPoint_headLineEnd_tailLineEnd_stroke_(MEMORY[0x277D81160], v40, v32, v34, v26, v36, 0, v37, v38, v19, v28);
  v49[0] = v54;
  v49[1] = v55;
  v50 = v56;
  v47[0] = v51;
  v47[1] = v52;
  v48 = v53;
  v44 = objc_msgSend_createClippedPath_headPositioning_tailPositioning_stroke_(MEMORY[0x277D81160], v41, *&v51, *&v52, v42, v36, v49, v47, v19);
  if (a5)
  {
    *a5 = objc_msgSend_newPathForLineEnd_startPoint_angle_stroke_(self, v43, *(&v51 + 1), *&v52, *&v51, v38, v19);
  }

  if (a7)
  {
    *a7 = objc_msgSend_newPathForLineEnd_startPoint_angle_stroke_(self, v43, *(&v54 + 1), *&v55, *&v54, v37, v19);
  }

  if (*a9)
  {
    v45 = v19;
    *a9 = v19;
  }

  return v44;
}

- (CGPoint)calloutLineStartpointForWedgeLayoutInfo:(id)a3
{
  v6 = objc_msgSend_wedgeElement(a3, a2, v3, v4, v5);
  objc_msgSend_pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip_(v6, v7, 1.05, v8, v9);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)calloutLineEndpointForWedgeLayoutInfo:(id)a3
{
  (MEMORY[0x2821F9670])(a3, sel_pointAtLabelInChartCoordinateSpace);
  result.y = v4;
  result.x = v3;
  return result;
}

@end