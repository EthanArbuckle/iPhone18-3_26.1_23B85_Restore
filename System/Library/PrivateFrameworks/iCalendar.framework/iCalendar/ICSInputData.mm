@interface ICSInputData
- (ICSInputData)initWithData:(id)data;
- (char)read;
@end

@implementation ICSInputData

- (ICSInputData)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ICSInputData;
  v5 = [(ICSInputData *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    data = v5->_data;
    v5->_data = v6;

    v5->_cursor = 0;
    v5->_rawData = [(NSData *)v5->_data bytes];
    v5->_length = [(NSData *)v5->_data length];
  }

  return v5;
}

- (char)read
{
  cursor = self->_cursor;
  if (cursor >= self->_length)
  {
    return 0;
  }

  v3 = self->_rawData[cursor];
  self->_cursor = cursor + 1;
  return v3;
}

@end