@interface FusionInputBands
- (FusionInputBands)init;
- (void)swapFrame:(int)a3 withFrame:(int)a4;
@end

@implementation FusionInputBands

- (FusionInputBands)init
{
  v7.receiver = self;
  v7.super_class = FusionInputBands;
  v2 = [(FusionInputBands *)&v7 init];
  if (v2)
  {
    for (i = 8; i != 48; i += 8)
    {
      v4 = objc_alloc_init(PyramidStorage_NRF);
      v5 = *(&v2->super.isa + i);
      *(&v2->super.isa + i) = v4;
    }
  }

  return v2;
}

- (void)swapFrame:(int)a3 withFrame:(int)a4
{
  bands = self->bands;
  v6 = &self->bands[a3];
  v7 = *v6;
  objc_storeStrong(v6, bands[a4]);
  v8 = bands[a4];
  bands[a4] = v7;
}

@end