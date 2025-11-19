@interface SPCBPeripheralKeyResponse
- (SPCBPeripheralKeyResponse)initWithCoder:(id)a3;
- (SPCBPeripheralKeyResponse)initWithPeripherals:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCBPeripheralKeyResponse

- (SPCBPeripheralKeyResponse)initWithPeripherals:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPCBPeripheralKeyResponse;
  v6 = [(SPCBPeripheralKeyResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripherals, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPCBPeripheralKeyResponse *)self peripherals];
  [v4 encodeObject:v5 forKey:@"peripherals"];
}

- (SPCBPeripheralKeyResponse)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"peripherals"];

  peripherals = self->_peripherals;
  self->_peripherals = v8;

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end