@interface TSCESpillOwner
+ (TSCECellRef)spillChangedPrecedentForTableUID:(SEL)d spillOrigin:(const TSKUIDStruct *)origin;
- (TSCESpillOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTableUID:(const TSKUIDStruct *)d;
- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)d;
- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)d ownerUID:(const TSKUIDStruct *)iD;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (int)registerWithCalcEngine:(id)engine;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)setCalcEngine:(id)engine;
- (void)unregisterFromCalcEngine;
@end

@implementation TSCESpillOwner

- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)d ownerUID:(const TSKUIDStruct *)iD
{
  v7.receiver = self;
  v7.super_class = TSCESpillOwner;
  result = [(TSCESpillOwner *)&v7 init];
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
  self->_ownerUID._lower = sub_2212C4930(&dCopy, 0xC, d._lower, d._upper, v3);
  self->_ownerUID._upper = v5;
}

- (TSCESpillOwner)initWithBaseTableUID:(const TSKUIDStruct *)d
{
  v10[0] = sub_2212C4930(d, 0xC, d, v3, v4);
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

+ (TSCECellRef)spillChangedPrecedentForTableUID:(SEL)d spillOrigin:(const TSKUIDStruct *)origin
{
  result = sub_2212C4930(origin, 0xC, origin, a5, v5);
  retstr->coordinate = *a5;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v9;
  return result;
}

- (TSCESpillOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTableUID:(const TSKUIDStruct *)d
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
  v8 = 12;
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