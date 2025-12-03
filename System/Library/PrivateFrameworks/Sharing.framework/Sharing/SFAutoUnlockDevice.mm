@interface SFAutoUnlockDevice
- (BOOL)isEqual:(id)equal;
- (SFAutoUnlockDevice)init;
- (SFAutoUnlockDevice)initWithCoder:(id)coder;
- (id)description;
- (int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAutoUnlockDevice

- (SFAutoUnlockDevice)init
{
  v6.receiver = self;
  v6.super_class = SFAutoUnlockDevice;
  v2 = [(SFAutoUnlockDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    modelDescription = v2->_modelDescription;
    v2->_modelDescription = &stru_1F1D30528;
  }

  return v3;
}

- (int64_t)type
{
  modelIdentifier = [(SFPeerDevice *)self modelIdentifier];
  lowercaseString = [modelIdentifier lowercaseString];
  v5 = [lowercaseString containsString:@"watch"];

  if (v5)
  {
    return 1;
  }

  modelIdentifier2 = [(SFPeerDevice *)self modelIdentifier];
  lowercaseString2 = [modelIdentifier2 lowercaseString];
  v9 = [lowercaseString2 containsString:@"iphone"];

  if (v9)
  {
    return 2;
  }

  modelIdentifier3 = [(SFPeerDevice *)self modelIdentifier];
  lowercaseString3 = [modelIdentifier3 lowercaseString];
  v12 = [lowercaseString3 containsString:@"ipad"];

  if (v12)
  {
    return 3;
  }

  modelIdentifier4 = [(SFPeerDevice *)self modelIdentifier];
  lowercaseString4 = [modelIdentifier4 lowercaseString];
  v15 = [lowercaseString4 containsString:@"reality"];

  if (v15)
  {
    return 5;
  }

  modelIdentifier5 = [(SFPeerDevice *)self modelIdentifier];
  lowercaseString5 = [modelIdentifier5 lowercaseString];
  v18 = [lowercaseString5 containsString:@"mac"];

  if (v18)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueID = [(SFPeerDevice *)self uniqueID];
      uniqueID2 = [(SFPeerDevice *)v5 uniqueID];
      v8 = [uniqueID isEqual:uniqueID2];

      if (v8 && (v9 = [(SFAutoUnlockDevice *)self bluetoothCloudPaired], v9 == [(SFAutoUnlockDevice *)v5 bluetoothCloudPaired]))
      {
        name = [(SFPeerDevice *)self name];
        name2 = [(SFPeerDevice *)v5 name];
        v10 = [name isEqualToString:name2];
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
  }

  return v10;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  placeholder = [(SFAutoUnlockDevice *)self placeholder];
  v4 = &stru_1F1D30528;
  if (placeholder)
  {
    v4 = @"[PLACEHOLDER] ";
  }

  v17 = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  uniqueID = [(SFPeerDevice *)self uniqueID];
  bluetoothID = [(SFAutoUnlockDevice *)self bluetoothID];
  v9 = @"YES";
  if ([(SFAutoUnlockDevice *)self bluetoothCloudPaired])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  modelIdentifier = [(SFPeerDevice *)self modelIdentifier];
  name = [(SFPeerDevice *)self name];
  if ([(SFAutoUnlockDevice *)self unlockEnabled])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (![(SFAutoUnlockDevice *)self canUnlockDevice])
  {
    v9 = @"NO";
  }

  modelDescription = [(SFAutoUnlockDevice *)self modelDescription];
  v15 = [v18 stringWithFormat:@"<%@%@: %p, uniqueID:%@, bluetooth ID:%@, cloud paired:%@, modelIdentifier:%@, name:%@, unlockEnabled:%@ canUnlockDevice:%@ modelDescription:%@>", v17, v6, self, uniqueID, bluetoothID, v10, modelIdentifier, name, v13, v9, modelDescription];

  return v15;
}

- (SFAutoUnlockDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFAutoUnlockDevice;
  v5 = [(SFPeerDevice *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_bluetoothCloudPaired = [coderCopy decodeBoolForKey:@"cloudPaired"];
    v5->_unlockEnabled = [coderCopy decodeBoolForKey:@"unlockEnabled"];
    v5->_canUnlockDevice = [coderCopy decodeBoolForKey:@"canUnlockDevice"];
    v5->_keyExists = [coderCopy decodeBoolForKey:@"keyExists"];
    v5->_placeholder = [coderCopy decodeBoolForKey:@"placeholder"];
    v5->_supportsApproveWithWatch = [coderCopy decodeBoolForKey:@"supportsApproveWithWatch"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelDescription"];
    v7 = [v6 copy];
    modelDescription = v5->_modelDescription;
    v5->_modelDescription = v7;

    v9 = [coderCopy decodeObjectForKey:@"metrics"];
    v10 = [v9 copy];
    results = v5->_results;
    v5->_results = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SFAutoUnlockDevice;
  coderCopy = coder;
  [(SFPeerDevice *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_bluetoothCloudPaired forKey:{@"cloudPaired", v6.receiver, v6.super_class}];
  [coderCopy encodeBool:self->_unlockEnabled forKey:@"unlockEnabled"];
  [coderCopy encodeBool:self->_canUnlockDevice forKey:@"canUnlockDevice"];
  [coderCopy encodeBool:self->_keyExists forKey:@"keyExists"];
  [coderCopy encodeBool:self->_placeholder forKey:@"placeholder"];
  [coderCopy encodeBool:self->_supportsApproveWithWatch forKey:@"supportsApproveWithWatch"];
  [coderCopy encodeObject:self->_modelDescription forKey:@"modelDescription"];
  v5 = [(NSDictionary *)self->_results copy];
  [coderCopy encodeObject:v5 forKey:@"metrics"];
}

@end