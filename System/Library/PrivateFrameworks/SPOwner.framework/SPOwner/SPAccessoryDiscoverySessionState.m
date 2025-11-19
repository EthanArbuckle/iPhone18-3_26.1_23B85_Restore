@interface SPAccessoryDiscoverySessionState
- (SPAccessoryDiscoverySessionState)initWithAccessories:(id)a3;
- (SPAccessoryDiscoverySessionState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SPAccessoryDiscoverySessionState

- (SPAccessoryDiscoverySessionState)initWithAccessories:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPAccessoryDiscoverySessionState;
  v6 = [(SPAccessoryDiscoverySessionState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessories, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPAccessoryDiscoverySessionState alloc];
  v5 = [(SPAccessoryDiscoverySessionState *)self accessories];
  v6 = [(SPAccessoryDiscoverySessionState *)v4 initWithAccessories:v5];

  return v6;
}

- (SPAccessoryDiscoverySessionState)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"accessories"];

  accessories = self->_accessories;
  self->_accessories = v8;

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end