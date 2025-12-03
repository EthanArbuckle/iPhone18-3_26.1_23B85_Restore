@interface CLLocation(WFAdditions)
- (BOOL)wf_isEquivalentToLocation:()WFAdditions tolerance:;
@end

@implementation CLLocation(WFAdditions)

- (BOOL)wf_isEquivalentToLocation:()WFAdditions tolerance:
{
  v6 = a4;
  [self coordinate];
  if (CLLocationCoordinate2DIsValid(v10) || ([v6 coordinate], CLLocationCoordinate2DIsValid(v11)))
  {
    [self distanceFromLocation:v6];
    v8 = v7 < a2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end