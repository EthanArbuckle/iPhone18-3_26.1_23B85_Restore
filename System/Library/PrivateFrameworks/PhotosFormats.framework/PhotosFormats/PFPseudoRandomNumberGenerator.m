@interface PFPseudoRandomNumberGenerator
- (PFPseudoRandomNumberGenerator)initWithSeed:(unint64_t)a3;
- (double)_next;
- (unint64_t)nextUnsignedIntegerLessThan:(unint64_t)a3;
- (void)setSeed:(unint64_t)a3;
@end

@implementation PFPseudoRandomNumberGenerator

- (void)setSeed:(unint64_t)a3
{
  *&self->_z = a3;
  if (!a3)
  {
    self->_z = 1;
  }

  if (!HIDWORD(a3))
  {
    self->_w = 1;
  }
}

- (double)_next
{
  v2 = vsra_n_u32(vmul_s32(vand_s8(*&self->_z, 0xFFFF0000FFFFLL), 0x465000009069), *&self->_z, 0x10uLL);
  *&self->_z = v2;
  return vcvtd_n_f64_u32(v2.i32[1] + (v2.i32[0] << 16), 0x20uLL);
}

- (unint64_t)nextUnsignedIntegerLessThan:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  [(PFPseudoRandomNumberGenerator *)self _next];
  v6 = v5 * v4;
  if (v6 >= (a3 - 1))
  {
    return (a3 - 1);
  }

  return v6;
}

- (PFPseudoRandomNumberGenerator)initWithSeed:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PFPseudoRandomNumberGenerator;
  v4 = [(PFPseudoRandomNumberGenerator *)&v6 init];
  [(PFPseudoRandomNumberGenerator *)v4 setSeed:a3];
  return v4;
}

@end