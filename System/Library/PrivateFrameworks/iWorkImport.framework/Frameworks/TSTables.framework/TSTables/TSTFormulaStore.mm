@interface TSTFormulaStore
+ (TSKUIDStruct)tableUIDFromFormula:(id)a3 atCoord:(const TSUModelCellCoord *)a4;
+ (TSUModelCellRect)rangeFromFormulaObject:(id)a3 atCoord:(const TSUModelCellCoord *)a4;
+ (TSUModelCellRect)rangeFromFormulaObject:(id)a3 atCoord:(const TSUModelCellCoord *)a4 useBoundingRange:(BOOL)a5;
+ (id)createFormulaForUIDRange:(const void *)a3 tableUID:(const TSKUIDStruct *)a4;
+ (id)createFormulaForUIDTract:(const void *)a3 tableUID:(const TSKUIDStruct *)a4;
- (TSCECalculationEngine)calcEngine;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)tableUIDFromFormulaAtIndex:(unint64_t)a3;
- (TSTFormulaStore)initWithOwnerUID:(TSKUIDStruct)a3;
- (TSTFormulaStore)initWithOwnerUID:(const TSKUIDStruct *)a3 archive:(const void *)a4 unarchiver:(id)a5;
- (TSUCellCoord)reserveNextCoordinate;
- (TSUModelCellRect)rangeFromFormulaAtIndex:(unint64_t)a3 useBoundingRange:(BOOL)a4;
- (id)createFormulaObjectForRange:(TSUModelCellRect)a3 atIndex:(unint64_t)a4 tableUID:(const TSKUIDStruct *)a5;
- (id)description;
- (unint64_t)appendIndexedFormula:(id)a3;
- (unint64_t)reserveNextIndex;
- (void)clearFormulaAtIndex:(unint64_t)a3 formulaReplacer:(id)a4;
- (void)foreach:(id)a3;
- (void)registerAllFormulaToCalculationEngine;
- (void)remapRangeFormulasToOwnerUID:(const TSKUIDStruct *)a3;
- (void)rollbackToMark:(unint64_t)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setFormulaObject:(id)a3 atIndex:(unint64_t)a4 formulaReplacer:(id)a5;
- (void)setFormulaOwnerUID:(TSKUIDStruct)a3;
@end

@implementation TSTFormulaStore

- (void)setFormulaOwnerUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  p_formulaOwnerUID = &self->_formulaOwnerUID;
  if (self->_formulaOwnerUID._lower || self->_formulaOwnerUID._upper)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v12 = objc_msgSend_duringSubOwnerUIDUpgrade(WeakRetained, v8, v9, v10, v11);

    if ((v12 & 1) == 0)
    {
      v13 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_removeAllFormulasFromOwner_(v13, v14, p_formulaOwnerUID, v15, v16);
    }
  }

  self->_formulaOwnerUID._lower = lower;
  self->_formulaOwnerUID._upper = upper;
}

- (TSTFormulaStore)initWithOwnerUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  v10.receiver = self;
  v10.super_class = TSTFormulaStore;
  v5 = [(TSTFormulaStore *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_formulaOwnerUID._lower = lower;
    v5->_formulaOwnerUID._upper = upper;
    v7 = objc_opt_new();
    formulas = v6->_formulas;
    v6->_formulas = v7;

    v6->_nextIndex = 0;
  }

  return v6;
}

- (TSUCellCoord)reserveNextCoordinate
{
  Index = objc_msgSend_reserveNextIndex(self, a2, v2, v3, v4);

  return objc_msgSend_coordFromIndex_(TSTFormulaStore, v5, Index, v7, v8);
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p>\n", v6, v7, v4, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2211B0AD8;
  v14[3] = &unk_278460990;
  v9 = v8;
  v15 = v9;
  objc_msgSend_foreach_(self, v10, v14, v11, v12);

  return v9;
}

- (unint64_t)reserveNextIndex
{
  nextIndex = self->_nextIndex;
  self->_nextIndex = nextIndex + 1;
  return nextIndex;
}

- (void)rollbackToMark:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && self->_nextIndex > a3)
  {
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v9;
    v20 = v10;
    v14 = a3;
    do
    {
      objc_msgSend_clearFormulaAtIndex_(self, a2, v14++, v3, v4, v15, v16, v17, v18, v19, v20);
    }

    while (v14 < self->_nextIndex);
    self->_nextIndex = a3;
  }
}

- (unint64_t)appendIndexedFormula:(id)a3
{
  v4 = a3;
  Index = objc_msgSend_reserveNextIndex(self, v5, v6, v7, v8);
  objc_msgSend_setFormulaObject_atIndex_(self, v10, v4, Index, v11);

  return Index;
}

