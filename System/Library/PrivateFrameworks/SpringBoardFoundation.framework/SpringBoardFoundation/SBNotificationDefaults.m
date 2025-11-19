@interface SBNotificationDefaults
+ (id)standardDefaults;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBNotificationDefaults

+ (id)standardDefaults
{
  if (standardDefaults___once != -1)
  {
    +[SBNotificationDefaults standardDefaults];
  }

  v3 = standardDefaults___instance;

  return v3;
}

uint64_t __42__SBNotificationDefaults_standardDefaults__block_invoke()
{
  v0 = objc_alloc_init(SBNotificationDefaults);
  v1 = standardDefaults___instance;
  standardDefaults___instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"displayIDsWithBadgingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDisplayIDsWithBadgingEnabled" toDefaultValue:0 options:12];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"legacyAlarmList"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"AlarmList" toDefaultValue:0 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldTestBannerPlayTextTone"];
  v6 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBTestBannerPlaysTextTone" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dontSuppressForPrivacyWhenUnlocked"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBBulletinDontSuppressForPrivacyWhenUnlocked" toDefaultValue:v6 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"alwaysAllowDefaultAction"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBAlwaysAllowDefaultAction" toDefaultValue:v6 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"alwaysAllowLongLookGesture"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBAlwaysAllowLongLookGesture" toDefaultValue:v6 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"alwaysSpeakNotifications"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"NCAlwaysSpeakNotifications" toDefaultValue:v6 options:1];
}

@end