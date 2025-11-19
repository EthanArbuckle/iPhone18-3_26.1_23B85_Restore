@interface SRSensorWriterKeyboardDelegate
- (id)classNameForSensorIdentifier:(id)a3;
@end

@implementation SRSensorWriterKeyboardDelegate

- (id)classNameForSensorIdentifier:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.SensorKit.keyboardMetrics"])
  {
    return @"SRKeyboardMetrics";
  }

  else
  {
    return 0;
  }
}

@end