@interface FusionInputBands
- (FusionInputBands)init;
- (void)swapFrame:(int)frame withFrame:(int)withFrame;
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

- (void)swapFrame:(int)frame withFrame:(int)withFrame
{
  bands = self->bands;
  v6 = &self->bands[frame];
  v7 = *v6;
  objc_storeStrong(v6, bands[withFrame]);
  v8 = bands[withFrame];
  bands[withFrame] = v7;
}

@end