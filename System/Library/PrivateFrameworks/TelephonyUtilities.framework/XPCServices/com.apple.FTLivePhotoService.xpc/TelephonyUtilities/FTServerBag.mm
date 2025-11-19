@interface FTServerBag
- (BOOL)isMomentsDisabled;
- (double)momentsRequestTimeout;
@end

@implementation FTServerBag

- (BOOL)isMomentsDisabled
{
  v2 = self;
  v3 = FTServerBag.isMomentsDisabled.getter();

  return v3 & 1;
}

- (double)momentsRequestTimeout
{
  v2 = self;
  v3 = FTServerBag.momentsRequestTimeout.getter();

  return v3;
}

@end