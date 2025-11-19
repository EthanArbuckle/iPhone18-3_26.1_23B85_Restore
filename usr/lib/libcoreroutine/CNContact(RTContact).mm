@interface CNContact(RTContact)
- (id)_rt_toString;
@end

@implementation CNContact(RTContact)

- (id)_rt_toString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 identifier];
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 givenName];
  v6 = [a1 familyName];
  v7 = [v4 stringWithFormat:@"%@ %@", v5, v6];
  v8 = [v2 stringWithFormat:@"identifier, %@, name, %@", v3, v7];

  return v8;
}

@end