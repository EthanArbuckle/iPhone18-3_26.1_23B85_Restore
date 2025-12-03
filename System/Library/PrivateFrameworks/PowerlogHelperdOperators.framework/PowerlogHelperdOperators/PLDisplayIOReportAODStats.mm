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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end