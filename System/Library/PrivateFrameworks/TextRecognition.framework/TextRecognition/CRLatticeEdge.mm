@interface CRLatticeEdge
- (CRLatticeEdge)initWithSymbol:(id)symbol index:(unint64_t)index score:(double)score startNode:(unint64_t)node endNode:(unint64_t)endNode;
@end

@implementation CRLatticeEdge

- (CRLatticeEdge)initWithSymbol:(id)symbol index:(unint64_t)index score:(double)score startNode:(unint64_t)node endNode:(unint64_t)endNode
{
  symbolCopy = symbol;
  v17.receiver = self;
  v17.super_class = CRLatticeEdge;
  v14 = [(CRLatticeEdge *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_symbol, symbol);
    v15->_edgeIndex = index;
    v15->_score = score;
    v15->_startNode = node;
    v15->_endNode = endNode;
  }

  return v15;
}

@end