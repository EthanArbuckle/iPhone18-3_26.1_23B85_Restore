@interface PPMockRTLocationOfInterestVisit
+ (id)mockLocationOfInterestVisitWithEntryDate:(id)date exitDate:(id)exitDate;
@end

@implementation PPMockRTLocationOfInterestVisit

+ (id)mockLocationOfInterestVisitWithEntryDate:(id)date exitDate:(id)exitDate
{
  exitDateCopy = exitDate;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 setEntryDate:dateCopy];

  [v7 setExitDate:exitDateCopy];

  return v7;
}

@end