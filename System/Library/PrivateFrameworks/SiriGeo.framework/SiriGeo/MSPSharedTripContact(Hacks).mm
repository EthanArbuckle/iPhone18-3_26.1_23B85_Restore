@interface MSPSharedTripContact(Hacks)
- (id)in_labeledValue;
@end

@implementation MSPSharedTripContact(Hacks)

- (id)in_labeledValue
{
  if ([self isPhoneNumber])
  {
    labeledValue = [self labeledValue];
  }

  else
  {
    labeledValue = 0;
  }

  return labeledValue;
}

@end