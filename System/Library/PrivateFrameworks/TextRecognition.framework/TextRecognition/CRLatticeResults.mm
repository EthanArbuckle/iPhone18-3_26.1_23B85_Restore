@interface CRLatticeResults
- (CRLatticeResults)init;
- (void)addResult:(id)result;
@end

@implementation CRLatticeResults

- (CRLatticeResults)init
{
  v6.receiver = self;
  v6.super_class = CRLatticeResults;
  v2 = [(CRLatticeResults *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    mutableResults = v2->_mutableResults;
    v2->_mutableResults = array;
  }

  return v2;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  mutableResults = self->_mutableResults;
  if (mutableResults)
  {
    [(NSMutableArray *)mutableResults addObject:resultCopy];
  }
}

@end