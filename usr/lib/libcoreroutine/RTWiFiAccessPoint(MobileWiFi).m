@interface RTWiFiAccessPoint(MobileWiFi)
- (id)initWithWiFiNetwork:()MobileWiFi;
@end

@implementation RTWiFiAccessPoint(MobileWiFi)

- (id)initWithWiFiNetwork:()MobileWiFi
{
  if (a3)
  {
    v4 = WiFiNetworkGetProperty();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }

    v5 = WiFiNetworkGetProperty();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v5)
      {
        v6 = 0x8000000000000000;
LABEL_10:
        v8 = WiFiNetworkGetProperty();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v8)
          {
            v9 = 0x8000000000000000;
LABEL_15:
            v10 = WiFiNetworkGetProperty();
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v10)
              {
                v11 = INFINITY;
                goto LABEL_20;
              }

              v11 = [v10 integerValue] / 1000.0;
            }

            else
            {
              v11 = INFINITY;
            }

LABEL_20:
            v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v11];
            a1 = [a1 initWithMac:v4 rssi:v6 channel:v9 age:v12 date:v11];

            v7 = a1;
            goto LABEL_21;
          }

          v9 = [v8 integerValue];
        }

        else
        {
          v9 = 0x8000000000000000;
        }

        goto LABEL_15;
      }

      v6 = [v5 integerValue];
    }

    else
    {
      v6 = 0x8000000000000000;
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_21:

  return v7;
}

@end