@interface TSCHChartPolarRadiusGridlineAxisLayoutItem
- (id)renderersWithRep:(id)rep;
- (void)buildSubTree;
@end

@implementation TSCHChartPolarRadiusGridlineAxisLayoutItem

- (void)buildSubTree
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [TSCHChartAxisTickMarksLayoutItem alloc];
  v9 = objc_msgSend_initWithParent_(v4, v5, v6, v7, v8, self);
  tickMarks = self->super._tickMarks;
  self->super._tickMarks = v9;

  if (self->super._tickMarks)
  {
    objc_msgSend_addObject_(v3, v11, v12, v13, v14);
  }

  v15 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v3);
  objc_msgSend_setChildren_(self, v16, v17, v18, v19, v15);

  v20.receiver = self;
  v20.super_class = TSCHChartPolarRadiusGridlineAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v20 buildSubTree];
}

- (id)renderersWithRep:(id)rep
{
  v17[1] = *MEMORY[0x277D85DE8];
  repCopy = rep;
  v5 = [TSCHChartPolarRadiusGridlineAxisRenderer alloc];
  v10 = objc_msgSend_initWithChartRep_layoutItem_(v5, v6, v7, v8, v9, repCopy, self);

  v17[0] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 1);

  return v15;
}

@end