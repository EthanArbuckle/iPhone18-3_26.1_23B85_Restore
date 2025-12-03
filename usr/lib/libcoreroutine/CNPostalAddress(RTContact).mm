@interface CNPostalAddress(RTContact)
+ (id)_rt_labelStringWithAddressLabelType:()RTContact;
- (id)_rt_toString;
@end

@implementation CNPostalAddress(RTContact)

+ (id)_rt_labelStringWithAddressLabelType:()RTContact
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_2788CF080 + a3);
  }

  return v4;
}

- (id)_rt_toString
{
  v2 = MEMORY[0x277CCACA8];
  street = [self street];
  v4 = [street stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  city = [self city];
  state = [self state];
  postalCode = [self postalCode];
  country = [self country];
  v9 = [v2 stringWithFormat:@"street, %@, city, %@, state, %@, postalCode, %@, country, %@", v4, city, state, postalCode, country];

  return v9;
}

@end