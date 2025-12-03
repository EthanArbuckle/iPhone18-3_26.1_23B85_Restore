@interface ACMPreferencesCFPreferencesStore
+ (id)preferencesStoreWithCFPreferences;
- (id)allValues;
- (id)multiplePreferencesValuesForKeys:(id)keys;
- (id)preferencesValueForKey:(id)key;
- (void)removeAllValues;
- (void)replaceAllValues:(id)values withOptions:(int64_t)options;
- (void)setMultiplePreferencesValues:(id)values;
- (void)setPreferencesValue:(id)value forKey:(id)key;
@end

@implementation ACMPreferencesCFPreferencesStore

+ (id)preferencesStoreWithCFPreferences
{
  v2 = objc_opt_new();

  return v2;
}

- (id)preferencesValueForKey:(id)key
{
  preferenceID = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v6 = *MEMORY[0x29EDB8FB0];
  v7 = *MEMORY[0x29EDB8F90];
  CFPreferencesSynchronize(preferenceID, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v8 = CFPreferencesCopyValue(key, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v6, v7);
  if (qword_2A1EB8EE0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMPreferencesCFPreferencesStore preferencesValueForKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMPreferencesCFPreferencesStore.m", 33, 0, "Preferences key: %@ is set to %@", key, v8);
  }

  return v8;
}

- (void)setPreferencesValue:(id)value forKey:(id)key
{
  if (qword_2A1EB8EE0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMPreferencesCFPreferencesStore setPreferencesValue:forKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMPreferencesCFPreferencesStore.m", 39, 0, "Updating preferences key: %@ with value %@", key, value);
  }

  preferenceID = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v8 = *MEMORY[0x29EDB8FB0];
  v9 = *MEMORY[0x29EDB8F90];
  CFPreferencesSetValue(key, value, preferenceID, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  preferenceID2 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];

  CFPreferencesSynchronize(preferenceID2, v8, v9);
}

- (id)multiplePreferencesValuesForKeys:(id)keys
{
  preferenceID = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v6 = *MEMORY[0x29EDB8FB0];
  v7 = *MEMORY[0x29EDB8F90];
  CFPreferencesSynchronize(preferenceID, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v8 = CFPreferencesCopyMultiple(keys, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v6, v7);

  return v8;
}

- (void)setMultiplePreferencesValues:(id)values
{
  allKeys = [values allKeys];
  preferenceID = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v7 = *MEMORY[0x29EDB8FB0];
  v8 = *MEMORY[0x29EDB8F90];
  CFPreferencesSetMultiple(0, allKeys, preferenceID, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  CFPreferencesSetMultiple(values, 0, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v7, v8);
  preferenceID2 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];

  CFPreferencesSynchronize(preferenceID2, v7, v8);
}

- (id)allValues
{
  preferenceID = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v4 = *MEMORY[0x29EDB8FB0];
  v5 = *MEMORY[0x29EDB8F90];
  CFPreferencesSynchronize(preferenceID, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v6 = CFPreferencesCopyMultiple(0, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v4, v5);

  return v6;
}

- (void)removeAllValues
{
  v3 = [-[ACMPreferencesCFPreferencesStore allValues](self "allValues")];
  preferenceID = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v5 = *MEMORY[0x29EDB8FB0];
  v6 = *MEMORY[0x29EDB8F90];
  CFPreferencesSetMultiple(0, v3, preferenceID, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  preferenceID2 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];

  CFPreferencesSynchronize(preferenceID2, v5, v6);
}

- (void)replaceAllValues:(id)values withOptions:(int64_t)options
{
  if (qword_2A1EB8EE8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLogNS(7, "[ACMPreferencesCFPreferencesStore replaceAllValues:withOptions:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMPreferencesCFPreferencesStore.m", 105, 0, @"Replacing preferences: %@", v6, v7, values);
  }

  if (values)
  {
    [(ACMPreferencesCFPreferencesStore *)self removeAllValues:values];

    [(ACMPreferencesCFPreferencesStore *)self setMultiplePreferencesValues:values];
  }
}

@end