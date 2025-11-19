@interface BRCFlatLevelSaltingEnumerator
+ (id)newEnumeratorForItemID:(id)a3 clientZone:(id)a4;
- (BRCFlatLevelSaltingEnumerator)initWithItemID:(id)a3 clientZone:(id)a4;
- (id)nextObject;
- (void)dealloc;
@end

@implementation BRCFlatLevelSaltingEnumerator

+ (id)newEnumeratorForItemID:(id)a3 clientZone:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BRCFlatLevelSaltingEnumerator alloc] initWithItemID:v6 clientZone:v5];

  return v7;
}

- (BRCFlatLevelSaltingEnumerator)initWithItemID:(id)a3 clientZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BRCFlatLevelSaltingEnumerator;
  v9 = [(BRCFlatLevelSaltingEnumerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemID, a3);
    v11 = [v8 directUnsaltedNonAliasItemsInServerTruthEnumeratorParentedTo:v7];
    enumerator = v10->_enumerator;
    v10->_enumerator = v11;
  }

  return v10;
}

- (id)nextObject
{
  v3 = [(PQLEnumeration *)self->_enumerator nextObject];
  if (!v3)
  {
    [(PQLEnumeration *)self->_enumerator close];
    enumerator = self->_enumerator;
    self->_enumerator = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(PQLEnumeration *)self->_enumerator close];
  v3.receiver = self;
  v3.super_class = BRCFlatLevelSaltingEnumerator;
  [(BRCFlatLevelSaltingEnumerator *)&v3 dealloc];
}

@end