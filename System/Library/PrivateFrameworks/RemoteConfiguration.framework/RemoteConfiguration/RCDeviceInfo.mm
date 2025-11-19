@interface RCDeviceInfo
+ (id)defaultDeviceInfo;
+ (id)defaultDeviceInfoWithAppVersion:(id)a3 formatVersion:(id)a4 seedNumber:(id)a5 buildNumber:(id)a6;
+ (id)defaultDeviceInfoWithPreferredLanguages:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8;
- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8 countryCode:(id)a9;
- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8 countryCode:(id)a9 formatVersion:(id)a10;
- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8 countryCode:(id)a9 formatVersion:(id)a10 seedNumber:(id)a11 buildNumber:(id)a12;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation RCDeviceInfo

+ (id)defaultDeviceInfo
{
  v3 = RCAppVersion();
  v4 = [a1 defaultDeviceInfoWithAppVersion:v3 formatVersion:0];

  return v4;
}

+ (id)defaultDeviceInfoWithAppVersion:(id)a3 formatVersion:(id)a4 seedNumber:(id)a5 buildNumber:(id)a6
{
  v9 = MEMORY[0x277CBEBB0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 localTimeZone];
  v24 = RCDeviceOSVersion();
  v15 = RCDeviceModelString();
  v16 = [MEMORY[0x277CBEAF8] currentLocale];
  v17 = [v16 countryCode];

  v18 = [RCDeviceInfo alloc];
  v19 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v20 = [v14 secondsFromGMT];
  [v14 daylightSavingTimeOffset];
  v22 = [(RCDeviceInfo *)v18 initWithPreferredLanguages:v19 deviceType:v15 utcOffset:v20 dstOffset:v21 appVersion:v13 osVersion:v24 countryCode:v17 formatVersion:v12 seedNumber:v11 buildNumber:v10];

  return v22;
}

