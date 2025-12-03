@interface PKZeroingDataContainer
- (PKZeroingDataContainer)initWithData:(id)data;
- (void)dealloc;
@end

@implementation PKZeroingDataContainer

- (PKZeroingDataContainer)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PKZeroingDataContainer;
  v6 = [(PKZeroingDataContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(NSData *)self->_data length];
  if (v3)
  {
    memset_s([(NSData *)self->_data bytes], v3, 0, v3);
  }

  v4.receiver = self;
  v4.super_class = PKZeroingDataContainer;
  [(PKZeroingDataContainer *)&v4 dealloc];
}

@end