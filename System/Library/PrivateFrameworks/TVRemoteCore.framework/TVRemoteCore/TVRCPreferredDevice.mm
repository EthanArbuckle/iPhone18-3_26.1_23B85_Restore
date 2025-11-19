@interface TVRCPreferredDevice
- (TVRCPreferredDevice)initWithCoder:(id)a3;
- (id)description;
- (id)initFromTVRCDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCPreferredDevice

- (id)initFromTVRCDevice:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TVRCPreferredDevice;
  v5 = [(TVRCPreferredDevice *)&v13 init];
  if (v5)
  {
    v6 = [v4 name];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = [v4 allIdentifiers];
    v10 = [v8 setWithSet:v9];
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
  v5 = [v3 build];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TVRCPreferredDevice *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(TVRCPreferredDevice *)self allIdentifiers];
  [v4 encodeObject:v6 forKey:@"allIdentifiers"];
}

- (TVRCPreferredDevice)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TVRCPreferredDevice;
  v5 = [(TVRCPreferredDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"allIdentifiers"];
    allIdentifiers = v5->_allIdentifiers;
    v5->_allIdentifiers = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end