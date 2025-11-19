@interface TSAPdfTaggerTableCellContext
- (TSAPdfTaggerTableCellContext)initWithStateOfTagger:(id)a3 cellID:(TSUCellCoord)a4;
@end

@implementation TSAPdfTaggerTableCellContext

- (TSAPdfTaggerTableCellContext)initWithStateOfTagger:(id)a3 cellID:(TSUCellCoord)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = TSAPdfTaggerTableCellContext;
  v7 = [(TSAPdfTaggerContext *)&v14 initWithStateOfTagger:v6];
  if (v7)
  {
    v8 = objc_opt_class();
    v11 = objc_msgSend_topOfContextStackWithExpectedClass_(v6, v9, v8, v10);
    tableLayoutSpaceContext = v7->_tableLayoutSpaceContext;
    v7->_tableLayoutSpaceContext = v11;

    v7->_cellID = a4;
  }

  return v7;
}

@end