@interface TSCETransaction
- (TSCETransaction)initWithCalcEngine:(id)engine;
- (id)description;
- (void)addCellRefToCheck:(const TSCECellRef *)check;
- (void)dealloc;
@end

@implementation TSCETransaction

- (TSCETransaction)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v6.receiver = self;
  v6.super_class = TSCETransaction;
  if ([(TSCETransaction *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  cellRefsToCheck = self->_cellRefsToCheck;
  if (cellRefsToCheck)
  {
    (*(*cellRefsToCheck + 8))(cellRefsToCheck, a2);
  }

  v4.receiver = self;
  v4.super_class = TSCETransaction;
  [(TSCETransaction *)&v4 dealloc];
}

- (void)addCellRefToCheck:(const TSCECellRef *)check
{
  cellRefsToCheck = self->_cellRefsToCheck;
  if (cellRefsToCheck)
  {
    TSCEReferenceSet::insertRef(cellRefsToCheck, check);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = TSCEReferenceSet::description(self->_cellRefsToCheck);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p>: %@", v7, v8, v4, self, v5);

  return v9;
}

@end