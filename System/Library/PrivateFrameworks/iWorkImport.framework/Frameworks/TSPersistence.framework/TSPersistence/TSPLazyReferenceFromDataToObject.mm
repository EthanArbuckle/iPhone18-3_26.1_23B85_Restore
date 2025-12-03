@interface TSPLazyReferenceFromDataToObject
- (TSPLazyReferenceFromDataToObject)initWithDelegate:(id)delegate identifier:(int64_t)identifier referenceCount:(int64_t)count;
- (id)additionalDescription;
@end

@implementation TSPLazyReferenceFromDataToObject

- (TSPLazyReferenceFromDataToObject)initWithDelegate:(id)delegate identifier:(int64_t)identifier referenceCount:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = TSPLazyReferenceFromDataToObject;
  result = [(TSPLazyReference *)&v7 initWithDelegate:delegate identifier:identifier ownershipMode:1 allowUnknownObject:0 objectClass:0 objectProtocol:0];
  if (result)
  {
    result->_referenceCount = count;
  }

  return result;
}

- (id)additionalDescription
{
  v2 = MEMORY[0x277CCACA8];
  referenceCount = self->_referenceCount;
  v8.receiver = self;
  v8.super_class = TSPLazyReferenceFromDataToObject;
  additionalDescription = [(TSPLazyReference *)&v8 additionalDescription];
  v6 = objc_msgSend_stringWithFormat_(v2, v5, @"refCount=%td %@", referenceCount, additionalDescription);

  return v6;
}

@end