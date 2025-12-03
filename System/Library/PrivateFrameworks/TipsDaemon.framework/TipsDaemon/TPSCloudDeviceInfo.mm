@interface TPSCloudDeviceInfo
- (TPSCloudDeviceInfo)initWithDictionary:(id)dictionary;
- (TPSCloudDeviceInfo)initWithModel:(id)model;
- (id)debugDescription;
@end

@implementation TPSCloudDeviceInfo

- (TPSCloudDeviceInfo)initWithModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = TPSCloudDeviceInfo;
  v6 = [(TPSCloudDeviceInfo *)&v10 init];
  p_isa = &v6->super.super.isa;
  if (v6 && (objc_storeStrong(&v6->_model, model), ![p_isa[2] length]))
  {
    v8 = 0;
  }

  else
  {
    v8 = p_isa;
  }

  return v8;
}

- (TPSCloudDeviceInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = TPSCloudDeviceInfo;
  v5 = [(TPSCloudDeviceInfo *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"model"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_284826B40;
    }

    objc_storeStrong(&v5->_model, v8);

    v9 = [dictionaryCopy TPSSafeStringForKey:@"osMinVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v9;

    v11 = [dictionaryCopy TPSSafeStringForKey:@"osMaxVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v11;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v16.receiver = self;
  v16.super_class = TPSCloudDeviceInfo;
  v4 = [(TPSSerializableObject *)&v16 debugDescription];
  v5 = [v3 initWithString:v4];

  model = [(TPSCloudDeviceInfo *)self model];
  [v5 appendFormat:@"\n%@ = %@\n", @"model", model];

  [v5 appendFormat:@"%@ = %d\n", @"isPreferred", -[TPSCloudDeviceInfo isPreferred](self, "isPreferred")];
  minOSVersion = [(TPSCloudDeviceInfo *)self minOSVersion];

  if (minOSVersion)
  {
    minOSVersion2 = [(TPSCloudDeviceInfo *)self minOSVersion];
    [v5 appendFormat:@"%@ = %@\n", @"minOSVersion", minOSVersion2];
  }

  maxOSVersion = [(TPSCloudDeviceInfo *)self maxOSVersion];

  if (maxOSVersion)
  {
    maxOSVersion2 = [(TPSCloudDeviceInfo *)self maxOSVersion];
    [v5 appendFormat:@"%@ = %@\n", @"maxOSVersion", maxOSVersion2];
  }

  displayName = [(TPSCloudDeviceInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(TPSCloudDeviceInfo *)self displayName];
    [v5 appendFormat:@"%@ = %@\n", @"displayName", displayName2];
  }

  symbolIdentifier = [(TPSCloudDeviceInfo *)self symbolIdentifier];

  if (symbolIdentifier)
  {
    symbolIdentifier2 = [(TPSCloudDeviceInfo *)self symbolIdentifier];
    [v5 appendFormat:@"%@ = %@\n", @"symbolIdentifier", symbolIdentifier2];
  }

  return v5;
}

@end