@interface NUAdjustment(PIModernPhotosPipeline)
- (uint64_t)isEnabled;
@end

@implementation NUAdjustment(PIModernPhotosPipeline)

- (uint64_t)isEnabled
{
  v1 = [self objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end