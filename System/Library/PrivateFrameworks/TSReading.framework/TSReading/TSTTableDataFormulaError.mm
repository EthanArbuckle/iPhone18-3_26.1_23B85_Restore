@interface TSTTableDataFormulaError
- (BOOL)isEqual:(id)equal;
- (id)initObjectWithFormulaError:(id)error;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSTTableDataFormulaError

- (id)initObjectWithFormulaError:(id)error
{
  v6.receiver = self;
  v6.super_class = TSTTableDataFormulaError;
  v4 = [(TSTTableDataFormulaError *)&v6 init];
  if (v4)
  {
    v4->mFormulaError = error;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (unint64_t)hash
{
  canBeStoredInAStringValueCell = [(TSWPStorage *)self->mFormulaError canBeStoredInAStringValueCell];
  mFormulaError = self->mFormulaError;
  if (canBeStoredInAStringValueCell)
  {
    mFormulaError = [(TSWPStorage *)mFormulaError string];
  }

  return [(TSWPStorage *)mFormulaError hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mFormulaError = self->mFormulaError;
  v6 = *(equal + 2);

  return [(TSWPStorage *)mFormulaError isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataFormulaError;
  [(TSTTableDataFormulaError *)&v3 dealloc];
}

@end