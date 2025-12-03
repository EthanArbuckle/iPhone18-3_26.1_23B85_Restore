@interface TSCHChartBorderAxisLayoutItem
- (id)renderersWithRep:(id)rep;
- (void)buildSubTree;
@end

@implementation TSCHChartBorderAxisLayoutItem

- (void)buildSubTree
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_layoutSettings(self, v4, v5, v6, v7);
  if ((v76 & 1) == 0)
  {
    v8 = [TSCHChartAxisTitleLayoutItem alloc];
    v13 = objc_msgSend_initWithParent_(v8, v9, v10, v11, v12, self);
    axisTitle = self->super._axisTitle;
    self->super._axisTitle = v13;

    objc_msgSend_addObject_(v3, v15, v16, v17, v18, self->super._axisTitle);
  }

  v19 = [TSCHChartAxisLineLayoutItem alloc];
  v24 = objc_msgSend_initWithParent_(v19, v20, v21, v22, v23, self);
  axisLine = self->super._axisLine;
  self->super._axisLine = v24;

  objc_msgSend_addObject_(v3, v26, v27, v28, v29, self->super._axisLine);
  axisPosition = self->super._axisPosition;
  if (axisPosition == 1 || axisPosition == 4)
  {
    refLineLabelPadding = self->super._refLineLabelPadding;
    self->super._refLineLabelPadding = 0;

    refLineLabels = self->super._refLineLabels;
    self->super._refLineLabels = 0;
  }

  else
  {
    v34 = [TSCHChartReferenceLineLabelPaddingLayoutItem alloc];
    v39 = objc_msgSend_referenceLineLabelAxisID(self, v35, v36, v37, v38);
    v44 = objc_msgSend_initWithParent_axisID_(v34, v40, v41, v42, v43, self, v39);
    v45 = self->super._refLineLabelPadding;
    self->super._refLineLabelPadding = v44;

    objc_msgSend_addObject_(v3, v46, v47, v48, v49, self->super._refLineLabelPadding);
    v50 = [TSCHChartReferenceLineLabelsLayoutItem alloc];
    v55 = objc_msgSend_referenceLineLabelAxisID(self, v51, v52, v53, v54);
    v60 = objc_msgSend_initWithParent_axisID_(v50, v56, v57, v58, v59, self, v55);
    v61 = self->super._refLineLabels;
    self->super._refLineLabels = v60;

    objc_msgSend_addObject_(v3, v62, v63, v64, v65, self->super._refLineLabels);
  }

  v70 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v66, v67, v68, v69, v3);
  objc_msgSend_setChildren_(self, v71, v72, v73, v74, v70);

  v75.receiver = self;
  v75.super_class = TSCHChartBorderAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v75 buildSubTree];
}

- (id)renderersWithRep:(id)rep
{
  repCopy = rep;
  v5 = objc_opt_new();
  v6 = [TSCHChartBorderAxisRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, repCopy, self);

  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);

  return v5;
}

@end