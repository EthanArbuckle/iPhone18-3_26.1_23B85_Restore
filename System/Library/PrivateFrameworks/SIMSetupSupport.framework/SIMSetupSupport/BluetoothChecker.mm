@interface BluetoothChecker
- (void)centralManagerDidUpdateState:(id)a3;
- (void)isBluetoothOff:(id)a3;
@end

@implementation BluetoothChecker

- (void)isBluetoothOff:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  completion = self->_completion;
  self->_completion = v4;

  v6 = objc_alloc(MEMORY[0x277CBDFF8]);
  v11 = *MEMORY[0x277CBDD98];
  v12[0] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithDelegate:self queue:0 options:v7];
  manager = self->_manager;
  self->_manager = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  if (self->_completion)
  {
    [a3 state];
    (*(self->_completion + 2))();
    completion = self->_completion;
    self->_completion = 0;
  }
}

@end