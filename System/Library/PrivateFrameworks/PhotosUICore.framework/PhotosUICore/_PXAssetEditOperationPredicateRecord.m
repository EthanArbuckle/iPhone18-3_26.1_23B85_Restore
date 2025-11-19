@interface _PXAssetEditOperationPredicateRecord
- (_PXAssetEditOperationPredicateRecord)initWithPerformerClass:(Class)a3 predicate:(id)a4;
@end

@implementation _PXAssetEditOperationPredicateRecord

- (_PXAssetEditOperationPredicateRecord)initWithPerformerClass:(Class)a3 predicate:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _PXAssetEditOperationPredicateRecord;
  v7 = [(_PXAssetEditOperationPredicateRecord *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_performerClass, a3);
    v9 = [v6 copy];
    predicate = v8->_predicate;
    v8->_predicate = v9;
  }

  return v8;
}

@end