@interface RCDeviceInfo
+ (id)defaultDeviceInfo;
+ (id)defaultDeviceInfoWithAppVersion:(id)version formatVersion:(id)formatVersion seedNumber:(id)number buildNumber:(id)buildNumber;
+ (id)defaultDeviceInfoWithPreferredLanguages:(id)languages;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion;
- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion countryCode:(id)code;
- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion countryCode:(id)code formatVersion:(id)self0;
- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion countryCode:(id)code formatVersion:(id)self0 seedNumber:(id)self1 buildNumber:(id)self2;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation RCDeviceInfo

+ (id)defaultDeviceInfo
{
  v3 = RCAppVersion();
  v4 = [self defaultDeviceInfoWithAppVersion:v3 formatVersion:0];

  return v4;
}

+ (id)defaultDeviceInfoWithAppVersion:(id)version formatVersion:(id)formatVersion seedNumber:(id)number buildNumber:(id)buildNumber
{
  v9 = MEMORY[0x277CBEBB0];
  buildNumberCopy = buildNumber;
  numberCopy = number;
  formatVersionCopy = formatVersion;
  versionCopy = version;
  localTimeZone = [v9 localTimeZone];
  v24 = RCDeviceOSVersion();
  v15 = RCDeviceModelString();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  v18 = [RCDeviceInfo alloc];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  [localTimeZone daylightSavingTimeOffset];
  v22 = [(RCDeviceInfo *)v18 initWithPreferredLanguages:preferredLanguages deviceType:v15 utcOffset:secondsFromGMT dstOffset:v21 appVersion:versionCopy osVersion:v24 countryCode:countryCode formatVersion:formatVersionCopy seedNumber:numberCopy buildNumber:buildNumberCopy];

  return v22;
}

+ (id)defaultDeviceInfoWithPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = RCAppVersion();
  v6 = [self defaultDeviceInfoWithAppVersion:v5 formatVersion:0];

  v7 = [RCDeviceInfo alloc];
  deviceType = [v6 deviceType];
  utcOffset = [v6 utcOffset];
  dstOffset = [v6 dstOffset];
  appVersion = [v6 appVersion];
  osVersion = [v6 osVersion];
  countryCode = [v6 countryCode];
  formatVersion = [v6 formatVersion];
  seedNumber = [v6 seedNumber];
  buildNumber = [v6 buildNumber];
  v15 = v7;
  v16 = languagesCopy;
  v17 = languagesCopy;
  v18 = deviceType;
  v19 = [(RCDeviceInfo *)v15 initWithPreferredLanguages:v17 deviceType:deviceType utcOffset:utcOffset dstOffset:dstOffset appVersion:appVersion osVersion:osVersion countryCode:countryCode formatVersion:formatVersion seedNumber:seedNumber buildNumber:buildNumber];

  return v19;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion
{
  osVersionCopy = osVersion;
  versionCopy = version;
  typeCopy = type;
  languagesCopy = languages;
  v18 = [RCDeviceInfo alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  v21 = [(RCDeviceInfo *)v18 initWithPreferredLanguages:languagesCopy deviceType:typeCopy utcOffset:offset dstOffset:dstOffset appVersion:versionCopy osVersion:osVersionCopy countryCode:countryCode formatVersion:0];

  return v21;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion countryCode:(id)code
{
  codeCopy = code;
  osVersionCopy = osVersion;
  versionCopy = version;
  typeCopy = type;
  languagesCopy = languages;
  v21 = [[RCDeviceInfo alloc] initWithPreferredLanguages:languagesCopy deviceType:typeCopy utcOffset:offset dstOffset:dstOffset appVersion:versionCopy osVersion:osVersionCopy countryCode:codeCopy formatVersion:0];

  return v21;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion countryCode:(id)code formatVersion:(id)self0
{
  formatVersionCopy = formatVersion;
  codeCopy = code;
  osVersionCopy = osVersion;
  versionCopy = version;
  typeCopy = type;
  languagesCopy = languages;
  v23 = [[RCDeviceInfo alloc] initWithPreferredLanguages:languagesCopy deviceType:typeCopy utcOffset:offset dstOffset:dstOffset appVersion:versionCopy osVersion:osVersionCopy countryCode:codeCopy formatVersion:formatVersionCopy seedNumber:0 buildNumber:0];

  return v23;
}

- (RCDeviceInfo)initWithPreferredLanguages:(id)languages deviceType:(id)type utcOffset:(int64_t)offset dstOffset:(int64_t)dstOffset appVersion:(id)version osVersion:(id)osVersion countryCode:(id)code formatVersion:(id)self0 seedNumber:(id)self1 buildNumber:(id)self2
{
  languagesCopy = languages;
  typeCopy = type;
  versionCopy = version;
  osVersionCopy = osVersion;
  codeCopy = code;
  formatVersionCopy = formatVersion;
  numberCopy = number;
  buildNumberCopy = buildNumber;
  v46.receiver = self;
  v46.super_class = RCDeviceInfo;
  v25 = [(RCDeviceInfo *)&v46 init];
  if (v25)
  {
    v26 = [languagesCopy copy];
    preferredLanguages = v25->_preferredLanguages;
    v25->_preferredLanguages = v26;

    v28 = [typeCopy copy];
    deviceType = v25->_deviceType;
    v25->_deviceType = v28;

    v30 = RCDeviceClassString();
    deviceClass = v25->_deviceClass;
    v25->_deviceClass = v30;

    v25->_utcOffset = offset;
    v25->_dstOffset = dstOffset;
    v32 = [versionCopy copy];
    appVersion = v25->_appVersion;
    v25->_appVersion = v32;

    v34 = [osVersionCopy copy];
    osVersion = v25->_osVersion;
    v25->_osVersion = v34;

    v36 = [codeCopy copy];
    countryCode = v25->_countryCode;
    v25->_countryCode = v36;

    v38 = [formatVersionCopy copy];
    formatVersion = v25->_formatVersion;
    v25->_formatVersion = v38;

    v40 = [numberCopy copy];
    seedNumber = v25->_seedNumber;
    v25->_seedNumber = v40;

    v42 = [buildNumberCopy copy];
    buildNumber = v25->_buildNumber;
    v25->_buildNumber = v42;
  }

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    preferredLanguages = [(RCDeviceInfo *)self preferredLanguages];
    preferredLanguages2 = [v5 preferredLanguages];
    if ([preferredLanguages isEqual:preferredLanguages2])
    {
      deviceType = [(RCDeviceInfo *)self deviceType];
      deviceType2 = [v5 deviceType];
      if ([deviceType isEqualToString:deviceType2])
      {
        deviceClass = [(RCDeviceInfo *)self deviceClass];
        deviceClass2 = [v5 deviceClass];
        if ([deviceClass isEqualToString:deviceClass2] && (v12 = -[RCDeviceInfo utcOffset](self, "utcOffset"), v12 == objc_msgSend(v5, "utcOffset")) && (v13 = -[RCDeviceInfo dstOffset](self, "dstOffset"), v13 == objc_msgSend(v5, "dstOffset")))
        {
          appVersion = [(RCDeviceInfo *)self appVersion];
          appVersion2 = [v5 appVersion];
          v37 = appVersion;
          if ([appVersion isEqualToString:appVersion2])
          {
            osVersion = [(RCDeviceInfo *)self osVersion];
            osVersion2 = [v5 osVersion];
            v35 = osVersion;
            if ([osVersion isEqualToString:osVersion2])
            {
              v32 = MEMORY[0x277CCACA8];
              formatVersion = [(RCDeviceInfo *)self formatVersion];
              formatVersion2 = [v5 formatVersion];
              v18 = v32;
              v31 = formatVersion2;
              v33 = formatVersion;
              if ([v18 rc_string:formatVersion isEqualToString:formatVersion2])
              {
                v29 = MEMORY[0x277CCACA8];
                seedNumber = [(RCDeviceInfo *)self seedNumber];
                seedNumber2 = [v5 seedNumber];
                v21 = v29;
                v30 = seedNumber;
                v22 = seedNumber;
                v23 = seedNumber2;
                if ([v21 rc_string:v22 isEqualToString:seedNumber2])
                {
                  v28 = MEMORY[0x277CCACA8];
                  buildNumber = [(RCDeviceInfo *)self buildNumber];
                  buildNumber2 = [v5 buildNumber];
                  v24 = [v28 rc_string:buildNumber isEqualToString:buildNumber2];
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
  preferredLanguages = [(RCDeviceInfo *)self preferredLanguages];
  v3 = [preferredLanguages hash];
  deviceType = [(RCDeviceInfo *)self deviceType];
  v4 = [deviceType hash] ^ v3;
  deviceClass = [(RCDeviceInfo *)self deviceClass];
  v6 = v4 ^ [deviceClass hash];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo utcOffset](self, "utcOffset")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo dstOffset](self, "dstOffset")}];
  v10 = [v9 hash];
  appVersion = [(RCDeviceInfo *)self appVersion];
  v12 = v8 ^ v10 ^ [appVersion hash];
  osVersion = [(RCDeviceInfo *)self osVersion];
  v14 = [osVersion hash];
  formatVersion = [(RCDeviceInfo *)self formatVersion];
  v16 = v14 ^ [formatVersion hash];
  seedNumber = [(RCDeviceInfo *)self seedNumber];
  v18 = v16 ^ [seedNumber hash];
  buildNumber = [(RCDeviceInfo *)self buildNumber];
  v20 = v18 ^ [buildNumber hash];

  return v12 ^ v20;
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  preferredLanguages = [(RCDeviceInfo *)self preferredLanguages];
  deviceType = [(RCDeviceInfo *)self deviceType];
  deviceClass = [(RCDeviceInfo *)self deviceClass];
  utcOffset = [(RCDeviceInfo *)self utcOffset];
  dstOffset = [(RCDeviceInfo *)self dstOffset];
  appVersion = [(RCDeviceInfo *)self appVersion];
  osVersion = [(RCDeviceInfo *)self osVersion];
  formatVersion = [(RCDeviceInfo *)self formatVersion];
  seedNumber = [(RCDeviceInfo *)self seedNumber];
  buildNumber = [(RCDeviceInfo *)self buildNumber];
  v12 = [v16 stringWithFormat:@"<%@: %p preferredLanguages: %@\n deviceType: %@\n deviceClass: %@\n utcOffset: %ld\n dstOffset: %ld\n appVersion: %@\n osVersion: %@\n formatVersion: %@\n seedNumber: %@\n buildNumber: %@>", v15, self, preferredLanguages, deviceType, deviceClass, utcOffset, dstOffset, appVersion, osVersion, formatVersion, seedNumber, buildNumber];;

  return v12;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  preferredLanguages = [(RCDeviceInfo *)self preferredLanguages];
  [dictionary rc_safelySetObjectAllowingNil:preferredLanguages forKey:@"preferredLanguages"];

  deviceType = [(RCDeviceInfo *)self deviceType];
  [dictionary rc_safelySetObjectAllowingNil:deviceType forKey:@"deviceType"];

  deviceClass = [(RCDeviceInfo *)self deviceClass];
  [dictionary rc_safelySetObjectAllowingNil:deviceClass forKey:@"deviceClass"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo utcOffset](self, "utcOffset")}];
  [dictionary rc_safelySetObjectAllowingNil:v7 forKey:@"utcOffsetSecs"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RCDeviceInfo dstOffset](self, "dstOffset")}];
  [dictionary rc_safelySetObjectAllowingNil:v8 forKey:@"dstOffsetSecs"];

  appVersion = [(RCDeviceInfo *)self appVersion];
  [dictionary rc_safelySetObjectAllowingNil:appVersion forKey:@"appVersion"];

  osVersion = [(RCDeviceInfo *)self osVersion];
  [dictionary rc_safelySetObjectAllowingNil:osVersion forKey:@"osVersion"];

  countryCode = [(RCDeviceInfo *)self countryCode];
  [dictionary rc_safelySetObjectAllowingNil:countryCode forKey:@"countryCode"];

  formatVersion = [(RCDeviceInfo *)self formatVersion];
  [dictionary rc_safelySetObjectAllowingNil:formatVersion forKey:@"formatVersion"];

  seedNumber = [(RCDeviceInfo *)self seedNumber];
  [dictionary rc_safelySetObjectAllowingNil:seedNumber forKey:@"seedNumber"];

  buildNumber = [(RCDeviceInfo *)self buildNumber];
  [dictionary rc_safelySetObjectAllowingNil:buildNumber forKey:@"buildNumber"];

  v15 = MEMORY[0x277CCABB0];
  if (RCIsInternalBuild_onceToken != -1)
  {
    [RCDeviceInfo dictionaryRepresentation];
  }

  v16 = [v15 numberWithBool:RCIsInternalBuild_internalBuild];
  [dictionary rc_safelySetObjectAllowingNil:v16 forKey:@"isInternal"];

  v17 = [dictionary copy];

  return v17;
}

@end