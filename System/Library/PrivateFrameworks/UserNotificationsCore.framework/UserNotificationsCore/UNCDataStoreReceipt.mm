@interface UNCDataStoreReceipt
+ (id)receiptWithAddedObjects:(id)objects replacedObjects:(id)replacedObjects replacementObjects:(id)replacementObjects removedObjects:(id)removedObjects;
- (UNCDataStoreReceipt)initWithAddedObjects:(id)objects replacedObjects:(id)replacedObjects replacementObjects:(id)replacementObjects removedObjects:(id)removedObjects;
@end

@implementation UNCDataStoreReceipt

+ (id)receiptWithAddedObjects:(id)objects replacedObjects:(id)replacedObjects replacementObjects:(id)replacementObjects removedObjects:(id)removedObjects
{
  removedObjectsCopy = removedObjects;
  replacementObjectsCopy = replacementObjects;
  replacedObjectsCopy = replacedObjects;
  objectsCopy = objects;
  v13 = [objc_alloc(objc_opt_class()) initWithAddedObjects:objectsCopy replacedObjects:replacedObjectsCopy replacementObjects:replacementObjectsCopy removedObjects:removedObjectsCopy];

  return v13;
}

- (UNCDataStoreReceipt)initWithAddedObjects:(id)objects replacedObjects:(id)replacedObjects replacementObjects:(id)replacementObjects removedObjects:(id)removedObjects
{
  objectsCopy = objects;
  replacedObjectsCopy = replacedObjects;
  replacementObjectsCopy = replacementObjects;
  removedObjectsCopy = removedObjects;
  v24.receiver = self;
  v24.super_class = UNCDataStoreReceipt;
  v14 = [(UNCDataStoreReceipt *)&v24 init];
  if (v14)
  {
    v15 = [objectsCopy copy];
    addedObjects = v14->_addedObjects;
    v14->_addedObjects = v15;

    v17 = [replacedObjectsCopy copy];
    replacedObjects = v14->_replacedObjects;
    v14->_replacedObjects = v17;

    v19 = [replacementObjectsCopy copy];
    replacementObjects = v14->_replacementObjects;
    v14->_replacementObjects = v19;

    v21 = [removedObjectsCopy copy];
    removedObjects = v14->_removedObjects;
    v14->_removedObjects = v21;
  }

  return v14;
}

@end