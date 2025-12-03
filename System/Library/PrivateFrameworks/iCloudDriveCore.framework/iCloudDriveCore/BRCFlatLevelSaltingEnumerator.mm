@interface BRCFlatLevelSaltingEnumerator
+ (id)newEnumeratorForItemID:(id)d clientZone:(id)zone;
- (BRCFlatLevelSaltingEnumerator)initWithItemID:(id)d clientZone:(id)zone;
- (id)nextObject;
- (void)dealloc;
@end

@implementation BRCFlatLevelSaltingEnumerator

+ (id)newEnumeratorForItemID:(id)d clientZone:(id)zone
{
  zoneCopy = zone;
  dCopy = d;
  v7 = [[BRCFlatLevelSaltingEnumerator alloc] initWithItemID:dCopy clientZone:zoneCopy];

  return v7;
}

- (BRCFlatLevelSaltingEnumerator)initWithItemID:(id)d clientZone:(id)zone
{
  dCopy = d;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = BRCFlatLevelSaltingEnumerator;
  v9 = [(BRCFlatLevelSaltingEnumerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemID, d);
    v11 = [zoneCopy directUnsaltedNonAliasItemsInServerTruthEnumeratorParentedTo:dCopy];
    enumerator = v10->_enumerator;
    v10->_enumerator = v11;
  }

  return v10;
}

- (id)nextObject
{
  nextObject = [(PQLEnumeration *)self->_enumerator nextObject];
  if (!nextObject)
  {
    [(PQLEnumeration *)self->_enumerator close];
    enumerator = self->_enumerator;
    self->_enumerator = 0;
  }

  return nextObject;
}

- (void)dealloc
{
  [(PQLEnumeration *)self->_enumerator close];
  v3.receiver = self;
  v3.super_class = BRCFlatLevelSaltingEnumerator;
  [(BRCFlatLevelSaltingEnumerator *)&v3 dealloc];
}

@end