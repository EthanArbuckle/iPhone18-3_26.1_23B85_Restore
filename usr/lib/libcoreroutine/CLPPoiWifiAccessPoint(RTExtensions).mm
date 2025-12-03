@interface CLPPoiWifiAccessPoint(RTExtensions)
- (id)length12StringForMac:()RTExtensions;
- (void)initWithRTWifiAccessPoint:()RTExtensions;
@end

@implementation CLPPoiWifiAccessPoint(RTExtensions)

- (void)initWithRTWifiAccessPoint:()RTExtensions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    [v4 age];
    [v5 setAge:?];
    date = [v4 date];
    [date timeIntervalSinceReferenceDate];
    [v5 setScanTimestamp:?];

    [v5 setChannel:{objc_msgSend(v4, "channel")}];
    v7 = [v4 mac];
    v8 = [self length12StringForMac:v7];
    if (v8)
    {
      [v5 setMac:v8];
    }

    else
    {
      v10 = [v4 mac];
      [v5 setMac:v10];
    }

    [v5 setRssi:{objc_msgSend(v4, "rssi")}];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CLPPoiWifiAccessPoint(RTExtensions) initWithRTWifiAccessPoint:]";
      v14 = 1024;
      v15 = 231;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: rtWifiAccessPoint (in %s:%d)", &v12, 0x12u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)length12StringForMac:()RTExtensions
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 componentsSeparatedByString:@":"];
  if ([v3 count] == 6)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 length] != 2)
          {
            if ([v10 length] != 1)
            {

              v11 = 0;
              goto LABEL_15;
            }

            [v4 appendString:@"0"];
          }

          [v4 appendString:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = v4;
LABEL_15:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end