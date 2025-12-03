@interface SFRemoteHotspotDevice(WiFiKit)
- (__CFString)cellularProtocolString;
@end

@implementation SFRemoteHotspotDevice(WiFiKit)

- (__CFString)cellularProtocolString
{
  networkType = [self networkType];
  if (networkType <= 2)
  {
    if (networkType)
    {
      if (networkType != 1)
      {
        if (networkType == 2)
        {
          v2 = @"GPRS";
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      v2 = @"1x";
    }

    else
    {
      v2 = wifikitBundle;
      if (wifikitBundle || ([MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WiFiKit.framework"], v3 = objc_claimAutoreleasedReturnValue(), v4 = wifikitBundle, wifikitBundle = v3, v4, (v2 = wifikitBundle) != 0))
      {
        v2 = [(__CFString *)v2 localizedStringForKey:@"kWFLocNoServiceHotspotTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      }
    }
  }

  else if (networkType > 5)
  {
    if (networkType != 6)
    {
      if (networkType == 8)
      {
        v2 = @"5G";
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    v2 = @"4G";
  }

  else
  {
    if (networkType != 3)
    {
      if (networkType == 4)
      {
        v2 = @"3G";
        goto LABEL_20;
      }

LABEL_16:
      v2 = @"LTE";
      goto LABEL_20;
    }

    v2 = @"EDGE";
  }

LABEL_20:

  return v2;
}

@end