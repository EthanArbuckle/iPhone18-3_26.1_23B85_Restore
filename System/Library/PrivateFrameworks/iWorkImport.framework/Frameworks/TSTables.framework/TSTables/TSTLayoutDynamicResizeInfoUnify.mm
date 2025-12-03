@interface TSTLayoutDynamicResizeInfoUnify
- (BOOL)applyFixedHeight:(double)height;
- (BOOL)applyFixedWidth:(double)width;
- (BOOL)p_applyUnifyFixedSize:(double)size region:(id)region direction:(int64_t)direction count:(unsigned int)count currentArray:(void *)array minimumArray:(void *)minimumArray;
- (double)applyResizeHeightFactor:(double)factor;
- (double)applyResizeWidthFactor:(double)factor;
- (double)p_applyUnifyResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0;
@end

@implementation TSTLayoutDynamicResizeInfoUnify

- (double)p_applyUnifyResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0
{
  regionCopy = region;
  v21 = -(captured - captured * factor);
  v22 = factor * captured;
  factorCopy = factor;
  while (1)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    countCopy = count;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    capturedCopy = captured;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = v22;
    v23 = direction ? objc_msgSend_startColumnIndex(self, v17, v18, v19, v20) : objc_msgSend_startRowIndex(self, v17, v18, v19, v20);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2214914C4;
    v32[3] = &unk_278465AB0;
    v33 = v23;
    v32[7] = &v42;
    v32[8] = currentArray;
    *&v32[9] = captured / count;
    *&v32[10] = factor;
    v32[11] = minimumArray;
    v32[4] = &v38;
    v32[5] = &v34;
    v32[6] = &v46;
    objc_msgSend_enumerateInDirection_usingBlock_(regionCopy, v24, direction, v32, v25);
    v26 = v43[3];
    if (!*(v47 + 6) || vabdd_f64(v21, v26) < 0.1 || fabs(v26 / v21 + -1.0) < 0.0001)
    {
      break;
    }

    factor = v35[3] / v39[3];
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }

  v27 = factorCopy;
  if (v26 > v21)
  {
    v27 = (v26 + captured) / captured;
  }

  v28 = &OBJC_IVAR___TSTLayoutDynamicResizeInfoUnify_mTargetWidth;
  if (!direction)
  {
    v28 = &OBJC_IVAR___TSTLayoutDynamicResizeInfoUnify_mTargetHeight;
  }

  *(&self->super.super.isa + *v28) = captured / count * factor;
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  return v27;
}

- (BOOL)p_applyUnifyFixedSize:(double)size region:(id)region direction:(int64_t)direction count:(unsigned int)count currentArray:(void *)array minimumArray:(void *)minimumArray
{
  regionCopy = region;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (direction)
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
  *&v23[6] = size;
  v23[7] = minimumArray;
  v23[4] = &v25;
  v23[5] = array;
  objc_msgSend_enumerateInDirection_usingBlock_(regionCopy, v19, direction, v23, v20);
  v21 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v21;
}

- (double)applyResizeHeightFactor:(double)factor
{
  if (objc_msgSend_numberOfRows(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_rowRegion(self, v8, v9, v10, v11);
    objc_msgSend_capturedRowHeightTotal(self, v13, v14, v15, v16);
    v18 = v17;
    v23 = objc_msgSend_rowRegion(self, v19, v20, v21, v22);
    v28 = objc_msgSend_numberOfIntersectingRows(v23, v24, v25, v26, v27);
    objc_msgSend_p_applyUnifyResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v29, v12, 0, v28, &self->super._capturedRowHeights, &self->super._currentRowHeights, &self->super._minimumRowHeights, factor, v18);
    factor = v30;
  }

  return factor;
}

- (double)applyResizeWidthFactor:(double)factor
{
  if (objc_msgSend_numberOfColumns(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_columnRegion(self, v8, v9, v10, v11);
    objc_msgSend_capturedColumnWidthTotal(self, v13, v14, v15, v16);
    v18 = v17;
    v23 = objc_msgSend_columnRegion(self, v19, v20, v21, v22);
    v28 = objc_msgSend_numberOfIntersectingColumns(v23, v24, v25, v26, v27);
    objc_msgSend_p_applyUnifyResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v29, v12, 1, v28, &self->super._capturedColumnWidths, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, factor, v18);
    factor = v30;
  }

  return factor;
}

- (BOOL)applyFixedHeight:(double)height
{
  if (!objc_msgSend_numberOfRows(self, a2, v3, v4, v5))
  {
    return 0;
  }

  v12 = objc_msgSend_rowRegion(self, v8, v9, v10, v11);
  v17 = objc_msgSend_rowRegion(self, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfIntersectingRows(v17, v18, v19, v20, v21);
  v24 = objc_msgSend_p_applyUnifyFixedSize_region_direction_count_currentArray_minimumArray_(self, v23, v12, 0, v22, &self->super._currentRowHeights, &self->super._minimumRowHeights, height);

  return v24;
}

- (BOOL)applyFixedWidth:(double)width
{
  if (!objc_msgSend_numberOfColumns(self, a2, v3, v4, v5))
  {
    return 0;
  }

  v12 = objc_msgSend_columnRegion(self, v8, v9, v10, v11);
  v17 = objc_msgSend_columnRegion(self, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfIntersectingColumns(v17, v18, v19, v20, v21);
  v24 = objc_msgSend_p_applyUnifyFixedSize_region_direction_count_currentArray_minimumArray_(self, v23, v12, 1, v22, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, width);

  return v24;
}

@end