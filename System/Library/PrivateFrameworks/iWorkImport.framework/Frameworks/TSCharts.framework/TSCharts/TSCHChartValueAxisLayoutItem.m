@interface TSCHChartValueAxisLayoutItem
- (CGRect)protected_layoutSpaceRectForAllLabels;
- (id)renderersWithRep:(id)a3;
- (void)buildSubTree;
- (void)p_layoutLabelsNow;
@end

@implementation TSCHChartValueAxisLayoutItem

- (void)buildSubTree
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_chartInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_chartType(v8, v9, v10, v11, v12);
  isMultiData = objc_msgSend_isMultiData(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_axisID(self, v19, v20, v21, v22);
  v28 = objc_msgSend_type(v23, v24, v25, v26, v27);

  objc_msgSend_layoutSettings(self, v29, v30, v31, v32);
  if ((v103 & 1) == 0)
  {
    if (v28 == 1)
    {
      v37 = isMultiData;
    }

    else
    {
      v37 = 0;
    }

    if (v37 == 1)
    {
      v38 = [TSCHChartAxisTitleLayoutItemWithStaticPadding alloc];
      v42 = objc_msgSend_initWithParent_padding_(v38, v39, 8.0, v40, v41, self);
    }

    else
    {
      if ((v28 - 5) <= 1)
      {
LABEL_10:
        objc_msgSend_tsu_addNonNilObject_(v3, v33, v34, v35, v36, self->super._axisTitle);
        goto LABEL_11;
      }

      v43 = [TSCHChartAxisTitleLayoutItem alloc];
      v42 = objc_msgSend_initWithParent_(v43, v44, v45, v46, v47, self);
    }

    axisTitle = self->super._axisTitle;
    self->super._axisTitle = v42;

    goto LABEL_10;
  }

LABEL_11:
  v49 = [TSCHChartValueAxisLabelsLayoutItem alloc];
  v54 = objc_msgSend_initWithParent_(v49, v50, v51, v52, v53, self);
  axisValueLabelsLayoutItem = self->_axisValueLabelsLayoutItem;
  self->_axisValueLabelsLayoutItem = v54;

  objc_msgSend_addObject_(v3, v56, v57, v58, v59, v54);
  v60 = [TSCHChartAxisPaddingLayoutItem alloc];
  v65 = objc_msgSend_initWithParent_(v60, v61, v62, v63, v64, self);
  axisPadding = self->super._axisPadding;
  self->super._axisPadding = v65;

  objc_msgSend_addObject_(v3, v67, v68, v69, v70, v65);
  v71 = [TSCHChartAxisTickMarksLayoutItem alloc];
  v76 = objc_msgSend_initWithParent_(v71, v72, v73, v74, v75, self);
  tickMarks = self->super._tickMarks;
  self->super._tickMarks = v76;

  objc_msgSend_addObject_(v3, v78, v79, v80, v81, v76);
  v82 = [TSCHChartAxisLineLayoutItem alloc];
  v87 = objc_msgSend_initWithParent_(v82, v83, v84, v85, v86, self);
  axisLine = self->super._axisLine;
  self->super._axisLine = v87;

  objc_msgSend_addObject_(v3, v89, v90, v91, v92, v87);
  v97 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v93, v94, v95, v96, v3);
  objc_msgSend_setChildren_(self, v98, v99, v100, v101, v97);

  v102.receiver = self;
  v102.super_class = TSCHChartValueAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v102 buildSubTree];
}

- (void)p_layoutLabelsNow
{
  objc_msgSend_layoutSize(self, a2, v2, v3, v4);
  v10 = v7;
  v11 = v8;
  axisValueLabelsLayoutItem = self->_axisValueLabelsLayoutItem;
  if (axisValueLabelsLayoutItem)
  {
    objc_msgSend_minSize(axisValueLabelsLayoutItem, v6, v7, v8, v9);
  }

  axisLine = self->super._axisLine;
  if (axisLine)
  {
    objc_msgSend_minSize(axisLine, v6, v7, v8, v9);
    v14 = v7;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A8];
  }

  tickMarks = self->super._tickMarks;
  if (tickMarks)
  {
    objc_msgSend_minSize(tickMarks, v6, v7, v8, v9);
    v16 = v7;
  }

  else
  {
    v16 = *MEMORY[0x277CBF3A8];
  }

  objc_msgSend_layoutRect(self->super._axisPadding, v6, v7, v8, v9);
  axisPosition = self->super._axisPosition;
  if (axisPosition <= 2)
  {
    if (axisPosition == 1)
    {
      CGRectGetMinX(*&v18);
    }

    else
    {
      if (axisPosition != 2)
      {
        return;
      }

      CGRectGetMinY(*&v18);
    }
  }

  else if (axisPosition == 3)
  {
    CGRectGetMaxX(*&v18);
  }

  else
  {
    if (axisPosition != 4)
    {
      if (axisPosition == 5)
      {
        objc_msgSend_setLayoutOffset_(self->_axisValueLabelsLayoutItem, v17, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v20);
        objc_msgSend_setLayoutSize_(self->_axisValueLabelsLayoutItem, v23, v10, v11, v24);
        v27 = self->_axisValueLabelsLayoutItem;

        MEMORY[0x2821F9670](v27, sel_setDistanceFromAxis_, v14 + v16, v25, v26);
      }

      return;
    }

    CGRectGetMaxY(*&v18);
  }

  TSURectWithOriginAndSize();
  v29 = v28;
  v31 = v30;
  objc_msgSend_setLayoutOffset_(self->_axisValueLabelsLayoutItem, v32, v33, v34, v28);
  v37 = self->_axisValueLabelsLayoutItem;

  objc_msgSend_setLayoutSize_(v37, v35, v29, v31, v36);
}

- (id)renderersWithRep:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [TSCHChartValueAxisRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, v4, self);

  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);

  return v5;
}

- (CGRect)protected_layoutSpaceRectForAllLabels
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  axisValueLabelsLayoutItem = self->_axisValueLabelsLayoutItem;
  if (axisValueLabelsLayoutItem)
  {
    objc_msgSend_layoutSpaceRectForAllLabels(axisValueLabelsLayoutItem, a2, v2, v3, v4);
    v21.origin.x = v10;
    v21.origin.y = v11;
    v21.size.width = v12;
    v21.size.height = v13;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectUnion(v18, v21);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end