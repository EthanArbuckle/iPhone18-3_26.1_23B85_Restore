@interface PLSocialGroupAssetContainmentResult
- (PLSocialGroupAssetContainmentResult)initWithInclusiveAssetIDs:(id)a3 exclusiveAssetIDs:(id)a4;
@end

@implementation PLSocialGroupAssetContainmentResult

- (PLSocialGroupAssetContainmentResult)initWithInclusiveAssetIDs:(id)a3 exclusiveAssetIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLSocialGroupAssetContainmentResult;
  v9 = [(PLSocialGroupAssetContainmentResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inclusiveAssetIDs, a3);
    objc_storeStrong(&v10->_exclusiveAssetIDs, a4);
  }

  return v10;
}

@end