@interface GQDChart
- (void)dealloc;
- (void)setLegend:(id)legend;
@end

@implementation GQDChart

- (void)dealloc
{
  if (self->mIsLegendRetained)
  {
  }

  v3.receiver = self;
  v3.super_class = GQDChart;
  [(GQDGraphic *)&v3 dealloc];
}

- (void)setLegend:(id)legend
{
  mLegend = self->mLegend;
  if (mLegend && self->mIsLegendRetained)
  {
  }

  self->mIsLegendRetained = 0;
  self->mLegend = legend;
}

@end