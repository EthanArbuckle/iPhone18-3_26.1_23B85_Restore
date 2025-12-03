@interface SFRemoteHotspotInfo
- (SFRemoteHotspotInfo)initWithCoder:(id)coder;
- (SFRemoteHotspotInfo)initWithName:(id)name password:(id)password channel:(id)channel;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRemoteHotspotInfo

- (SFRemoteHotspotInfo)initWithName:(id)name password:(id)password channel:(id)channel
{
  nameCopy = name;
  passwordCopy = password;
  channelCopy = channel;
  v17.receiver = self;
  v17.super_class = SFRemoteHotspotInfo;
  v11 = [(SFRemoteHotspotInfo *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [passwordCopy copy];
    password = v11->_password;
    v11->_password = v14;

    objc_storeStrong(&v11->_channel, channel);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  channel = self->_channel;
  if (self->_password)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, name: %@, channel: %@, hasPassword: %s>", v5, self, self->_name, self->_channel, v8];

  return v9;
}

- (SFRemoteHotspotInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SFRemoteHotspotInfo;
  v5 = [(SFRemoteHotspotInfo *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkName"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkPassword"];
    v10 = [v9 copy];
    password = v5->_password;
    v5->_password = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkChannel"];
    v13 = [v12 copy];
    channel = v5->_channel;
    v5->_channel = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"networkName"];
  [coderCopy encodeObject:self->_password forKey:@"networkPassword"];
  [coderCopy encodeObject:self->_channel forKey:@"networkChannel"];
}

@end