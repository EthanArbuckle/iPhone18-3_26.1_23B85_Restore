@interface VIBitVector
- (VIBitVector)initWithData:(id)data;
- (VIBitVector)initWithNumberOfBits:(unint64_t)bits;
- (id)data;
- (void)dealloc;
@end

@implementation VIBitVector

- (VIBitVector)initWithNumberOfBits:(unint64_t)bits
{
  v4 = vcvtps_u32_f32(vcvts_n_f32_u64(bits, 3uLL));
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:malloc_type_calloc(v4 length:1uLL freeWhenDone:{0x100004077774924uLL), v4, 1}];
  v6 = [(VIBitVector *)self initWithData:v5];

  return v6;
}

- (VIBitVector)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = VIBitVector;
  v5 = [(VIBitVector *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_bitShift = 3;
    v7 = [dataCopy length];
    v6->_numberOfBytes = v7;
    v6->_numberOfBits = 8 * v7;
    v8 = malloc_type_malloc([dataCopy length], 0x5F6AD6B9uLL);
    v6->_data = v8;
    [dataCopy getBytes:v8 length:{objc_msgSend(dataCopy, "length")}];
  }

  return v6;
}

- (void)dealloc
{
  free(self->_data);
  v3.receiver = self;
  v3.super_class = VIBitVector;
  [(VIBitVector *)&v3 dealloc];
}

- (id)data
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:self->_data length:self->_numberOfBytes];

  return v2;
}

@end