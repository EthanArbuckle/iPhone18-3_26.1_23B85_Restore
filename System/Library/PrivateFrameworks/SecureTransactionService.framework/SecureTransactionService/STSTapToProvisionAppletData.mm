@interface STSTapToProvisionAppletData
+ (id)fromOR:(id)r;
- (STSTapToProvisionAppletData)initWithVersion:(id)version;
@end

@implementation STSTapToProvisionAppletData

- (STSTapToProvisionAppletData)initWithVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = STSTapToProvisionAppletData;
  v6 = [(STSTapToProvisionAppletData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_version, version);
  }

  return v7;
}

+ (id)fromOR:(id)r
{
  rCopy = r;
  v4 = [STSTapToProvisionAppletData alloc];
  provisionAppletVersion = [rCopy provisionAppletVersion];

  v6 = [(STSTapToProvisionAppletData *)v4 initWithVersion:provisionAppletVersion];

  return v6;
}

@end