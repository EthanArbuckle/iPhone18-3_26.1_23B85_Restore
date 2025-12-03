@interface TSTLayoutDynamicResizeInfoAccordion
- (TSTLayoutDynamicResizeInfoAccordion)initWithDynamicResizeInfo:(id)info;
- (TSTLayoutDynamicResizeInfoAccordion)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion;
- (double)applyResizeHeightFactor:(double)factor;
- (double)applyResizeWidthFactor:(double)factor;
- (double)p_applyAccordionResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0;
- (void)captureNewMinimumRowHeights:(id)heights;
@end

@implementation TSTLayoutDynamicResizeInfoAccordion

- (TSTLayoutDynamicResizeInfoAccordion)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion
{
  v6.receiver = self;
  v6.super_class = TSTLayoutDynamicResizeInfoAccordion;
  result = [(TSTLayoutDynamicResizeInfo *)&v6 initWithLayoutEngine:engine columnRegion:region rowRegion:rowRegion];
  if (result)
  {
    result->_heightFactor = 1.0;
    result->_widthFactor = 1.0;
  }

  return result;
}

- (TSTLayoutDynamicResizeInfoAccordion)initWithDynamicResizeInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = TSTLayoutDynamicResizeInfoAccordion;
  result = [(TSTLayoutDynamicResizeInfo *)&v4 initWithDynamicResizeInfo:info];
  if (result)
  {
    result->_heightFactor = 1.0;
    result->_widthFactor = 1.0;
  }

  return result;
}

- (double)p_applyAccordionResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0
{
  regionCopy = region;
  v20 = -(captured - captured * factor);
  factorCopy = factor;
  do
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    countCopy = count;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    capturedCopy = captured;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = factorCopy * captured;
    if (direction)
    {
      started = objc_msgSend_startColumnIndex(self, v16, v17, v18, v19);
    }

    else
    {
      started = objc_msgSend_startRowIndex(self, v16, v17, v18, v19);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_221494594;
    v31[3] = &unk_278465AB0;
    v32 = started;
    v31[8] = currentArray;
    v31[9] = array;
    *&v31[10] = factor;
    v31[11] = minimumArray;
    v31[4] = &v37;
    v31[5] = &v33;
    v31[6] = &v45;
    v31[7] = &v41;
    objc_msgSend_enumerateInDirection_usingBlock_(regionCopy, v23, direction, v31, v24);
    v25 = v42[3];
    if (*(v46 + 6) && vabdd_f64(v20, v25) >= 0.1 && fabs(v25 / v20 + -1.0) >= 0.0001)
    {
      v26 = 0;
      factor = v34[3] / v38[3];
    }

    else
    {
      v26 = 1;
      if (v25 > v20)
      {
        factorCopy = (v25 + captured) / captured;
      }
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
  }

  while (!v26);

  return factorCopy;
}

- (double)applyResizeHeightFactor:(double)factor
{
  if (objc_msgSend_numberOfRows(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_rowRegion(self, v8, v9, v10, v11);
    objc_msgSend_capturedRowHeightTotal(self, v13, v14, v15, v16);
    v18 = v17;
    v23 = objc_msgSend_numberOfResizableRows(self, v19, v20, v21, v22);
    objc_msgSend_p_applyAccordionResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v24, v12, 0, v23, &self->super._capturedRowHeights, &self->super._currentRowHeights, &self->super._minimumRowHeights, factor, v18);
    factor = v25;
  }

  self->_heightFactor = factor;
  return factor;
}

- (double)applyResizeWidthFactor:(double)factor
{
  if (objc_msgSend_numberOfColumns(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_columnRegion(self, v8, v9, v10, v11);
    objc_msgSend_capturedColumnWidthTotal(self, v13, v14, v15, v16);
    v18 = v17;
    v23 = objc_msgSend_numberOfResizableColumns(self, v19, v20, v21, v22);
    objc_msgSend_p_applyAccordionResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v24, v12, 1, v23, &self->super._capturedColumnWidths, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, factor, v18);
    factor = v25;
  }

  self->_widthFactor = factor;
  return factor;
}

- (void)captureNewMinimumRowHeights:(id)heights
{
  heightsCopy = heights;
  v9 = objc_msgSend_numberOfRows(heightsCopy, v5, v6, v7, v8);
  v10 = v9;
  v24 = 0;
  sub_221420DAC(&__p, v9);
  if (v9)
  {
    v15 = 0;
    v16 = -1.0;
    do
    {
      if (self->super._capturedRowHeights.__begin_[v15] == 0.0)
      {
        v11 = __p;
        *(__p + v15++) = 0;
      }

      else
      {
        v17 = objc_msgSend_tableRowsBehavior(heightsCopy, v11, v12, v13, v14, v24);
        v21 = 8.0;
        if (v17 == 1)
        {
          objc_msgSend_fittingHeightOfRow_(heightsCopy, v18, v15, v19, v20, 8.0);
        }

        *(__p + v15) = v21;
        if (v16 < 0.0)
        {
          objc_msgSend_strokeHeightOfGridRow_inColumnRange_(heightsCopy, v18, v15, 0, 2147483646);
          v16 = v22;
        }

        objc_msgSend_strokeHeightOfGridRow_inColumnRange_(heightsCopy, v18, v15 + 1, 0, 2147483646);
        v11 = __p;
        *(__p + v15) = (v16 + v23) * 0.5 + *(__p + v15);
        ++v15;
        v16 = v23;
      }
    }

    while (v15 != v10);
  }

  else
  {
    v11 = __p;
  }

  if (&self->super._minimumRowHeights != &__p)
  {
    sub_22128026C(&self->super._minimumRowHeights.__begin_, v11, v26, (v26 - v11) >> 3);
    v11 = __p;
  }

  if (v11)
  {
    v26 = v11;
    operator delete(v11);
  }
}

@end