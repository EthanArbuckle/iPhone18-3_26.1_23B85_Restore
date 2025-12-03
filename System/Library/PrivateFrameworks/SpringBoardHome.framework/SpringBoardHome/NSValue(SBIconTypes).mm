@interface NSValue(SBIconTypes)
+ (id)sbh_valueWithSBHIconGridRange:()SBIconTypes;
+ (id)sbh_valueWithSBHIconGridSize:()SBIconTypes;
+ (id)sbh_valueWithSBIconCoordinate:()SBIconTypes;
+ (id)sbh_valueWithSBIconImageInfo:()SBIconTypes;
- (double)sbh_SBIconImageInfoValue;
- (uint64_t)sbh_SBHIconGridRangeValue;
- (uint64_t)sbh_SBHIconGridSizeValue;
- (uint64_t)sbh_SBIconCoordinateValue;
@end

@implementation NSValue(SBIconTypes)

- (double)sbh_SBIconImageInfoValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2 size:32];
  return *v2;
}

- (uint64_t)sbh_SBHIconGridSizeValue
{
  v2 = 0;
  [self getValue:&v2 size:4];
  return v2;
}

+ (id)sbh_valueWithSBHIconGridSize:()SBIconTypes
{
  v5 = a3;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:&v5 objCType:"{SBHIconGridSize=SS}"];

  return v3;
}

+ (id)sbh_valueWithSBIconImageInfo:()SBIconTypes
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{SBIconImageInfo={CGSize=dd}dd}"];

  return v4;
}

+ (id)sbh_valueWithSBIconCoordinate:()SBIconTypes
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{SBIconCoordinate=qq}"];

  return v4;
}

- (uint64_t)sbh_SBIconCoordinateValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return v2[0];
}

+ (id)sbh_valueWithSBHIconGridRange:()SBIconTypes
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{SBHIconGridRange=Q{SBHIconGridSize=SS}}"];

  return v4;
}

- (uint64_t)sbh_SBHIconGridRangeValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return v2[0];
}

@end