@interface UNCDataStoreReceipt
+ (id)receiptWithAddedObjects:(id)a3 replacedObjects:(id)a4 replacementObjects:(id)a5 removedObjects:(id)a6;
- (UNCDataStoreReceipt)initWithAddedObjects:(id)a3 replacedObjects:(id)a4 replacementObjects:(id)a5 removedObjects:(id)a6;
@end

@implementation UNCDataStoreReceipt

+ (id)receiptWithAddedObjects:(id)a3 replacedObjects:(id)a4 replacementObjects:(id)a5 removedObjects:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithAddedObjects:v12 replacedObjects:v11 replacementObjects:v10 removedObjects:v9];

  return v13;
}

- (UNCDataStoreReceipt)initWithAddedObjects:(id)a3 replacedObjects:(id)a4 replacementObjects:(id)a5 removedObjects:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = UNCDataStoreReceipt;
  v14 = [(UNCDataStoreReceipt *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    addedObjects = v14->_addedObjects;
    v14->_addedObjects = v15;

    v17 = [v11 copy];
    replacedObjects = v14->_replacedObjects;
    v14->_replacedObjects = v17;

    v19 = [v12 copy];
    replacementObjects = v14->_replacementObjects;
    v14->_replacementObjects = v19;

    v21 = [v13 copy];
    removedObjects = v14->_removedObjects;
    v14->_removedObjects = v21;
  }

  return v14;
}

@end