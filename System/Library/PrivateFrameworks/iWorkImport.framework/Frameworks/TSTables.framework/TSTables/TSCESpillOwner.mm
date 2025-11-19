@interface TSCESpillOwner
+ (TSCECellRef)spillChangedPrecedentForTableUID:(SEL)a3 spillOrigin:(const TSKUIDStruct *)a4;
- (TSCESpillOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forBaseTableUID:(const TSKUIDStruct *)a5;
- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3;
- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3 ownerUID:(const TSKUIDStruct *)a4;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (int)registerWithCalcEngine:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setBaseTableUID:(TSKUIDStruct)a3;
- (void)setCalcEngine:(id)a3;
- (void)unregisterFromCalcEngine;
@end

@implementation TSCESpillOwner

- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3 ownerUID:(const TSKUIDStruct *)a4
{
  v7.receiver = self;
  v7.super_class = TSCESpillOwner;
  result = [(TSCESpillOwner *)&v7 init];
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
  self->_ownerUID._lower = sub_2212C4930(&v6, 0xC, a3._lower, a3._upper, v3);
  self->_ownerUID._upper = v5;
}

- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)a3
{
  v10[0] = sub_2212C4930(a3, 0xC, a3, v3, v4);
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

+ (TSCECellRef)spillChangedPrecedentForTableUID:(SEL)a3 spillOrigin:(const TSKUIDStruct *)a4
{
  result = sub_2212C4930(a4, 0xC, a4, a5, v5);
  retstr->coordinate = *a5;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v9;
  return result;
}

- (TSCESpillOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forBaseTableUID:(const TSKUIDStruct *)a5
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
  v8 = 12;
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