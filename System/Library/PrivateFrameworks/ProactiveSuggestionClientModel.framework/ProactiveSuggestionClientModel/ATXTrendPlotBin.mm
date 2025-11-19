@interface ATXTrendPlotBin
- (ATXTrendPlotBin)initWithStartDate:(id)a3;
@end

@implementation ATXTrendPlotBin

- (ATXTrendPlotBin)initWithStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(ATXTrendPlotBin *)v5 setStartDate:v4];

  return v5;
}

@end