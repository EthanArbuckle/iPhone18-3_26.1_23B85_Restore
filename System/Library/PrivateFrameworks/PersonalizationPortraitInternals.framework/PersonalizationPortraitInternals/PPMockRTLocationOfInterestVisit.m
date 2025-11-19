@interface PPMockRTLocationOfInterestVisit
+ (id)mockLocationOfInterestVisitWithEntryDate:(id)a3 exitDate:(id)a4;
@end

@implementation PPMockRTLocationOfInterestVisit

+ (id)mockLocationOfInterestVisitWithEntryDate:(id)a3 exitDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setEntryDate:v6];

  [v7 setExitDate:v5];

  return v7;
}

@end