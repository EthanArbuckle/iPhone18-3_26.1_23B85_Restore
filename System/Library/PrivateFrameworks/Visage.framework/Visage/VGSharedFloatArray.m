@interface VGSharedFloatArray
- (VGSharedFloatArray)initWithCoder:(id)a3;
- (VGSharedFloatArray)initWithData:(id)a3;
- (VGSharedFloatArray)initWithFloats:(span<const)float;
- (id)makeMetadataInDirectory:(id)a3 fileIdx:(unint64_t *)a4;
- (span<const)floats;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGSharedFloatArray

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  data = self->_data;
  v5 = NSStringFromSelector(sel_data);
  [v6 encodeObject:data forKey:v5];
}

- (VGSharedFloatArray)initWithData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VGSharedFloatArray;
  v6 = [(VGSharedFloatArray *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = v7;
  }

  return v7;
}

- (VGSharedFloatArray)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_data);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(VGSharedFloatArray *)self initWithData:v7];
  return v8;
}

- (VGSharedFloatArray)initWithFloats:(span<const)float
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3.var0 length:4 * a3.var1];
  v5 = [(VGSharedFloatArray *)self initWithData:v4];

  return v5;
}

- (span<const)floats
{
  v3 = [(NSData *)self->_data bytes];
  v4 = [(NSData *)self->_data length]>> 2;
  v5 = v3;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (id)makeMetadataInDirectory:(id)a3 fileIdx:(unint64_t *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@_%06zu.bin", v9, *a4];

  v11 = [v6 stringByAppendingPathComponent:v10];
  ++*a4;
  [(NSData *)self->_data writeToFile:v11 atomically:0];

  return v10;
}

@end