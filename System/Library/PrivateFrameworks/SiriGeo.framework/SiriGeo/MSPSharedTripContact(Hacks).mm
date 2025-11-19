@interface MSPSharedTripContact(Hacks)
- (id)in_labeledValue;
@end

@implementation MSPSharedTripContact(Hacks)

- (id)in_labeledValue
{
  if ([a1 isPhoneNumber])
  {
    v2 = [a1 labeledValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end