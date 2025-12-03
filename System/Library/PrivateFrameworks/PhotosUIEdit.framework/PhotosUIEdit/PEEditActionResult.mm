@interface PEEditActionResult
- (PEEditActionResult)initWithAssetUUID:(id)d targetAction:(id)action;
@end

@implementation PEEditActionResult

- (PEEditActionResult)initWithAssetUUID:(id)d targetAction:(id)action
{
  dCopy = d;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = PEEditActionResult;
  v9 = [(PEEditActionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceAssetUUID, d);
    objc_storeStrong(&v10->_targetAction, action);
  }

  return v10;
}

@end