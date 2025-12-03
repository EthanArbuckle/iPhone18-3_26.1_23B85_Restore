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
        integerValue2 = 0x8000000000000000;
LABEL_10:
        v8 = WiFiNetworkGetProperty();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v8)
          {
            integerValue = 0x8000000000000000;
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
            self = [self initWithMac:v4 rssi:integerValue2 channel:integerValue age:v12 date:v11];

            selfCopy = self;
            goto LABEL_21;
          }

          integerValue = [v8 integerValue];
        }

        else
        {
          integerValue = 0x8000000000000000;
        }

        goto LABEL_15;
      }

      integerValue2 = [v5 integerValue];
    }

    else
    {
      integerValue2 = 0x8000000000000000;
    }

    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_21:

  return selfCopy;
}

@end