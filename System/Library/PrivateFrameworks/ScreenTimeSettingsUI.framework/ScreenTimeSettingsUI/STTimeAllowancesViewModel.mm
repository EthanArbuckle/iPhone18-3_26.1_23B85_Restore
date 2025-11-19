@interface STTimeAllowancesViewModel
- (STTimeAllowancesViewModel)init;
@end

@implementation STTimeAllowancesViewModel

- (STTimeAllowancesViewModel)init
{
  v8.receiver = self;
  v8.super_class = STTimeAllowancesViewModel;
  v2 = [(STTimeAllowancesViewModel *)&v8 init];
  v3 = v2;
  if (v2)
  {
    allowancesByIdentifier = v2->_allowancesByIdentifier;
    v5 = MEMORY[0x277CBEC10];
    v2->_allowancesByIdentifier = MEMORY[0x277CBEC10];

    pendingAskForTimeByIdentifier = v3->_pendingAskForTimeByIdentifier;
    v3->_pendingAskForTimeByIdentifier = v5;
  }

  return v3;
}

@end