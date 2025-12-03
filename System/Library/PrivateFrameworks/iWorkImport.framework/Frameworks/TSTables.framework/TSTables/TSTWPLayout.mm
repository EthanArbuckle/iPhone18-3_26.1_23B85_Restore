@interface TSTWPLayout
- (BOOL)invalidateForPageCountChange;
- (BOOL)isDynamicallyChangingAvailableSpaceForContainedChild;
- (CGRect)cachedAutosizedFrame;
- (CGRect)cachedMaskRect;
- (TSTWPLayout)initWithStorage:(id)storage cellID:(TSUCellCoord)d frame:(CGRect)frame;
- (TSUCellRect)cachedMaskSpillRange;
- (TSUCellRect)cachedMergeRange;
- (void)invalidate;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)validate;
@end

@implementation TSTWPLayout

- (TSTWPLayout)initWithStorage:(id)storage cellID:(TSUCellCoord)d frame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = TSTWPLayout;
  v6 = [(TSTWPLayout *)&v15 initWithInfo:storage frame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    *(v6 + 348) = d;
    v6[336] = 0;
    *(v6 + 85) = 0;
    *(v6 + 86) = 0;
    *(v6 + 392) = xmmword_2217E1134;
    *(v6 + 47) = 0;
    v8 = MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 16);
    *(v6 + 424) = *MEMORY[0x277CBF398];
    *(v6 + 440) = v9;
    *(v6 + 408) = xmmword_2217E1134;
    v10 = v8[1];
    *(v6 + 456) = *v8;
    *(v6 + 472) = v10;
    v11 = *(v6 + 45);
    *(v6 + 45) = 0;

    cachedTextStyle = v7->_cachedTextStyle;
    v7->_cachedTextStyle = 0;

    cachedPadding = v7->_cachedPadding;
    v7->_cachedPadding = 0;

    v7->_cacheIsValid = 0;
  }

  return v7;
}

