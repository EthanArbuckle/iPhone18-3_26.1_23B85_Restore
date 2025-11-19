@interface TSPRemoteDataStorageSaveOperationState
- (TSPRemoteDataStorageSaveOperationState)initWithChangeCount:(unint64_t)a3 originalPackageDataStorage:(id)a4 updatedPackageDataStorage:(id)a5;
@end

@implementation TSPRemoteDataStorageSaveOperationState

- (TSPRemoteDataStorageSaveOperationState)initWithChangeCount:(unint64_t)a3 originalPackageDataStorage:(id)a4 updatedPackageDataStorage:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TSPRemoteDataStorageSaveOperationState;
  v11 = [(TSPRemoteDataStorageSaveOperationState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeCount = a3;
    objc_storeStrong(&v11->_originalPackageDataStorage, a4);
    objc_storeStrong(&v12->_updatedPackageDataStorage, a5);
  }

  return v12;
}

@end