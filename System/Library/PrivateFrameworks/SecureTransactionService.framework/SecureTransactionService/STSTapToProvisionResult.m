@interface STSTapToProvisionResult
+ (id)fromOR:(id)a3;
+ (id)nameFromRid:(id)a3;
- (STSTapToProvisionResult)initWithProvisionDataBlob:(id)a3 casdCertificate:(id)a4 networkName:(id)a5;
@end

@implementation STSTapToProvisionResult

- (STSTapToProvisionResult)initWithProvisionDataBlob:(id)a3 casdCertificate:(id)a4 networkName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = STSTapToProvisionResult;
  v12 = [(STSTapToProvisionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provisionDataBlob, a3);
    objc_storeStrong(&v13->_casdCertificate, a4);
    objc_storeStrong(&v13->_networkName, a5);
  }

  return v13;
}

+ (id)fromOR:(id)a3
{
  v4 = a3;
  v5 = [STSTapToProvisionResult alloc];
  v6 = [v4 provisionDataBlob];
  v7 = [v4 casdCertificate];
  v8 = [v4 rid];

  v9 = [a1 nameFromRid:v8];
  v10 = [(STSTapToProvisionResult *)v5 initWithProvisionDataBlob:v6 casdCertificate:v7 networkName:v9];

  return v10;
}

+ (id)nameFromRid:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"A000000003"])
  {
    v4 = @"STSNetworkNameVisa";
  }

  else if ([v3 isEqualToString:@"A000000004"])
  {
    v4 = @"STSNetworkNameMastercard";
  }

  else if ([v3 isEqualToString:@"A000000025"])
  {
    v4 = @"STSNetworkNameAmex";
  }

  else if ([v3 isEqualToString:@"A000000152"])
  {
    v4 = @"STSNetworkNameDiscover";
  }

  else
  {
    sub_265398190(OS_LOG_TYPE_ERROR, 0, "+[STSTapToProvisionResult nameFromRid:]", 71, @"Unknown RID %@", v5, v6, v7, v3);
    v4 = @"STSNetworkNameUnknown";
  }

  return v4;
}

@end