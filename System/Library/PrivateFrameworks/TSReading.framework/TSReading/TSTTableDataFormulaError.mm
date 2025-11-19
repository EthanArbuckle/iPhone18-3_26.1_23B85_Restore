@interface TSTTableDataFormulaError
- (BOOL)isEqual:(id)a3;
- (id)initObjectWithFormulaError:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSTTableDataFormulaError

- (id)initObjectWithFormulaError:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSTTableDataFormulaError;
  v4 = [(TSTTableDataFormulaError *)&v6 init];
  if (v4)
  {
    v4->mFormulaError = a3;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(TSWPStorage *)self->mFormulaError canBeStoredInAStringValueCell];
  mFormulaError = self->mFormulaError;
  if (v3)
  {
    mFormulaError = [(TSWPStorage *)mFormulaError string];
  }

  return [(TSWPStorage *)mFormulaError hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mFormulaError = self->mFormulaError;
  v6 = *(a3 + 2);

  return [(TSWPStorage *)mFormulaError isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataFormulaError;
  [(TSTTableDataFormulaError *)&v3 dealloc];
}

@end