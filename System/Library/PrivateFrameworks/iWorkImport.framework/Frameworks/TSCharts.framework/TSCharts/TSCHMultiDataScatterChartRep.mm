@interface TSCHMultiDataScatterChartRep
- (id)createMultiDataElementShapeLayerForSeriesIndex:(unint64_t)index;
- (void)updateAppearanceForElementLayer:(id)layer seriesIndex:(unint64_t)index;
@end

@implementation TSCHMultiDataScatterChartRep

- (id)createMultiDataElementShapeLayerForSeriesIndex:(unint64_t)index
{
  v3 = objc_alloc_init(TSCHMultiDataScatterSeriesRenderingElementShapeLayer);

  return v3;
}

- (void)updateAppearanceForElementLayer:(id)layer seriesIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = TSCHMultiDataScatterChartRep;
  [(TSCHMultiDataScatterChartRep *)&v4 updateAppearanceForElementLayer:layer seriesIndex:index];
}

@end