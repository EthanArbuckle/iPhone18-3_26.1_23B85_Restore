@interface NSValue(PXTileIdentifier)
+ (id)valueWithPXTileIdentifier:()PXTileIdentifier;
- (uint64_t)PXTileIdentifierValue;
@end

@implementation NSValue(PXTileIdentifier)

- (uint64_t)PXTileIdentifierValue
{
  *(x8_0 + 80) = 0;
  *(x8_0 + 48) = 0u;
  *(x8_0 + 64) = 0u;
  *(x8_0 + 16) = 0u;
  *(x8_0 + 32) = 0u;
  *x8_0 = 0u;
  return [self getValue:x8_0];
}

+ (id)valueWithPXTileIdentifier:()PXTileIdentifier
{
  v3 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:a3 objCType:"{PXTileIdentifier=Q[10Q]}"];

  return v3;
}

@end