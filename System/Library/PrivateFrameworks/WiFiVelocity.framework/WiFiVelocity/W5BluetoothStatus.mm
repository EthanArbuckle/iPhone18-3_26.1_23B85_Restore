@interface W5BluetoothStatus
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBluetoothStatus:(id)a3;
- (W5BluetoothStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDevices:(id)a3;
@end

@implementation W5BluetoothStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5BluetoothStatus;
  [(W5BluetoothStatus *)&v3 dealloc];
}

- (void)setDevices:(id)a3
{
  devices = self->_devices;
  if (devices != a3)
  {

    self->_devices = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_devices = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v4 = v3;
  if (self->_powerOn)
  {
    v5 = "On";
  }

  else
  {
    v5 = "Off";
  }

  [v3 appendFormat:@"Power: %s\n", v5];
  [v4 appendFormat:@"Address: %@\n", self->_address];
  v6 = "No";
  v7 = "Yes";
  if (self->_isDiscoverable)
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  [v4 appendFormat:@"Discoverable: %s\n", v8];
  if (self->_isConnectable)
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  [v4 appendFormat:@"Connectable: %s\n", v9];
  if (self->_isScanning)
  {
    v10 = "Yes";
  }

  else
  {
    v10 = "No";
  }

  [v4 appendFormat:@"Scanning: %s\n", v10];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v44 = self;
  obj = self->_devices;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        v13 += [v18 isPaired];
        v14 += [v18 isCloudPaired];
        v15 += [v18 isConnected];
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  [v4 appendFormat:@"Device Count: %lu (paired=%lu cloud=%lu connected=%lu)\n\n", -[NSArray count](v44->_devices, "count"), v13, v14, v15];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = v44->_devices;
  v19 = [(NSArray *)obja countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = @"    %s\n";
    v22 = @"    Address          : %s\n";
    v23 = *v49;
    v24 = @"    Paired           : %s\n";
    v45 = v4;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v48 + 1) + 8 * j);
        [v4 appendFormat:v21, objc_msgSend(objc_msgSend(v26, "name"), "UTF8String")];
        [v4 appendFormat:v22, objc_msgSend(objc_msgSend(v26, "address"), "UTF8String")];
        if ([v26 isPaired])
        {
          v27 = v7;
        }

        else
        {
          v27 = v6;
        }

        [v4 appendFormat:v24, v27];
        if ([v26 isCloudPaired])
        {
          v28 = v7;
        }

        else
        {
          v28 = v6;
        }

        [v4 appendFormat:@"    CloudPaired      : %s\n", v28];
        if ([v26 isConnected])
        {
          v29 = v7;
        }

        else
        {
          v29 = v6;
        }

        [v4 appendFormat:@"    Connected        : %s\n", v29];
        if ([v26 isConnected])
        {
          v30 = v20;
          v31 = v7;
          v32 = v6;
          v33 = v23;
          v34 = v24;
          v35 = v22;
          v36 = v21;
          v37 = [v26 majorClass];
          v38 = [v26 minorClass];
          v39 = v37;
          v21 = v36;
          v22 = v35;
          v24 = v34;
          v23 = v33;
          v6 = v32;
          v7 = v31;
          v20 = v30;
          v4 = v45;
          [v45 appendFormat:@"    Type             : %s\n", objc_msgSend(W5DescriptionForBluetoothDeviceType(v39, v38), "UTF8String")];
          if ([v26 isLowEnergy])
          {
            v40 = v7;
          }

          else
          {
            v40 = v6;
          }

          [v45 appendFormat:@"    LE               : %s\n", v40];
          if ([v26 isAppleDevice])
          {
            v41 = v7;
          }

          else
          {
            v41 = v6;
          }

          [v45 appendFormat:@"    Apple            : %s\n", v41];
        }

        [v4 appendFormat:@"\n"];
      }

      v20 = [(NSArray *)obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v20);
  }

  result = [v4 copy];
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5BluetoothStatus;
  if (-[W5BluetoothStatus conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToBluetoothStatus:(id)a3
{
  address = self->_address;
  if (!address)
  {
    if (![a3 address])
    {
      goto LABEL_5;
    }

    address = self->_address;
  }

  v6 = -[NSString isEqual:](address, "isEqual:", [a3 address]);
  if (!v6)
  {
    return v6;
  }

LABEL_5:
  powerOn = self->_powerOn;
  if (powerOn != [a3 powerOn] || (isDiscoverable = self->_isDiscoverable, isDiscoverable != objc_msgSend(a3, "isDiscoverable")) || (isConnectable = self->_isConnectable, isConnectable != objc_msgSend(a3, "isConnectable")) || (isScanning = self->_isScanning, isScanning != objc_msgSend(a3, "isScanning")))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  devices = self->_devices;
  if (!devices)
  {
    if (![a3 devices])
    {
      LOBYTE(v6) = 1;
      return v6;
    }

    devices = self->_devices;
  }

  v12 = [a3 devices];

  LOBYTE(v6) = [(NSArray *)devices isEqual:v12];
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

  return [(W5BluetoothStatus *)self isEqualToBluetoothStatus:a3];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash]^ self->_powerOn ^ self->_isDiscoverable;
  v4 = self->_isConnectable ^ self->_isScanning;
  return v3 ^ v4 ^ [(NSArray *)self->_devices hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5BluetoothStatus allocWithZone:?]];
  [(W5BluetoothStatus *)v4 setPowerOn:self->_powerOn];
  [(W5BluetoothStatus *)v4 setAddress:self->_address];
  [(W5BluetoothStatus *)v4 setIsDiscoverable:self->_isDiscoverable];
  [(W5BluetoothStatus *)v4 setIsConnectable:self->_isConnectable];
  [(W5BluetoothStatus *)v4 setIsScanning:self->_isScanning];
  [(W5BluetoothStatus *)v4 setDevices:self->_devices];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_address forKey:@"_address"];
  [a3 encodeBool:self->_powerOn forKey:@"_powerOn"];
  [a3 encodeBool:self->_isDiscoverable forKey:@"_isDiscoverable"];
  [a3 encodeBool:self->_isConnectable forKey:@"_isConnectable"];
  [a3 encodeBool:self->_isScanning forKey:@"_isScanning"];
  devices = self->_devices;

  [a3 encodeObject:devices forKey:@"_devices"];
}

- (W5BluetoothStatus)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = W5BluetoothStatus;
  v4 = [(W5BluetoothStatus *)&v8 init];
  if (v4)
  {
    v4->_address = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_address", "copy"}];
    v4->_powerOn = [a3 decodeBoolForKey:@"_powerOn"];
    v4->_isDiscoverable = [a3 decodeBoolForKey:@"_isDiscoverable"];
    v4->_isConnectable = [a3 decodeBoolForKey:@"_isConnectable"];
    v4->_isScanning = [a3 decodeBoolForKey:@"_isScanning"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_devices = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_devices", "copy"}];
  }

  return v4;
}

@end