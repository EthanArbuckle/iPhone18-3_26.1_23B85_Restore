@interface TSTChartReferenceFormula
- (TSTChartReferenceFormula)initWithCalculationEngine:(id)engine expressionTree:(id)tree baseHostCell:(TSUModelCellCoord)cell hostTable:(id)table;
@end

@implementation TSTChartReferenceFormula

- (TSTChartReferenceFormula)initWithCalculationEngine:(id)engine expressionTree:(id)tree baseHostCell:(TSUModelCellCoord)cell hostTable:(id)table
{
  engineCopy = engine;
  treeCopy = tree;
  tableCopy = table;
  v19.receiver = self;
  v19.super_class = TSTChartReferenceFormula;
  v13 = [(TSTFormula *)&v19 initWithCalculationEngine:engineCopy expressionTree:treeCopy baseHostCell:cell hostTable:tableCopy];
  v17 = v13;
  if (v13)
  {
    objc_msgSend_setFunctionIndex_(v13, v14, 175, v15, v16);
  }

  return v17;
}

@end