@interface CNContact(RTContact)
- (id)_rt_toString;
@end

@implementation CNContact(RTContact)

- (id)_rt_toString
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [self identifier];
  v4 = MEMORY[0x277CCACA8];
  givenName = [self givenName];
  familyName = [self familyName];
  v7 = [v4 stringWithFormat:@"%@ %@", givenName, familyName];
  v8 = [v2 stringWithFormat:@"identifier, %@, name, %@", identifier, v7];

  return v8;
}

@end