@interface OIRenderLegendForSeriesInChart
@end

@implementation OIRenderLegendForSeriesInChart

double ___OIRenderLegendForSeriesInChart_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 120) == 1)
  {
    v2 = *(a1 + 96) + v1 + *(a1 + 48) * 0.5 - *(a1 + 64) * ((*(a1 + 80) / 2 - *(a1 + 88)) + -0.5);
  }

  else
  {
    v2 = *(a1 + 96) + v1 + *(a1 + 64) * *(a1 + 88);
  }

  return floor(v2 + 4.0) + 0.5;
}

@end