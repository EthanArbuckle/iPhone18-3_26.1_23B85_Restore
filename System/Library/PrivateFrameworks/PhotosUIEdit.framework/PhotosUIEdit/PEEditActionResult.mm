@interface PEEditActionResult
- (PEEditActionResult)initWithAssetUUID:(id)a3 targetAction:(id)a4;
@end

@implementation PEEditActionResult

- (PEEditActionResult)initWithAssetUUID:(id)a3 targetAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PEEditActionResult;
  v9 = [(PEEditActionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceAssetUUID, a3);
    objc_storeStrong(&v10->_targetAction, a4);
  }

  return v10;
}

@end