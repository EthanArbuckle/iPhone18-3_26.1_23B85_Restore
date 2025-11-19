@interface PXOneSidedRegion(PXStory)
- (void)initWithEdge:()PXStory tiltedInset:rect:;
@end

@implementation PXOneSidedRegion(PXStory)

- (void)initWithEdge:()PXStory tiltedInset:rect:
{
  v3 = 0.0;
  if (a3 <= 3)
  {
    v3 = dbl_1A5381C30[a3];
  }

  __sincos_stret(v3);
  PXRectGetCenter();
}

@end