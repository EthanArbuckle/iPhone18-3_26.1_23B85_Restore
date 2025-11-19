@interface CNContact(_TTY_)
+ (id)contactForPhoneNumber:()_TTY_;
- (uint64_t)ttyIsMe;
@end

@implementation CNContact(_TTY_)

- (uint64_t)ttyIsMe
{
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [v2 ttyMeContact];
  v4 = [v3 identifier];
  v5 = [a1 identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

+ (id)contactForPhoneNumber:()_TTY_
{
  v18[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBDA78];
  v4 = a3;
  v5 = [v3 descriptorForRequiredKeysForStyle:0];
  v6 = *MEMORY[0x277CBCFC0];
  v18[0] = v5;
  v18[1] = v6;
  v7 = *MEMORY[0x277CBD020];
  v18[2] = *MEMORY[0x277CBD098];
  v18[3] = v7;
  v18[4] = *MEMORY[0x277CBD158];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];

  v9 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v10 = [v9 contactStore];
  v11 = MEMORY[0x277CBDA58];
  v12 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];

  v13 = [v11 predicateForContactsMatchingPhoneNumber:v12];
  v14 = [v10 unifiedContactsMatchingPredicate:v13 keysToFetch:v8 error:0];

  v15 = [v14 firstObject];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end