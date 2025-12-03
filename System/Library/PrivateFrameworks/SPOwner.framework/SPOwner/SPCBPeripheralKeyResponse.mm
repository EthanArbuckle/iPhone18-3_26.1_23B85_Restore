@interface SPCBPeripheralKeyResponse
- (SPCBPeripheralKeyResponse)initWithCoder:(id)coder;
- (SPCBPeripheralKeyResponse)initWithPeripherals:(id)peripherals;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCBPeripheralKeyResponse

- (SPCBPeripheralKeyResponse)initWithPeripherals:(id)peripherals
{
  peripheralsCopy = peripherals;
  v9.receiver = self;
  v9.super_class = SPCBPeripheralKeyResponse;
  v6 = [(SPCBPeripheralKeyResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripherals, peripherals);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peripherals = [(SPCBPeripheralKeyResponse *)self peripherals];
  [coderCopy encodeObject:peripherals forKey:@"peripherals"];
}

- (SPCBPeripheralKeyResponse)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"peripherals"];

  peripherals = self->_peripherals;
  self->_peripherals = v8;

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end