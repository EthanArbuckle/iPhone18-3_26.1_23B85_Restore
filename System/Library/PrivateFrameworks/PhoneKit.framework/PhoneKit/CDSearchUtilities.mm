@interface CDSearchUtilities
+ (BOOL)matchedProperties:(id)properties contains:(id)contains;
+ (id)matchedPhoneNumberFor:(id)for searchText:(id)text allowMatchingLastFour:(BOOL)four;
- (CDSearchUtilities)init;
@end

@implementation CDSearchUtilities

+ (id)matchedPhoneNumberFor:(id)for searchText:(id)text allowMatchingLastFour:(BOOL)four
{
  fourCopy = four;
  v7 = sub_25E5080A8();
  v9 = v8;
  forCopy = for;
  FourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0 = _sSo17CDSearchUtilitiesC8PhoneKitE07matchedC6Number3for10searchText21allowMatchingLastFourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0(forCopy, v7, v9, fourCopy);

  return FourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0;
}

+ (BOOL)matchedProperties:(id)properties contains:(id)contains
{
  v4 = sub_25E508068();
  v5 = sub_25E5080A8();
  v7 = _sSo17CDSearchUtilitiesC8PhoneKitE17matchedProperties_8containsSbSDys11AnyHashableVypG_SStFZ_0(v4, v5, v6);

  return v7 & 1;
}

- (CDSearchUtilities)init
{
  v3.receiver = self;
  v3.super_class = CDSearchUtilities;
  return [(CDSearchUtilities *)&v3 init];
}

@end