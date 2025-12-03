@interface NSValue(PXTileGeometry)
+ (id)valueWithPXTileGeometry:()PXTileGeometry;
- (uint64_t)PXTileGeometryValue;
@end

@implementation NSValue(PXTileGeometry)

- (uint64_t)PXTileGeometryValue
{
  x8_0[10] = 0u;
  x8_0[11] = 0u;
  x8_0[8] = 0u;
  x8_0[9] = 0u;
  x8_0[6] = 0u;
  x8_0[7] = 0u;
  x8_0[4] = 0u;
  x8_0[5] = 0u;
  x8_0[2] = 0u;
  x8_0[3] = 0u;
  *x8_0 = 0u;
  x8_0[1] = 0u;
  return [self getValue:x8_0];
}

+ (id)valueWithPXTileGeometry:()PXTileGeometry
{
  v3 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:a3 objCType:"{PXTileGeometry={CGRect={CGPoint=dd}{CGSize=dd}}{CGPoint=dd}{CGSize=dd}{CGAffineTransform=dddddd}ddB{CGSize=dd}{CGRect={CGPoint=dd}{CGSize=dd}}^v}"];

  return v3;
}

@end