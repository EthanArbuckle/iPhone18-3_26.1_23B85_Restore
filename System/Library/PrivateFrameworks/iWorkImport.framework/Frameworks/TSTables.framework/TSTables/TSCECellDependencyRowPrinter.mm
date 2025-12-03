@interface TSCECellDependencyRowPrinter
- (TSCECellDependencyRowPrinter)initWithCellID:(id)d dirtyPrecedentCount:(unint64_t)count;
- (id)stringForDependencyRow;
- (int64_t)tsce_numericCompare:(id)compare;
- (void)addDependentWithCellID:(id)d forOwner:(id)owner;
- (void)addPrecedentWithCellID:(id)d forOwner:(id)owner;
@end

@implementation TSCECellDependencyRowPrinter

- (TSCECellDependencyRowPrinter)initWithCellID:(id)d dirtyPrecedentCount:(unint64_t)count
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = TSCECellDependencyRowPrinter;
  v8 = [(TSCECellDependencyRowPrinter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cellID, d);
    v9->_dirtyPrecedentCount = count;
  }

  return v9;
}

- (int64_t)tsce_numericCompare:(id)compare
{
  compareCopy = compare;
  v9 = objc_msgSend_cellID(self, v5, v6, v7, v8);
  v14 = objc_msgSend_cellID(compareCopy, v10, v11, v12, v13);
  v17 = objc_msgSend_compare_options_(v9, v15, v14, 64, v16);

  return v17;
}

- (void)addPrecedentWithCellID:(id)d forOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  if (dCopy)
  {
    precedentsList = self->_precedentsList;
    if (!precedentsList)
    {
      v10 = objc_opt_new();
      v11 = self->_precedentsList;
      self->_precedentsList = v10;

      precedentsList = self->_precedentsList;
    }

    objc_msgSend_addEdge_forOwner_(precedentsList, v6, dCopy, ownerCopy, v7);
  }
}

- (void)addDependentWithCellID:(id)d forOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  if (dCopy)
  {
    dependentsList = self->_dependentsList;
    if (!dependentsList)
    {
      v10 = objc_opt_new();
      v11 = self->_dependentsList;
      self->_dependentsList = v10;

      dependentsList = self->_dependentsList;
    }

    objc_msgSend_addEdge_forOwner_(dependentsList, v6, dCopy, ownerCopy, v7);
  }
}

- (id)stringForDependencyRow
{
  v6 = MEMORY[0x277CCAB68];
  v7 = objc_msgSend_cellID(self, a2, v2, v3, v4);
  v12 = objc_msgSend_dirtyPrecedentCount(self, v8, v9, v10, v11);
  v17 = objc_msgSend_isInCycle(self, v13, v14, v15, v16);
  isFormula = objc_msgSend_isFormula(self, v18, v19, v20, v21);
  v26 = @"CYCLE ";
  if (!v17)
  {
    v26 = &stru_2834BADA0;
  }

  if (isFormula)
  {
    objc_msgSend_stringWithFormat_(v6, v23, @"%@<%lu> %@%@", v24, v25, v7, v12, v26, @"(formula) ");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v6, v23, @"%@<%lu> %@%@", v24, v25, v7, v12, v26, &stru_2834BADA0);
  }
  v27 = ;

  v31 = objc_msgSend_stringForEdgesWithLimit_(self->_precedentsList, v28, 20, v29, v30);
  v35 = objc_msgSend_stringForEdgesWithLimit_(self->_dependentsList, v32, 10, v33, v34);
  if (objc_msgSend_length(v31, v36, v37, v38, v39))
  {
    objc_msgSend_appendFormat_(v27, v40, @"refers to: %@", v42, v43, v31);
  }

  if (objc_msgSend_length(v35, v40, v41, v42, v43))
  {
    objc_msgSend_appendFormat_(v27, v44, @"; referenced by: %@", v45, v46, v35);
  }

  return v27;
}

@end