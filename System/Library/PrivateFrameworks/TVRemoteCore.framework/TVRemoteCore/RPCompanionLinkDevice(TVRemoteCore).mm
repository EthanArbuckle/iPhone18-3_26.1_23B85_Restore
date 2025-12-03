@interface RPCompanionLinkDevice(TVRemoteCore)
- (id)relevantIdentifiers;
- (uint64_t)isEqualToRPDevice:()TVRemoteCore;
@end

@implementation RPCompanionLinkDevice(TVRemoteCore)

- (uint64_t)isEqualToRPDevice:()TVRemoteCore
{
  v4 = a3;
  idsDeviceIdentifier = [self idsDeviceIdentifier];
  if (idsDeviceIdentifier && (v6 = idsDeviceIdentifier, [v4 idsDeviceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    idsDeviceIdentifier2 = [self idsDeviceIdentifier];
    idsDeviceIdentifier3 = [v4 idsDeviceIdentifier];
  }

  else
  {
    idsDeviceIdentifier2 = [self identifier];
    idsDeviceIdentifier3 = [v4 identifier];
  }

  v10 = idsDeviceIdentifier3;
  v11 = idsDeviceIdentifier2;
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
  mediaRemoteIdentifier = [self mediaRemoteIdentifier];
  mediaRouteIdentifier = [self mediaRouteIdentifier];
  name = [self name];
  idsDeviceIdentifier = [self idsDeviceIdentifier];
  effectiveIdentifier = [self effectiveIdentifier];
  homeKitIdentifier = [self homeKitIdentifier];
  uUIDString = [homeKitIdentifier UUIDString];

  if (mediaRemoteIdentifier)
  {
    [v2 addObject:mediaRemoteIdentifier];
  }

  if (mediaRouteIdentifier)
  {
    [v2 addObject:mediaRouteIdentifier];
  }

  if (name)
  {
    [v2 addObject:name];
  }

  if (idsDeviceIdentifier)
  {
    [v2 addObject:idsDeviceIdentifier];
  }

  if (effectiveIdentifier)
  {
    [v2 addObject:effectiveIdentifier];
  }

  if (uUIDString)
  {
    [v2 addObject:uUIDString];
  }

  return v2;
}

@end