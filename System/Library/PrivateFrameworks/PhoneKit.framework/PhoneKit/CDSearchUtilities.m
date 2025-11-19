@interface CDSearchUtilities
+ (BOOL)matchedProperties:(id)a3 contains:(id)a4;
+ (id)matchedPhoneNumberFor:(id)a3 searchText:(id)a4 allowMatchingLastFour:(BOOL)a5;
- (CDSearchUtilities)init;
@end

@implementation CDSearchUtilities

+ (id)matchedPhoneNumberFor:(id)a3 searchText:(id)a4 allowMatchingLastFour:(BOOL)a5
{
  v5 = a5;
  v7 = sub_25E5080A8();
  v9 = v8;
  v10 = a3;
  FourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0 = _sSo17CDSearchUtilitiesC8PhoneKitE07matchedC6Number3for10searchText21allowMatchingLastFourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0(v10, v7, v9, v5);

  return FourSo14CNLabeledValueCySo07CNPhoneF0CGSgSo9CNContactC_SSSbtFZ_0;
}

+ (BOOL)matchedProperties:(id)a3 contains:(id)a4
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