- (void)setFormulaObject:(id)a3 atIndex:(unint64_t)a4 formulaReplacer:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_msgSend_setObject_forKey_(self->_formulas, v10, v8, a4, v11);
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v19 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v13, a4, v14, v15);
    if (v9)
    {
      objc_msgSend_replaceFormula_atCellCoord_inOwner_(v9, v16, v8, &v19, &self->_formulaOwnerUID);
    }

    else
    {
      v17 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_replaceFormula_atCellCoord_inOwner_(v17, v18, v8, &v19, &self->_formulaOwnerUID);
    }
  }
}

- (void)clearFormulaAtIndex:(unint64_t)a3 formulaReplacer:(id)a4
{
  v6 = a4;
  v17 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a3, v8, v9);
  objc_msgSend_setObject_forKey_(self->_formulas, v10, 0, a3, v11);
  if (v6)
  {
    objc_msgSend_removeFormulaAt_inOwner_(v6, v12, &v17, &self->_formulaOwnerUID, v13);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_removeFormulaAt_inOwner_(WeakRetained, v15, &v17, &self->_formulaOwnerUID, v16);
  }
}

- (void)registerAllFormulaToCalculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x9812000000;
    v11[3] = sub_2211B0EE4;
    v11[4] = nullsub_19;
    v11[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v4 = objc_loadWeakRetained(&self->_calcEngine);
    v10.coordinate = 0;
    v10._tableUID = self->_formulaOwnerUID;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v12, v4, &v10);

    formulas = self->_formulas;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211B0F34;
    v9[3] = &unk_2784609B8;
    v9[4] = self;
    v9[5] = v11;
    objc_msgSend_foreach_(formulas, v6, v9, v7, v8);
    _Block_object_dispose(v11, 8);
  }
}

- (void)foreach:(id)a3
{
  v4 = a3;
  formulas = self->_formulas;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211B11F0;
  v10[3] = &unk_2784609E0;
  v11 = v4;
  v6 = v4;
  objc_msgSend_foreach_(formulas, v7, v10, v8, v9);
}

- (id)createFormulaObjectForRange:(TSUModelCellRect)a3 atIndex:(unint64_t)a4 tableUID:(const TSKUIDStruct *)a5
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v9 = objc_msgSend_coordFromIndex_(TSTFormulaStore, x1_0, a4, *&a3.var0.size, a4);
  objc_msgSend_formulaOwnerUID(self, v10, v11, v12, v13);
  v26._cppCellTractRef._columns._singleRange._begin = origin;
  v26._cppCellTractRef._columns._singleRange._end = size;
  TSCERangeRef::TSCERangeRef(&v26._cppCellTractRef._columns._multipleRanges, &v26._cppCellTractRef._columns._singleRange, a5);
  LOBYTE(v26._cppCellTractRef._columns._singleRange._begin) = 15;
  TSCERangeRef::setPreserveFlags(&v26._cppCellTractRef._columns._multipleRanges, &v26._cppCellTractRef._columns._singleRange);
  v14 = [TSCECellTractRef alloc];
  v18 = objc_msgSend_initWithRangeRef_(v14, v15, &v26._cppCellTractRef._columns._multipleRanges, v16, v17);
  v26.super.isa = v9;
  TSCEFormulaCreationMagic::absColonTractRef(v18, &v26, &v26._cppCellTractRef);
  TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v26._cppCellTractRef, v28, &v26._cppCellTractRef._columns._singleRange._begin);

  v19 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v25, &v26._cppCellTractRef._columns._singleRange);
  v23 = objc_msgSend_initWithCreator_(v19, v20, &v25, v21, v22);

  return v23;
}

+ (id)createFormulaForUIDRange:(const void *)a3 tableUID:(const TSKUIDStruct *)a4
{
  lower = a4->_lower;
  upper = a4->_upper;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_221086EBC(&v16, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_221086EBC(&__p, *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 4);
  TSCEFormulaCreationMagic::uidRef(lower, upper, &v16, &__p, &v19);
  TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v19, v22, &v20);

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v7 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v12, &v20);
  v10 = objc_msgSend_initWithCreator_translationFlags_(v7, v8, &v12, 32, v9);

  return v10;
}

+ (id)createFormulaForUIDTract:(const void *)a3 tableUID:(const TSKUIDStruct *)a4
{
  lower = a4->_lower;
  upper = a4->_upper;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_221086EBC(&v16, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_221086EBC(&__p, *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 4);
  TSCEFormulaCreationMagic::uidTractRef(lower, upper, &v16, &__p, &v19);
  TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v19, v22, &v20);

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v7 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v12, &v20);
  v10 = objc_msgSend_initWithCreator_translationFlags_(v7, v8, &v12, 32, v9);

  return v10;
}

