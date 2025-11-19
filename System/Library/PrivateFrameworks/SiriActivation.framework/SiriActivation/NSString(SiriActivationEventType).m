@interface NSString(SiriActivationEventType)
+ (__CFString)stringWithSiriActivationEventType:()SiriActivationEventType;
@end

@implementation NSString(SiriActivationEventType)

+ (__CFString)stringWithSiriActivationEventType:()SiriActivationEventType
{
  if ((a3 - 1) > 0xB)
  {
    return @"SiriActivationEventTypeButton";
  }

  else
  {
    return off_1E82F4008[a3 - 1];
  }
}

@end