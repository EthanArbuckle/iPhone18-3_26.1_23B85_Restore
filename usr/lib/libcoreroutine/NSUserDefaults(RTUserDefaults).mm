@interface NSUserDefaults(RTUserDefaults)
- (CFArrayRef)rt_copyKeyListForDomain:()RTUserDefaults;
- (id)rt_objectForKey:()RTUserDefaults domain:;
- (void)rt_refreshDomain:()RTUserDefaults;
@end

@implementation NSUserDefaults(RTUserDefaults)

- (void)rt_refreshDomain:()RTUserDefaults
{
  v3 = *MEMORY[0x277CBED28];
  v4 = *MEMORY[0x277CBF020];
  v5 = *MEMORY[0x277CBF010];
  applicationID = a3;
  CFPreferencesSetValue(@"RTDefaultsManagerForceRefresh", v3, applicationID, v4, v5);
  CFPreferencesSetValue(@"RTDefaultsManagerForceRefresh", 0, applicationID, v4, v5);
}

- (id)rt_objectForKey:()RTUserDefaults domain:
{
  v4 = CFPreferencesCopyAppValue(key, applicationID);

  return v4;
}

- (CFArrayRef)rt_copyKeyListForDomain:()RTUserDefaults
{
  v3 = CFPreferencesCopyKeyList(applicationID, *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);

  return v3;
}

@end