- (void)invalidate
{
  if ((objc_msgSend_isLayingOutIntoTarget(self, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_setCacheIsValid_(self, v6, 0, v7, v8);
    objc_msgSend_setCachedMaskRect_(self, v9, v10, v11, v12, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
    objc_msgSend_setCachedMaskSpillRange_(self, v13, 0x7FFF7FFFFFFFLL, 0, v14);
    v15.receiver = self;
    v15.super_class = TSTWPLayout;
    [(TSTWPLayout *)&v15 invalidate];
  }
}

- (void)invalidateSize
{
  if ((objc_msgSend_isLayingOutIntoTarget(self, a2, v2, v3, v4) & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = TSTWPLayout;
    [(TSTWPLayout *)&v6 invalidateSize];
  }
}

- (void)invalidatePosition
{
  if ((objc_msgSend_isLayingOutIntoTarget(self, a2, v2, v3, v4) & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = TSTWPLayout;
    [(TSTWPLayout *)&v6 invalidatePosition];
  }
}

- (void)validate
{
  if ((objc_msgSend_cacheIsValid(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = objc_msgSend_parent(self, v6, v7, v8, v9);

    if (v10)
    {
      v99 = objc_msgSend_parent(self, v11, v12, v13, v14);
      v19 = objc_msgSend_layoutEngine(v99, v15, v16, v17, v18);
      v24 = objc_msgSend_tableInfo(v19, v20, v21, v22, v23);
      v29 = objc_msgSend_newCell(v24, v25, v26, v27, v28);
      v105 = v29;
      v34 = objc_msgSend_cachedCellID(self, v30, v31, v32, v33);
      v37 = objc_msgSend_cell_forCellID_(v19, v35, &v105, v34, v36);
      v38 = v105;

      if ((v37 & 1) == 0)
      {
        v43 = objc_msgSend_cachedCellID(self, v39, v40, v41, v42);
        objc_msgSend_getCell_atCellID_(v24, v44, v38, v43, v45);
      }

      v104 = 0;
      v102 = 0;
      v103 = 0;
      v46 = objc_msgSend_cachedCellID(self, v39, v40, v41, v42);
      v101 = 0;
      objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v24, v47, v38, v46, &v104, &v103, &v102, &v101);
      v52 = v101;
      if (v103 == 4)
      {
        v53 = objc_msgSend_cachedCellID(self, v48, v49, v50, v51);
        v103 = objc_msgSend_naturalAlignmentForCellID_(v99, v54, v53, v55, v56);
      }

      v57 = objc_msgSend_cachedCellID(self, v48, v49, v50, v51);
      v58 = sub_2213AA890(v19, v57);
      v63 = v58;
      v64 = v59;
      if (v104)
      {
        v65 = 0;
      }

      else
      {
        v65 = 44;
        if (v58 != 0x7FFFFFFF && (v58 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          if (v59)
          {
            v66 = HIDWORD(v59) == 0;
          }

          else
          {
            v66 = 1;
          }

          if (v66)
          {
            v65 = 44;
          }

          else
          {
            v65 = 0;
          }
        }
      }

      v67 = objc_msgSend_cellStyle(v38, v59, v60, v61, v62);
      v72 = objc_msgSend_textStyle(v38, v68, v69, v70, v71);
      objc_msgSend_setCachedCellWraps_(self, v73, v104, v74, v75);
      objc_msgSend_setCachedVerticalAlignment_(self, v76, v102, v77, v78);
      objc_msgSend_setCachedParagraphAlignment_(self, v79, v103, v80, v81);
      objc_msgSend_setCachedMergeRange_(self, v82, v63, v64, v83);
      objc_msgSend_setCachedAutoSizeFlags_(self, v84, v65, v85, v86);
      objc_msgSend_setCachedCellStyle_(self, v87, v67, v88, v89);
      objc_msgSend_setCachedTextStyle_(self, v90, v72, v91, v92);
      objc_msgSend_setCachedPadding_(self, v93, v52, v94, v95);
      objc_msgSend_setCacheIsValid_(self, v96, 1, v97, v98);
    }
  }

  v100.receiver = self;
  v100.super_class = TSTWPLayout;
  [(TSTWPLayout *)&v100 validate];
}

- (BOOL)invalidateForPageCountChange
{
  v14.receiver = self;
  v14.super_class = TSTWPLayout;
  invalidateForPageCountChange = [(TSTWPLayout *)&v14 invalidateForPageCountChange];
  if (invalidateForPageCountChange)
  {
    v8 = objc_msgSend_parent(self, v3, v4, v5, v6);
    objc_msgSend_invalidate(v8, v9, v10, v11, v12);
  }

  return invalidateForPageCountChange;
}

- (BOOL)isDynamicallyChangingAvailableSpaceForContainedChild
{
  v8.receiver = self;
  v8.super_class = TSTWPLayout;
  return [(TSTWPLayout *)&v8 isDynamicallyChangingAvailableSpaceForContainedChild]|| objc_msgSend_layoutState(self, v3, v4, v5, v6) == 1;
}

- (TSUCellRect)cachedMergeRange
{
  p_cachedMergeRange = &self->_cachedMergeRange;
  origin = self->_cachedMergeRange.origin;
  size = p_cachedMergeRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGRect)cachedMaskRect
{
  x = self->_cachedMaskRect.origin.x;
  y = self->_cachedMaskRect.origin.y;
  width = self->_cachedMaskRect.size.width;
  height = self->_cachedMaskRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSUCellRect)cachedMaskSpillRange
{
  p_cachedMaskSpillRange = &self->_cachedMaskSpillRange;
  origin = self->_cachedMaskSpillRange.origin;
  size = p_cachedMaskSpillRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGRect)cachedAutosizedFrame
{
  x = self->_cachedAutosizedFrame.origin.x;
  y = self->_cachedAutosizedFrame.origin.y;
  width = self->_cachedAutosizedFrame.size.width;
  height = self->_cachedAutosizedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end