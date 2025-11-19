@interface RPCompanionLinkDevice(TVRemoteCore)
- (id)relevantIdentifiers;
- (uint64_t)isEqualToRPDevice:()TVRemoteCore;
@end

@implementation RPCompanionLinkDevice(TVRemoteCore)

- (uint64_t)isEqualToRPDevice:()TVRemoteCore
{
  v4 = a3;
  v5 = [a1 idsDeviceIdentifier];
  if (v5 && (v6 = v5, [v4 idsDeviceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [a1 idsDeviceIdentifier];
    v9 = [v4 idsDeviceIdentifier];
  }

  else
  {
    v8 = [a1 identifier];
    v9 = [v4 identifier];
  }

  v10 = v9;
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 isEqual:v12];
  }

  return v14;
}

- (id)relevantIdentifiers
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [a1 mediaRemoteIdentifier];
  v4 = [a1 mediaRouteIdentifier];
  v5 = [a1 name];
  v6 = [a1 idsDeviceIdentifier];
  v7 = [a1 effectiveIdentifier];
  v8 = [a1 homeKitIdentifier];
  v9 = [v8 UUIDString];

  if (v3)
  {
    [v2 addObject:v3];
  }

  if (v4)
  {
    [v2 addObject:v4];
  }

  if (v5)
  {
    [v2 addObject:v5];
  }

  if (v6)
  {
    [v2 addObject:v6];
  }

  if (v7)
  {
    [v2 addObject:v7];
  }

  if (v9)
  {
    [v2 addObject:v9];
  }

  return v2;
}

@end