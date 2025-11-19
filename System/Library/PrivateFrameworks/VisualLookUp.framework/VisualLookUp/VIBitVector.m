@interface VIBitVector
- (VIBitVector)initWithData:(id)a3;
- (VIBitVector)initWithNumberOfBits:(unint64_t)a3;
- (id)data;
- (void)dealloc;
@end

@implementation VIBitVector

- (VIBitVector)initWithNumberOfBits:(unint64_t)a3
{
  v4 = vcvtps_u32_f32(vcvts_n_f32_u64(a3, 3uLL));
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:malloc_type_calloc(v4 length:1uLL freeWhenDone:{0x100004077774924uLL), v4, 1}];
  v6 = [(VIBitVector *)self initWithData:v5];

  return v6;
}

- (VIBitVector)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VIBitVector;
  v5 = [(VIBitVector *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_bitShift = 3;
    v7 = [v4 length];
    v6->_numberOfBytes = v7;
    v6->_numberOfBits = 8 * v7;
    v8 = malloc_type_malloc([v4 length], 0x5F6AD6B9uLL);
    v6->_data = v8;
    [v4 getBytes:v8 length:{objc_msgSend(v4, "length")}];
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