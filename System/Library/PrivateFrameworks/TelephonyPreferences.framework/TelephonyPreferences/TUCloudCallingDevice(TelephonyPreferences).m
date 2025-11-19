@interface TUCloudCallingDevice(TelephonyPreferences)
- (__CFString)tps_modelName;
@end

@implementation TUCloudCallingDevice(TelephonyPreferences)

- (__CFString)tps_modelName
{
  v1 = [a1 modelIdentifier];
  if ([v1 rangeOfString:@"iPod"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = @"iPad";
    if ([v1 rangeOfString:@"iPad"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = @"iPhone";
      if ([v1 rangeOfString:@"iPhone"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v2 = @"Mac";
        if ([v1 rangeOfString:@"Mac"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v1 rangeOfString:@"AppleTV"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v1 rangeOfString:@"Watch"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([v1 rangeOfString:@"AudioAccessory"] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v2 = @"HomePod";
              }
            }

            else
            {
              v2 = @"Apple Watch";
            }
          }

          else
          {
            v2 = @"Apple TV";
          }
        }
      }
    }
  }

  else
  {
    v2 = @"iPod touch";
  }

  return v2;
}

@end