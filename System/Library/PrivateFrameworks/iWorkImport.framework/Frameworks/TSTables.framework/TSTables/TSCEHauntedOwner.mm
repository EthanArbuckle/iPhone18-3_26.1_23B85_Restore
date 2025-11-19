@interface TSCEHauntedOwner
+ (TSCECellRef)anyHeaderNameChangedPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)filteringChangedPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)formulaDefinitionPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)geometryPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)groupByChangedPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)localePrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)nowPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)pivotRulesChangedPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)pivotSortChangedPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)randomPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)sheetTableNamePrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)spillBlockedByBeingVerticalPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)spillBlockedByContentPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)spillBlockedByMergePrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)spillPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)subtotalPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)summaryModelIsCleanForSortPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)summaryModelIsCleanPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)todayPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)uniqueDistinctPrecedentForTableUID:(SEL)a3;
+ (TSCECellRef)userHiddenChangedPrecedentForTableUID:(SEL)a3;
- (TSCEHauntedOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forBaseTableUID:(const TSKUIDStruct *)a5;
- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3;
- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3 ownerUID:(const TSKUIDStruct *)a4;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (int)registerWithCalcEngine:(id)a3;
- (void)dirtyGeometryVolatileCells;
- (void)dirtyNowAndTodayVolatileCells;
- (void)dirtyNowVolatileCells;
- (void)dirtyRandomVolatileCells;
- (void)dirtySheetTableNameVolatileCells;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setBaseTableUID:(TSKUIDStruct)a3;
- (void)setCalcEngine:(id)a3;
- (void)unregisterFromCalcEngine;
@end

@implementation TSCEHauntedOwner

- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3 ownerUID:(const TSKUIDStruct *)a4
{
  v7.receiver = self;
  v7.super_class = TSCEHauntedOwner;
  result = [(TSCEHauntedOwner *)&v7 init];
  if (result)
  {
    result->_baseTableUID = *a3;
    result->_ownerUID = *a4;
  }

  return result;
}

- (void)setBaseTableUID:(TSKUIDStruct)a3
{
  v6 = a3;
  self->_baseTableUID = a3;
  self->_ownerUID._lower = sub_2212C4930(&v6, 0x23, a3._lower, a3._upper, v3);
  self->_ownerUID._upper = v5;
}

- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3
{
  v10[0] = sub_2212C4930(a3, 0x23, a3, v3, v4);
  v10[1] = v7;
  return objc_msgSend_initWithBaseTableUID_ownerUID_(self, v7, a3, v10, v8);
}

- (void)setCalcEngine:(id)a3
{
  v8 = a3;
  if (!self->_calcEngine)
  {
    objc_storeStrong(&self->_calcEngine, a3);
    objc_msgSend_registerWithCalcEngine_(self, v5, self->_calcEngine, v6, v7);
  }
}

- (TSKUIDStruct)formulaOwnerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

+ (TSCECellRef)nowPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)todayPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x200000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)randomPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x300000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)subtotalPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xA00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)filteringChangedPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xB00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)userHiddenChangedPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xC00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)formulaDefinitionPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xE00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)groupByChangedPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xF00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)geometryPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x400000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)localePrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x500000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)sheetTableNamePrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x600000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)anyHeaderNameChangedPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xD00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)summaryModelIsCleanPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1100000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)summaryModelIsCleanForSortPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1000000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)pivotRulesChangedPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1200000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)uniqueDistinctPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1300000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)pivotSortChangedPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1400000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1600000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillBlockedByContentPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000001;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillBlockedByMergePrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000002;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillBlockedByBeingVerticalPrecedentForTableUID:(SEL)a3
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000003;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

- (void)dirtyNowVolatileCells
{
  calcEngine = self->_calcEngine;
  objc_msgSend_nowPrecedentForTableUID_(TSCEHauntedOwner, a2, &self->_baseTableUID, v2, v3);
  objc_msgSend_markCellRefAsDirty_(calcEngine, v5, v8, v6, v7);
}

- (void)dirtyNowAndTodayVolatileCells
{
  calcEngine = self->_calcEngine;
  objc_msgSend_todayPrecedentForTableUID_(TSCEHauntedOwner, a2, &self->_baseTableUID, v2, v3);
  objc_msgSend_markCellRefAsDirty_(calcEngine, v6, v16, v7, v8);
  v9 = self->_calcEngine;
  objc_msgSend_nowPrecedentForTableUID_(TSCEHauntedOwner, v10, &self->_baseTableUID, v11, v12);
  objc_msgSend_markCellRefAsDirty_(v9, v13, v16, v14, v15);
}

- (void)dirtyRandomVolatileCells
{
  calcEngine = self->_calcEngine;
  objc_msgSend_randomPrecedentForTableUID_(TSCEHauntedOwner, a2, &self->_baseTableUID, v2, v3);
  objc_msgSend_markCellRefAsDirty_(calcEngine, v5, v8, v6, v7);
}

- (void)dirtyGeometryVolatileCells
{
  calcEngine = self->_calcEngine;
  objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, a2, &self->_baseTableUID, v2, v3);
  objc_msgSend_markCellRefAsDirty_(calcEngine, v5, v8, v6, v7);
}

- (void)dirtySheetTableNameVolatileCells
{
  calcEngine = self->_calcEngine;
  objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, a2, &self->_baseTableUID, v2, v3);
  objc_msgSend_markCellRefAsDirty_(calcEngine, v5, v8, v6, v7);
}

- (TSCEHauntedOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forBaseTableUID:(const TSKUIDStruct *)a5
{
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = MEMORY[0x277D809E0];
  }

  v11[0] = TSKUIDStruct::loadFromMessage(v7, a2);
  v11[1] = v8;
  return objc_msgSend_initWithBaseTableUID_ownerUID_(self, v8, a5, v11, v9);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v8 = a4;
  *(a3 + 4) |= 1u;
  v6 = *(a3 + 3);
  if (!v6)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(a3 + 3) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v6);
}

- (int)registerWithCalcEngine:(id)a3
{
  v4 = self;
  objc_storeStrong(&self->_calcEngine, a3);
  v5 = a3;
  v8 = 35;
  LODWORD(v4) = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v4->_calcEngine, v6, v4->_ownerUID._lower, v4->_ownerUID._upper, v4, 0, v4->_baseTableUID._lower, v4->_baseTableUID._upper, v8);

  return v4;
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_unregisterOwner_(self->_calcEngine, a2, self->_ownerUID._lower, self->_ownerUID._upper, v2);
  calcEngine = self->_calcEngine;
  self->_calcEngine = 0;
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)baseTableUID
{
  upper = self->_baseTableUID._upper;
  lower = self->_baseTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end