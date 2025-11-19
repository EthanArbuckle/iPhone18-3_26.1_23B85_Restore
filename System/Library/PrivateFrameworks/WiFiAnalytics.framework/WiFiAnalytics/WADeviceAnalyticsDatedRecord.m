@interface WADeviceAnalyticsDatedRecord
- (id)description;
@end

@implementation WADeviceAnalyticsDatedRecord

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WADeviceAnalyticsDatedRecord *)self entity];
  v5 = [v4 name];
  v6 = [(WADeviceAnalyticsDatedRecord *)self date];
  v7 = [v3 stringWithFormat:@"%@ at %@", v5, v6];

  return v7;
}

@end