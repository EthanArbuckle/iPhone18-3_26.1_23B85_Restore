@interface TSAPdfTaggerTableCellContext
- (TSAPdfTaggerTableCellContext)initWithStateOfTagger:(id)tagger cellID:(TSUCellCoord)d;
@end

@implementation TSAPdfTaggerTableCellContext

- (TSAPdfTaggerTableCellContext)initWithStateOfTagger:(id)tagger cellID:(TSUCellCoord)d
{
  taggerCopy = tagger;
  v14.receiver = self;
  v14.super_class = TSAPdfTaggerTableCellContext;
  v7 = [(TSAPdfTaggerContext *)&v14 initWithStateOfTagger:taggerCopy];
  if (v7)
  {
    v8 = objc_opt_class();
    v11 = objc_msgSend_topOfContextStackWithExpectedClass_(taggerCopy, v9, v8, v10);
    tableLayoutSpaceContext = v7->_tableLayoutSpaceContext;
    v7->_tableLayoutSpaceContext = v11;

    v7->_cellID = d;
  }

  return v7;
}

@end