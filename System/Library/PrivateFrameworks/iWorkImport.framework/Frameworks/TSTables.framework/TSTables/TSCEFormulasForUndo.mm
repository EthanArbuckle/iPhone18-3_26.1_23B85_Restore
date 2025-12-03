@interface TSCEFormulasForUndo
- (BOOL)isEmpty;
- (TSCEFormulasForUndo)initWithArchive:(const void *)archive;
- (id).cxx_construct;
- (id)description;
- (id)formulaStringAtCellRef:(const TSCECellRef *)ref;
- (id)splitIntoChunksForExcessiveSize;
- (id)subsetForOwnerKind:(unsigned __int16)kind;
- (unint64_t)count;
- (unint64_t)countForOwnerKind:(unsigned __int16)kind;
- (unordered_set<TSKUIDStruct,)ownerUIDsForOwnerKind:()std:(std:(TSCEFormulasForUndo *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(unsigned __int16)a4 equal_to<TSKUIDStruct>;
- (vector<TSCESubFormulaOwnerIndex,)allOwnerKinds;
- (void)addFormulaObject:(id)object atCellRef:(const TSCECellRef *)ref forOwnerKind:(unsigned __int16)kind;
- (void)addFormulaString:(id)string atCellRef:(const TSCECellRef *)ref;
- (void)foreachFormulaInOwnerKind:(unsigned __int16)kind performBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCEFormulasForUndo

- (void)addFormulaObject:(id)object atCellRef:(const TSCECellRef *)ref forOwnerKind:(unsigned __int16)kind
{
  objectCopy = object;
  kindCopy = kind;
  v9 = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (v9)
  {
    v10 = v9[3];
    objc_msgSend_addFormula_atCellRef_(v10, v11, objectCopy, ref, v12);
  }

  else
  {
    v13 = objc_opt_new();
    v18 = &kindCopy;
    v14 = sub_221485E1C(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
    objc_storeStrong(v14 + 3, v13);
    v10 = v13;
    objc_msgSend_addFormula_atCellRef_(v13, v15, objectCopy, ref, v16);
  }
}

- (unint64_t)count
{
  next = self->_formulasForOwnerKind.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = sub_221485E1C(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, next + 8);
    v4 += objc_msgSend_count(v5[3], v6, v7, v8, v9);
    next = *next;
  }

  while (next);
  return v4;
}

- (BOOL)isEmpty
{
  p_first_node = &self->_formulasForOwnerKind.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v4 = sub_221485E1C(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &p_first_node[2]);
  }

  while (!objc_msgSend_count(v4[3], v5, v6, v7, v8));
  return p_first_node == 0;
}

- (unordered_set<TSKUIDStruct,)ownerUIDsForOwnerKind:()std:(std:(TSCEFormulasForUndo *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(unsigned __int16)a4 equal_to<TSKUIDStruct>
{
  v10 = a4;
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  result = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &v10);
  if (result)
  {
    result = objc_msgSend_formulaOwnerUIDs(result->__table_.__size_, v6, v7, v8, v9);
    if (result != retstr)
    {
      retstr->__table_.__max_load_factor_ = result->__table_.__max_load_factor_;
      sub_2211F2900(retstr, result->__table_.__first_node_.__next_, 0);
    }
  }

  return result;
}

- (vector<TSCESubFormulaOwnerIndex,)allOwnerKinds
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  var0 = self[1].var0;
  if (var0)
  {
    v5 = 0;
    do
    {
      var2 = retstr->var2;
      if (v5 >= var2)
      {
        v7 = retstr->var0;
        v8 = v5 - retstr->var0;
        v9 = v8 >> 1;
        if (v8 >> 1 <= -2)
        {
          sub_22107C148();
        }

        v10 = var2 - v7;
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

        *(2 * v9) = var0[8];
        v5 = (2 * v9 + 2);
        memcpy(0, v7, v8);
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
        *v5++ = var0[8];
      }

      retstr->var1 = v5;
      var0 = *var0;
    }

    while (var0);
  }

  return self;
}

- (id)subsetForOwnerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  v4 = objc_opt_new();
  v5 = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (v5)
  {
    v10 = objc_msgSend_copy(v5[3], v6, v7, v8, v9);
    v15 = &kindCopy;
    v11 = sub_221485E1C(v4 + 1, &kindCopy);
    v12 = v11[3];
    v11[3] = v10;
  }

  return v4;
}

- (unint64_t)countForOwnerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  result = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (result)
  {
    return objc_msgSend_count(*(result + 24), v4, v5, v6, v7);
  }

  return result;
}

