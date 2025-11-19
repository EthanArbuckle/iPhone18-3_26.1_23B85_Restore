@interface PRRangingDevice
- (PRRangingDevice)init;
@end

@implementation PRRangingDevice

- (PRRangingDevice)init
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = PRRangingDevice;
  v2 = [(PRRangingDevice *)&v12 init];
  if (v2)
  {
    v13[0] = @"ProcessName";
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 processName];
    v13[1] = @"ProcessIdentifier";
    v14[0] = v4;
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277CCAC38] processInfo];
    v7 = [v5 numberWithInt:{objc_msgSend(v6, "processIdentifier")}];
    v14[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    clientInfo = v2->_clientInfo;
    v2->_clientInfo = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

@end