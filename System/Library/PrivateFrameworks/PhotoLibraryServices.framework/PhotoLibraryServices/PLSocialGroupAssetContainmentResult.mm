@interface PLSocialGroupAssetContainmentResult
- (PLSocialGroupAssetContainmentResult)initWithInclusiveAssetIDs:(id)ds exclusiveAssetIDs:(id)iDs;
@end

@implementation PLSocialGroupAssetContainmentResult

- (PLSocialGroupAssetContainmentResult)initWithInclusiveAssetIDs:(id)ds exclusiveAssetIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v12.receiver = self;
  v12.super_class = PLSocialGroupAssetContainmentResult;
  v9 = [(PLSocialGroupAssetContainmentResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inclusiveAssetIDs, ds);
    objc_storeStrong(&v10->_exclusiveAssetIDs, iDs);
  }

  return v10;
}

@end