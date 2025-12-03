@interface VGSharedFloatArray
- (VGSharedFloatArray)initWithCoder:(id)coder;
- (VGSharedFloatArray)initWithData:(id)data;
- (VGSharedFloatArray)initWithFloats:(span<const)float;
- (id)makeMetadataInDirectory:(id)directory fileIdx:(unint64_t *)idx;
- (span<const)floats;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGSharedFloatArray

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = self->_data;
  v5 = NSStringFromSelector(sel_data);
  [coderCopy encodeObject:data forKey:v5];
}

- (VGSharedFloatArray)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = VGSharedFloatArray;
  v6 = [(VGSharedFloatArray *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v8 = v7;
  }

  return v7;
}

- (VGSharedFloatArray)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_data);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

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
  bytes = [(NSData *)self->_data bytes];
  v4 = [(NSData *)self->_data length]>> 2;
  v5 = bytes;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (id)makeMetadataInDirectory:(id)directory fileIdx:(unint64_t *)idx
{
  directoryCopy = directory;
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@_%06zu.bin", v9, *idx];

  v11 = [directoryCopy stringByAppendingPathComponent:v10];
  ++*idx;
  [(NSData *)self->_data writeToFile:v11 atomically:0];

  return v10;
}

@end