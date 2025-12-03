@interface TSTimeLineFilter
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio;
- (void)getAnchors:(id *)anchors andRateRatio:(id *)ratio;
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

- (void)getAnchors:(id *)anchors andRateRatio:(id *)ratio
{
  if (anchors)
  {
    anchors->var0 = -1;
    anchors->var1 = -1;
  }

  if (ratio)
  {
    ratio->var0 = -1;
    ratio->var1 = -1;
  }
}

@end