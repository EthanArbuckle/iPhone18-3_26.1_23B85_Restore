@interface ATXTrendPlotBin
- (ATXTrendPlotBin)initWithStartDate:(id)date;
@end

@implementation ATXTrendPlotBin

- (ATXTrendPlotBin)initWithStartDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  [(ATXTrendPlotBin *)v5 setStartDate:dateCopy];

  return v5;
}

@end