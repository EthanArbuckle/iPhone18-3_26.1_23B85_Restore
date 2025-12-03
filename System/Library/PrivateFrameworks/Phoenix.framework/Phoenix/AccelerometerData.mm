@interface AccelerometerData
- (AccelerometerData)initWithData:(id)data timestamp:(double)timestamp;
- (id)description;
@end

@implementation AccelerometerData

- (AccelerometerData)initWithData:(id)data timestamp:(double)timestamp
{
  dataCopy = data;
  v8 = a2;
  timestampCopy = timestamp;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = AccelerometerData;
  v9 = [(AccelerometerData *)&v6 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v9->_timestamp = timestampCopy;
    v9->_x = dataCopy.var0;
    v9->_y = dataCopy.var1;
    v9->_z = dataCopy.var2;
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