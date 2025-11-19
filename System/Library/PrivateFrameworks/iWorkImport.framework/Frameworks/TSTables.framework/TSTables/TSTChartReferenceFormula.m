@interface TSTChartReferenceFormula
- (TSTChartReferenceFormula)initWithCalculationEngine:(id)a3 expressionTree:(id)a4 baseHostCell:(TSUModelCellCoord)a5 hostTable:(id)a6;
@end

@implementation TSTChartReferenceFormula

- (TSTChartReferenceFormula)initWithCalculationEngine:(id)a3 expressionTree:(id)a4 baseHostCell:(TSUModelCellCoord)a5 hostTable:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = TSTChartReferenceFormula;
  v13 = [(TSTFormula *)&v19 initWithCalculationEngine:v10 expressionTree:v11 baseHostCell:a5 hostTable:v12];
  v17 = v13;
  if (v13)
  {
    objc_msgSend_setFunctionIndex_(v13, v14, 175, v15, v16);
  }

  return v17;
}

@end