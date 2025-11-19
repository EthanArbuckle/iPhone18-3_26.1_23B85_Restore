@interface GQDTFormulaCell
- (void)dealloc;
- (void)setResultCell:(id)a3;
@end

@implementation GQDTFormulaCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTFormulaCell;
  [(GQDTCell *)&v3 dealloc];
}

- (void)setResultCell:(id)a3
{
  v5 = a3;

  self->mResultCell = a3;
}

@end