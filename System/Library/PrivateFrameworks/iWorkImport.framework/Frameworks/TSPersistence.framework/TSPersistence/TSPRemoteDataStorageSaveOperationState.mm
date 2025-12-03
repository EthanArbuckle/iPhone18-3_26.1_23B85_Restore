@interface TSPRemoteDataStorageSaveOperationState
- (TSPRemoteDataStorageSaveOperationState)initWithChangeCount:(unint64_t)count originalPackageDataStorage:(id)storage updatedPackageDataStorage:(id)dataStorage;
@end

@implementation TSPRemoteDataStorageSaveOperationState

- (TSPRemoteDataStorageSaveOperationState)initWithChangeCount:(unint64_t)count originalPackageDataStorage:(id)storage updatedPackageDataStorage:(id)dataStorage
{
  storageCopy = storage;
  dataStorageCopy = dataStorage;
  v14.receiver = self;
  v14.super_class = TSPRemoteDataStorageSaveOperationState;
  v11 = [(TSPRemoteDataStorageSaveOperationState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeCount = count;
    objc_storeStrong(&v11->_originalPackageDataStorage, storage);
    objc_storeStrong(&v12->_updatedPackageDataStorage, dataStorage);
  }

  return v12;
}

@end