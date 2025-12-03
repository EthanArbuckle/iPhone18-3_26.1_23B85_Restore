@interface SRAssetType
- (id)contentTypes;
@end

@implementation SRAssetType

- (id)contentTypes
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  deliveryTypeMap = [(SRAssetType *)self deliveryTypeMap];
  allKeys = [deliveryTypeMap allKeys];
  v6 = [v3 initWithArray:allKeys];

  return v6;
}

@end