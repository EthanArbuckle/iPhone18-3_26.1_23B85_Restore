@interface WFStubInterface
- (void)setCurrentNetwork:(id)network;
@end

@implementation WFStubInterface

- (void)setCurrentNetwork:(id)network
{
  v11[1] = *MEMORY[0x277D85DE8];
  networkCopy = network;
  if (([networkCopy isEqual:self->_currentNetwork] & 1) == 0)
  {
    objc_storeStrong(&self->_currentNetwork, network);
    currentNetwork = self->_currentNetwork;
    if (currentNetwork)
    {
      v10 = @"WFInterfaceNetworkKey";
      v11[0] = currentNetwork;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceNetworkChangedNotification" object:self userInfo:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end