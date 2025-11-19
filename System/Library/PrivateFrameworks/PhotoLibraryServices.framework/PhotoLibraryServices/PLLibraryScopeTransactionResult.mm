@interface PLLibraryScopeTransactionResult
- (PLLibraryScopeTransactionResult)initWithToken:(id)a3 assetObjectIDs:(id)a4 detectedFaceObjectIDs:(id)a5;
@end

@implementation PLLibraryScopeTransactionResult

- (PLLibraryScopeTransactionResult)initWithToken:(id)a3 assetObjectIDs:(id)a4 detectedFaceObjectIDs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PLLibraryScopeTransactionResult;
  v12 = [(PLLibraryScopeTransactionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lastProcessedCoreDataToken, a3);
    objc_storeStrong(&v13->_assetObjectIDs, a4);
    objc_storeStrong(&v13->_detectedFaceObjectIDs, a5);
  }

  return v13;
}

@end