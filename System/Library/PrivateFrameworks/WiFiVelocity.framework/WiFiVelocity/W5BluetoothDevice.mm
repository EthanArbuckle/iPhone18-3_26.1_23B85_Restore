@interface W5BluetoothDevice
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBluetoothDevice:(id)a3;
- (W5BluetoothDevice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5BluetoothDevice

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5BluetoothDevice;
  [(W5BluetoothDevice *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Name: %@\n", self->_name];
  [v3 appendFormat:@"Address %@\n", self->_address];
  if (self->_isPaired)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  [v3 appendFormat:@"isPaired %@\n", v4];
  if (self->_isConnected)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  [v3 appendFormat:@"isConnected %@\n", v5];
  if (self->_isCloudPaired)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v3 appendFormat:@"isCloudPaired %@\n", v6];
  if (self->_isConnected)
  {
    [v3 appendFormat:@"Type %@\n", W5DescriptionForBluetoothDeviceType(self->_majorClass, self->_minorClass)];
    [v3 appendFormat:@"RSSI: %ld dBm\n", self->_rssi];
    [v3 appendFormat:@"Manufacturer: %@ (0x%lx, 0x%02lx)\n", W5DescriptionForBluetoothDeviceManufacturer(self->_manufacturer), self->_lmpVersion, self->_lmpSubversion];
    [v3 appendFormat:@"Role: %@\n", W5DescriptionForBluetoothDeviceRole(self->_role)];
    [v3 appendFormat:@"Conn Mode: %@\n", W5DescriptionForBluetoothDeviceConnectionMode(self->_connectionMode)];
    [v3 appendFormat:@"Conn Interval: %ld\n", self->_connectionModeInterval];
    [v3 appendFormat:@"AFH Map: %@\n", self->_afhMap];
    if (self->_isLowEnergy)
    {
      v7 = "Yes";
    }

    else
    {
      v7 = "No";
    }

    [v3 appendFormat:@"LE: %s\n", v7];
    if (self->_isAppleDevice)
    {
      v8 = "Yes";
    }

    else
    {
      v8 = "No";
    }

    [v3 appendFormat:@"Apple: %s\n\n", v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5BluetoothDevice;
  if (-[W5BluetoothDevice conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToBluetoothDevice:(id)a3
{
  name = self->_name;
  if (!name)
  {
    if (![a3 name])
    {
      goto LABEL_5;
    }

    name = self->_name;
  }

  v6 = -[NSString isEqual:](name, "isEqual:", [a3 name]);
  if (!v6)
  {
    return v6;
  }

LABEL_5:
  address = self->_address;
  if (address)
  {
    goto LABEL_8;
  }

  if ([a3 address])
  {
    address = self->_address;
LABEL_8:
    v6 = -[NSString isEqual:](address, "isEqual:", [a3 address]);
    if (!v6)
    {
      return v6;
    }
  }

  isPaired = self->_isPaired;
  if (isPaired != [a3 isPaired])
  {
    goto LABEL_27;
  }

  isConnected = self->_isConnected;
  if (isConnected != [a3 isConnected])
  {
    goto LABEL_27;
  }

  isCloudPaired = self->_isCloudPaired;
  if (isCloudPaired != [a3 isCloudPaired])
  {
    goto LABEL_27;
  }

  majorClass = self->_majorClass;
  if (majorClass != [a3 majorClass])
  {
    goto LABEL_27;
  }

  minorClass = self->_minorClass;
  if (minorClass != [a3 minorClass])
  {
    goto LABEL_27;
  }

  rssi = self->_rssi;
  if (rssi != [a3 rssi])
  {
    goto LABEL_27;
  }

  afhMap = self->_afhMap;
  if (!afhMap)
  {
    if (![a3 afhMap])
    {
LABEL_19:
      connectionMode = self->_connectionMode;
      if (connectionMode == [a3 connectionMode])
      {
        connectionModeInterval = self->_connectionModeInterval;
        if (connectionModeInterval == [a3 connectionModeInterval])
        {
          manufacturer = self->_manufacturer;
          if (manufacturer == [a3 manufacturer])
          {
            lmpVersion = self->_lmpVersion;
            if (lmpVersion == [a3 lmpVersion])
            {
              lmpSubversion = self->_lmpSubversion;
              if (lmpSubversion == [a3 lmpSubversion])
              {
                role = self->_role;
                if (role == [a3 role])
                {
                  isLowEnergy = self->_isLowEnergy;
                  if (isLowEnergy == [a3 isLowEnergy])
                  {
                    isAppleDevice = self->_isAppleDevice;
                    LOBYTE(v6) = isAppleDevice == [a3 isAppleDevice];
                    return v6;
                  }
                }
              }
            }
          }
        }
      }

LABEL_27:
      LOBYTE(v6) = 0;
      return v6;
    }

    afhMap = self->_afhMap;
  }

  v6 = -[NSString isEqual:](afhMap, "isEqual:", [a3 afhMap]);
  if (v6)
  {
    goto LABEL_19;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5BluetoothDevice *)self isEqualToBluetoothDevice:a3];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_address hash];
  isPaired = self->_isPaired;
  isConnected = self->_isConnected;
  isCloudPaired = self->_isCloudPaired;
  v12 = *&self->_majorClass;
  v8 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithInteger:{self->_rssi), "hash"}];
  v9 = [(NSString *)self->_afhMap hash];
  v10 = veorq_s8(v12, veorq_s8(*&self->_manufacturer, veorq_s8(*&self->_connectionMode, *&self->_lmpSubversion)));
  return *&veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) ^ isPaired ^ (isConnected ^ isCloudPaired) & 1 ^ v9 ^ (self->_isLowEnergy ^ self->_isAppleDevice) & 1 ^ v8 ^ v3 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5BluetoothDevice allocWithZone:?]];
  [(W5BluetoothDevice *)v4 setName:self->_name];
  [(W5BluetoothDevice *)v4 setAddress:self->_address];
  [(W5BluetoothDevice *)v4 setIsPaired:self->_isPaired];
  [(W5BluetoothDevice *)v4 setIsConnected:self->_isConnected];
  [(W5BluetoothDevice *)v4 setIsCloudPaired:self->_isCloudPaired];
  [(W5BluetoothDevice *)v4 setMajorClass:self->_majorClass];
  [(W5BluetoothDevice *)v4 setMinorClass:self->_minorClass];
  [(W5BluetoothDevice *)v4 setRssi:self->_rssi];
  [(W5BluetoothDevice *)v4 setAfhMap:self->_afhMap];
  [(W5BluetoothDevice *)v4 setConnectionMode:self->_connectionMode];
  [(W5BluetoothDevice *)v4 setConnectionModeInterval:self->_connectionModeInterval];
  [(W5BluetoothDevice *)v4 setManufacturer:self->_manufacturer];
  [(W5BluetoothDevice *)v4 setLmpVersion:self->_lmpVersion];
  [(W5BluetoothDevice *)v4 setLmpSubversion:self->_lmpSubversion];
  [(W5BluetoothDevice *)v4 setRole:self->_role];
  [(W5BluetoothDevice *)v4 setIsLowEnergy:self->_isLowEnergy];
  [(W5BluetoothDevice *)v4 setIsAppleDevice:self->_isAppleDevice];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name forKey:@"_name"];
  [a3 encodeObject:self->_address forKey:@"_address"];
  [a3 encodeBool:self->_isPaired forKey:@"_isPaired"];
  [a3 encodeBool:self->_isConnected forKey:@"_isConnected"];
  [a3 encodeBool:self->_isCloudPaired forKey:@"_isCloudPaired"];
  [a3 encodeInteger:self->_majorClass forKey:@"_majorClass"];
  [a3 encodeInteger:self->_minorClass forKey:@"_minorClass"];
  [a3 encodeInteger:self->_rssi forKey:@"_rssi"];
  [a3 encodeObject:self->_afhMap forKey:@"_afhMap"];
  [a3 encodeInteger:self->_connectionMode forKey:@"_connectionMode"];
  [a3 encodeInteger:self->_connectionModeInterval forKey:@"_connectionModeInterval"];
  [a3 encodeInteger:self->_manufacturer forKey:@"_manufacturer"];
  [a3 encodeInteger:self->_lmpVersion forKey:@"_lmpVersion"];
  [a3 encodeInteger:self->_lmpSubversion forKey:@"_lmpSubversion"];
  [a3 encodeInteger:self->_role forKey:@"_role"];
  [a3 encodeBool:self->_isLowEnergy forKey:@"_isLowEnergy"];
  isAppleDevice = self->_isAppleDevice;

  [a3 encodeBool:isAppleDevice forKey:@"_isAppleDevice"];
}

