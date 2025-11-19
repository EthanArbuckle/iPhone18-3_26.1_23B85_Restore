@interface TSTLayoutDynamicResizeInfoUnify
- (BOOL)applyFixedHeight:(double)a3;
- (BOOL)applyFixedWidth:(double)a3;
- (BOOL)p_applyUnifyFixedSize:(double)a3 region:(id)a4 direction:(int64_t)a5 count:(unsigned int)a6 currentArray:(void *)a7 minimumArray:(void *)a8;
- (double)applyResizeHeightFactor:(double)a3;
- (double)applyResizeWidthFactor:(double)a3;
- (double)p_applyUnifyResizeFactor:(double)a3 region:(id)a4 direction:(int64_t)a5 totalOfCaptured:(double)a6 count:(unsigned int)a7 capturedArray:(void *)a8 currentArray:(void *)a9 minimumArray:(void *)a10;
@end

@implementation TSTLayoutDynamicResizeInfoUnify

- (double)p_applyUnifyResizeFactor:(double)a3 region:(id)a4 direction:(int64_t)a5 totalOfCaptured:(double)a6 count:(unsigned int)a7 capturedArray:(void *)a8 currentArray:(void *)a9 minimumArray:(void *)a10
{
  v31 = a4;
  v21 = -(a6 - a6 * a3);
  v22 = a3 * a6;
  v30 = a3;
  while (1)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = a7;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = a6;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = v22;
    v23 = a5 ? objc_msgSend_startColumnIndex(self, v17, v18, v19, v20) : objc_msgSend_startRowIndex(self, v17, v18, v19, v20);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2214914C4;
    v32[3] = &unk_278465AB0;
    v33 = v23;
    v32[7] = &v42;
    v32[8] = a9;
    *&v32[9] = a6 / a7;
    *&v32[10] = a3;
    v32[11] = a10;
    v32[4] = &v38;
    v32[5] = &v34;
    v32[6] = &v46;
    objc_msgSend_enumerateInDirection_usingBlock_(v31, v24, a5, v32, v25);
    v26 = v43[3];
    if (!*(v47 + 6) || vabdd_f64(v21, v26) < 0.1 || fabs(v26 / v21 + -1.0) < 0.0001)
    {
      break;
    }

    a3 = v35[3] / v39[3];
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }

  v27 = v30;
  if (v26 > v21)
  {
    v27 = (v26 + a6) / a6;
  }

  v28 = &OBJC_IVAR___TSTLayoutDynamicResizeInfoUnify_mTargetWidth;
  if (!a5)
  {
    v28 = &OBJC_IVAR___TSTLayoutDynamicResizeInfoUnify_mTargetHeight;
  }

  *(&self->super.super.isa + *v28) = a6 / a7 * a3;
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v27;
}

- (BOOL)p_applyUnifyFixedSize:(double)a3 region:(id)a4 direction:(int64_t)a5 count:(unsigned int)a6 currentArray:(void *)a7 minimumArray:(void *)a8
{
  v17 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (a5)
  {
    started = objc_msgSend_startColumnIndex(self, v13, v14, v15, v16);
  }

  else
  {
    started = objc_msgSend_startRowIndex(self, v13, v14, v15, v16);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_221491688;
  v23[3] = &unk_278465AD8;
  v24 = started;
  *&v23[6] = a3;
  v23[7] = a8;
  v23[4] = &v25;
  v23[5] = a7;
  objc_msgSend_enumerateInDirection_usingBlock_(v17, v19, a5, v23, v20);
  v21 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v21;
}

- (double)applyResizeHeightFactor:(double)a3
{
  if (objc_msgSend_numberOfRows(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_rowRegion(self, v8, v9, v10, v11);
    objc_msgSend_capturedRowHeightTotal(self, v13, v14, v15, v16);
    v18 = v17;
    v23 = objc_msgSend_rowRegion(self, v19, v20, v21, v22);
    v28 = objc_msgSend_numberOfIntersectingRows(v23, v24, v25, v26, v27);
    objc_msgSend_p_applyUnifyResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v29, v12, 0, v28, &self->super._capturedRowHeights, &self->super._currentRowHeights, &self->super._minimumRowHeights, a3, v18);
    a3 = v30;
  }

  return a3;
}

- (double)applyResizeWidthFactor:(double)a3
{
  if (objc_msgSend_numberOfColumns(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_columnRegion(self, v8, v9, v10, v11);
    objc_msgSend_capturedColumnWidthTotal(self, v13, v14, v15, v16);
    v18 = v17;
    v23 = objc_msgSend_columnRegion(self, v19, v20, v21, v22);
    v28 = objc_msgSend_numberOfIntersectingColumns(v23, v24, v25, v26, v27);
    objc_msgSend_p_applyUnifyResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v29, v12, 1, v28, &self->super._capturedColumnWidths, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, a3, v18);
    a3 = v30;
  }

  return a3;
}

- (BOOL)applyFixedHeight:(double)a3
{
  if (!objc_msgSend_numberOfRows(self, a2, v3, v4, v5))
  {
    return 0;
  }

  v12 = objc_msgSend_rowRegion(self, v8, v9, v10, v11);
  v17 = objc_msgSend_rowRegion(self, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfIntersectingRows(v17, v18, v19, v20, v21);
  v24 = objc_msgSend_p_applyUnifyFixedSize_region_direction_count_currentArray_minimumArray_(self, v23, v12, 0, v22, &self->super._currentRowHeights, &self->super._minimumRowHeights, a3);

  return v24;
}

- (BOOL)applyFixedWidth:(double)a3
{
  if (!objc_msgSend_numberOfColumns(self, a2, v3, v4, v5))
  {
    return 0;
  }

  v12 = objc_msgSend_columnRegion(self, v8, v9, v10, v11);
  v17 = objc_msgSend_columnRegion(self, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfIntersectingColumns(v17, v18, v19, v20, v21);
  v24 = objc_msgSend_p_applyUnifyFixedSize_region_direction_count_currentArray_minimumArray_(self, v23, v12, 1, v22, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, a3);

  return v24;
}

@end