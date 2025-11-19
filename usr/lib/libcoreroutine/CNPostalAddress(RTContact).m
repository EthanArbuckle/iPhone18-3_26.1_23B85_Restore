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
  v3 = [a1 street];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v5 = [a1 city];
  v6 = [a1 state];
  v7 = [a1 postalCode];
  v8 = [a1 country];
  v9 = [v2 stringWithFormat:@"street, %@, city, %@, state, %@, postalCode, %@, country, %@", v4, v5, v6, v7, v8];

  return v9;
}

@end