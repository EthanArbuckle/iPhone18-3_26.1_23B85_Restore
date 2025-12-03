@interface _PXAssetEditOperationPredicateRecord
- (_PXAssetEditOperationPredicateRecord)initWithPerformerClass:(Class)class predicate:(id)predicate;
@end

@implementation _PXAssetEditOperationPredicateRecord

- (_PXAssetEditOperationPredicateRecord)initWithPerformerClass:(Class)class predicate:(id)predicate
{
  predicateCopy = predicate;
  v12.receiver = self;
  v12.super_class = _PXAssetEditOperationPredicateRecord;
  v7 = [(_PXAssetEditOperationPredicateRecord *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_performerClass, class);
    v9 = [predicateCopy copy];
    predicate = v8->_predicate;
    v8->_predicate = v9;
  }

  return v8;
}

@end