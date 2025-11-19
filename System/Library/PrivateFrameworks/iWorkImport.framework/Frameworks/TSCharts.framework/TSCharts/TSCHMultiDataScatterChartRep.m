@interface TSCHMultiDataScatterChartRep
- (id)createMultiDataElementShapeLayerForSeriesIndex:(unint64_t)a3;
- (void)updateAppearanceForElementLayer:(id)a3 seriesIndex:(unint64_t)a4;
@end

@implementation TSCHMultiDataScatterChartRep

- (id)createMultiDataElementShapeLayerForSeriesIndex:(unint64_t)a3
{
  v3 = objc_alloc_init(TSCHMultiDataScatterSeriesRenderingElementShapeLayer);

  return v3;
}

- (void)updateAppearanceForElementLayer:(id)a3 seriesIndex:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = TSCHMultiDataScatterChartRep;
  [(TSCHMultiDataScatterChartRep *)&v4 updateAppearanceForElementLayer:a3 seriesIndex:a4];
}

@end