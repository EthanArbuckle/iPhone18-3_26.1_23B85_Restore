@interface PCCalendarProbableVisit
- (PCCalendarProbableVisit)initWithLocation:(id)location withEvidence:(double)evidence;
@end

@implementation PCCalendarProbableVisit

- (PCCalendarProbableVisit)initWithLocation:(id)location withEvidence:(double)evidence
{
  locationCopy = location;
  v10.receiver = self;
  v10.super_class = PCCalendarProbableVisit;
  v7 = [(PCCalendarProbableVisit *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PCCalendarProbableVisit *)v7 setVisit:locationCopy];
    [(PCCalendarProbableVisit *)v8 setEvidence:evidence];
  }

  return v8;
}

@end