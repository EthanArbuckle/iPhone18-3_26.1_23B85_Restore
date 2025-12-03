@interface PLLibraryScopeTransactionResult
- (PLLibraryScopeTransactionResult)initWithToken:(id)token assetObjectIDs:(id)ds detectedFaceObjectIDs:(id)iDs;
@end

@implementation PLLibraryScopeTransactionResult

- (PLLibraryScopeTransactionResult)initWithToken:(id)token assetObjectIDs:(id)ds detectedFaceObjectIDs:(id)iDs
{
  tokenCopy = token;
  dsCopy = ds;
  iDsCopy = iDs;
  v15.receiver = self;
  v15.super_class = PLLibraryScopeTransactionResult;
  v12 = [(PLLibraryScopeTransactionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lastProcessedCoreDataToken, token);
    objc_storeStrong(&v13->_assetObjectIDs, ds);
    objc_storeStrong(&v13->_detectedFaceObjectIDs, iDs);
  }

  return v13;
}

@end