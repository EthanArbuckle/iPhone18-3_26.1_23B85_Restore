@interface TPSInstalledAppInfo
- (TPSInstalledAppInfo)initWithDictionary:(id)dictionary;
- (id)debugDescription;
@end

@implementation TPSInstalledAppInfo

- (TPSInstalledAppInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = TPSInstalledAppInfo;
  v5 = [(TPSInstalledAppInfo *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"bundleId"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_284826B40;
    }

    objc_storeStrong(&v5->_bundleID, v8);

    v9 = [dictionaryCopy TPSSafeStringForKey:@"minVersion"];
    minVersion = v5->_minVersion;
    v5->_minVersion = v9;

    v11 = [dictionaryCopy TPSSafeStringForKey:@"maxVersion"];
    maxVersion = v5->_maxVersion;
    v5->_maxVersion = v11;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = TPSInstalledAppInfo;
  v4 = [(TPSSerializableObject *)&v10 debugDescription];
  v5 = [v3 initWithString:v4];

  bundleID = [(TPSInstalledAppInfo *)self bundleID];
  [v5 appendFormat:@"%@ = %@", @"bundleID", bundleID];

  minVersion = [(TPSInstalledAppInfo *)self minVersion];
  [v5 appendFormat:@"; %@ = %@", @"minVersion", minVersion];

  maxVersion = [(TPSInstalledAppInfo *)self maxVersion];
  [v5 appendFormat:@"; %@ = %@", @"maxVersion", maxVersion];

  return v5;
}

@end