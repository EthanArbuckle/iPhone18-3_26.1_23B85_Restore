@interface SFPasswordSharingInfo
- (SFPasswordSharingInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPasswordSharingInfo

- (SFPasswordSharingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFPasswordSharingInfo;
  v5 = [(SFPasswordSharingInfo *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
    v7 = [v6 copy];
    channel = v5->_channel;
    v5->_channel = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"psk"];
    v10 = [v9 copy];
    psk = v5->_psk;
    v5->_psk = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nwName"];
    v13 = [v12 copy];
    networkName = v5->_networkName;
    v5->_networkName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  channel = self->_channel;
  v5 = a3;
  [v5 encodeObject:channel forKey:@"ch"];
  [v5 encodeObject:self->_networkName forKey:@"nwName"];
  [v5 encodeObject:self->_psk forKey:@"psk"];
}

@end