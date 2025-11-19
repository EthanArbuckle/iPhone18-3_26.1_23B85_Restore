@interface PCCalendarAssociatedVisit
- (PCCalendarAssociatedVisit)initWithLocation:(id)a3 atFraction:(double)a4;
@end

@implementation PCCalendarAssociatedVisit

- (PCCalendarAssociatedVisit)initWithLocation:(id)a3 atFraction:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PCCalendarAssociatedVisit;
  v7 = [(PCCalendarAssociatedVisit *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PCCalendarAssociatedVisit *)v7 setVisit:v6];
    [(PCCalendarAssociatedVisit *)v8 setFractionOfCalDuration:a4];
  }

  return v8;
}

@end