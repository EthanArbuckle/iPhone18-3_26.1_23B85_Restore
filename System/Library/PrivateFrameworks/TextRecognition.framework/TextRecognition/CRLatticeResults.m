@interface CRLatticeResults
- (CRLatticeResults)init;
- (void)addResult:(id)a3;
@end

@implementation CRLatticeResults

- (CRLatticeResults)init
{
  v6.receiver = self;
  v6.super_class = CRLatticeResults;
  v2 = [(CRLatticeResults *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    mutableResults = v2->_mutableResults;
    v2->_mutableResults = v3;
  }

  return v2;
}

- (void)addResult:(id)a3
{
  v5 = a3;
  mutableResults = self->_mutableResults;
  if (mutableResults)
  {
    [(NSMutableArray *)mutableResults addObject:v5];
  }
}

@end