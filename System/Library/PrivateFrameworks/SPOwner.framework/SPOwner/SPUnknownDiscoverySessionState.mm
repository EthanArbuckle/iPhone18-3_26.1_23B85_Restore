@interface SPUnknownDiscoverySessionState
- (SPUnknownDiscoverySessionState)initWithCoder:(id)coder;
- (SPUnknownDiscoverySessionState)initWithUnknownAccessories:(id)accessories;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SPUnknownDiscoverySessionState

- (SPUnknownDiscoverySessionState)initWithUnknownAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v9.receiver = self;
  v9.super_class = SPUnknownDiscoverySessionState;
  v6 = [(SPUnknownDiscoverySessionState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unknownAccessories, accessories);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPUnknownDiscoverySessionState alloc];
  unknownAccessories = [(SPUnknownDiscoverySessionState *)self unknownAccessories];
  v6 = [(SPUnknownDiscoverySessionState *)v4 initWithUnknownAccessories:unknownAccessories];

  return v6;
}

- (SPUnknownDiscoverySessionState)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"unknownAccessories"];

  unknownAccessories = self->_unknownAccessories;
  self->_unknownAccessories = v8;

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end