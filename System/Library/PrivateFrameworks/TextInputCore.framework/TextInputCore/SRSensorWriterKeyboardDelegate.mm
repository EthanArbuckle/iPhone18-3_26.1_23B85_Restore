@interface SRSensorWriterKeyboardDelegate
- (id)classNameForSensorIdentifier:(id)identifier;
@end

@implementation SRSensorWriterKeyboardDelegate

- (id)classNameForSensorIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"com.apple.SensorKit.keyboardMetrics"])
  {
    return @"SRKeyboardMetrics";
  }

  else
  {
    return 0;
  }
}

@end