- (TSUModelCellRect)rangeFromFormulaAtIndex:(unint64_t)a3 useBoundingRange:(BOOL)a4
{
  v5 = a4;
  v10 = objc_msgSend_formulaObjectAtIndex_(self, a2, a3, a4, v4);
  if (v10)
  {
    v18 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a3, v8, v9);
    v11 = objc_opt_class();
    v13 = objc_msgSend_rangeFromFormulaObject_atCoord_useBoundingRange_(v11, v12, v10, &v18, v5);
    v15 = v14;
  }

  else
  {
    v15 = 0;
    v13 = 0x7FFF7FFFFFFFLL;
  }

  v16 = v13;
  v17 = v15;
  result.var0.size = v17;
  result.var0.origin = v16;
  return result;
}

+ (TSUModelCellRect)rangeFromFormulaObject:(id)a3 atCoord:(const TSUModelCellCoord *)a4
{
  v4 = objc_msgSend_rangeFromFormulaObject_atCoord_useBoundingRange_(a1, a2, a3, a4, 1);
  result.var0.size = v5;
  result.var0.origin = v4;
  return result;
}

+ (TSUModelCellRect)rangeFromFormulaObject:(id)a3 atCoord:(const TSUModelCellCoord *)a4 useBoundingRange:(BOOL)a5
{
  v7 = a3;
  coord = a4->_coord;
  v25._tableUID._lower = 0;
  v25._tableUID._upper = 0;
  v25.coordinate = coord;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v33, 0, &v25);
  v13 = objc_msgSend_const_astNodeArray(v7, v9, v10, v11, v12);
  sub_2212BB9E8(&v25, v13, &v33, a5);
  TSCEASTStreamIterator::rewrite(&v25, v14, v15, v16, v17);
  if (v26 == 1)
  {
    TSUCellRectFromTSCERangeCoordinate();
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v21 = 0;
    v19 = 0x7FFF7FFFFFFFLL;
  }

  v25.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v25, v22);
  v23 = v19;
  v24 = v21;
  result.var0.size = v24;
  result.var0.origin = v23;
  return result;
}

- (TSKUIDStruct)tableUIDFromFormulaAtIndex:(unint64_t)a3
{
  v6 = objc_msgSend_formulaObjectAtIndex_(self, a2, a3, v3, v4);
  v18 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, a3, v8, v9);
  v10 = objc_opt_class();
  v13 = objc_msgSend_tableUIDFromFormula_atCoord_(v10, v11, v6, &v18, v12);
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result._upper = v17;
  result._lower = v16;
  return result;
}

+ (TSKUIDStruct)tableUIDFromFormula:(id)a3 atCoord:(const TSUModelCellCoord *)a4
{
  v5 = a3;
  coord = a4->_coord;
  v22._tableUID._lower = 0;
  v22._tableUID._upper = 0;
  v22.coordinate = coord;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v32, 0, &v22);
  v11 = objc_msgSend_const_astNodeArray(v5, v7, v8, v9, v10);
  sub_2212BB9E8(&v22, v11, &v32, 1);
  TSCEASTStreamIterator::rewrite(&v22, v12, v13, v14, v15);
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v22.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (!v16)
  {
    v17 = 0;
    v18 = 0;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v22, v19);
  v20 = v17;
  v21 = v18;
  result._upper = v21;
  result._lower = v20;
  return result;
}

- (void)remapRangeFormulasToOwnerUID:(const TSKUIDStruct *)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211B1AC4;
  v5[3] = &unk_278460A08;
  v5[4] = self;
  v5[5] = a3;
  objc_msgSend_foreach_(self, a2, v5, v3, v4);
}

- (TSTFormulaStore)initWithOwnerUID:(const TSKUIDStruct *)a3 archive:(const void *)a4 unarchiver:(id)a5
{
  v6 = objc_msgSend_initWithOwnerUID_(self, a2, a3->_lower, a3->_upper, a5);
  v7 = v6;
  if (v6)
  {
    *(v6 + 40) = *(a4 + 12);
    v8 = *(a4 + 8);
    if (v8 >= 1)
    {
      v9 = 8;
      do
      {
        v10 = *(*(a4 + 5) + v9);
        v11 = *(v10 + 32);
        v12 = [TSCEFormulaObject alloc];
        if (*(v10 + 24))
        {
          isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, *(v10 + 24), 0, v14);
        }

        else
        {
          isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, &TSCE::_FormulaArchive_default_instance_, 0, v14);
        }

        v18 = isPreUFF;
        objc_msgSend_setObject_forKey_(v7->_formulas, v16, isPreUFF, v11, v17);

        v9 += 8;
        --v8;
      }

      while (v8);
    }
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  nextIndex = self->_nextIndex;
  *(a3 + 4) |= 1u;
  *(a3 + 12) = nextIndex;
  formulas = self->_formulas;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2211B1D1C;
  v13[3] = &unk_278460A30;
  v14 = v6;
  v15 = a3;
  v9 = v6;
  objc_msgSend_foreach_(formulas, v10, v13, v11, v12);
}

- (TSKUIDStruct)formulaOwnerUID
{
  upper = self->_formulaOwnerUID._upper;
  lower = self->_formulaOwnerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end