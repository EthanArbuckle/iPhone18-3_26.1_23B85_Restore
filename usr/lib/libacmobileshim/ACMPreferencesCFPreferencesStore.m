@interface ACMPreferencesCFPreferencesStore
+ (id)preferencesStoreWithCFPreferences;
- (id)allValues;
- (id)multiplePreferencesValuesForKeys:(id)a3;
- (id)preferencesValueForKey:(id)a3;
- (void)removeAllValues;
- (void)replaceAllValues:(id)a3 withOptions:(int64_t)a4;
- (void)setMultiplePreferencesValues:(id)a3;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4;
@end

@implementation ACMPreferencesCFPreferencesStore

+ (id)preferencesStoreWithCFPreferences
{
  v2 = objc_opt_new();

  return v2;
}

- (id)preferencesValueForKey:(id)a3
{
  v5 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v6 = *MEMORY[0x29EDB8FB0];
  v7 = *MEMORY[0x29EDB8F90];
  CFPreferencesSynchronize(v5, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v8 = CFPreferencesCopyValue(a3, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v6, v7);
  if (qword_2A1EB8EE0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMPreferencesCFPreferencesStore preferencesValueForKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMPreferencesCFPreferencesStore.m", 33, 0, "Preferences key: %@ is set to %@", a3, v8);
  }

  return v8;
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4
{
  if (qword_2A1EB8EE0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMPreferencesCFPreferencesStore setPreferencesValue:forKey:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMPreferencesCFPreferencesStore.m", 39, 0, "Updating preferences key: %@ with value %@", a4, a3);
  }

  v7 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v8 = *MEMORY[0x29EDB8FB0];
  v9 = *MEMORY[0x29EDB8F90];
  CFPreferencesSetValue(a4, a3, v7, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v10 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];

  CFPreferencesSynchronize(v10, v8, v9);
}

- (id)multiplePreferencesValuesForKeys:(id)a3
{
  v5 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v6 = *MEMORY[0x29EDB8FB0];
  v7 = *MEMORY[0x29EDB8F90];
  CFPreferencesSynchronize(v5, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v8 = CFPreferencesCopyMultiple(a3, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v6, v7);

  return v8;
}

- (void)setMultiplePreferencesValues:(id)a3
{
  v5 = [a3 allKeys];
  v6 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v7 = *MEMORY[0x29EDB8FB0];
  v8 = *MEMORY[0x29EDB8F90];
  CFPreferencesSetMultiple(0, v5, v6, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  CFPreferencesSetMultiple(a3, 0, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v7, v8);
  v9 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];

  CFPreferencesSynchronize(v9, v7, v8);
}

- (id)allValues
{
  v3 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v4 = *MEMORY[0x29EDB8FB0];
  v5 = *MEMORY[0x29EDB8F90];
  CFPreferencesSynchronize(v3, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v6 = CFPreferencesCopyMultiple(0, [(ACMPreferencesCFPreferencesStore *)self preferenceID], v4, v5);

  return v6;
}

- (void)removeAllValues
{
  v3 = [-[ACMPreferencesCFPreferencesStore allValues](self "allValues")];
  v4 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];
  v5 = *MEMORY[0x29EDB8FB0];
  v6 = *MEMORY[0x29EDB8F90];
  CFPreferencesSetMultiple(0, v3, v4, *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  v7 = [(ACMPreferencesCFPreferencesStore *)self preferenceID];

  CFPreferencesSynchronize(v7, v5, v6);
}

- (void)replaceAllValues:(id)a3 withOptions:(int64_t)a4
{
  if (qword_2A1EB8EE8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLogNS(7, "[ACMPreferencesCFPreferencesStore replaceAllValues:withOptions:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMPreferencesCFPreferencesStore.m", 105, 0, @"Replacing preferences: %@", v6, v7, a3);
  }

  if (a3)
  {
    [(ACMPreferencesCFPreferencesStore *)self removeAllValues:a3];

    [(ACMPreferencesCFPreferencesStore *)self setMultiplePreferencesValues:a3];
  }
}

@end