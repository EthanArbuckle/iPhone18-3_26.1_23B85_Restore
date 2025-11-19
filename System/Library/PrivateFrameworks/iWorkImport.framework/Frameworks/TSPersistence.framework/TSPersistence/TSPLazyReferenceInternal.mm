@interface TSPLazyReferenceInternal
- (id)additionalDescription;
@end

@implementation TSPLazyReferenceInternal

- (id)additionalDescription
{
  objectUUID = self->_objectUUID;
  if (objectUUID)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_msgSend_UUIDString(objectUUID, a2, v2);
    v12.receiver = self;
    v12.super_class = TSPLazyReferenceInternal;
    v7 = [(TSPLazyReference *)&v12 additionalDescription];
    v9 = objc_msgSend_stringWithFormat_(v5, v8, @"uuid=%@ %@", v6, v7);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSPLazyReferenceInternal;
    v9 = [(TSPLazyReference *)&v11 additionalDescription];
  }

  return v9;
}

@end