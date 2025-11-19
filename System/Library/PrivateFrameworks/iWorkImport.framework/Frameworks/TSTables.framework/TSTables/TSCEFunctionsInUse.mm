@interface TSCEFunctionsInUse
- (TSCEFunctionsInUse)initWithCalcEngine:(id)a3;
- (id).cxx_construct;
- (id)description;
- (vector<TSCEFunctionIndex,)functionsUsed;
- (void)addFunctionUsesInFormula:(id)a3 atCellRef:(const TSCECellRef *)a4 outContainsVolatileFunction:(BOOL *)a5;
- (void)addUseOfFunctions:(const void *)a3 atCellRef:(const TSCECellRef *)a4;
- (void)dealloc;
- (void)dirtyCellsUsingFunction:(unsigned __int16)a3;
- (void)resetCellsUsingFunction:(unsigned __int16)a3;
@end

@implementation TSCEFunctionsInUse

- (TSCEFunctionsInUse)initWithCalcEngine:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCEFunctionsInUse;
  v6 = [(TSCEFunctionsInUse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calcEngine, a3);
    pthread_mutexattr_init(&v10);
    pthread_mutexattr_settype(&v10, 0);
    pthread_mutex_init(&v7->_mutex, &v10);
  }

  return v7;
}

- (void)dealloc
{
  for (i = self->_cellRefsUsingFunction.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[3];
    if (v4)
    {
      (*(*v4 + 8))(v4, a2);
    }
  }

  sub_2210BE918(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_);
  pthread_mutex_destroy(&self->_mutex);
  v5.receiver = self;
  v5.super_class = TSCEFunctionsInUse;
  [(TSCEFunctionsInUse *)&v5 dealloc];
}

- (vector<TSCEFunctionIndex,)functionsUsed
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  var1 = self[1].var1;
  if (var1)
  {
    v5 = 0;
    do
    {
      var2 = retstr->var2;
      if (v5 >= var2)
      {
        var0 = retstr->var0;
        v8 = v5 - retstr->var0;
        v9 = v8 >> 1;
        if (v8 >> 1 <= -2)
        {
          sub_22107C148();
        }

        v10 = var2 - var0;
        if (v10 <= v9 + 1)
        {
          v11 = v9 + 1;
        }

        else
        {
          v11 = v10;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_22115DB94(retstr, v12);
        }

        *(2 * v9) = var1[8];
        v5 = (2 * v9 + 2);
        memcpy(0, var0, v8);
        self = retstr->var0;
        retstr->var0 = 0;
        retstr->var1 = v5;
        retstr->var2 = 0;
        if (self)
        {
          operator delete(self);
        }
      }

      else
      {
        *v5++ = var1[8];
      }

      retstr->var1 = v5;
      var1 = *var1;
    }

    while (var1);
  }

  return self;
}

- (void)addUseOfFunctions:(const void *)a3 atCellRef:(const TSCECellRef *)a4
{
  if (*&a4->coordinate != 0x7FFFFFFF && (*&a4->coordinate & 0xFFFF00000000) != 0x7FFF00000000 && *&a4->_tableUID != 0 && *(a3 + 3) != 0)
  {
    v10 = objc_msgSend_calcEngine(self, a2, a3, a4, v4);
    v15 = objc_msgSend_dependencyTracker(v10, v11, v12, v13, v14);

    pthread_mutex_lock(&self->_mutex);
    for (i = *(a3 + 2); i; i = *i)
    {
      v18 = *(i + 8);
      if (!sub_2210C3024(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v18))
      {
        operator new();
      }

      v19 = &v18;
      v17 = sub_22115DBD8(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v18)[3];
      if (v17)
      {
        TSCEReferenceSet::insertRef(v17, a4);
      }
    }

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)addFunctionUsesInFormula:(id)a3 atCellRef:(const TSCECellRef *)a4 outContainsVolatileFunction:(BOOL *)a5
{
  v8 = a3;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v29, 0, a4);
  v13 = objc_msgSend_const_astNodeArray(v8, v9, v10, v11, v12);
  sub_22115D634(v27, v13, &v29);
  TSCEASTStreamIterator::rewrite(v27, v14, v15, v16, v17);
  v26 = 154;
  if (sub_2210C3024(v28, &v26) || (v25 = 97, sub_2210C3024(v28, &v25)) || (v24 = 118, sub_2210C3024(v28, &v24)) || (v23 = 119, sub_2210C3024(v28, &v23)))
  {
    v20 = 1;
  }

  else
  {
    v22 = 346;
    v20 = sub_2210C3024(v28, &v22) != 0;
  }

  *a5 = v20;
  objc_msgSend_addUseOfFunctions_atCellRef_(self, v18, v28, a4, v19);
  v27[0] = &unk_2834A22D0;
  sub_2210BDEC0(v28);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v27, v21);
}

- (void)dirtyCellsUsingFunction:(unsigned __int16)a3
{
  v21 = a3;
  pthread_mutex_lock(&self->_mutex);
  if (sub_2210C3024(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v21))
  {
    v22 = &v21;
    v4 = sub_22115DBD8(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v21)[3];
    if (v4)
    {
      v5 = [TSCEReferenceSetWrapper alloc];
      v9 = objc_msgSend_initWithReferenceSet_(v5, v6, v4, v7, v8);
      objc_msgSend_beginBatchingGroupCellDirtying(self->_calcEngine, v10, v11, v12, v13);
      objc_msgSend_markCellRefsAsDirty_(self->_calcEngine, v14, v9, v15, v16);
      objc_msgSend_endBatchingGroupCellDirtying(self->_calcEngine, v17, v18, v19, v20);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (void)resetCellsUsingFunction:(unsigned __int16)a3
{
  v13 = a3;
  pthread_mutex_lock(&self->_mutex);
  if (sub_2210C3024(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v13))
  {
    v14 = &v13;
    v8 = sub_22115DBD8(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v13)[3];
    if (v8)
    {
      v9 = objc_msgSend_upgradingFormulasMinion(self->_calcEngine, v4, v5, v6, v7);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22115D46C;
      v11[3] = &unk_27845FBD8;
      v12 = v9;
      v10 = v9;
      TSCEReferenceSet::foreachCellRef(v8, v11);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v11 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@>", v6, v7, v4);
  for (i = self->_cellRefsUsingFunction.__table_.__first_node_.__next_; i; i = *i)
  {
    v13 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v8, i[8], v9, v10);
    v14 = *(i + 3);
    if (v14)
    {
      v15 = TSCEReferenceSet::description(v14);
      objc_msgSend_appendFormat_(v11, v16, @"\n  %@ used at: %@", v17, v18, v13, v15);
    }
  }

  return v11;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

@end