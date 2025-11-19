@interface SFActivityAdvertisement
- (SFActivityAdvertisement)initWithAdvertisementVersion:(unint64_t)a3 advertisementPayload:(id)a4 options:(id)a5 device:(id)a6;
- (SFActivityAdvertisement)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFActivityAdvertisement

- (SFActivityAdvertisement)initWithAdvertisementVersion:(unint64_t)a3 advertisementPayload:(id)a4 options:(id)a5 device:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = SFActivityAdvertisement;
  v13 = [(SFActivityAdvertisement *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_advertisementVersion = a3;
    v15 = [v10 copy];
    advertisementPayload = v14->_advertisementPayload;
    v14->_advertisementPayload = v15;

    v17 = [v11 copy];
    options = v14->_options;
    v14->_options = v17;

    objc_storeStrong(&v14->_device, a6);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SFPeerDevice *)self->_device uniqueID];
  v7 = SFHexStringForData(self->_advertisementPayload);
  v8 = SFCompactStringFromCollection(self->_options);
  v9 = [(SFPeerDevice *)self->_device name];
  v10 = [(SFPeerDevice *)self->_device modelIdentifier];
  v11 = [v3 stringWithFormat:@"<%@: %p, deviceIdentifier:%@, advertisementPayload:%@, options:%@, deviceName:%@, deviceModelIdentifier:%@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (SFActivityAdvertisement)initWithCoder:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SFActivityAdvertisement;
  v5 = [(SFActivityAdvertisement *)&v19 init];
  if (v5)
  {
    v5->_advertisementVersion = [v4 decodeIntegerForKey:@"advertisementVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisementPayload"];
    v7 = [v6 copy];
    advertisementPayload = v5->_advertisementPayload;
    v5->_advertisementPayload = v7;

    v9 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"options"];
    v13 = [v12 copy];
    options = v5->_options;
    v5->_options = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  advertisementVersion = self->_advertisementVersion;
  v5 = a3;
  [v5 encodeInteger:advertisementVersion forKey:@"advertisementVersion"];
  [v5 encodeObject:self->_advertisementPayload forKey:@"advertisementPayload"];
  [v5 encodeObject:self->_options forKey:@"options"];
  [v5 encodeObject:self->_device forKey:@"device"];
}

@end