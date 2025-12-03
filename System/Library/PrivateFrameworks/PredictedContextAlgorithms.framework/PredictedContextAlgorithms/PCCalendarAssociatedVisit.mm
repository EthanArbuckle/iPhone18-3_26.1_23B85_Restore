@interface PCCalendarAssociatedVisit
- (PCCalendarAssociatedVisit)initWithLocation:(id)location atFraction:(double)fraction;
@end

@implementation PCCalendarAssociatedVisit

- (PCCalendarAssociatedVisit)initWithLocation:(id)location atFraction:(double)fraction
{
  locationCopy = location;
  v10.receiver = self;
  v10.super_class = PCCalendarAssociatedVisit;
  v7 = [(PCCalendarAssociatedVisit *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PCCalendarAssociatedVisit *)v7 setVisit:locationCopy];
    [(PCCalendarAssociatedVisit *)v8 setFractionOfCalDuration:fraction];
  }

  return v8;
}

@end