@interface SFPeerDevice
- (BOOL)isEqual:(id)equal;
- (SFPeerDevice)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = self->_uniqueID;
    uniqueID = [v5 uniqueID];
    if ([(NSString *)uniqueID isEqual:uniqueID])
    {
      modelIdentifier = self->_modelIdentifier;
      modelIdentifier = [v5 modelIdentifier];
      v10 = [(NSString *)modelIdentifier isEqual:modelIdentifier];
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

- (SFPeerDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = SFPeerDevice;
  v5 = [(SFPeerDevice *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    v7 = [v6 copy];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelIdentifier"];
    v10 = [v9 copy];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
    v13 = [v12 copy];
    productName = v5->_productName;
    v5->_productName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    v16 = [v15 copy];
    productVersion = v5->_productVersion;
    v5->_productVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    v19 = [v18 copy];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v22 = [v21 copy];
    name = v5->_name;
    v5->_name = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceColor"];
    v25 = [v24 copy];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    v28 = [v27 copy];
    enclosureColor = v5->_enclosureColor;
    v5->_enclosureColor = v28;

    v5->_defaultPairedDevice = [coderCopy decodeBoolForKey:@"defaultPairedDevice"];
    v5->_validKey = [coderCopy decodeBoolForKey:@"keyValid"];
    v5->_keyCounter = [coderCopy decodeIntegerForKey:@"keyCounter"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueID = self->_uniqueID;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];
  [coderCopy encodeObject:self->_modelIdentifier forKey:@"modelIdentifier"];
  [coderCopy encodeObject:self->_productName forKey:@"productName"];
  [coderCopy encodeObject:self->_productVersion forKey:@"productVersion"];
  [coderCopy encodeObject:self->_productBuildVersion forKey:@"productBuildVersion"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_deviceColor forKey:@"deviceColor"];
  [coderCopy encodeObject:self->_enclosureColor forKey:@"enclosureColor"];
  [coderCopy encodeBool:self->_defaultPairedDevice forKey:@"defaultPairedDevice"];
  [coderCopy encodeBool:self->_validKey forKey:@"keyValid"];
  [coderCopy encodeInteger:self->_keyCounter forKey:@"keyCounter"];
}

@end