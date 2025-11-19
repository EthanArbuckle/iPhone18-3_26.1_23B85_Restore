@interface TSPLazyReferenceFromDataToObject
- (TSPLazyReferenceFromDataToObject)initWithDelegate:(id)a3 identifier:(int64_t)a4 referenceCount:(int64_t)a5;
- (id)additionalDescription;
@end

@implementation TSPLazyReferenceFromDataToObject

- (TSPLazyReferenceFromDataToObject)initWithDelegate:(id)a3 identifier:(int64_t)a4 referenceCount:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = TSPLazyReferenceFromDataToObject;
  result = [(TSPLazyReference *)&v7 initWithDelegate:a3 identifier:a4 ownershipMode:1 allowUnknownObject:0 objectClass:0 objectProtocol:0];
  if (result)
  {
    result->_referenceCount = a5;
  }

  return result;
}

- (id)additionalDescription
{
  v2 = MEMORY[0x277CCACA8];
  referenceCount = self->_referenceCount;
  v8.receiver = self;
  v8.super_class = TSPLazyReferenceFromDataToObject;
  v4 = [(TSPLazyReference *)&v8 additionalDescription];
  v6 = objc_msgSend_stringWithFormat_(v2, v5, @"refCount=%td %@", referenceCount, v4);

  return v6;
}

@end