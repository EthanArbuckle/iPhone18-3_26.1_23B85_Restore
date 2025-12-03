@interface GQDTFormulaCell
- (void)dealloc;
- (void)setResultCell:(id)cell;
@end

@implementation GQDTFormulaCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTFormulaCell;
  [(GQDTCell *)&v3 dealloc];
}

- (void)setResultCell:(id)cell
{
  cellCopy = cell;

  self->mResultCell = cell;
}

@end