- (W5BluetoothDevice)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = W5BluetoothDevice;
  v4 = [(W5BluetoothDevice *)&v6 init];
  if (v4)
  {
    v4->_name = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_name", "copy"}];
    v4->_address = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_address", "copy"}];
    v4->_isPaired = [a3 decodeBoolForKey:@"_isPaired"];
    v4->_isConnected = [a3 decodeBoolForKey:@"_isConnected"];
    v4->_isCloudPaired = [a3 decodeBoolForKey:@"_isCloudPaired"];
    v4->_majorClass = [a3 decodeIntegerForKey:@"_majorClass"];
    v4->_minorClass = [a3 decodeIntegerForKey:@"_minorClass"];
    v4->_rssi = [a3 decodeIntegerForKey:@"_rssi"];
    v4->_afhMap = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_afhMap", "copy"}];
    v4->_connectionMode = [a3 decodeIntegerForKey:@"_connectionMode"];
    v4->_connectionModeInterval = [a3 decodeIntegerForKey:@"_connectionModeInterval"];
    v4->_manufacturer = [a3 decodeIntegerForKey:@"_manufacturer"];
    v4->_lmpVersion = [a3 decodeIntegerForKey:@"_lmpVersion"];
    v4->_lmpSubversion = [a3 decodeIntegerForKey:@"_lmpSubversion"];
    v4->_role = [a3 decodeIntegerForKey:@"_role"];
    v4->_isLowEnergy = [a3 decodeBoolForKey:@"_isLowEnergy"];
    v4->_isAppleDevice = [a3 decodeBoolForKey:@"_isAppleDevice"];
  }

  return v4;
}

@end