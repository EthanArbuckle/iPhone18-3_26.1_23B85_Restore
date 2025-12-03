@interface NSMeasurement(VGExtras)
- (uint64_t)compare:()VGExtras;
@end

@implementation NSMeasurement(VGExtras)

- (uint64_t)compare:()VGExtras
{
  v4 = a3;
  unit = [v4 unit];
  v6 = [self measurementByConvertingToUnit:unit];
  [v6 doubleValue];
  v8 = v7;

  [v4 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [v11 compare:v12];

  return v13;
}

@end