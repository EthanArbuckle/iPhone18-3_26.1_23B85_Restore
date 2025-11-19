@interface GQHChartLegend
+ (char)pdfId:(id)a3;
+ (id)geometry:(id)a3;
+ (int)handleFloatingLegend:(id)a3 state:(id)a4;
+ (int)handleInlineLegend:(id)a3 state:(id)a4;
@end

@implementation GQHChartLegend

+ (char)pdfId:(id)a3
{
  v3 = [a3 legend];

  return [v3 uid];
}

+ (id)geometry:(id)a3
{
  v3 = [a3 legend];

  return [v3 geometry];
}

+ (int)handleFloatingLegend:(id)a3 state:(id)a4
{
  v6 = [a3 chart];

  return [a1 handleFloatingChart:v6 state:a4];
}

+ (int)handleInlineLegend:(id)a3 state:(id)a4
{
  if (![objc_msgSend(a3 "chart")])
  {
    [objc_msgSend(a3 "chart")];
  }

  v7 = [a3 chart];

  return [a1 handleInlineChart:v7 state:a4];
}

@end