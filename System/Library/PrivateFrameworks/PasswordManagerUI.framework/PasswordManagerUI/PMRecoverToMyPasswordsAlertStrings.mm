@interface PMRecoverToMyPasswordsAlertStrings
+ (id)alertMessageForRecoveringSavedAccountToMyPasswords:(id)passwords;
+ (id)alertMessageForRecoveringSavedAccountsToMyPasswords:(id)passwords;
+ (id)alertTitleAndMessageForRecoveringSavedAccountToMyPasswords:(id)passwords;
+ (id)alertTitleAndMessageForRecoveringSavedAccountsToMyPasswords:(id)passwords;
+ (id)alertTitleForRecoveringSavedAccountToMyPasswords:(id)passwords;
+ (id)alertTitleForRecoveringSavedAccountsToMyPasswords:(id)passwords;
- (PMRecoverToMyPasswordsAlertStrings)init;
@end

@implementation PMRecoverToMyPasswordsAlertStrings

+ (id)alertTitleForRecoveringSavedAccountToMyPasswords:(id)passwords
{
  passwordsCopy = passwords;
  sub_21CAF35AC(passwordsCopy);

  v4 = sub_21CB85584();

  return v4;
}

+ (id)alertMessageForRecoveringSavedAccountToMyPasswords:(id)passwords
{
  passwordsCopy = passwords;
  sub_21CAF3718(passwordsCopy);
  v5 = v4;

  if (v5)
  {
    v6 = sub_21CB85584();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)alertTitleAndMessageForRecoveringSavedAccountToMyPasswords:(id)passwords
{
  swift_getObjCClassMetadata();
  passwordsCopy = passwords;
  v5 = sub_21CAF0CB4(passwordsCopy);

  return v5;
}

+ (id)alertTitleForRecoveringSavedAccountsToMyPasswords:(id)passwords
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v3 = sub_21CB85824();
  swift_getObjCClassMetadata();
  sub_21CAF0DF0(v3);

  v4 = sub_21CB85584();

  return v4;
}

+ (id)alertMessageForRecoveringSavedAccountsToMyPasswords:(id)passwords
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v3 = sub_21CB85824();
  swift_getObjCClassMetadata();
  sub_21CAF1F24(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_21CB85584();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)alertTitleAndMessageForRecoveringSavedAccountsToMyPasswords:(id)passwords
{
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  sub_21CB85824();
  swift_getObjCClassMetadata();
  sub_21CAF2954();
  v4 = v3;

  return v4;
}

- (PMRecoverToMyPasswordsAlertStrings)init
{
  v3.receiver = self;
  v3.super_class = PMRecoverToMyPasswordsAlertStrings;
  return [(PMRecoverToMyPasswordsAlertStrings *)&v3 init];
}

@end