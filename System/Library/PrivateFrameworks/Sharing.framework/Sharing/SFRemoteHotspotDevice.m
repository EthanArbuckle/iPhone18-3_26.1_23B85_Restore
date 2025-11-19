@interface SFRemoteHotspotDevice
- (BOOL)componentsAreEqualTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SFRemoteHotspotDevice)initWithCoder:(id)a3;
- (id)description;
- (id)signalStrengthFromInfo:(unsigned int)a3;
- (unsigned)networkTypeForIncomingType:(unsigned __int8)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRemoteHotspotDevice

- (id)description
{
  group = self->_group;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  deviceName = self->_deviceName;
  deviceIdentifier = self->_deviceIdentifier;
  v9 = [(NSNumber *)self->_batteryLife intValue];
  v10 = SFHotspotNetworkTypeString(self->_networkType);
  v11 = [(NSNumber *)self->_signalStrength intValue];
  v12 = "no";
  if (self->_hasDuplicates)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  if (self->_supportsCompanionLink)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (self->_osSupportsAutoHotspot)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if (self->_cellularSlicingIsEnabled)
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  if (self->_handoffActive)
  {
    v12 = "yes";
  }

  v17 = [v4 stringWithFormat:@"<%@: %p, name: %@, identifier: %@, battery life: %d, network type: %@, signal strength: %d, group: %ld, model %@, has duplicates: %s, supports companion link: %s, os supports auto hotspot %s, cellular slicing enabled %s, handoff active: %s>", v6, self, deviceName, deviceIdentifier, v9, v10, v11, group, self->_model, v13, v14, v15, v16, v12];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deviceIdentifier = self->_deviceIdentifier;
      v6 = [(SFRemoteHotspotDevice *)v4 deviceIdentifier];
      v7 = [(NSString *)deviceIdentifier isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)componentsAreEqualTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 batteryLife];
    v7 = [v6 isEqual:self->_batteryLife];

    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = [v5 deviceName];
    v9 = [v8 isEqual:self->_deviceName];

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [v5 deviceIdentifier];
    v11 = [v10 isEqual:self->_deviceIdentifier];

    if (!v11)
    {
      goto LABEL_10;
    }

    [v5 lastSeen];
    if (v12 == self->_lastSeen && [v5 networkType] == self->_networkType && (objc_msgSend(v5, "signalStrength"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqual:", self->_signalStrength), v13, v14))
    {
      v15 = self->_handoffActive == [v5 handoffActive];
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SFRemoteHotspotDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SFRemoteHotspotDevice;
  v5 = [(SFRemoteHotspotDevice *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceName"];
    v7 = [v6 copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v10 = [v9 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BatteryLife"];
    batteryLife = v5->_batteryLife;
    v5->_batteryLife = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SignalStrength"];
    signalStrength = v5->_signalStrength;
    v5->_signalStrength = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NetworkType"];
    v5->_networkType = [v16 intValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModelIdentifier"];
    v18 = [v17 copy];
    model = v5->_model;
    v5->_model = v18;

    v5->_hasDuplicates = [v4 decodeBoolForKey:@"HasDuplicates"];
    v5->_cellularSlicingIsEnabled = [v4 decodeBoolForKey:@"CellularSlicingEnabled"];
    v5->_handoffActive = [v4 decodeBoolForKey:@"HandoffActive"];
    v5->_supportsCompanionLink = [v4 decodeBoolForKey:@"SupportsCompanionLink"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceGroup"];
    v5->_group = [v20 intValue];

    v5->_osSupportsAutoHotspot = [v4 decodeBoolForKey:@"OSSupportAutoHotspot"];
    advertisementData = v5->_advertisementData;
    v5->_advertisementData = 0;

    v5->_lastSeen = 0.0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v7 = a3;
  [v7 encodeObject:deviceName forKey:@"DeviceName"];
  [v7 encodeObject:self->_deviceIdentifier forKey:@"DeviceIdentifier"];
  [v7 encodeObject:self->_batteryLife forKey:@"BatteryLife"];
  [v7 encodeObject:self->_signalStrength forKey:@"SignalStrength"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_networkType];
  [v7 encodeObject:v5 forKey:@"NetworkType"];

  [v7 encodeObject:self->_model forKey:@"ModelIdentifier"];
  [v7 encodeBool:self->_hasDuplicates forKey:@"HasDuplicates"];
  [v7 encodeBool:self->_cellularSlicingIsEnabled forKey:@"CellularSlicingEnabled"];
  [v7 encodeBool:self->_handoffActive forKey:@"HandoffActive"];
  [v7 encodeBool:self->_supportsCompanionLink forKey:@"SupportsCompanionLink"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_group];
  [v7 encodeObject:v6 forKey:@"DeviceGroup"];

  [v7 encodeBool:self->_osSupportsAutoHotspot forKey:@"OSSupportAutoHotspot"];
}

- (id)signalStrengthFromInfo:(unsigned int)a3
{
  if ((a3 & 0x70) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{((a3 >> 2) & 3) + 1, v3}];
  }

  else
  {
    v5 = &unk_1F1D7CCA0;
  }

  return v5;
}

- (unsigned)networkTypeForIncomingType:(unsigned __int8)a3
{
  if (a3 == 5)
  {
    return 4;
  }

  else
  {
    return a3;
  }
}

@end