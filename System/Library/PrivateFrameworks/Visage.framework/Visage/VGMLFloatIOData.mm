@interface VGMLFloatIOData
- (BOOL)isEqual:(id)equal;
- (VGMLFloatIOData)initWithData:(id)data;
- (VGMLFloatIOData)initWithSize:(unint64_t)size withData:(const float *)data;
@end

@implementation VGMLFloatIOData

- (VGMLFloatIOData)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = VGMLFloatIOData;
  v6 = [(VGMLFloatIOData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v8 = v7;
  }

  return v7;
}

- (VGMLFloatIOData)initWithSize:(unint64_t)size withData:(const float *)data
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:data length:4 * size freeWhenDone:0];
  v6 = [(VGMLFloatIOData *)self initWithData:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = self->_data;
    data = [equalCopy data];
    v7 = [(NSData *)data isEqual:data];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end