- (id)splitIntoChunksForExcessiveSize
{
  v7 = objc_opt_new();
  if (self->_formulaStringsForCellRefs.__table_.__size_)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEFormulasForUndo splitIntoChunksForExcessiveSize]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasForUndo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 186, 0, "Can't split FormulasForOwner that uses formulaStrings (TSTCommandRewriteFormulasForTranspose)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (objc_msgSend_count(self, v3, v4, v5, v6) > 0xC350)
  {
    v23 = objc_msgSend_count(self, v19, v20, v21, v22);
    v28 = objc_msgSend_count(self, v24, v25, v26, v27);
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_2214846C4;
    v60 = sub_2214846D4;
    v61 = objc_opt_new();
    next = self->_formulasForOwnerKind.__table_.__first_node_.__next_;
    if (next)
    {
      v34 = v28 / (v23 / 0xC350 + 1);
      do
      {
        v35 = *(next + 8);
        v36 = *(next + 3);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = sub_2214846DC;
        v51[3] = &unk_2784659C8;
        v55 = v35;
        v53 = &v56;
        v54 = v34;
        v52 = v7;
        objc_msgSend_foreachFormula_(v36, v37, v51, v38, v39);

        next = *next;
      }

      while (next);
    }

    v44 = objc_msgSend_lastObject(v7, v29, v30, v31, v32);
    v45 = v57[5];
    if (v44 == v45)
    {
    }

    else
    {
      isEmpty = objc_msgSend_isEmpty(v45, v40, v41, v42, v43);

      if ((isEmpty & 1) == 0)
      {
        objc_msgSend_addObject_(v7, v47, v57[5], v48, v49);
      }
    }

    _Block_object_dispose(&v56, 8);
  }

  else
  {
    objc_msgSend_addObject_(v7, v19, self, v21, v22);
  }

  return v7;
}

- (void)foreachFormulaInOwnerKind:(unsigned __int16)kind performBlock:(id)block
{
  kindCopy = kind;
  blockCopy = block;
  v6 = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (v6)
  {
    objc_msgSend_foreachFormula_(v6[3], v7, blockCopy, v8, v9);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v12 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@>:\n", v6, v7, v4);
  for (i = self->_formulasForOwnerKind.__table_.__first_node_.__next_; i; i = *i)
  {
    v14 = *(i + 8);
    v15 = objc_msgSend_description(i[3], v8, v9, v10, v11);
    objc_msgSend_appendFormat_(v12, v16, @"  ownerKind %d = %@\n", v17, v18, v14, v15);
  }

  return v12;
}

- (TSCEFormulasForUndo)initWithArchive:(const void *)archive
{
  v34.receiver = self;
  v34.super_class = TSCEFormulasForUndo;
  v4 = [(TSCEFormulasForUndo *)&v34 init];
  if (v4)
  {
    v23 = *(archive + 6);
    if (v23 >= 1)
    {
      for (i = 0; i != v23; ++i)
      {
        v6 = *(*(archive + 4) + 8 * i + 8);
        v7 = *(v6 + 56);
        if (*(v6 + 48))
        {
          v8 = *(v6 + 48);
        }

        else
        {
          v8 = MEMORY[0x277D809E0];
        }

        v9 = TSKUIDStruct::loadFromMessage(v8, v3);
        v10 = *(v6 + 32);
        if (v10 >= 1)
        {
          v11 = v9;
          v12 = v3;
          v13 = 0;
          v14 = 8;
          do
          {
            TSCE::FormulaAtCoordArchive::FormulaAtCoordArchive(v29, *(*(v6 + 40) + v14));
            v25 = v32;
            v26 = v31;
            v27 = v11;
            v28 = v12;
            if (v29[16])
            {
              v16 = [TSCEFormulaObject alloc];
              if (v30)
              {
                isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v16, v17, v30, 0, v18);
              }

              else
              {
                isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v16, v17, &TSCE::_FormulaArchive_default_instance_, 0, v18);
              }

              v21 = isPreUFF;
              objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v4, v20, isPreUFF, &v25, v7);

              v13 = v21;
            }

            else if (v33)
            {
              objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v4, v15, v13, &v25, v7);
            }

            else
            {
              objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v4, v15, 0, &v25, v7);
            }

            TSCE::FormulaAtCoordArchive::~FormulaAtCoordArchive(v29);
            v14 += 8;
            --v10;
          }

          while (v10);
        }
      }
    }
  }

  return v4;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  next = self->_formulasForOwnerKind.__table_.__first_node_.__next_;
  if (next)
  {
    v11 = v15;
    do
    {
      v6 = *(next + 8);
      v7 = *(next + 3);
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v25[3] = 0;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x4012000000;
      v24[3] = sub_221484CC0;
      v24[4] = nullsub_81;
      v24[5] = &unk_22188E88F;
      v24[6] = 0;
      v24[7] = 0;
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x3032000000;
      v22[3] = sub_2214846C4;
      v22[4] = sub_2214846D4;
      v23 = 0;
      if (v7)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v15[0] = sub_221484CD0;
        v15[1] = &unk_2784659F0;
        v17 = v25;
        v18 = v24;
        v21 = v6;
        v19 = v22;
        archiveCopy = archive;
        v16 = archiverCopy;
        objc_msgSend_foreachFormula_(v7, v8, v14, v9, v10, v11);
      }

      _Block_object_dispose(v22, 8);

      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v25, 8);

      next = *next;
    }

    while (next);
  }
}

- (void)addFormulaString:(id)string atCellRef:(const TSCECellRef *)ref
{
  stringCopy = string;
  if (stringCopy)
  {
    v8 = sub_221486084(&self->_formulaStringsForCellRefs.__table_.__bucket_list_.__ptr_, ref);
    objc_storeStrong(v8 + 5, string);
  }

  else
  {
    sub_22148632C(&self->_formulaStringsForCellRefs.__table_.__bucket_list_.__ptr_, ref);
  }
}

- (id)formulaStringAtCellRef:(const TSCECellRef *)ref
{
  v3 = sub_221244B44(&self->_formulaStringsForCellRefs.__table_.__bucket_list_.__ptr_, ref);
  if (v3)
  {
    v3 = v3[5];
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end