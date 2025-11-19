@interface TPSCloudDeviceInfo
- (TPSCloudDeviceInfo)initWithDictionary:(id)a3;
- (TPSCloudDeviceInfo)initWithModel:(id)a3;
- (id)debugDescription;
@end

@implementation TPSCloudDeviceInfo

- (TPSCloudDeviceInfo)initWithModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TPSCloudDeviceInfo;
  v6 = [(TPSCloudDeviceInfo *)&v10 init];
  p_isa = &v6->super.super.isa;
  if (v6 && (objc_storeStrong(&v6->_model, a3), ![p_isa[2] length]))
  {
    v8 = 0;
  }

  else
  {
    v8 = p_isa;
  }

  return v8;
}

- (TPSCloudDeviceInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TPSCloudDeviceInfo;
  v5 = [(TPSCloudDeviceInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 TPSSafeStringForKey:@"model"];
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

    v9 = [v4 TPSSafeStringForKey:@"osMinVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v9;

    v11 = [v4 TPSSafeStringForKey:@"osMaxVersion"];
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

  v6 = [(TPSCloudDeviceInfo *)self model];
  [v5 appendFormat:@"\n%@ = %@\n", @"model", v6];

  [v5 appendFormat:@"%@ = %d\n", @"isPreferred", -[TPSCloudDeviceInfo isPreferred](self, "isPreferred")];
  v7 = [(TPSCloudDeviceInfo *)self minOSVersion];

  if (v7)
  {
    v8 = [(TPSCloudDeviceInfo *)self minOSVersion];
    [v5 appendFormat:@"%@ = %@\n", @"minOSVersion", v8];
  }

  v9 = [(TPSCloudDeviceInfo *)self maxOSVersion];

  if (v9)
  {
    v10 = [(TPSCloudDeviceInfo *)self maxOSVersion];
    [v5 appendFormat:@"%@ = %@\n", @"maxOSVersion", v10];
  }

  v11 = [(TPSCloudDeviceInfo *)self displayName];

  if (v11)
  {
    v12 = [(TPSCloudDeviceInfo *)self displayName];
    [v5 appendFormat:@"%@ = %@\n", @"displayName", v12];
  }

  v13 = [(TPSCloudDeviceInfo *)self symbolIdentifier];

  if (v13)
  {
    v14 = [(TPSCloudDeviceInfo *)self symbolIdentifier];
    [v5 appendFormat:@"%@ = %@\n", @"symbolIdentifier", v14];
  }

  return v5;
}

@end