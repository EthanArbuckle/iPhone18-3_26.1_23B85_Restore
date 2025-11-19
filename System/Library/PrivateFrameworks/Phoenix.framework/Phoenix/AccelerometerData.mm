@interface AccelerometerData
- (AccelerometerData)initWithData:(id)a3 timestamp:(double)a4;
- (id)description;
@end

@implementation AccelerometerData

- (AccelerometerData)initWithData:(id)a3 timestamp:(double)a4
{
  v10 = a3;
  v8 = a2;
  v7 = a4;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = AccelerometerData;
  v9 = [(AccelerometerData *)&v6 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v9->_timestamp = v7;
    v9->_x = v10.var0;
    v9->_y = v10.var1;
    v9->_z = v10.var2;
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_x];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_y];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_z];
  v8 = [v3 stringWithFormat:@"%@, %@, %@, %@", v7, v6, v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  return v8;
}

@end