@interface TUCloudCallingDevice
- (TUCloudCallingDevice)initWithIDSDevice:(id)a3;
@end

@implementation TUCloudCallingDevice

- (TUCloudCallingDevice)initWithIDSDevice:(id)a3
{
  v4 = a3;
  v5 = [(TUCloudCallingDevice *)self init];
  if (v5)
  {
    v6 = [v4 name];
    [(TUCloudCallingDevice *)v5 setName:v6];

    v7 = [v4 modelIdentifier];
    [(TUCloudCallingDevice *)v5 setModelIdentifier:v7];

    v8 = [v4 uniqueIDOverride];
    [(TUCloudCallingDevice *)v5 setUniqueID:v8];

    v9 = [v4 linkedUserURIs];
    [(TUCloudCallingDevice *)v5 setLinkedUserURIs:v9];

    -[TUCloudCallingDevice setDefaultPairedDevice:](v5, "setDefaultPairedDevice:", [v4 isDefaultPairedDevice]);
    -[TUCloudCallingDevice setSupportsRestrictingSecondaryCalling:](v5, "setSupportsRestrictingSecondaryCalling:", [v4 supportsRestrictingSecondaryCalling]);
  }

  return v5;
}

@end