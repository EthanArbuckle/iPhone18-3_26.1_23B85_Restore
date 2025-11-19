@interface TSCH3DChartSelectedElementSceneObjectDelegate
- (TSCH3DChartSelectedElementSceneObjectDelegate)initWithSelectedSeriesIndex:(unint64_t)a3;
@end

@implementation TSCH3DChartSelectedElementSceneObjectDelegate

- (TSCH3DChartSelectedElementSceneObjectDelegate)initWithSelectedSeriesIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSCH3DChartSelectedElementSceneObjectDelegate;
  result = [(TSCH3DChartSelectedElementSceneObjectDelegate *)&v5 init];
  if (result)
  {
    result->_selectedSeriesIndex = a3;
  }

  return result;
}

@end