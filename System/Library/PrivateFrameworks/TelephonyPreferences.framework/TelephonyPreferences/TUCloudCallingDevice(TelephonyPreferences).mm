@interface TUCloudCallingDevice(TelephonyPreferences)
- (__CFString)tps_modelName;
@end

@implementation TUCloudCallingDevice(TelephonyPreferences)

- (__CFString)tps_modelName
{
  modelIdentifier = [self modelIdentifier];
  if ([modelIdentifier rangeOfString:@"iPod"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = @"iPad";
    if ([modelIdentifier rangeOfString:@"iPad"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = @"iPhone";
      if ([modelIdentifier rangeOfString:@"iPhone"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v2 = @"Mac";
        if ([modelIdentifier rangeOfString:@"Mac"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([modelIdentifier rangeOfString:@"AppleTV"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([modelIdentifier rangeOfString:@"Watch"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([modelIdentifier rangeOfString:@"AudioAccessory"] != 0x7FFFFFFFFFFFFFFFLL)
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