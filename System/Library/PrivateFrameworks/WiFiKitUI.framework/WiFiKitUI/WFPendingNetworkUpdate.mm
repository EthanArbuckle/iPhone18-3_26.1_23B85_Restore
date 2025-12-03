@interface WFPendingNetworkUpdate
- (WFPendingNetworkUpdate)initWithNetwork:(id)network;
- (id)description;
@end

@implementation WFPendingNetworkUpdate

- (WFPendingNetworkUpdate)initWithNetwork:(id)network
{
  networkCopy = network;
  v9.receiver = self;
  v9.super_class = WFPendingNetworkUpdate;
  v5 = [(WFPendingNetworkUpdate *)&v9 init];
  if (v5)
  {
    if (networkCopy)
    {
      v6 = [networkCopy copyWithZone:0];
    }

    else
    {
      v6 = 0;
    }

    network = v5->_network;
    v5->_network = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  network = [(WFPendingNetworkUpdate *)self network];
  v7 = [v3 stringWithFormat:@"<%@: %p network='%@'>", v5, self, network];

  return v7;
}

@end