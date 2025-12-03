@interface PLDisplayIOReportStats
- (PLDisplayIOReportStats)init;
@end

@implementation PLDisplayIOReportStats

- (PLDisplayIOReportStats)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    if (+[PLDisplayAgent shouldLogFromDCP])
    {
      if ([MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{302025, 302028, 302026, 302029, 0}])
      {
        v7.receiver = self;
        v7.super_class = PLDisplayIOReportStats;
        v4 = [(PLIOReportStats *)&v7 initWithGroup:@"DCP0" andSubGroup:@"display stats"];
      }

      else
      {
        v6.receiver = self;
        v6.super_class = PLDisplayIOReportStats;
        v4 = [(PLIOReportStats *)&v6 initWithGroup:@"DCP" andSubGroup:@"display stats"];
      }
    }

    else
    {
      v8.receiver = self;
      v8.super_class = PLDisplayIOReportStats;
      v4 = [(PLIOReportStats *)&v8 initWithGroup:@"IOMFB Reporting" andSubGroup:@"display stats"];
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

@end