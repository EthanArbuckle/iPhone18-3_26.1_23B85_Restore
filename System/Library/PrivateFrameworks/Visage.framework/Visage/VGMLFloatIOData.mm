@interface VGMLFloatIOData
- (BOOL)isEqual:(id)a3;
- (VGMLFloatIOData)initWithData:(id)a3;
- (VGMLFloatIOData)initWithSize:(unint64_t)a3 withData:(const float *)a4;
@end

@implementation VGMLFloatIOData

- (VGMLFloatIOData)initWithData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VGMLFloatIOData;
  v6 = [(VGMLFloatIOData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = v7;
  }

  return v7;
}

- (VGMLFloatIOData)initWithSize:(unint64_t)a3 withData:(const float *)a4
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a4 length:4 * a3 freeWhenDone:0];
  v6 = [(VGMLFloatIOData *)self initWithData:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = self->_data;
    v6 = [v4 data];
    v7 = [(NSData *)data isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end