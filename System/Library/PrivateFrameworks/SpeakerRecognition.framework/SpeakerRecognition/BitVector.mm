@interface BitVector
- (BitVector)initWithNumberOfBits:(unint64_t)bits;
- (void)loadData:(id)data;
@end

@implementation BitVector

- (void)loadData:(id)data
{
  v4 = [data mutableCopy];
  bvData = self->_bvData;
  self->_bvData = v4;

  MEMORY[0x2821F96F8]();
}

- (BitVector)initWithNumberOfBits:(unint64_t)bits
{
  v9.receiver = self;
  v9.super_class = BitVector;
  v4 = [(BitVector *)&v9 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = xmmword_225EA9E30;
    *(v4 + 4) = bits;
    *(v4 + 5) = vcvtps_u32_f32(vcvts_n_f32_u64(bits, 3uLL));
    v6 = [MEMORY[0x277CBEB28] dataWithLength:?];
    bvData = v5->_bvData;
    v5->_bvData = v6;
  }

  return v5;
}

@end