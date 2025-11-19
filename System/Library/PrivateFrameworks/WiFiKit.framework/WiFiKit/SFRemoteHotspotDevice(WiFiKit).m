@interface SFRemoteHotspotDevice(WiFiKit)
- (__CFString)cellularProtocolString;
@end

@implementation SFRemoteHotspotDevice(WiFiKit)

- (__CFString)cellularProtocolString
{
  v1 = [a1 networkType];
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        if (v1 == 2)
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

  else if (v1 > 5)
  {
    if (v1 != 6)
    {
      if (v1 == 8)
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
    if (v1 != 3)
    {
      if (v1 == 4)
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