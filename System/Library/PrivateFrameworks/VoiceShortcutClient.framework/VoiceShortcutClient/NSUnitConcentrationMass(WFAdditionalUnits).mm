@interface NSUnitConcentrationMass(WFAdditionalUnits)
+ (id)wf_microgramsPerCubicMeter;
@end

@implementation NSUnitConcentrationMass(WFAdditionalUnits)

+ (id)wf_microgramsPerCubicMeter
{
  v0 = [objc_alloc(MEMORY[0x1E696AFF8]) initWithCoefficient:0.000000001];
  v1 = [objc_alloc(MEMORY[0x1E696AFF0]) initWithSymbol:@"μg/m³" converter:v0];

  return v1;
}

@end