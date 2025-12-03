@interface SFPasswordSharingInfo
- (SFPasswordSharingInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPasswordSharingInfo

- (SFPasswordSharingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SFPasswordSharingInfo;
  v5 = [(SFPasswordSharingInfo *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
    v7 = [v6 copy];
    channel = v5->_channel;
    v5->_channel = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"psk"];
    v10 = [v9 copy];
    psk = v5->_psk;
    v5->_psk = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nwName"];
    v13 = [v12 copy];
    networkName = v5->_networkName;
    v5->_networkName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  channel = self->_channel;
  coderCopy = coder;
  [coderCopy encodeObject:channel forKey:@"ch"];
  [coderCopy encodeObject:self->_networkName forKey:@"nwName"];
  [coderCopy encodeObject:self->_psk forKey:@"psk"];
}

@end