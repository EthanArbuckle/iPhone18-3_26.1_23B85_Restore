@interface TSTimeLineFilter
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio;
- (void)getAnchors:(id *)a3 andRateRatio:(id *)a4;
@end

@implementation TSTimeLineFilter

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio
{
  v2 = -1;
  v3 = -1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)getAnchors:(id *)a3 andRateRatio:(id *)a4
{
  if (a3)
  {
    a3->var0 = -1;
    a3->var1 = -1;
  }

  if (a4)
  {
    a4->var0 = -1;
    a4->var1 = -1;
  }
}

@end