@interface GQDChartLegend
- (void)dealloc;
@end

@implementation GQDChartLegend

- (void)dealloc
{
  if (self->mIsChartRetained)
  {
  }

  v3.receiver = self;
  v3.super_class = GQDChartLegend;
  [(GQDGraphic *)&v3 dealloc];
}

@end