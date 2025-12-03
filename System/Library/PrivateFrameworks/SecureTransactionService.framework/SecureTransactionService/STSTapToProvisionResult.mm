@interface STSTapToProvisionResult
+ (id)fromOR:(id)r;
+ (id)nameFromRid:(id)rid;
- (STSTapToProvisionResult)initWithProvisionDataBlob:(id)blob casdCertificate:(id)certificate networkName:(id)name;
@end

@implementation STSTapToProvisionResult

- (STSTapToProvisionResult)initWithProvisionDataBlob:(id)blob casdCertificate:(id)certificate networkName:(id)name
{
  blobCopy = blob;
  certificateCopy = certificate;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = STSTapToProvisionResult;
  v12 = [(STSTapToProvisionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provisionDataBlob, blob);
    objc_storeStrong(&v13->_casdCertificate, certificate);
    objc_storeStrong(&v13->_networkName, name);
  }

  return v13;
}

+ (id)fromOR:(id)r
{
  rCopy = r;
  v5 = [STSTapToProvisionResult alloc];
  provisionDataBlob = [rCopy provisionDataBlob];
  casdCertificate = [rCopy casdCertificate];
  v8 = [rCopy rid];

  v9 = [self nameFromRid:v8];
  v10 = [(STSTapToProvisionResult *)v5 initWithProvisionDataBlob:provisionDataBlob casdCertificate:casdCertificate networkName:v9];

  return v10;
}

+ (id)nameFromRid:(id)rid
{
  ridCopy = rid;
  if ([ridCopy isEqualToString:@"A000000003"])
  {
    v4 = @"STSNetworkNameVisa";
  }

  else if ([ridCopy isEqualToString:@"A000000004"])
  {
    v4 = @"STSNetworkNameMastercard";
  }

  else if ([ridCopy isEqualToString:@"A000000025"])
  {
    v4 = @"STSNetworkNameAmex";
  }

  else if ([ridCopy isEqualToString:@"A000000152"])
  {
    v4 = @"STSNetworkNameDiscover";
  }

  else
  {
    sub_265398190(OS_LOG_TYPE_ERROR, 0, "+[STSTapToProvisionResult nameFromRid:]", 71, @"Unknown RID %@", v5, v6, v7, ridCopy);
    v4 = @"STSNetworkNameUnknown";
  }

  return v4;
}

@end