@interface _UIDynamicButtonDeliveryTable
- (id)gestureRecognizers;
@end

@implementation _UIDynamicButtonDeliveryTable

- (id)gestureRecognizers
{
  if (self)
  {
    v2 = objc_opt_new();
    [v2 unionSet:self[1]];
    [v2 unionSet:self[2]];
    [v2 unionSet:self[3]];
    [v2 unionSet:self[4]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end