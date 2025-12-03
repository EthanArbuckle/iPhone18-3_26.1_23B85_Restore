@interface TUCloudCallingDevice
- (TUCloudCallingDevice)initWithIDSDevice:(id)device;
@end

@implementation TUCloudCallingDevice

- (TUCloudCallingDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v5 = [(TUCloudCallingDevice *)self init];
  if (v5)
  {
    name = [deviceCopy name];
    [(TUCloudCallingDevice *)v5 setName:name];

    modelIdentifier = [deviceCopy modelIdentifier];
    [(TUCloudCallingDevice *)v5 setModelIdentifier:modelIdentifier];

    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    [(TUCloudCallingDevice *)v5 setUniqueID:uniqueIDOverride];

    linkedUserURIs = [deviceCopy linkedUserURIs];
    [(TUCloudCallingDevice *)v5 setLinkedUserURIs:linkedUserURIs];

    -[TUCloudCallingDevice setDefaultPairedDevice:](v5, "setDefaultPairedDevice:", [deviceCopy isDefaultPairedDevice]);
    -[TUCloudCallingDevice setSupportsRestrictingSecondaryCalling:](v5, "setSupportsRestrictingSecondaryCalling:", [deviceCopy supportsRestrictingSecondaryCalling]);
  }

  return v5;
}

@end