@interface PCCalendarProbableVisit
- (PCCalendarProbableVisit)initWithLocation:(id)a3 withEvidence:(double)a4;
@end

@implementation PCCalendarProbableVisit

- (PCCalendarProbableVisit)initWithLocation:(id)a3 withEvidence:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PCCalendarProbableVisit;
  v7 = [(PCCalendarProbableVisit *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PCCalendarProbableVisit *)v7 setVisit:v6];
    [(PCCalendarProbableVisit *)v8 setEvidence:a4];
  }

  return v8;
}

@end