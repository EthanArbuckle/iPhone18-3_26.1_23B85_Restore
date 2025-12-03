@interface WADeviceAnalyticsDatedRecord
- (id)description;
@end

@implementation WADeviceAnalyticsDatedRecord

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entity = [(WADeviceAnalyticsDatedRecord *)self entity];
  name = [entity name];
  date = [(WADeviceAnalyticsDatedRecord *)self date];
  v7 = [v3 stringWithFormat:@"%@ at %@", name, date];

  return v7;
}

@end