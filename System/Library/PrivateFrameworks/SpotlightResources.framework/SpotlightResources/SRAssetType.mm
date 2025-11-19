@interface SRAssetType
- (id)contentTypes;
@end

@implementation SRAssetType

- (id)contentTypes
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(SRAssetType *)self deliveryTypeMap];
  v5 = [v4 allKeys];
  v6 = [v3 initWithArray:v5];

  return v6;
}

@end