@interface PLDisplayIOReportAODStats
- (PLDisplayIOReportAODStats)init;
@end

@implementation PLDisplayIOReportAODStats

- (PLDisplayIOReportAODStats)init
{
  if (+[PLDisplayAgent shouldLogFromDCP])
  {
    v5.receiver = self;
    v5.super_class = PLDisplayIOReportAODStats;
    self = [(PLIOReportStats *)&v5 initWithGroup:@"DCP" andSubGroup:@"aod stats"];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end