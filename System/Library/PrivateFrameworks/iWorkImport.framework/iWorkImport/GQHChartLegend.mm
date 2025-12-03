@interface GQHChartLegend
+ (char)pdfId:(id)id;
+ (id)geometry:(id)geometry;
+ (int)handleFloatingLegend:(id)legend state:(id)state;
+ (int)handleInlineLegend:(id)legend state:(id)state;
@end

@implementation GQHChartLegend

+ (char)pdfId:(id)id
{
  legend = [id legend];

  return [legend uid];
}

+ (id)geometry:(id)geometry
{
  legend = [geometry legend];

  return [legend geometry];
}

+ (int)handleFloatingLegend:(id)legend state:(id)state
{
  chart = [legend chart];

  return [self handleFloatingChart:chart state:state];
}

+ (int)handleInlineLegend:(id)legend state:(id)state
{
  if (![objc_msgSend(legend "chart")])
  {
    [objc_msgSend(legend "chart")];
  }

  chart = [legend chart];

  return [self handleInlineChart:chart state:state];
}

@end