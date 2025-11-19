@interface SFRemoteHotspotInfo
- (SFRemoteHotspotInfo)initWithCoder:(id)a3;
- (SFRemoteHotspotInfo)initWithName:(id)a3 password:(id)a4 channel:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRemoteHotspotInfo

- (SFRemoteHotspotInfo)initWithName:(id)a3 password:(id)a4 channel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SFRemoteHotspotInfo;
  v11 = [(SFRemoteHotspotInfo *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    password = v11->_password;
    v11->_password = v14;

    objc_storeStrong(&v11->_channel, a5);
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

- (SFRemoteHotspotInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFRemoteHotspotInfo;
  v5 = [(SFRemoteHotspotInfo *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkName"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkPassword"];
    v10 = [v9 copy];
    password = v5->_password;
    v5->_password = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkChannel"];
    v13 = [v12 copy];
    channel = v5->_channel;
    v5->_channel = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"networkName"];
  [v5 encodeObject:self->_password forKey:@"networkPassword"];
  [v5 encodeObject:self->_channel forKey:@"networkChannel"];
}

@end