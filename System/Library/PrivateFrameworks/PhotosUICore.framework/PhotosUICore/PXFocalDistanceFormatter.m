@interface PXFocalDistanceFormatter
- (PXFocalDistanceFormatter)init;
@end

@implementation PXFocalDistanceFormatter

- (PXFocalDistanceFormatter)init
{
  v5.receiver = self;
  v5.super_class = PXFocalDistanceFormatter;
  v2 = [(PXFocalDistanceFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXFocalDistanceFormatter *)v2 setPositiveFormat:@"0.## mm"];
    [(PXFocalDistanceFormatter *)v3 setNegativeFormat:@"-0.## mm"];
    [(PXFocalDistanceFormatter *)v3 setUsesGroupingSeparator:0];
    [(PXFocalDistanceFormatter *)v3 setGeneratesDecimalNumbers:0];
    [(PXFocalDistanceFormatter *)v3 setAlwaysShowsDecimalSeparator:0];
    [(PXFocalDistanceFormatter *)v3 setAllowsFloats:1];
  }

  return v3;
}

@end