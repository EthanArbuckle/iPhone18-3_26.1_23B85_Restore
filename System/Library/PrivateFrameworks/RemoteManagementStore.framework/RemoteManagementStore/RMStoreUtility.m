@interface RMStoreUtility
+ (BOOL)isValidURL:(id)a3;
+ (id)_passcodeSettingsForUserEnrollmentWithDeclaration:(id)a3;
+ (id)filterForUserEnrollmentWithDeclaration:(id)a3;
@end

@implementation RMStoreUtility

+ (id)filterForUserEnrollmentWithDeclaration:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [RMStoreUtility _passcodeSettingsForUserEnrollmentWithDeclaration:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_passcodeSettingsForUserEnrollmentWithDeclaration:(id)a3
{
  v3 = MEMORY[0x277D46030];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v7 = [v4 payloadMaximumInactivityInMinutes];

  v8 = &unk_287474D50;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = [v3 buildWithIdentifier:v6 requirePasscode:&unk_287474D08 requireAlphanumericPasscode:0 requireComplexPasscode:&unk_287474D08 minimumLength:&unk_287474D20 minimumComplexCharacters:&unk_287474D38 maximumFailedAttempts:0 failedAttemptsResetInMinutes:0 maximumGracePeriodInMinutes:0 maximumInactivityInMinutes:v8 maximumPasscodeAgeInDays:0 passcodeReuseLimit:0 changeAtNextAuth:0 customRegex:0];

  return v9;
}

+ (BOOL)isValidURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 caseInsensitiveCompare:@"https"];

  if (!v5)
  {
    goto LABEL_6;
  }

  if (![MEMORY[0x277D45F48] permissiveURLSchemes])
  {
    goto LABEL_5;
  }

  v6 = [v3 scheme];
  v7 = [v6 caseInsensitiveCompare:@"http"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v3 scheme];
  v9 = [v8 caseInsensitiveCompare:@"file"];

  if (v9)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  return v10;
}

@end