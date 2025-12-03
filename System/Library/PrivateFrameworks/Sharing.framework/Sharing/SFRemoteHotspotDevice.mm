@interface SFRemoteHotspotDevice
- (BOOL)componentsAreEqualTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (SFRemoteHotspotDevice)initWithCoder:(id)coder;
- (id)description;
- (id)signalStrengthFromInfo:(unsigned int)info;
- (unsigned)networkTypeForIncomingType:(unsigned __int8)type;
- (void)encodeWithCoder:(id)coder;
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
  intValue = [(NSNumber *)self->_batteryLife intValue];
  v10 = SFHotspotNetworkTypeString(self->_networkType);
  intValue2 = [(NSNumber *)self->_signalStrength intValue];
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

  v17 = [v4 stringWithFormat:@"<%@: %p, name: %@, identifier: %@, battery life: %d, network type: %@, signal strength: %d, group: %ld, model %@, has duplicates: %s, supports companion link: %s, os supports auto hotspot %s, cellular slicing enabled %s, handoff active: %s>", v6, self, deviceName, deviceIdentifier, intValue, v10, intValue2, group, self->_model, v13, v14, v15, v16, v12];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deviceIdentifier = self->_deviceIdentifier;
      deviceIdentifier = [(SFRemoteHotspotDevice *)equalCopy deviceIdentifier];
      v7 = [(NSString *)deviceIdentifier isEqual:deviceIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)componentsAreEqualTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = toCopy;
    batteryLife = [v5 batteryLife];
    v7 = [batteryLife isEqual:self->_batteryLife];

    if (!v7)
    {
      goto LABEL_10;
    }

    deviceName = [v5 deviceName];
    v9 = [deviceName isEqual:self->_deviceName];

    if (!v9)
    {
      goto LABEL_10;
    }

    deviceIdentifier = [v5 deviceIdentifier];
    v11 = [deviceIdentifier isEqual:self->_deviceIdentifier];

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

- (SFRemoteHotspotDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SFRemoteHotspotDevice;
  v5 = [(SFRemoteHotspotDevice *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceName"];
    v7 = [v6 copy];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
    v10 = [v9 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BatteryLife"];
    batteryLife = v5->_batteryLife;
    v5->_batteryLife = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SignalStrength"];
    signalStrength = v5->_signalStrength;
    v5->_signalStrength = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NetworkType"];
    v5->_networkType = [v16 intValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModelIdentifier"];
    v18 = [v17 copy];
    model = v5->_model;
    v5->_model = v18;

    v5->_hasDuplicates = [coderCopy decodeBoolForKey:@"HasDuplicates"];
    v5->_cellularSlicingIsEnabled = [coderCopy decodeBoolForKey:@"CellularSlicingEnabled"];
    v5->_handoffActive = [coderCopy decodeBoolForKey:@"HandoffActive"];
    v5->_supportsCompanionLink = [coderCopy decodeBoolForKey:@"SupportsCompanionLink"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceGroup"];
    v5->_group = [v20 intValue];

    v5->_osSupportsAutoHotspot = [coderCopy decodeBoolForKey:@"OSSupportAutoHotspot"];
    advertisementData = v5->_advertisementData;
    v5->_advertisementData = 0;

    v5->_lastSeen = 0.0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"DeviceName"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"DeviceIdentifier"];
  [coderCopy encodeObject:self->_batteryLife forKey:@"BatteryLife"];
  [coderCopy encodeObject:self->_signalStrength forKey:@"SignalStrength"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_networkType];
  [coderCopy encodeObject:v5 forKey:@"NetworkType"];

  [coderCopy encodeObject:self->_model forKey:@"ModelIdentifier"];
  [coderCopy encodeBool:self->_hasDuplicates forKey:@"HasDuplicates"];
  [coderCopy encodeBool:self->_cellularSlicingIsEnabled forKey:@"CellularSlicingEnabled"];
  [coderCopy encodeBool:self->_handoffActive forKey:@"HandoffActive"];
  [coderCopy encodeBool:self->_supportsCompanionLink forKey:@"SupportsCompanionLink"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_group];
  [coderCopy encodeObject:v6 forKey:@"DeviceGroup"];

  [coderCopy encodeBool:self->_osSupportsAutoHotspot forKey:@"OSSupportAutoHotspot"];
}

- (id)signalStrengthFromInfo:(unsigned int)info
{
  if ((info & 0x70) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{((info >> 2) & 3) + 1, v3}];
  }

  else
  {
    v5 = &unk_1F1D7CCA0;
  }

  return v5;
}

- (unsigned)networkTypeForIncomingType:(unsigned __int8)type
{
  if (type == 5)
  {
    return 4;
  }

  else
  {
    return type;
  }
}

@end