+ (id)defaultDeviceInfoWithPreferredLanguages:(id)a3
{
  v4 = a3;
  v5 = RCAppVersion();
  v6 = [a1 defaultDeviceInfoWithAppVersion:v5 formatVersion:0];

  v7 = [RCDeviceInfo alloc];
  v8 = [v6 deviceType];
  v22 = [v6 utcOffset];
  v21 = [v6 dstOffset];
  v9 = [v6 appVersion];
  v10 = [v6 osVersion];
  v11 = [v6 countryCode];
  v12 = [v6 formatVersion];
  v13 = [v6 seedNumber];
  v14 = [v6 buildNumber];
  v15 = v7;
  v16 = v4;
  v17 = v4;
  v18 = v8;
  v19 = [(RCDeviceInfo *)v15 initWithPreferredLanguages:v17 deviceType:v8 utcOffset:v22 dstOffset:v21 appVersion:v9 osVersion:v10 countryCode:v11 formatVersion:v12 seedNumber:v13 buildNumber:v14];

  return v19;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = [RCDeviceInfo alloc];
  v19 = [MEMORY[0x277CBEAF8] currentLocale];
  v20 = [v19 countryCode];
  v21 = [(RCDeviceInfo *)v18 initWithPreferredLanguages:v17 deviceType:v16 utcOffset:a5 dstOffset:a6 appVersion:v15 osVersion:v14 countryCode:v20 formatVersion:0];

  return v21;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8 countryCode:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a4;
  v20 = a3;
  v21 = [[RCDeviceInfo alloc] initWithPreferredLanguages:v20 deviceType:v19 utcOffset:a5 dstOffset:a6 appVersion:v18 osVersion:v17 countryCode:v16 formatVersion:0];

  return v21;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8 countryCode:(id)a9 formatVersion:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a4;
  v22 = a3;
  v23 = [[RCDeviceInfo alloc] initWithPreferredLanguages:v22 deviceType:v21 utcOffset:a5 dstOffset:a6 appVersion:v20 osVersion:v19 countryCode:v18 formatVersion:v17 seedNumber:0 buildNumber:0];

  return v23;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)a3 deviceType:(id)a4 utcOffset:(int64_t)a5 dstOffset:(int64_t)a6 appVersion:(id)a7 osVersion:(id)a8 countryCode:(id)a9 formatVersion:(id)a10 seedNumber:(id)a11 buildNumber:(id)a12
{
  v45 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v46.receiver = self;
  v46.super_class = RCDeviceInfo;
  v25 = [(RCDeviceInfo *)&v46 init];
  if (v25)
  {
    v26 = [v45 copy];
    preferredLanguages = v25->_preferredLanguages;
    v25->_preferredLanguages = v26;

    v28 = [v18 copy];
    deviceType = v25->_deviceType;
    v25->_deviceType = v28;

    v30 = RCDeviceClassString();
    deviceClass = v25->_deviceClass;
    v25->_deviceClass = v30;

    v25->_utcOffset = a5;
    v25->_dstOffset = a6;
    v32 = [v19 copy];
    appVersion = v25->_appVersion;
    v25->_appVersion = v32;

    v34 = [v20 copy];
    osVersion = v25->_osVersion;
    v25->_osVersion = v34;

    v36 = [v21 copy];
    countryCode = v25->_countryCode;
    v25->_countryCode = v36;

    v38 = [v22 copy];
    formatVersion = v25->_formatVersion;
    v25->_formatVersion = v38;

    v40 = [v23 copy];
    seedNumber = v25->_seedNumber;
    v25->_seedNumber = v40;

    v42 = [v24 copy];
    buildNumber = v25->_buildNumber;
    v25->_buildNumber = v42;
  }

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCDeviceInfo *)self preferredLanguages];
    v7 = [v5 preferredLanguages];
    if ([v6 isEqual:v7])
    {
      v8 = [(RCDeviceInfo *)self deviceType];
      v9 = [v5 deviceType];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RCDeviceInfo *)self deviceClass];
        v11 = [v5 deviceClass];
        if ([v10 isEqualToString:v11] && (v12 = -[RCDeviceInfo utcOffset](self, "utcOffset"), v12 == objc_msgSend(v5, "utcOffset")) && (v13 = -[RCDeviceInfo dstOffset](self, "dstOffset"), v13 == objc_msgSend(v5, "dstOffset")))
        {
          v14 = [(RCDeviceInfo *)self appVersion];
          v36 = [v5 appVersion];
          v37 = v14;
          if ([v14 isEqualToString:v36])
          {
            v15 = [(RCDeviceInfo *)self osVersion];
            v34 = [v5 osVersion];
            v35 = v15;
            if ([v15 isEqualToString:v34])
            {
              v32 = MEMORY[0x277CCACA8];
              v16 = [(RCDeviceInfo *)self formatVersion];
              v17 = [v5 formatVersion];
              v18 = v32;
              v31 = v17;
              v33 = v16;
              if ([v18 rc_string:v16 isEqualToString:v17])
              {
                v29 = MEMORY[0x277CCACA8];
                v19 = [(RCDeviceInfo *)self seedNumber];
                v20 = [v5 seedNumber];
                v21 = v29;
                v30 = v19;
                v22 = v19;
                v23 = v20;
                if ([v21 rc_string:v22 isEqualToString:v20])
                {
                  v28 = MEMORY[0x277CCACA8];
                  v27 = [(RCDeviceInfo *)self buildNumber];
                  v26 = [v5 buildNumber];
                  v24 = [v28 rc_string:v27 isEqualToString:v26];
                }

                else
                {
                  v24 = 0;
                }
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (unint64_t)hash
{
  v23 = [(RCDeviceInfo *)self preferredLanguages];
  v3 = [v23 hash];
  v22 = [(RCDeviceInfo *)self deviceType];
  v4 = [v22 hash] ^ v3;
  v5 = [(RCDeviceInfo *)self deviceClass];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo utcOffset](self, "utcOffset")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo dstOffset](self, "dstOffset")}];
  v10 = [v9 hash];
  v11 = [(RCDeviceInfo *)self appVersion];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [(RCDeviceInfo *)self osVersion];
  v14 = [v13 hash];
  v15 = [(RCDeviceInfo *)self formatVersion];
  v16 = v14 ^ [v15 hash];
  v17 = [(RCDeviceInfo *)self seedNumber];
  v18 = v16 ^ [v17 hash];
  v19 = [(RCDeviceInfo *)self buildNumber];
  v20 = v18 ^ [v19 hash];

  return v12 ^ v20;
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v3 = [(RCDeviceInfo *)self preferredLanguages];
  v4 = [(RCDeviceInfo *)self deviceType];
  v5 = [(RCDeviceInfo *)self deviceClass];
  v14 = [(RCDeviceInfo *)self utcOffset];
  v6 = [(RCDeviceInfo *)self dstOffset];
  v7 = [(RCDeviceInfo *)self appVersion];
  v8 = [(RCDeviceInfo *)self osVersion];
  v9 = [(RCDeviceInfo *)self formatVersion];
  v10 = [(RCDeviceInfo *)self seedNumber];
  v11 = [(RCDeviceInfo *)self buildNumber];
  v12 = [v16 stringWithFormat:@"<%@: %p preferredLanguages: %@\n deviceType: %@\n deviceClass: %@\n utcOffset: %ld\n dstOffset: %ld\n appVersion: %@\n osVersion: %@\n formatVersion: %@\n seedNumber: %@\n buildNumber: %@>", v15, self, v3, v4, v5, v14, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(RCDeviceInfo *)self preferredLanguages];
  [v3 rc_safelySetObjectAllowingNil:v4 forKey:@"preferredLanguages"];

  v5 = [(RCDeviceInfo *)self deviceType];
  [v3 rc_safelySetObjectAllowingNil:v5 forKey:@"deviceType"];

  v6 = [(RCDeviceInfo *)self deviceClass];
  [v3 rc_safelySetObjectAllowingNil:v6 forKey:@"deviceClass"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo utcOffset](self, "utcOffset")}];
  [v3 rc_safelySetObjectAllowingNil:v7 forKey:@"utcOffsetSecs"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo dstOffset](self, "dstOffset")}];
  [v3 rc_safelySetObjectAllowingNil:v8 forKey:@"dstOffsetSecs"];

  v9 = [(RCDeviceInfo *)self appVersion];
  [v3 rc_safelySetObjectAllowingNil:v9 forKey:@"appVersion"];

  v10 = [(RCDeviceInfo *)self osVersion];
  [v3 rc_safelySetObjectAllowingNil:v10 forKey:@"osVersion"];

  v11 = [(RCDeviceInfo *)self countryCode];
  [v3 rc_safelySetObjectAllowingNil:v11 forKey:@"countryCode"];

  v12 = [(RCDeviceInfo *)self formatVersion];
  [v3 rc_safelySetObjectAllowingNil:v12 forKey:@"formatVersion"];

  v13 = [(RCDeviceInfo *)self seedNumber];
  [v3 rc_safelySetObjectAllowingNil:v13 forKey:@"seedNumber"];

  v14 = [(RCDeviceInfo *)self buildNumber];
  [v3 rc_safelySetObjectAllowingNil:v14 forKey:@"buildNumber"];

  v15 = MEMORY[0x277CCABB0];
  if (RCIsInternalBuild_onceToken != -1)
  {
    [RCDeviceInfo dictionaryRepresentation];
  }

  v16 = [v15 numberWithBool:RCIsInternalBuild_internalBuild];
  [v3 rc_safelySetObjectAllowingNil:v16 forKey:@"isInternal"];

  v17 = [v3 copy];

  return v17;
}

@end