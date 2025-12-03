@interface TVRCPreferredDevice
- (TVRCPreferredDevice)initWithCoder:(id)coder;
- (id)description;
- (id)initFromTVRCDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCPreferredDevice

- (id)initFromTVRCDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = TVRCPreferredDevice;
  v5 = [(TVRCPreferredDevice *)&v13 init];
  if (v5)
  {
    name = [deviceCopy name];
    identifier = v5->_identifier;
    v5->_identifier = name;

    v8 = MEMORY[0x277CBEB98];
    allIdentifiers = [deviceCopy allIdentifiers];
    v10 = [v8 setWithSet:allIdentifiers];
    allIdentifiers = v5->_allIdentifiers;
    v5->_allIdentifiers = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier"];
  v4 = [v3 appendObject:self->_allIdentifiers withName:@"allIdentifiers"];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(TVRCPreferredDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  allIdentifiers = [(TVRCPreferredDevice *)self allIdentifiers];
  [coderCopy encodeObject:allIdentifiers forKey:@"allIdentifiers"];
}

- (TVRCPreferredDevice)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TVRCPreferredDevice;
  v5 = [(TVRCPreferredDevice *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"allIdentifiers"];
    allIdentifiers = v5->_allIdentifiers;
    v5->_allIdentifiers = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end