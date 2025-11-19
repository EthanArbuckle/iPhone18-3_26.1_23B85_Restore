@interface NDTLog
+ (id)facilityWithSubsystem:(id)a3 category:(id)a4;
@end

@implementation NDTLog

+ (id)facilityWithSubsystem:(id)a3 category:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NDTLogFacility);
  v8 = [v5 UTF8String];
  v9 = [v6 UTF8String];

  v10 = os_log_create(v8, v9);
  os_log_facility = v7->os_log_facility;
  v7->os_log_facility = v10;

  v12 = v5;
  if (os_variant_has_internal_diagnostics())
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"obfuscate", v12, &keyExistsAndHasValidFormat))
    {
      v13 = 1;
    }

    else
    {
      v13 = keyExistsAndHasValidFormat == 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  [NDTLog setObfuscate:v14];

  return v7;
}

@end