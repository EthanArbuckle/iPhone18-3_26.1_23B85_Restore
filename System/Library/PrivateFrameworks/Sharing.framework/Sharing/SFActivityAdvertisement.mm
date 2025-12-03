@interface SFActivityAdvertisement
- (SFActivityAdvertisement)initWithAdvertisementVersion:(unint64_t)version advertisementPayload:(id)payload options:(id)options device:(id)device;
- (SFActivityAdvertisement)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFActivityAdvertisement

- (SFActivityAdvertisement)initWithAdvertisementVersion:(unint64_t)version advertisementPayload:(id)payload options:(id)options device:(id)device
{
  payloadCopy = payload;
  optionsCopy = options;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = SFActivityAdvertisement;
  v13 = [(SFActivityAdvertisement *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_advertisementVersion = version;
    v15 = [payloadCopy copy];
    advertisementPayload = v14->_advertisementPayload;
    v14->_advertisementPayload = v15;

    v17 = [optionsCopy copy];
    options = v14->_options;
    v14->_options = v17;

    objc_storeStrong(&v14->_device, device);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueID = [(SFPeerDevice *)self->_device uniqueID];
  v7 = SFHexStringForData(self->_advertisementPayload);
  v8 = SFCompactStringFromCollection(self->_options);
  name = [(SFPeerDevice *)self->_device name];
  modelIdentifier = [(SFPeerDevice *)self->_device modelIdentifier];
  v11 = [v3 stringWithFormat:@"<%@: %p, deviceIdentifier:%@, advertisementPayload:%@, options:%@, deviceName:%@, deviceModelIdentifier:%@>", v5, self, uniqueID, v7, v8, name, modelIdentifier];

  return v11;
}

- (SFActivityAdvertisement)initWithCoder:(id)coder
{
  v20[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SFActivityAdvertisement;
  v5 = [(SFActivityAdvertisement *)&v19 init];
  if (v5)
  {
    v5->_advertisementVersion = [coderCopy decodeIntegerForKey:@"advertisementVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisementPayload"];
    v7 = [v6 copy];
    advertisementPayload = v5->_advertisementPayload;
    v5->_advertisementPayload = v7;

    v9 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"options"];
    v13 = [v12 copy];
    options = v5->_options;
    v5->_options = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  advertisementVersion = self->_advertisementVersion;
  coderCopy = coder;
  [coderCopy encodeInteger:advertisementVersion forKey:@"advertisementVersion"];
  [coderCopy encodeObject:self->_advertisementPayload forKey:@"advertisementPayload"];
  [coderCopy encodeObject:self->_options forKey:@"options"];
  [coderCopy encodeObject:self->_device forKey:@"device"];
}

@end