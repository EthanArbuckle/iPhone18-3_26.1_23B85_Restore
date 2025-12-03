@interface SPAccessoryDiscoverySessionState
- (SPAccessoryDiscoverySessionState)initWithAccessories:(id)accessories;
- (SPAccessoryDiscoverySessionState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SPAccessoryDiscoverySessionState

- (SPAccessoryDiscoverySessionState)initWithAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v9.receiver = self;
  v9.super_class = SPAccessoryDiscoverySessionState;
  v6 = [(SPAccessoryDiscoverySessionState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessories, accessories);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPAccessoryDiscoverySessionState alloc];
  accessories = [(SPAccessoryDiscoverySessionState *)self accessories];
  v6 = [(SPAccessoryDiscoverySessionState *)v4 initWithAccessories:accessories];

  return v6;
}

- (SPAccessoryDiscoverySessionState)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"accessories"];

  accessories = self->_accessories;
  self->_accessories = v8;

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end