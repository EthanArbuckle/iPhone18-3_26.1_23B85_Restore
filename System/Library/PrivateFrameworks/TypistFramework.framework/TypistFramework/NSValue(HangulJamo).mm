@interface NSValue(HangulJamo)
+ (id)valueWithHangulJamoTransformationData:()HangulJamo;
- (uint64_t)hangulJamoTransformationDataValue;
@end

@implementation NSValue(HangulJamo)

+ (id)valueWithHangulJamoTransformationData:()HangulJamo
{
  v5 = a3;
  v3 = [self valueWithBytes:&v5 objCType:"{?=ii}"];

  return v3;
}

- (uint64_t)hangulJamoTransformationDataValue
{
  v2 = 0;
  [self getValue:&v2];
  return v2;
}

@end