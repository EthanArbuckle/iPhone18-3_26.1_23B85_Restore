@interface _UIDynamicButtonDeliveryTable
- (id)gestureRecognizers;
@end

@implementation _UIDynamicButtonDeliveryTable

- (id)gestureRecognizers
{
  if (a1)
  {
    v2 = objc_opt_new();
    [v2 unionSet:a1[1]];
    [v2 unionSet:a1[2]];
    [v2 unionSet:a1[3]];
    [v2 unionSet:a1[4]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end