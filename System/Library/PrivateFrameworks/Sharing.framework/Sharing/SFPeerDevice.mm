@interface SFPeerDevice
- (BOOL)isEqual:(id)a3;
- (SFPeerDevice)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPeerDevice

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, uniqueID:%@, modelIdentifier:%@, name:%@>", v5, self, self->_uniqueID, self->_modelIdentifier, self->_name];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    uniqueID = self->_uniqueID;
    v7 = [v5 uniqueID];
    if ([(NSString *)uniqueID isEqual:v7])
    {
      modelIdentifier = self->_modelIdentifier;
      v9 = [v5 modelIdentifier];
      v10 = [(NSString *)modelIdentifier isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SFPeerDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SFPeerDevice;
  v5 = [(SFPeerDevice *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    v7 = [v6 copy];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelIdentifier"];
    v10 = [v9 copy];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
    v13 = [v12 copy];
    productName = v5->_productName;
    v5->_productName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    v16 = [v15 copy];
    productVersion = v5->_productVersion;
    v5->_productVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    v19 = [v18 copy];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v22 = [v21 copy];
    name = v5->_name;
    v5->_name = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceColor"];
    v25 = [v24 copy];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    v28 = [v27 copy];
    enclosureColor = v5->_enclosureColor;
    v5->_enclosureColor = v28;

    v5->_defaultPairedDevice = [v4 decodeBoolForKey:@"defaultPairedDevice"];
    v5->_validKey = [v4 decodeBoolForKey:@"keyValid"];
    v5->_keyCounter = [v4 decodeIntegerForKey:@"keyCounter"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueID = self->_uniqueID;
  v5 = a3;
  [v5 encodeObject:uniqueID forKey:@"uniqueID"];
  [v5 encodeObject:self->_modelIdentifier forKey:@"modelIdentifier"];
  [v5 encodeObject:self->_productName forKey:@"productName"];
  [v5 encodeObject:self->_productVersion forKey:@"productVersion"];
  [v5 encodeObject:self->_productBuildVersion forKey:@"productBuildVersion"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_deviceColor forKey:@"deviceColor"];
  [v5 encodeObject:self->_enclosureColor forKey:@"enclosureColor"];
  [v5 encodeBool:self->_defaultPairedDevice forKey:@"defaultPairedDevice"];
  [v5 encodeBool:self->_validKey forKey:@"keyValid"];
  [v5 encodeInteger:self->_keyCounter forKey:@"keyCounter"];
}

@end