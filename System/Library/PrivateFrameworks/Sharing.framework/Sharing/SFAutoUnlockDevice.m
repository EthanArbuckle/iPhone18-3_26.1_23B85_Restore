@interface SFAutoUnlockDevice
- (BOOL)isEqual:(id)a3;
- (SFAutoUnlockDevice)init;
- (SFAutoUnlockDevice)initWithCoder:(id)a3;
- (id)description;
- (int64_t)type;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(SFPeerDevice *)self modelIdentifier];
  v4 = [v3 lowercaseString];
  v5 = [v4 containsString:@"watch"];

  if (v5)
  {
    return 1;
  }

  v7 = [(SFPeerDevice *)self modelIdentifier];
  v8 = [v7 lowercaseString];
  v9 = [v8 containsString:@"iphone"];

  if (v9)
  {
    return 2;
  }

  v10 = [(SFPeerDevice *)self modelIdentifier];
  v11 = [v10 lowercaseString];
  v12 = [v11 containsString:@"ipad"];

  if (v12)
  {
    return 3;
  }

  v13 = [(SFPeerDevice *)self modelIdentifier];
  v14 = [v13 lowercaseString];
  v15 = [v14 containsString:@"reality"];

  if (v15)
  {
    return 5;
  }

  v16 = [(SFPeerDevice *)self modelIdentifier];
  v17 = [v16 lowercaseString];
  v18 = [v17 containsString:@"mac"];

  if (v18)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFPeerDevice *)self uniqueID];
      v7 = [(SFPeerDevice *)v5 uniqueID];
      v8 = [v6 isEqual:v7];

      if (v8 && (v9 = [(SFAutoUnlockDevice *)self bluetoothCloudPaired], v9 == [(SFAutoUnlockDevice *)v5 bluetoothCloudPaired]))
      {
        v11 = [(SFPeerDevice *)self name];
        v12 = [(SFPeerDevice *)v5 name];
        v10 = [v11 isEqualToString:v12];
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
  v3 = [(SFAutoUnlockDevice *)self placeholder];
  v4 = &stru_1F1D30528;
  if (v3)
  {
    v4 = @"[PLACEHOLDER] ";
  }

  v17 = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(SFPeerDevice *)self uniqueID];
  v8 = [(SFAutoUnlockDevice *)self bluetoothID];
  v9 = @"YES";
  if ([(SFAutoUnlockDevice *)self bluetoothCloudPaired])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [(SFPeerDevice *)self modelIdentifier];
  v12 = [(SFPeerDevice *)self name];
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

  v14 = [(SFAutoUnlockDevice *)self modelDescription];
  v15 = [v18 stringWithFormat:@"<%@%@: %p, uniqueID:%@, bluetooth ID:%@, cloud paired:%@, modelIdentifier:%@, name:%@, unlockEnabled:%@ canUnlockDevice:%@ modelDescription:%@>", v17, v6, self, v7, v8, v10, v11, v12, v13, v9, v14];

  return v15;
}

- (SFAutoUnlockDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFAutoUnlockDevice;
  v5 = [(SFPeerDevice *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_bluetoothCloudPaired = [v4 decodeBoolForKey:@"cloudPaired"];
    v5->_unlockEnabled = [v4 decodeBoolForKey:@"unlockEnabled"];
    v5->_canUnlockDevice = [v4 decodeBoolForKey:@"canUnlockDevice"];
    v5->_keyExists = [v4 decodeBoolForKey:@"keyExists"];
    v5->_placeholder = [v4 decodeBoolForKey:@"placeholder"];
    v5->_supportsApproveWithWatch = [v4 decodeBoolForKey:@"supportsApproveWithWatch"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelDescription"];
    v7 = [v6 copy];
    modelDescription = v5->_modelDescription;
    v5->_modelDescription = v7;

    v9 = [v4 decodeObjectForKey:@"metrics"];
    v10 = [v9 copy];
    results = v5->_results;
    v5->_results = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFAutoUnlockDevice;
  v4 = a3;
  [(SFPeerDevice *)&v6 encodeWithCoder:v4];
  [v4 encodeBool:self->_bluetoothCloudPaired forKey:{@"cloudPaired", v6.receiver, v6.super_class}];
  [v4 encodeBool:self->_unlockEnabled forKey:@"unlockEnabled"];
  [v4 encodeBool:self->_canUnlockDevice forKey:@"canUnlockDevice"];
  [v4 encodeBool:self->_keyExists forKey:@"keyExists"];
  [v4 encodeBool:self->_placeholder forKey:@"placeholder"];
  [v4 encodeBool:self->_supportsApproveWithWatch forKey:@"supportsApproveWithWatch"];
  [v4 encodeObject:self->_modelDescription forKey:@"modelDescription"];
  v5 = [(NSDictionary *)self->_results copy];
  [v4 encodeObject:v5 forKey:@"metrics"];
}

@end