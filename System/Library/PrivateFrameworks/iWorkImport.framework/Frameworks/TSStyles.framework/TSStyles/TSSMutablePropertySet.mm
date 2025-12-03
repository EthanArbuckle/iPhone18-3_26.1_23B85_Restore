@interface TSSMutablePropertySet
- (TSSMutablePropertySet)init;
- (TSSMutablePropertySet)initWithPropertySet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addProperties:(id)properties;
- (void)intersectPropertySet:(id)set;
- (void)removeProperties:(id)properties;
@end

@implementation TSSMutablePropertySet

- (TSSMutablePropertySet)init
{
  v4 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2);
  v7.receiver = self;
  v7.super_class = TSSMutablePropertySet;
  v5 = [(TSSPropertySet *)&v7 initWithIndexSet:v4];

  return v5;
}

- (TSSMutablePropertySet)initWithPropertySet:(id)set
{
  setCopy = set;
  if (!setCopy)
  {
    sub_276CE185C();
  }

  v7 = setCopy;
  v8 = setCopy[1];
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSMutablePropertySet initWithPropertySet:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 275, 0, "invalid nil value for '%{public}s'", "other->mIndexSet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = v7[1];
  }

  v16 = objc_msgSend_mutableCopy(v8, v5, v6);
  v18 = objc_msgSend_initWithIndexSet_(self, v17, v16);

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSSPropertySet alloc];
  v7 = objc_msgSend_copy(self->super.mIndexSet, v5, v6);
  v9 = objc_msgSend_initWithIndexSet_(v4, v8, v7);

  return v9;
}

- (void)addProperties:(id)properties
{
  if (properties)
  {
    objc_msgSend_addIndexes_(self->super.mIndexSet, a2, *(properties + 1));
  }
}

- (void)removeProperties:(id)properties
{
  if (properties)
  {
    objc_msgSend_removeIndexes_(self->super.mIndexSet, a2, *(properties + 1));
  }
}

- (void)intersectPropertySet:(id)set
{
  setCopy = set;
  v9 = objc_msgSend_mutableCopy(self, v5, v6);
  objc_msgSend_removeProperties_(v9, v7, setCopy);

  objc_msgSend_removeProperties_(self, v8, v9);
}

@end