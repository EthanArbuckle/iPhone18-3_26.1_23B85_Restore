@interface STSTapToProvisionAppletData
+ (id)fromOR:(id)a3;
- (STSTapToProvisionAppletData)initWithVersion:(id)a3;
@end

@implementation STSTapToProvisionAppletData

- (STSTapToProvisionAppletData)initWithVersion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STSTapToProvisionAppletData;
  v6 = [(STSTapToProvisionAppletData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_version, a3);
  }

  return v7;
}

+ (id)fromOR:(id)a3
{
  v3 = a3;
  v4 = [STSTapToProvisionAppletData alloc];
  v5 = [v3 provisionAppletVersion];

  v6 = [(STSTapToProvisionAppletData *)v4 initWithVersion:v5];

  return v6;
}

@end