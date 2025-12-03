@interface TSCEHauntedOwner
+ (TSCECellRef)anyHeaderNameChangedPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)filteringChangedPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)formulaDefinitionPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)geometryPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)groupByChangedPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)localePrecedentForTableUID:(SEL)d;
+ (TSCECellRef)nowPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)pivotRulesChangedPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)pivotSortChangedPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)randomPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)sheetTableNamePrecedentForTableUID:(SEL)d;
+ (TSCECellRef)spillBlockedByBeingVerticalPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)spillBlockedByContentPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)spillBlockedByMergePrecedentForTableUID:(SEL)d;
+ (TSCECellRef)spillPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)subtotalPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)summaryModelIsCleanForSortPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)summaryModelIsCleanPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)todayPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)uniqueDistinctPrecedentForTableUID:(SEL)d;
+ (TSCECellRef)userHiddenChangedPrecedentForTableUID:(SEL)d;
- (TSCEHauntedOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTableUID:(const TSKUIDStruct *)d;
- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)d;
- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)d ownerUID:(const TSKUIDStruct *)iD;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (int)registerWithCalcEngine:(id)engine;
- (void)dirtyGeometryVolatileCells;
- (void)dirtyNowAndTodayVolatileCells;
- (void)dirtyNowVolatileCells;
- (void)dirtyRandomVolatileCells;
- (void)dirtySheetTableNameVolatileCells;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)setCalcEngine:(id)engine;
- (void)unregisterFromCalcEngine;
@end

@implementation TSCEHauntedOwner

- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)d ownerUID:(const TSKUIDStruct *)iD
{
  v7.receiver = self;
  v7.super_class = TSCEHauntedOwner;
  result = [(TSCEHauntedOwner *)&v7 init];
  if (result)
  {
    result->_baseTableUID = *d;
    result->_ownerUID = *iD;
  }

  return result;
}

- (void)setBaseTableUID:(TSKUIDStruct)d
{
  dCopy = d;
  self->_baseTableUID = d;
  self->_ownerUID._lower = sub_2212C4930(&dCopy, 0x23, d._lower, d._upper, v3);
  self->_ownerUID._upper = v5;
}

- (TSCEHauntedOwner)initWithBaseTableUID:(const TSKUIDStruct *)d
{
  v10[0] = sub_2212C4930(d, 0x23, d, v3, v4);
  v10[1] = v7;
  return objc_msgSend_initWithBaseTableUID_ownerUID_(self, v7, d, v10, v8);
}

- (void)setCalcEngine:(id)engine
{
  engineCopy = engine;
  if (!self->_calcEngine)
  {
    objc_storeStrong(&self->_calcEngine, engine);
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

+ (TSCECellRef)nowPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)todayPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x200000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)randomPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x300000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)subtotalPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xA00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)filteringChangedPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xB00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)userHiddenChangedPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xC00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)formulaDefinitionPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xE00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)groupByChangedPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xF00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)geometryPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x400000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)localePrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x500000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)sheetTableNamePrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x600000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)anyHeaderNameChangedPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0xD00000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)summaryModelIsCleanPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1100000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)summaryModelIsCleanForSortPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1000000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)pivotRulesChangedPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1200000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)uniqueDistinctPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1300000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)pivotSortChangedPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1400000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x1600000000;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillBlockedByContentPrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000001;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillBlockedByMergePrecedentForTableUID:(SEL)d
{
  result = sub_2212C4930(a4, 0x23, a4, v4, v5);
  retstr->coordinate = 0x100000002;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

+ (TSCECellRef)spillBlockedByBeingVerticalPrecedentForTableUID:(SEL)d
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

- (TSCEHauntedOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTableUID:(const TSKUIDStruct *)d
{
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D809E0];
  }

  v11[0] = TSKUIDStruct::loadFromMessage(v7, a2);
  v11[1] = v8;
  return objc_msgSend_initWithBaseTableUID_ownerUID_(self, v8, d, v11, v9);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v6 = *(archive + 3);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(archive + 3) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v6);
}

- (int)registerWithCalcEngine:(id)engine
{
  selfCopy = self;
  objc_storeStrong(&self->_calcEngine, engine);
  engineCopy = engine;
  v8 = 35;
  LODWORD(selfCopy) = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(selfCopy->_calcEngine, v6, selfCopy->_ownerUID._lower, selfCopy->_ownerUID._upper, selfCopy, 0, selfCopy->_baseTableUID._lower, selfCopy->_baseTableUID._upper, v8);

  return selfCopy;
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