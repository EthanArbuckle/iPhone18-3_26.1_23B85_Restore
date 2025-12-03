@interface SFPeerDevice
+ (id)deviceTypeForModelIdentifier:(id)identifier;
+ (id)peerForSelf;
+ (id)testPeerForModel:(id)model;
- (NSString)deviceType;
- (id)copy;
@end

@implementation SFPeerDevice

+ (id)peerForSelf
{
  bzero(&v12, 0x500uLL);
  uname(&v12);
  v2 = objc_alloc_init(SFPeerDevice);
  v3 = sub_1000174B8();
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  [v2 setUniqueID:uUIDString];

  v6 = [NSString stringWithCString:v12.machine encoding:4];
  [v2 setModelIdentifier:v6];

  v7 = [v3 objectForKeyedSubscript:@"ProductName"];
  [v2 setProductName:v7];

  v8 = [v3 objectForKeyedSubscript:@"ProductVersion"];
  [v2 setProductVersion:v8];

  v9 = [v3 objectForKeyedSubscript:@"ProductBuildVersion"];
  [v2 setProductBuildVersion:v9];

  v10 = [NSString stringWithCString:v12.nodename encoding:4];
  [v2 setName:v10];

  [v2 setDeviceColor:&stru_1000C67D0];
  [v2 setEnclosureColor:&stru_1000C67D0];

  return v2;
}

+ (id)testPeerForModel:(id)model
{
  bzero(&v13, 0x500uLL);
  modelCopy = model;
  uname(&v13);
  v5 = objc_alloc_init(SFPeerDevice);
  v6 = sub_1000174B8();
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];
  [v5 setUniqueID:uUIDString];

  [v5 setModelIdentifier:modelCopy];
  v9 = [v6 objectForKeyedSubscript:@"ProductName"];
  [v5 setProductName:v9];

  v10 = [v6 objectForKeyedSubscript:@"ProductVersion"];
  [v5 setProductVersion:v10];

  v11 = [v6 objectForKeyedSubscript:@"ProductBuildVersion"];
  [v5 setProductBuildVersion:v11];

  [v5 setName:@"UA Test Peer"];
  [v5 setDeviceColor:&stru_1000C67D0];
  [v5 setEnclosureColor:&stru_1000C67D0];

  return v5;
}

- (id)copy
{
  v3 = objc_alloc_init(SFPeerDevice);
  uniqueID = [(SFPeerDevice *)self uniqueID];
  v5 = [uniqueID copy];
  [v3 setUniqueID:v5];

  modelIdentifier = [(SFPeerDevice *)self modelIdentifier];
  v7 = [modelIdentifier copy];
  [v3 setModelIdentifier:v7];

  productName = [(SFPeerDevice *)self productName];
  v9 = [productName copy];
  [v3 setProductName:v9];

  productVersion = [(SFPeerDevice *)self productVersion];
  v11 = [productVersion copy];
  [v3 setProductVersion:v11];

  productBuildVersion = [(SFPeerDevice *)self productBuildVersion];
  v13 = [productBuildVersion copy];
  [v3 setProductBuildVersion:v13];

  name = [(SFPeerDevice *)self name];
  v15 = [name copy];
  [v3 setName:v15];

  deviceColor = [(SFPeerDevice *)self deviceColor];
  v17 = [deviceColor copy];
  [v3 setDeviceColor:v17];

  enclosureColor = [(SFPeerDevice *)self enclosureColor];
  v19 = [enclosureColor copy];
  [v3 setEnclosureColor:v19];

  return v3;
}

- (NSString)deviceType
{
  modelIdentifier = [(SFPeerDevice *)self modelIdentifier];
  v3 = [SFPeerDevice deviceTypeForModelIdentifier:modelIdentifier];

  return v3;
}

+ (id)deviceTypeForModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [UTType _typeWithDeviceModelCode:identifierCopy];
    if ([v4 conformsToType:_UTTypeAppleDevice] && (objc_msgSend(v4, "identifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      if ([(__CFString *)v5 isEqualToString:@"com.apple.ipod"])
      {

        v6 = @"com.apple.ipod-touch";
      }
    }

    else
    {
      v6 = @"public.device";
    }
  }

  else
  {
    v6 = @"public.device";
  }

  return v6;
}

@end